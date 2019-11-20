LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Controle IS
	PORT(
		clock, reset: IN std_logic;
		Op: IN std_logic_vector(5 DOWNTO 0);
		FontePC: OUT std_logic_vector(1 DOWNTO 0);
		ULAOp: OUT std_logic_vector(1 DOWNTO 0);
		ULAFonteB: OUT std_logic_vector(1 DOWNTO 0);
		ULAFonteA: OUT std_logic;
		EscReg: OUT std_logic;
		RegDst: OUT std_logic;
		PCEscCond: OUT std_logic;
		PCEsc: OUT std_logic;
		IouD: OUT std_logic;
		LerMem: OUT std_logic;
		EscMem: OUT std_logic;
		MemParaReg: OUT std_logic;
		IREsc: OUT std_logic
	);
END ENTITY;

ARCHITECTURE FSM OF Controle IS
	TYPE State IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9);
	CONSTANT LW : std_logic_vector(5 downto 0) := "100011";
	CONSTANT SW : std_logic_vector(5 downto 0) := "101011";
	CONSTANT R : std_logic_vector(5 downto 0) := "000000"; 
	CONSTANT BEQ : std_logic_vector(5 downto 0) := "000100";
	CONSTANT JUMP : std_logic_vector(5 downto 0) := "000010";
	SIGNAL currentState, nextState: State;
BEGIN

	-- Lógica de próximo estado
	PROCESS (clock, Op) IS BEGIN
		nextState <= currentState;
		CASE currentState IS
			WHEN S0 =>
				nextState <= S1;
			WHEN S1 =>
				IF (Op = R) THEN
					nextState <= S6;
				ELSIF (Op = LW OR OP = SW) THEN
					nextState <= S2;
				ELSIF (Op = BEQ) THEN
					nextState <= S8;
				ELSIF (Op = JUMP) THEN
					nextState <= S9;
				END IF;
			WHEN S2 =>
				IF (Op = LW) THEN
					nextState <= S3;
				ELSIF (Op = SW) THEN
					nextState <= S5;
				END IF;
			WHEN S3 =>
				nextState <= S4;
			WHEN S4 =>
				nextState <= S0;
			WHEN S5 =>
				nextState <= S0;
			WHEN S6 =>
				nextState <= S7;
			WHEN S7 =>
				nextState <= S0;
			WHEN S8 =>
				nextState <= S0;
			WHEN S9 =>
				nextState <= S0;
		END CASE;
	END PROCESS;

	LerMem <= '1' when (currentState = S0 or currentState = S4) else '0';
	EscMem <= '1' when (currentState = S5) else '0';
	EscReg <= '1' when (currentState = S4 or currentState = S7) else '0';
	IREsc <= '1' when (currentState = S0) else '0';
	PCEsc <= '1' when (currentState = S0 or currentState = S9) else '0';
	PCEscCond <= '1' when (currentState = S8) else '0';

	ULAOp <= "00" when (currentState = S0 or currentState = S1 or currentState = S2) else
			 "01" when (currentState = S8) else
			 "10" when (currentState = S6) else "--";

	IouD <= '1' when (currentState = S3 or currentState = S5) else
			'0' when (currentState = S0) else '-';

	MemParaReg <= '1' when (currentState = S4) else
				  '0' when (currentState = S7) else '-';

	RegDst <= '1' when (currentState = S7) else
			  '0' when (currentState = S4) else '-';
	
	ULAFonteA <= '1' when (currentState = S2 or currentState = S6 or currentState = S8) else
				 '0' when (currentState = S0 or currentState = S1) else '-';

	ULAFonteB <= "00" when (currentState = S6 or currentState = S8) else
				 "01" when (currentState = S0) else
				 "10" when (currentState = S2) else
				 "11" when (currentState = S1) else "--";

	FontePC <= "00" when (currentState = S0) else
			   "01" when (currentState = S8) else
			   "10" when (currentState = S9) else "--";

	-- Registrador de memória
	PROCESS (clock, reset) IS BEGIN
		IF reset='1' THEN
			currentState <= S0;
		ELSIF rising_edge(clock) THEN
			currentState <= nextState;
		END IF;
	END PROCESS;

END ARCHITECTURE;
