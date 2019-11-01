LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY SignalExtender IS
	GENERIC(N_IN : integer := 16; N_OUT : integer := 32);
	PORT(
		in_value : IN std_logic_vector(N_IN-1 DOWNTO 0);
		out_value : OUT std_logic_vector(N_OUT-1 DOWNTO 0)
	);
END SignalExtender;

ARCHITECTURE Behavior OF SignalExtender IS
BEGIN
	out_value(N_IN-1 DOWNTO 0) <= in_value;
	out_value(N_OUT-1 DOWNTO N_IN) <= (OTHERS => in_value(N_IN-1));
END Behavior;