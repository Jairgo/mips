LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ULA IS
	GENERIC(N: integer := 32);
	PORT(
		a: IN std_logic_vector(N-1 DOWNTO 0);
		b: IN std_logic_vector(N-1 DOWNTO 0);
		sel: IN std_logic_vector(2 DOWNTO 0);
		Result: BUFFER std_logic_vector(N-1 DOWNTO 0);
		Zero: OUT std_logic 
	);
END ULA;

ARCHITECTURE Behavior OF ULA IS

	SIGNAL OutputAdder, OutputAndOr, OutputMux, OutputLess: std_logic_vector(N-1 DOWNTO 0);
	SIGNAL OutputAdderSigned: signed(N-1 DOWNTO 0);
	constant ConstantZero: std_logic_vector(N-1 DOWNTO 0) := (OTHERS => '0');

	COMPONENT SubAdder IS
		GENERIC(N : integer := 32);
		PORT(
			a: IN signed(N-1 DOWNTO 0);
			b: IN signed(N-1 DOWNTO 0);
			sel: IN std_logic;
			s: OUT signed(N-1 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT AndOr IS
		GENERIC(N : integer := 32);
		PORT(
			a: IN std_logic_vector(N-1 DOWNTO 0);
			b: IN std_logic_vector(N-1 DOWNTO 0);
			sel: IN std_logic;
			s: OUT std_logic_vector(N-1 DOWNTO 0)
		);
	end COMPONENT;
	
	COMPONENT Mux IS
		GENERIC (N : integer := 32);
		PORT 
		(
			a: IN std_logic_vector(N-1 DOWNTO 0);
			b: IN std_logic_vector(N-1 DOWNTO 0);
			sel: IN std_logic;
			s: OUT std_logic_vector(N-1 DOWNTO 0)
		);
	END COMPONENT;

BEGIN
	Adder0: SubAdder GENERIC MAP (N => N) PORT MAP (signed(a), signed(b), sel(2), OutputAdderSigned);
	OutputAdder <= std_logic_vector(OutputAdderSigned);
	AndOr0: AndOr GENERIC MAP (N => N) PORT MAP (a, b, sel(0), OutputAndOr);
	Mux0: MUX GENERIC MAP (N => N ) PORT MAP (OutputAndOr, OutputAdder, sel(1), OutputMux);
	
	OutputLess(31 DOWNTO 1) <= (OTHERS => '0');
	OutputLess(0) <= OutputMux(31);
	
	Result <= OutputLess WHEN sel = "111" ELSE OutputMux;
	Zero <= '1' WHEN Result = ConstantZero ELSE '0';		
END estrutura;
