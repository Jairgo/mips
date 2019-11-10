library ieee;
use ieee.std_logic_1164.all;

ENTITY ULAControl IS
    PORT(
        -- control inputs
        ULAop: IN std_logic_vector(1 DOWNTO 0);
        -- data inputs
        funct: IN std_logic_vector(5 DOWNTO 0);
        -- control outputs
        ULAc: OUT std_logic_vector(2 DOWNTO 0);
        -- data outputs
    );
END entity;

ARCHITECTURE Behavior OF ULAControl IS
BEGIN
  -- output-logic
    PROCESS(ULAop, funct) IS
    BEGIN
        CASE ULAop IS
            WHEN "00" =>
                ULAc <= "010";
            WHEN "01" =>
                ULAc <= "110";
            WHEN "10" =>
                CASE funct IS
                    WHEN "100000" =>
                        ULAc <= "010";
                    WHEN "100010" =>
                        ULAc <= "110";
                    WHEN "100100" =>
                        ULAc <= "000";
                    WHEN "100101" =>
                        ULAc <= "001";
                    WHEN "101010" =>
                        ULAc <= "111";
                    WHEN OTHERS =>
                        ULAc <= "111";
                END CASE;
            WHEN OTHERS =>
                ULAc <= "111";
        END CASE;
    END PROCESS;
END ARCHITECTURE;