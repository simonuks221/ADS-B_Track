library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
use work.corr_package.all;

entity UNI_Projektas is
port(
CLK : in std_logic;
ADC_IN : in std_logic_vector(7 downto 0);
DATA_OUT : out std_logic_vector(6-1 downto 0);
SYNC : out std_logic
);
end entity;

architecture arc of UNI_Projektas is

--Components
component ADC_Manager is
	port(
	CLK : in std_logic;
	ADC_IN : in std_logic_vector(7 downto 0);
	DATA_OUT : out std_logic_vector(6-1 downto 0);

	RAM_DATA_BUS : in std_logic_vector(7 downto 0);
	RAM_ADDRESS_BUS : out std_logic_vector(7 downto 0);

	c_long_value_in : in std_logic_vector(20-1 downto 0) := (others => '0');
	c_long_func_input_out : out double_array(0 to 50-1) := (others => (others => '0'));
	adc_buffer_out : out double_array(0 to 50-1) := (others => (others => '0'));

	SYNC: in std_logic
	);
end component;

component Clock_divider is
	port(
	CLK: in std_logic;
	Prescaler : in std_logic_vector(7 downto 0);

	CLK_OUT: out std_logic
	);
end component;

component wizard_ram IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END component;

component big_ram_wizard IS
	PORT
	(
		address_a		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data_a		: IN STD_LOGIC_VECTOR (127 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (127 DOWNTO 0);
		wren_a		: IN STD_LOGIC  := '0';
		wren_b		: IN STD_LOGIC  := '0';
		q_a		: OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (127 DOWNTO 0)
	);
END component;

--Components
component Correlation_function is
	generic(
	function_length : integer := 50
	);
	port(
	CLK: in std_logic;
	input_function : in double_array(0 to function_length - 1);
	input_values : in double_array(0 to function_length - 1);
	output_value : out std_logic_vector(19 downto 0)
	);
end component;

--Function ram signals
signal func_ram_address_bus : std_logic_vector(7 downto 0) := (others => '0');
signal func_ram_en : std_logic := '0';
signal func_ram_out : std_logic_vector(7 downto 0);

--Correlation signals
signal c_long_value : std_logic_vector(20-1 downto 0) := (others => '0');
signal c_long_func_input : double_array(0 to 50-1) := (others => (others => '0'));
signal adc_buffer : double_array(0 to 50-1) := (others => (others => '0'));

--Big ram signals
signal address_a_1		: STD_LOGIC_VECTOR (2 DOWNTO 0);
signal address_b_1		: STD_LOGIC_VECTOR (2 DOWNTO 0);
signal data_a_1		: STD_LOGIC_VECTOR (127 DOWNTO 0);
signal data_b_1		: STD_LOGIC_VECTOR (127 DOWNTO 0);
signal wren_a_1		: STD_LOGIC  := '0';
signal wren_b_1		: STD_LOGIC  := '0';
signal q_a_1		: STD_LOGIC_VECTOR (127 DOWNTO 0);
signal q_b_1		: STD_LOGIC_VECTOR (127 DOWNTO 0);

signal address_a_2		: STD_LOGIC_VECTOR (2 DOWNTO 0);
signal address_b_2		: STD_LOGIC_VECTOR (2 DOWNTO 0);
signal data_a_2		: STD_LOGIC_VECTOR (127 DOWNTO 0);
signal data_b_2		: STD_LOGIC_VECTOR (127 DOWNTO 0);
signal wren_a_2		: STD_LOGIC  := '0';
signal wren_b_2		: STD_LOGIC  := '0';
signal q_a_2		: STD_LOGIC_VECTOR (127 DOWNTO 0);
signal q_b_2		: STD_LOGIC_VECTOR (127 DOWNTO 0);

signal sync_clk : std_logic := '0';

signal RECEIVED_CODE : std_logic_vector(5 downto 0);
begin
ADC_Manager1 : ADC_Manager port map(CLK => CLK, ADC_IN => ADC_IN, DATA_OUT => RECEIVED_CODE, RAM_DATA_BUS => func_ram_out, RAM_ADDRESS_BUS => func_ram_address_bus, SYNC => sync_clk,
												c_long_value_in => c_long_value, c_long_func_input_out => c_long_func_input, adc_buffer_out => adc_buffer);
wizard_ram_1 : wizard_ram port map(address => func_ram_address_bus, clock => CLK, data => "00000000", wren => '0', q => func_ram_out);
clock_divider1 : clock_divider port map(CLK => CLK, Prescaler => "00000101", CLK_OUT => sync_clk);
corr_long : Correlation_function generic map(function_length => 50) port map(CLK => CLK, input_function => c_long_func_input, input_values => adc_buffer(0 to 50-1), output_value => c_long_value);

ram1 : big_ram_wizard port map(clock => CLK, address_a => address_a_1, address_b => address_b_1, data_a => data_a_1,
										data_b => data_b_1, wren_a => wren_a_1, wren_b => wren_b_1, q_a => q_a_1, q_b => q_b_1);
ram2 : big_ram_wizard port map(clock => CLK, address_a => address_a_2, address_b => address_b_2, data_a => data_a_2,
										data_b => data_b_2, wren_a => wren_a_2, wren_b => wren_b_2, q_a => q_a_2, q_b => q_b_2);

DATA_OUT <= RECEIVED_CODE;
SYNC <= sync_clk;

end architecture;