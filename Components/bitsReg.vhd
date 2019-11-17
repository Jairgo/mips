library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY bitsReg is 
    port (
	      data  :in  std_logic_vector(31 DOWNTO 0);
        clk   :in  std_logic;
        q     :out std_logic_vector(31 DOWNTO 0)
	);
end ENTITY;

ARCHITECTURE behavior of bitsReg is 

begin
    PROCESS (clk) begin
	    if (rising_edge(clk)) then 
		    q <= data;
		end if;
	end PROCESS;

end ARCHITECTURE;