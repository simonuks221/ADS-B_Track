library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Multi_ORR is
generic(
	BITS : integer := 16
);
port(
	input1 : in std_logic_vector(BITS-1 downto 0);
	input2 : in std_logic_vector(BITS-1 downto 0);
	output : out std_logic_vector(BITS-1 downto 0)
);

end entity;

architecture arc1 of Multi_ORR is

begin
	output <= input1 or input2;
end architecture;