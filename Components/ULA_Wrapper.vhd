LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ULA_Wrapper IS
GENERIC (DATA : integer := 32);
	PORT(
		A : in std_logic_vector  (DATA-1 DOWNTO 0);
		B : in std_logic_vector  (DATA-1 DOWNTO 0);
		ULAOp : in std_logic_vector  (1 DOWNTO 0);
		Funct : in std_logic_vector  (5 DOWNTO 0);
		Result : out std_logic_vector (DATA-1 DOWNTO 0);
		Zero : out std_logic
	);
END ENTITY;


ARCHITECTURE Behavior OF ULA_Wrapper IS

	signal s_ulacontrol : std_logic_vector (2 DOWNTO 0);
	
	COMPONENT ULA_Control IS
	PORT(
		ULAOp : in std_logic_vector  (1 DOWNTO 0);
		Funct : in std_logic_vector  (5 DOWNTO 0);
		ULAControl : out std_logic_vector (2 DOWNTO 0)
	);
	END COMPONENT;
	
	COMPONENT ULA IS
		GENERIC (DATA : integer := 32);
		PORT(
			A : in std_logic_vector(DATA-1 DOWNTO 0);
			B : in std_logic_vector(DATA-1 DOWNTO 0);
			sel : in std_logic_vector(2 DOWNTO 0);
			Result : buffer std_logic_vector(DATA-1 DOWNTO 0);
			Zero : out std_logic 
		);
	END COMPONENT;

BEGIN

	UlaInstance: ULA generic map (DATA => DATA) port map (A, B, s_ulacontrol, Result, Zero);
	UlaControlInstance: ULA_Control port map (ULAOp, Funct, s_ulacontrol);
			
END Behavior;
