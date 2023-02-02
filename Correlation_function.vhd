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
		input_function : in double_array(0 to function_length - 1) := (others => (others => '0'));
		input_adc_values: in std_logic_vector(400-1 downto 0) := (others => '0');
		output_value : out std_logic_vector(19 downto 0) := (others => '0');
		input_function_ram : in std_logic_vector(575 downto 0)
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
--gate1 : Correlation_Gate generic map(input_size => 12) port map(CLK => CLK, input_func => input_func_1, input_adc => input_adc_1,
--								output => output_1);
--gate2 : Correlation_Gate generic map(input_size => 13) port map(CLK => CLK, input_func => input_func_2, input_adc => input_adc_2,
--								output => output_2);
--gate3 : Correlation_Gate generic map(input_size => 12) port map(CLK => CLK, input_func => input_func_3, input_adc => input_adc_3,
--								output => output_3);
--gate4 : Correlation_Gate generic map(input_size => 13) port map(CLK => CLK, input_func => input_func_4, input_adc => input_adc_4,
--								output => output_4);
								
--input_func_1 <=  input_function(11)& input_function(10)& input_function(9)& input_function(8)& input_function(7)& input_function(6)& 
--				input_function(5)& input_function(4)& input_function(3)& input_function(2)& input_function(1)& input_function(0);
--input_adc_1 <= input_adc_values(12*8-1 downto 0);
--
--input_func_2 <=  input_function(24)&input_function(23)& input_function(22)& input_function(21)& input_function(20)& input_function(19)
--				& input_function(18)& input_function(17)& input_function(16)& input_function(15)& input_function(14)& input_function(13)
---				& input_function(12);
--input_adc_2 <= input_adc_values(12*8+13*8-1 downto 12*8);

--input_func_3 <=  input_function(36)& input_function(35)& input_function(34)& input_function(33)& input_function(32)& input_function(31)& 
--				input_function(30)& input_function(29)& input_function(28)& input_function(27)& input_function(26)& input_function(25);
--input_adc_3 <= input_adc_values(12*8+13*8+12*8-1 downto 12*8+13*8);

--input_func_4 <=  input_function(49)&input_function(48)& input_function(47)& input_function(46)& input_function(45)& input_function(44)
---				& input_function(43)& input_function(42)& input_function(41)& input_function(40)& input_function(39)& input_function(38)
--				& input_function(37);
--input_adc_4 <= input_adc_values(12*8+13*8+12*8+13*8-1 downto 12*8+13*8+12*8);

--all_output <= std_logic_vector(to_unsigned(to_integer(unsigned(output_1)) + to_integer(unsigned(output_2))+
--				to_integer(unsigned(output_3)) +to_integer(unsigned(output_4)), all_output'length));

output_value <= f_output;

--NEW
gate5 : Correlation_Gate generic map(input_size => 12) port map(CLK => CLK, input_func => input_func_55, input_adc => input_adc_5,
								output => output_5);
gate6 : Correlation_Gate generic map(input_size => 13) port map(CLK => CLK, input_func => input_func_66, input_adc => input_adc_6,
								output => output_6);
								
input_func_5 <= input_function(11)& input_function(10)& input_function(9)& input_function(8)& input_function(7)& input_function(6)& 
				input_function(5)& input_function(4)& input_function(3)& input_function(2)& input_function(1)& input_function(0)
				when f = '1' and EN = '1' else
				input_function(36)& input_function(35)& input_function(34)& input_function(33)& input_function(32)& input_function(31)& 
				input_function(30)& input_function(29)& input_function(28)& input_function(27)& input_function(26)& input_function(25)
				when f = '0' and EN = '1' else (others => '0');

input_func_6 <= input_function(24)&input_function(23)& input_function(22)& input_function(21)& input_function(20)& input_function(19)
				& input_function(18)& input_function(17)& input_function(16)& input_function(15)& input_function(14)& input_function(13)
				& input_function(12)
				when f = '1' and EN = '1' else
				input_function(49)&input_function(48)& input_function(47)& input_function(46)& input_function(45)& input_function(44)
				& input_function(43)& input_function(42)& input_function(41)& input_function(40)& input_function(39)& input_function(38)
				& input_function(37)
				when f = '0' and EN = '1' else (others => '0');

				--12*8 ir 13*8
input_func_55 <= input_function_ram(12*8-1 downto 0) when f = '1' else input_function_ram(12*8+13*8+12*8-1 downto 12*8+13*8);--input_function_ram(575-13*8 downto 575-13*8-12*8+1) when f = '0' else input_function_ram(575-13*8-12*8-13*8 downto 575-13*8-12*8-13*8-12*8+1);--input_function_ram(575 downto 575-12*8+1) when f = '1' and EN = '1' else input_function_ram(12*8+13*8+12*8-1 downto 12*8+13*8);
input_func_66 <= input_function_ram(12*8+13*8-1 downto 12*8) when f = '1' else input_function_ram(12*8+13*8+12*8+13*8-1 downto 12*8+13*8+12*8);--(others => '0');--input_function_ram(575 downto 575-13*8+1) when f = '0' else input_function_ram(575-13*8-12*8 downto 575-13*8-12*8-13*8+1);--input_function_ram(12*8+13*8-1 downto 12*8) when f = '1' and EN = '1' else input_function_ram(12*8+13*8+12*8+13*8-1 downto 12*8+13*8+12*8);
				
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
