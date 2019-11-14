LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY BC IS
    PORT(
        clock, reset: IN std_logic;
        opcode: IN std_logic_vector(5 DOWNTO 0);
        LerMem: OUT std_logic;
        EscMem: OUT std_logic;
        EscReg: OUT std_logic;
        IREsc: OUT std_logic;
        PCEsc: OUT std_logic;
        PCEscCond: OUT std_logic;
        ULAOp: OUT std_logic_vector(1 DOWNTO 0);

        IouD: OUT std_logic;
        MemParaReg: OUT std_logic;
        RegDst: OUT std_logic;
        ULAFonteA: OUT std_logic;
        ULAFonteB: OUT std_logic_vector(1 DOWNTO 0);
        FontePC: OUT std_logic_vector(1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE Behavior OF BC IS
  TYPE State IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9);
  SIGNAL currentState, nextState: State;
BEGIN
  -- next-state logic
    PROCESS(currentState, start) IS
    BEGIN
        CASE currentState IS
            WHEN S0 =>
                nextState <= S1;
            WHEN S1 =>
                IF opcode = "100011" OR opcode = "101011" THEN
                    nextState <= S2;
                ELSIF opcode = "000000" THEN
                    nextState <= S6;
                ELSIF opcode = "000100" THEN
                    nextState <= S8;
                ELSIF opcode = "000010" THEN
                    nextState <= S9;
                END IF;
            WHEN S2 =>
                IF opcode = "100011" THEN
                    nextState <= S3;
                ELSIF opcode = "101011" THEN
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
  
    PROCESS(clock, reset) IS
    BEGIN
        IF reset = '1' THEN
            currentState <= S0;
        ELSIF rising_edge(clock) THEN
            currentState <= nextState;
        END IF;
    END PROCESS;
  
  -- OUTput-logic
    LerMem <= '1' WHEN (currentState = S0 OR currentState = S4) ELSE '0';
    EscMem <= '1' WHEN (currentState = S5) ELSE '0';
    EscReg <= '1' WHEN (currentState = S4 OR currentState = S7) ELSE '0';
    IREsc  <= '1' WHEN (currentState = S0) ELSE '0';
    PCEsc  <= '1' WHEN (currentState = S0 OR currentState = S9) ELSE '0';
    PCEscCond <= '1' WHEN (currentState = S8) ELSE '0';

    ULAOp <= "00" WHEN (currentState = S0 OR currentState = S1 OR currentState = S2) ELSE
             "01" WHEN (currentState = S8) ELSE
             "10" WHEN (currentState = S6) ELSE "--";

    IouD <= '1' WHEN (currentState = S3 OR currentState = S5) ELSE
            '0' WHEN (currentState = S0) ELSE '-';

    MemParaReg <= '1' WHEN (currentState = S4) ELSE
                  '0' WHEN (currentState = S7) ELSE '-';

    RegDst <= '1' WHEN (currentState = S7) ELSE
              '0' WHEN (currentState = S4) ELSE '-';
    
    ULAFonteA <= '1' WHEN (currentState = S2 OR currentState = S6 OR currentState = S8) ELSE
                 '0' WHEN (currentState = S0 OR currentState = S1) ELSE '-';

    ULAFonteB <= "00" WHEN (currentState = S6 OR currentState = S8) ELSE
                 "01" WHEN (currentState = S0) ELSE
                 "10" WHEN (currentState = S2) ELSE
                 "11" WHEN (currentState = S1) ELSE "--";

    FontePC <= "00" WHEN (currentState = S0) ELSE
               "01" WHEN (currentState = S8) ELSE
               "10" WHEN (currentState = S9) ELSE "--";
END ARCHITECTURE;