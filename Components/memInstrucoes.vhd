library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;

ENTITY memInstrucao is generic ( DATA_WIDTH :integer := 32; ADDR_WIDTH :integer := 10 );
  port(
        addressIn : in std_logic_vector(31 DOWNTO 0); --address Input 
        data1 : out std_logic_vector(DATA_WIDTH-1 DOWNTO 0); --data Output rs
        data3 : in std_logic_vector(DATA_WIDTH-1 DOWNTO 0); --data Input 
        MemRead : in std_logic;
        MemWrite : in std_logic
        ); 
  end ENTITY;

ARCHITECTURE rtl of memInstrucao is
--Internal Variables--
  signal data_out1 : std_logic_vector(DATA_WIDTH-1 DOWNTO 0);
  signal address1 : std_logic_vector(ADDR_WIDTH-1 DOWNTO 0);
  constant RAM_DEPTH :integer := 2**(ADDR_WIDTH);
    type RAM is array (integer range<>) of std_logic_vector(DATA_WIDTH-1 DOWNTO 0);
  signal mem : RAM (0 to RAM_DEPTH-1);


begin

address1 <= addressIn(ADDR_WIDTH-1 DOWNTO 0);
data1 <= data_out1;

--Memory Write Block 
MEM_WRITE:
    PROCESS (addressIn, data3, MemWrite)
     begin
        if( MemWrite='1') then 
          mem( conv_integer(address1)) <= data3;
        end if;
    end PROCESS; 

MEM_READ: 
    PROCESS (addressIn, MemRead)
     begin
        if(MemRead='1') then 
          data_out1 <= mem(conv_integer(address1));
        end if;
    end PROCESS;

end ARCHITECTURE;