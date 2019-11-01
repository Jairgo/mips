LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Mux IS
GENERIC (N : integer := 32);
	PORT (
		a  : IN std_logic_vector(N-1 DOWNTO 0);
		b  : IN std_logic_vector(N-1 DOWNTO 0);
		sel: IN std_logic;
		s  : OUT std_logic_vector(N-1 DOWNTO 0)
	);
END Mux;

ARCHITECTURE Behavior OF Mux IS
BEGIN
	s <= b WHEN sel = '1' ELSE a;
END Behavior;
