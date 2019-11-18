LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY regInstrucao IS 
    PORT(
        IRWrite: IN std_logic;
        instrucInput: IN std_logic_vector(31 DOWNTO 0);
		opCode: OUT std_logic_vector(5 DOWNTO 0);
		regRs: OUT std_logic_vector(4 DOWNTO 0);
		regRt: OUT std_logic_vector(4 DOWNTO 0);
		regRd: OUT std_logic_vector(4 DOWNTO 0);
		imm: OUT std_logic_vector(15 DOWNTO 0);
		jumpAddr: OUT std_logic_vector(25 DOWNTO 0);
		funcCode: OUT std_logic_vector(5 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE behavior of regInstrucao is

    SIGNAL addr_Output1 : std_logic_vector(5 DOWNTO 0);
   	SIGNAL addr_Output2 : std_logic_vector(4 DOWNTO 0);
	SIGNAL addr_Output3 : std_logic_vector(4 DOWNTO 0);
	SIGNAL addr_Output4 : std_logic_vector(4 DOWNTO 0);
   	SIGNAL addr_Output5 : std_logic_vector(15 DOWNTO 0);
	SIGNAL addr_Output6 : std_logic_vector(25 DOWNTO 0);
	SIGNAL addr_Output7 : std_logic_vector(5 DOWNTO 0);

BEGIN
	opCode <= addr_Output1;
	regRs <= addr_Output2;
	regRt <= addr_Output3;
	regRd <= addr_Output4;
	imm <= addr_Output5;
  	jumpAddr <= addr_Output6;
	funcCode <= addr_Output7;
	
    PROCESS (IRWrite, instrucInput) BEGIN
        IF(IRWrite = '1') THEN 
            addr_Output1 <= instrucInput(31 DOWNTO 26);
			addr_Output2 <= instrucInput(25 DOWNTO 21);
			addr_Output3 <= instrucInput(20 DOWNTO 16);
			addr_Output4 <= instrucInput(15 DOWNTO 11);
			addr_Output5 <= instrucInput(15 DOWNTO 0);
			addr_Output6 <= instrucInput(25 DOWNTO 0);
			addr_Output7 <= instrucInput(5 DOWNTO 0);
        END IF;
	END PROCESS;
END ARCHITECTURE;