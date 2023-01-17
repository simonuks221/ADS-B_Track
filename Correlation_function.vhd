library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.corr_package.all;

entity Correlation_function is
	generic(
		function_length : integer := 50
	);
	port(
		CLK: in std_logic;
		input_function : in double_array(0 to function_length - 1);
		input_adc_values: in std_logic_vector(400-1 downto 0);
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
			temp_c := temp_c + to_integer(unsigned((input_adc_values(i*8+8-1 downto i*8)))) * to_integer(unsigned((input_function(i))));
		end loop;
		--Testavimas
		output_value <= std_logic_vector(to_unsigned(temp_c, output_value'length));
	end if;
end process;

end architecture;
