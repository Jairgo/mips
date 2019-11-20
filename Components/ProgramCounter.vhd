LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ProgramCounter IS 
    PORT(
        writeEnable: IN std_logic;
        addrInput: IN std_logic_vector(31 DOWNTO 0);
        addrOutput: OUT std_logic_vector(31 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE Behavior OF ProgramCounter IS
    SIGNAL addr_Output : std_logic_vector(31 DOWNTO 0);
BEGIN
	addrOutput <= "00000000000000000000000000000000";
    PROCESS (writeEnable, addrInput) BEGIN
        IF( writeEnable = '1' ) THEN 
            addr_Output <= addrInput AFTER 10 ns;
        END IF;
	END PROCESS;
END ARCHITECTURE;