library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY gate2 is 
    port (
	    a :in  std_logic;
    		b :in  std_logic;
		  y :out std_logic
	);
end ENTITY;
		
ARCHITECTURE behavior of gate2 is 

begin
    PROCESS(a,b) begin
	    y <= ((a) and (b));
	end PROCESS;
	
end ARCHITECTURE;