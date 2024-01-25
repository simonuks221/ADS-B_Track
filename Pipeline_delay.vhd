library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Pipeline_delay is
generic (
	block_length : integer := 50;
	block_width : integer := 8
);
port(
	CLK : std_logic := '0'
	
);
end entity;

architecture arc of Pipeline_delay is
begin


process(CLK)
begin

end process;

end architecture;