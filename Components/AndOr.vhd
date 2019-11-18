LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY AndOr IS
	GENERIC(DATA : integer := 32);
	PORT(
		A: IN std_logic_vector(DATA-1 DOWNTO 0);
		B: IN std_logic_vector(DATA-1 DOWNTO 0);
		sel: IN std_logic;
		S: OUT std_logic_vector(DATA-1 DOWNTO 0)
	);
END AndOr;

ARCHITECTURE Behavior OF AndOr IS
BEGIN
	S <= (A OR B) WHEN sel = '1' ELSE (A AND B);
END Behavior;