LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY shiftLeft2 IS
    PORT(
	    dataIn: IN std_logic_vector(31 DOWNTO 0);
		dataOut: OUT std_logic_vector(31 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE Behavior OF shiftLeft2 IS 
	BEGIN
        PROCESS(dataIn) BEGIN
		    dataOut(31 DOWNTO 2) <= dataIn(29 DOWNTO 0);
		    dataOut(1 DOWNTO 0) <= "00";
	END PROCESS;
END ARCHITECTURE;