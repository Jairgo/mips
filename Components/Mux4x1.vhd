LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Mux4x1 is
generic (N : integer := 32);
	port 
	(
		A : in std_logic_vector  (N-1 DOWNTO 0);
		B : in std_logic_vector  (N-1 DOWNTO 0);
		C : in std_logic_vector  (N-1 DOWNTO 0);
		D : in std_logic_vector  (N-1 DOWNTO 0);
		sel : in std_logic_vector (1 DOWNTO 0);
		S : out std_logic_vector (N-1 DOWNTO 0)
	);
end Mux4x1;

ARCHITECTURE behavior of Mux4x1 is
begin
	S <= A when sel = "00" else
			B when sel = "01" else
			C when sel = "10" else
			D when sel = "11";
end behavior;
