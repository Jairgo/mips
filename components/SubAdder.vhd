LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY SubAdder IS
	GENERIC(DATA_S : integer := 32);
	PORT(
		a : IN signed(DATA_S-1 DOWNTO 0);
		b : IN signed(DATA_S-1 DOWNTO 0);
		sel : IN std_logic;
		s : out signed(DATA_S-1 DOWNTO 0)
	);
END SubAdder;

ARCHITECTURE Behavior OF SubAdder IS
BEGIN
	s <= (a - b) WHEN sel = '1' ELSE (a + b);
END Behavior;
