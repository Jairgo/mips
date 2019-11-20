LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ULA IS
	GENERIC (DATA : integer := 32);
	PORT(
		A: IN std_logic_vector(DATA-1 DOWNTO 0);
		B: IN std_logic_vector(DATA-1 DOWNTO 0);
		sel: IN std_logic_vector(2 DOWNTO 0);
		Result: BUFFER std_logic_vector(DATA-1 DOWNTO 0);
		Zero: OUT std_logic 
	);
END ULA;

ARCHITECTURE Behavior OF ULA IS

	SIGNAL s_sum_sub, s_and_or, s_mux, s_less: std_logic_vector(DATA-1 DOWNTO 0);
	SIGNAL s_sum_sub_signed : signed(DATA-1 DOWNTO 0);
	CONSTANT c_zeros : std_logic_vector(DATA-1 DOWNTO 0) := (OTHERS => '0');
	
	COMPONENT SumSub IS
		GENERIC(DATA : integer := 32);
		PORT(
			A: IN signed(DATA-1 DOWNTO 0);
			B: IN signed(DATA-1 DOWNTO 0);
			sel: IN std_logic;
			S: OUT signed(DATA-1 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT AndOr IS
		GENERIC (DATA : integer := 32);
		PORT(
			A: IN std_logic_vector(DATA-1 DOWNTO 0);
			B: IN std_logic_vector(DATA-1 DOWNTO 0);
			sel: IN std_logic;
			S: OUT std_logic_vector(DATA-1 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT Mux2x1 IS
		GENERIC (N : integer := 32);
		PORT(
			A: IN std_logic_vector  (N-1 DOWNTO 0);
			B: IN std_logic_vector  (N-1 DOWNTO 0);
			sel: IN std_logic;
			S: OUT std_logic_vector (N-1 DOWNTO 0)
		);
	END COMPONENT;
BEGIN

	Somador: SumSub generic map (DATA => DATA) port map (signed(A), signed(B), sel(2), s_sum_sub_signed);
	BinaryOperations: AndOr generic map (DATA => DATA) port map (A, B, sel(0), s_and_or);
	Multiplexer: Mux2x1 generic map (N => DATA ) port map (s_and_or, s_sum_sub, sel(1), s_mux);
	
	s_sum_sub <= std_logic_vector(s_sum_sub_signed);
	s_less(31 DOWNTO 1) <= (OTHERS => '0');
	s_less(0) <= s_mux(31);
	Result <= s_less when sel = "111" else s_mux;
	Zero <= '1' when result = c_zeros else '0';

END Behavior;