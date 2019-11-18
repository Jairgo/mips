LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY shiftleft22 IS 
    PORT(
        dataIn: IN std_logic_vector(25 DOWNTO 0);
        dataOut: OUT std_logic_vector(27 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE Behavior OF shiftleft22 IS
    BEGIN
        PROCESS(dataIn) 
        BEGIN 
            dataOut(27 DOWNTO 2) <= dataIn(25 DOWNTO 0) ;
            dataOut(1 DOWNTO 0) <= "00";
        END PROCESS;
END ARCHITECTURE;