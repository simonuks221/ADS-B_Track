library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.corr_package.all;

entity Correlation_function is
generic(
function_length : integer := 250
);
port(
CLK: in std_logic;
input_function : in double_array(0 to function_length - 1);
input_values : in double_array(0 to function_length - 1);
output_value : out std_logic_vector(19 downto 0)
);
end entity;

architecture arc1 of Correlation_function is
signal output_int : integer := 0;
begin

process(CLK)
variable temp_c: integer := 0;
begin
	if rising_edge(CLK) then
		temp_c := 0;
		for i in 0 to function_length-1 loop
			temp_c := temp_c + to_integer(unsigned((input_values(i)))) * to_integer(unsigned((input_function(i))));
		end loop;
		--Testavimas
		if(input_values(0) = "00000010") then
			output_value <= std_logic_vector(to_unsigned(1, output_value'length));
		else
			output_value <= std_logic_vector(to_unsigned(0, output_value'length));
		end if;
		output_value <= std_logic_vector(to_unsigned(temp_c, output_value'length));
	end if;
end process;

end architecture;
