LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY SumSub IS
	GENERIC(DATA : integer := 32);
	PORT(
		A: IN signed(DATA-1 DOWNTO 0);
		B: IN signed(DATA-1 DOWNTO 0);
		sel: IN std_logic;
		S: OUT signed(DATA-1 DOWNTO 0)
	);
END SumSub;

ARCHITECTURE Behavior OF SumSub IS
BEGIN
	S <= (A - B) when sel = '1' else (A + B);	 
END Behavior;
