library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
use work.corr_package.all;

entity new_testbench is
	port(output_value : out std_logic_vector(19 downto 0));
end entity;

architecture arc of new_testbench is

constant VOLTAGE_DATA_LEN : integer := 195;

--Functions
--Read from file
file file_voltages: text;
type b_data is array(0 to VOLTAGE_DATA_LEN) of std_logic_vector(7 downto 0);
impure function init return b_data is
variable r : b_data := (others => (others => '0'));
variable iline: line;
variable temp_data : std_logic_vector(7 downto 0);
begin
	file_open(file_voltages, "testVoltage.txt",  read_mode);
	 for i in 0 to VOLTAGE_DATA_LEN-1 loop --Iskaitant 9
		readline(file_voltages, iline);
		read(iline, temp_data);
		r(i) := temp_data;
	end loop;
	return r;
end function init;
signal adc_buffer : b_data := init;

component Correlation_function is
	generic(
		function_length : integer := 50
	);
	port(
		EN: in std_logic := '0';
		CLK: in std_logic;
		input_function : in double_array(0 to 50 - 1) := (others => (others => '0'));
		input_adc_values: in std_logic_vector(400-1 downto 0) := (others => '0');
		output_value : out std_logic_vector(19 downto 0) := (others => '0')
	);
end component;

signal CLK : std_logic := '0';

signal input_function : double_array(0 to 50 - 1) := (others => (others => '0'));
signal input_adc_values: std_logic_vector(400-1 downto 0) := (others => '0');
--signal output_value : std_logic_vector(19 downto 0) := (others => '0');
begin
corr : correlation_function port map(EN => '1', CLK => CLK, input_function => input_function, input_adc_values => input_adc_values,
													output_value => output_value);

CLK <= not CLK after 0.01us; --50MHz

end architecture;