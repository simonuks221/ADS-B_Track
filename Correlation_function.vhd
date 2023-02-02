library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Correlation_function is
	generic(
		function_length : integer := 50
	);
	port(
		EN: in std_logic := '0';
		CLK: in std_logic;
		input_adc_values: in std_logic_vector(400-1 downto 0) := (others => '0');
		output_value : out std_logic_vector(19 downto 0) := (others => '0');
		input_function_ram : in std_logic_vector(255 downto 0)
	);
end entity;

architecture arc1 of Correlation_function is

component Correlation_Gate is
	generic(
	input_size : integer := 0
	);
	port(
		CLK : in std_logic := '0';
		input_func : in std_logic_vector(input_size*8-1 downto 0) := (others => '0');
		input_adc : in std_logic_vector(input_Size*8-1 downto 0) := (others => '0');
		output : out std_logic_vector(18 downto 0) := (others => '0')
	);
end component;

--NEW
signal input_adc_5 : std_logic_vector(12*8-1 downto 0) := (others => '0');
signal input_func_5 : std_logic_vector(12*8-1 downto 0) := (others => '0');
signal output_5 : std_logic_vector(18 downto 0) := (others => '0');

signal input_adc_6 : std_logic_vector(13*8-1 downto 0) := (others => '0');
signal input_func_6 : std_logic_vector(13*8-1 downto 0) := (others => '0');
signal output_6 : std_logic_vector(18 downto 0) := (others => '0');

signal output_56 : std_logic_vector(19 downto 0) := (others => '0');
signal f_output : std_logic_vector(19 downto 0) := (others => '0');
signal f : std_logic := '1';

signal input_func_55 : std_logic_vector(12*8-1 downto 0) := (others => '0');
signal input_func_66 : std_logic_vector(13*8-1 downto 0) := (others => '0');

begin

output_value <= f_output;

--NEW
gate5 : Correlation_Gate generic map(input_size => 12) port map(CLK => CLK, input_func => input_func_55, input_adc => input_adc_5,
								output => output_5);
gate6 : Correlation_Gate generic map(input_size => 13) port map(CLK => CLK, input_func => input_func_66, input_adc => input_adc_6,
								output => output_6);

input_func_55 <= input_function_ram(12*8-1 downto 0) when EN = '1' else (others => '0');
input_func_66 <= input_function_ram(12*8+13*8-1 downto 12*8) when EN = '1' else (others => '0');

input_adc_5 <= input_adc_values(12*8-1 downto 0) when f = '1' else input_adc_values(12*8+13*8+12*8-1 downto 12*8+13*8);
input_adc_6 <= input_adc_values(12*8+13*8-1 downto 12*8) when f = '1' else input_adc_values(12*8+13*8+12*8+13*8-1 downto 12*8+13*8+12*8);

process(CLK)
begin
	if(rising_edge(CLK)) then
		if(EN = '0') then
			f <= '1';
			f_output <= (others => '0');
			output_56 <= (others => '0');
		else
			if(f = '0') then
				f_output <= std_Logic_vector(to_unsigned(to_integer(unsigned(output_56)) + to_integer(unsigned(output_5)) + to_integer(unsigned(output_6)), f_output'length));
			else
				f_output <= (others => '0');
				output_56 <= std_Logic_vector(to_unsigned(to_integer(unsigned(output_5)) + to_integer(unsigned(output_6)), output_56'length));
			end if;
			f <= not f;
		end if;
	end if;
end process;
			
end architecture;
