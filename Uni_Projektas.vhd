library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity UNI_Projektas is
generic (
	baud_rate : integer := 434 --115200 baud reitui toki prescaleri naudojam
);
port(
	CLK : in std_logic;
	ADC_IN : in std_logic_vector(7 downto 0);
	DATA_OUT : out std_logic_vector(6-1 downto 0);
	SYNC : out std_logic;
	UART_TX: out std_logic;
	UART_RX_RX: in std_logic;
	SPI_SCLK: out std_logic;
	SPI_MOSI: out std_logic;
	SPI_CS: out std_logic
);
end entity;

architecture arc of UNI_Projektas is

--Components
component ADC_Manager is
	port(
	CLK : in std_logic;
	DATA_OUT : out std_logic_vector(6-1 downto 0);
	DATA_DONE : out std_logic := '0';

	c_long_value_in : in std_logic_vector(20-1 downto 0) := (others => '0');
	c_en : out std_logic := '0';
	shift_en : out std_logic := '0';
	
	SYNC: in std_logic;
	corr_func_rom_adress_a	: out STD_LOGIC_VECTOR (4 DOWNTO 0) := (others => '0');
	corr_func_rom_adress_b	: out STD_LOGIC_VECTOR (4 DOWNTO 0) := (others => '0')
	);
end component;

component Clock_divider is
	port(
	CLK: in std_logic;
	Prescaler : in std_logic_vector(15 downto 0);

	CLK_OUT: out std_logic
	);
end component;

