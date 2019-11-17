library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY SignalExtender IS 
    PORT(
	    dataIn: IN std_logic_vector(15 DOWNTO 0);
		dataOut: OUT std_logic_vector(31 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE Behavior OF SignalExtender IS 
	BEGIN
        PROCESS(dataIn) BEGIN 
		    IF (dataIn(15) = '1') THEN
			    dataOut(15 DOWNTO 0)  <= dataIn(15 DOWNTO 0);
				dataOut(31 DOWNTO 16) <= "1111111111111111";
			ELSE 
			    dataOut(15 DOWNTO 0)  <= dataIn(15 DOWNTO 0);
				dataOut(31 DOWNTO 16) <= "0000000000000000";
			END IF;
		END PROCESS;
END ARCHITECTURE;