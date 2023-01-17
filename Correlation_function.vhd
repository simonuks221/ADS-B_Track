library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.corr_package.all;

entity Correlation_function is
	generic(
		function_length : integer := 50
	);
	port(
		EN: in std_logic := '0';
		CLK: in std_logic;
		input_function : in double_array(0 to function_length - 1);
		input_adc_values: in std_logic_vector(400-1 downto 0);
		output_value : out std_logic_vector(19 downto 0)
	);
end entity;

architecture arc1 of Correlation_function is
signal output_int : integer := 0;
signal temp_int : integer := 0;
signal first_part : std_Logic := '1';

begin

output_value <= std_logic_vector(to_unsigned(output_int, output_value'length));

process(CLK, EN)
variable temp_c: integer := 0;
variable input_adc_values_reduced : std_logic_vector(200-1 downto 0);
variable input_function_reduced : double_array(0 to 25 - 1);
begin
	if rising_edge(CLK) then
		if(EN = '0') then
			first_part <= '1';
			output_int <= 0;
		else
			temp_c := 0;
			if(first_part = '1') then
				input_function_reduced := input_function(0 to 25-1);
				input_adc_values_reduced := input_adc_values(200-1 downto 0);
			else
				input_function_reduced := input_function(25 to 50-1);
				input_adc_values_reduced := input_adc_values(400-1 downto 200);
			end if;
			
			for i in 0 to 25-1 loop
				temp_c := temp_c + to_integer(unsigned((input_adc_values_reduced(i*8+8-1 downto i*8)))) * to_integer(unsigned((input_function_reduced(i))));
			end loop;
			--if(first_part = '0') then
				--output_value <= std_logic_vector(to_unsigned(temp_c, output_value'length));
			--end if;
			if(first_part = '0') then
				output_int <= temp_c + temp_int;
				temp_int <= 0;
			else
				temp_int <= temp_c;
			end if;
			first_part <= not first_part;
		end if;
	end if;
end process;

end architecture;