component wizard_ram IS
	PORT
	(
		address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END component;

component big_ram_wizard IS
	PORT
	(
		address_a	: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		address_b	: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		clock			: IN STD_LOGIC  := '1';
		data_a		: IN STD_LOGIC_VECTOR (127 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (127 DOWNTO 0);
		wren_a		: IN STD_LOGIC  := '0';
		wren_b		: IN STD_LOGIC  := '0';
		q_a			: OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
		q_b			: OUT STD_LOGIC_VECTOR (127 DOWNTO 0)
	);
END component;

component ADC_ram_shifter is
	port (
		CLK : in std_logic := '0';
		address_a_1		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
		address_b_1		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
		
		address_a_2		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
		address_b_2		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
		
		new_adc_in : std_logic_vector(7 downto 0);
		stop_shift : in std_logic := '0';
		q : in std_logic_vector(511 downto 0);
		data : out std_logic_vector(512 downto 0)
	);
end component;

component Correlation_function is
	generic(
		function_length : integer := 50
	);
	port(
		EN: in std_logic := '0';
		CLK: in std_logic;
		input_adc_values: in std_logic_vector(400-1 downto 0);
		output_value : out std_logic_vector(19 downto 0);
		input_function_ram : in std_logic_vector(255 downto 0)
	);
end component;

component UART_Controller is
generic(
	baud_rate : integer := 9600
);
port(
	CLK: in std_logic;
	SEND_DATA_IN: in std_logic_vector(7 downto 0) := (others => '0');
	SEND_DATA_IN_REQ: in std_logic := '0';
	TX : out std_logic := '1'
);
end component;

component UART_RX is
	port(
	CLK : in std_logic := '0';
	RX : in std_logic := '0';
	DATA_OUT : out std_logic_vector(7 downto 0) := (others => '0');
	DATA_READY : out std_logic := '0'
	);
end component;

component corr_func_rom_1 IS
	PORT
	(
		address_a		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q_a		: OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (127 DOWNTO 0)
	);
END component;

--Function ram signals
signal func_ram_address_bus : std_logic_vector(7 downto 0) := (others => '0');
signal func_ram_en : std_logic := '0';
signal func_ram_out : std_logic_vector(7 downto 0);

--Correlation signals
signal c_en : std_logic := '0';
signal c_long_value : std_logic_vector(20-1 downto 0) := (others => '0');

--Big ram for voltage shifting
signal address_a_1		: STD_LOGIC_VECTOR (2 DOWNTO 0);
signal address_b_1		: STD_LOGIC_VECTOR (2 DOWNTO 0);
signal data_a_1		: STD_LOGIC_VECTOR (127 DOWNTO 0);
signal data_b_1		: STD_LOGIC_VECTOR (127 DOWNTO 0);
signal q_a_1		: STD_LOGIC_VECTOR (127 DOWNTO 0);
signal q_b_1		: STD_LOGIC_VECTOR (127 DOWNTO 0);

signal address_a_2		: STD_LOGIC_VECTOR (2 DOWNTO 0);
signal address_b_2		: STD_LOGIC_VECTOR (2 DOWNTO 0);
signal data_a_2		: STD_LOGIC_VECTOR (127 DOWNTO 0);
signal data_b_2		: STD_LOGIC_VECTOR (127 DOWNTO 0);
signal q_a_2		: STD_LOGIC_VECTOR (127 DOWNTO 0);
signal q_b_2		: STD_LOGIC_VECTOR (127 DOWNTO 0);

signal q : std_logic_vector(511 downto 0) := (others => '0');
signal data : std_logic_vector(512 downto 0) := (others => '0');

--Big ram for correlation function
--signal address_a_3		: STD_LOGIC_VECTOR (2 DOWNTO 0);
--signal address_b_3		: STD_LOGIC_VECTOR (2 DOWNTO 0);
--signal data_a_3		: STD_LOGIC_VECTOR (127 DOWNTO 0);
--signal data_b_3		: STD_LOGIC_VECTOR (127 DOWNTO 0);
--signal q_a_3		: STD_LOGIC_VECTOR (127 DOWNTO 0);
--signal q_b_3		: STD_LOGIC_VECTOR (127 DOWNTO 0);

--signal address_a_4		: STD_LOGIC_VECTOR (2 DOWNTO 0);
--signal address_b_4		: STD_LOGIC_VECTOR (2 DOWNTO 0);
--signal data_a_4		: STD_LOGIC_VECTOR (127 DOWNTO 0);
--signal data_b_4		: STD_LOGIC_VECTOR (127 DOWNTO 0);
--signal q_a_4		: STD_LOGIC_VECTOR (127 DOWNTO 0);
--signal q_b_4		: STD_LOGIC_VECTOR (127 DOWNTO 0);

signal address_3_a		: STD_LOGIC_VECTOR (4 DOWNTO 0) := (others => '0');
signal address_3_b		: STD_LOGIC_VECTOR (4 DOWNTO 0) := (others => '0');
--signal q_a_3		: STD_LOGIC_VECTOR (287 DOWNTO 0) := (others => '0');
--signal q_b_3		: STD_LOGIC_VECTOR (287 DOWNTO 0) := (others => '0');
signal q_3 : std_logic_vector(255 downto 0) := (others => '0');

--Misc
signal sync_clk : std_logic := '0';

signal RECEIVED_CODE : std_logic_vector(5 downto 0);

--UART
signal UART_CONTROLLER_DATA_IN : std_logic_vector(7 downto 0) := (others => '0');
signal UART_CONTROLLER_DATA_REQ : std_Logic := '0';
signal UART_TX_SIG : std_logic := '1';
signal data_out_sig : std_logic_vector(7 downto 0) := (others => '0');
signal data_ready_sig : std_logic := '0';

signal shift_en : std_logic := '0';

begin

adc_ram_shifter_1 : adc_ram_shifter port map(CLK => sync_clk, address_a_1 => address_a_1, address_a_2 => address_a_2, address_b_1 => address_b_1,
	address_b_2 => address_b_2,
	new_adc_in => ADC_IN, stop_shift => shift_en, q => q, data => data);


ADC_Manager1 : ADC_Manager port map(CLK => CLK, DATA_OUT => RECEIVED_CODE, SYNC => sync_clk,
												c_long_value_in => c_long_value,
												c_en => c_en, DATA_DONE => UART_CONTROLLER_DATA_REQ, shift_en => shift_en,
												corr_func_rom_adress_a => address_3_a, corr_func_rom_adress_b => address_3_b);
wizard_ram_1 : wizard_ram port map(address => func_ram_address_bus, clock => CLK, data => "00000000", wren => '0', q => func_ram_out);
clock_divider1 : clock_divider port map(CLK => CLK, Prescaler => std_Logic_vector(to_unsigned(5, 16)), CLK_OUT => sync_clk);
corr_long : Correlation_function generic map(function_length => 50) port map(EN => c_en, CLK => CLK, output_value => c_long_value, 
											input_adc_values => q(399 downto 0), input_function_ram => q_3);

--Ram for shifting voltage
ram1 : big_ram_wizard port map(clock => CLK, address_a => address_a_1, address_b => address_b_1, data_a => data_a_1,
										data_b => data_b_1, wren_a => '1', wren_b => '1', q_a => q_a_1, q_b => q_b_1);
ram2 : big_ram_wizard port map(clock => CLK, address_a => address_a_2, address_b => address_b_2, data_a => data_a_2,
										data_b => data_b_2, wren_a => '1', wren_b => '1', q_a => q_a_2, q_b => q_b_2);
--Ram for correlation functions
--ram3 : big_ram_wizard port map(clock => CLK, address_a => address_a_3, address_b => address_b_3, data_a => data_a_3,
--										data_b => data_b_3, wren_a => '1', wren_b => '1', q_a => q_a_3, q_b => q_b_3);
--ram4 : big_ram_wizard port map(clock => CLK, address_a => address_a_4, address_b => address_b_4, data_a => data_a_4,
--										data_b => data_b_4, wren_a => '1', wren_b => '1', q_a => q_a_4, q_b => q_b_4);
ram3 : corr_func_rom_1 port map(clock => CLK, address_a => address_3_a, address_b => address_3_b, q_a => q_3(255 downto 128), q_b => q_3(127 downto 0));						

					
DATA_OUT <= RECEIVED_CODE;
SYNC <= sync_clk;

q <= q_b_2 & q_a_2 & q_b_1 & q_a_1;
data_a_1 <= data(128-1 downto 0);
data_b_1 <= data(128*2-1 downto 128*1);
data_a_2 <= data(128*3-1 downto 128*2);
data_b_2 <= data(128*4-1 downto 128*3);

UART_CONTROLLER_DATA_IN <= "00" & RECEIVED_CODE;

--Uart_rx_stuff : UART_RX port map(CLK => CLK, RX => UART_TX_SIG, DATA_OUT => data_out_sig, DATA_READY => data_ready_sig);

UART_Controller_1 : UART_Controller generic map(baud_rate => baud_rate) port map(CLK => CLK,
	SEND_DATA_IN => UART_CONTROLLER_DATA_IN,
	SEND_DATA_IN_REQ => UART_CONTROLLER_DATA_REQ,
	TX => UART_TX_SIG);
	
UART_TX <= UART_TX_SIG;

end architecture;