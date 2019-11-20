LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ULA_Control IS
	PORT(
		ULAOp : in std_logic_vector  (1 DOWNTO 0);
		Funct : in std_logic_vector  (5 DOWNTO 0);
		ULAControl : out std_logic_vector (2 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE Behavior OF ULA_Control IS

CONSTANT BITWISE_AND : std_logic_vector(2 downto 0) := "000";
CONSTANT BITWISE_OR : std_logic_vector(2 downto 0) := "001";
CONSTANT ADD : std_logic_vector(2 downto 0) := "010";
CONSTANT SUB : std_logic_vector(2 downto 0) := "110"; 
CONSTANT SLT : std_logic_vector(2 downto 0) := "111";

BEGIN
	PROCESS(ULAOp, Funct) BEGIN
		CASE ULAOp IS
			WHEN "00" =>
				ULAControl <= ADD;
			WHEN "01" =>
				ULAControl <= SUB;
			WHEN "10" =>
				CASE Funct IS
					WHEN "100000" =>
						ULAControl <= ADD;
					WHEN "100010" =>
						ULAControl <= SUB;
					WHEN "100100" =>
						ULAControl <= BITWISE_AND;
					WHEN "100101" =>
						ULAControl <= BITWISE_OR;
					WHEN "101010" =>
						ULAControl <= SLT;
					WHEN others =>
						ULAControl <= SLT;
				END CASE;
			WHEN OTHERS =>
				ULAControl <= SLT;
		END CASE;
	END PROCESS;
			
END Behavior;
