library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity UNI_Projektas is --Up to 260MHz operation
generic (
	BAUD_RATE_PRESCALER : integer := 1302; --434 arba  kad 115200 baud reitui toki prescaleri naudojam 
	MAX_ADDRESS_COUNTS : integer :=  1000;
	SEND_CLK_COUNTER_MAX : integer := 30
);
port(
	CLK : in std_logic;
	BUTTON : in std_logic;
	
	--ADC SIGNALS
	ADC_SHDN : out std_logic := 'Z'; --1 - ADC OFF, 0 - ADC ON
	ADC_SYNC : out std_logic := 'Z'; --Sinchronizacija tarp FPGA CLk ir ADC vidinio CLK
	ADC_CLK : out std_logic := 'Z';
	ADC_DORB : in std_logic := 'Z'; --Data over range
	ADC_DORA : in std_logic := 'Z';
	ADC_DCLKB : in std_logic := 'Z'; --Valid data on rising edge
	ADC_DCLKA : in std_logic := 'Z';
	ADC_BIT_B : in std_logic_vector(9 downto 0) := (others => 'Z');
	ADC_BIT_A : in std_logic_vector(9 downto 0) := (others => 'Z');
	--ADC SPI
	ADC_SPI_SDIN : inout std_logic := 'Z';
	ADC_SPI_SCLK : out std_logic := 'Z';
	ADC_SPI_CS : out std_logic := 'Z';
	
	--SPI TO FPGA
	SPI_MOSI : inout std_logic := 'Z';
	SPI_MISO : inout std_logic := 'Z';
	SPI_SCLK : inout std_logic := 'Z';
	SPI_CS : inout std_logic := 'Z';
	
	--MRAM
	MRAM_OUTPUT_EN : out std_logic := 'Z';
	MRAM_A : out std_logic_vector(17 downto 0) := (others => 'Z');
	MRAM_EN : out std_logic := 'Z';
	MRAM_WRITE_EN : out std_logic := 'Z';
	MRAM_UPPER_EN : out std_logic := 'Z';
	MRAM_LOWER_EN : out std_logic := 'Z';
	MRAM_D : inout std_logic_vector(15 downto 0) := (others => 'Z');
	
	--UART
	UART_RX : in std_logic := 'Z';
	UART_TX : out std_logic := '1'
	
);
end entity;

architecture arc of UNI_Projektas is

--Components
--component ADC_Manager is
--	port(
--	CLK : in std_logic;
--	DATA_OUT : out std_logic_vector(6-1 downto 0);
--	DATA_DONE : out std_logic := '0';
--
--	c_long_value_in : in std_logic_vector(20-1 downto 0) := (others => '0');
--	c_en : out std_logic := '0';
--	shift_en : out std_logic := '0';
--	
--	SYNC: in std_logic;
--	corr_func_rom_adress_a	: out STD_LOGIC_VECTOR (4 DOWNTO 0) := (others => '0');
--	corr_func_rom_adress_b	: out STD_LOGIC_VECTOR (4 DOWNTO 0) := (others => '0')
--	);
--end component;

--component Clock_divider is
--	port(
--	CLK: in std_logic;
--	Prescaler : in std_logic_vector(15 downto 0);
--
--	CLK_OUT: out std_logic
--	);
--end component;

--component wizard_ram IS
--	PORT
--	(
--		address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
--		clock		: IN STD_LOGIC  := '1';
--		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
--		wren		: IN STD_LOGIC ;
--		q			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
--	);
--END component;

--component big_ram_wizard IS
--	PORT
--	(
--		address_a	: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
--		address_b	: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
--		clock			: IN STD_LOGIC  := '1';
--		data_a		: IN STD_LOGIC_VECTOR (127 DOWNTO 0);
--		data_b		: IN STD_LOGIC_VECTOR (127 DOWNTO 0);
--		wren_a		: IN STD_LOGIC  := '0';
--		wren_b		: IN STD_LOGIC  := '0';
--		q_a			: OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
--		q_b			: OUT STD_LOGIC_VECTOR (127 DOWNTO 0)
--	);
--END component;

--component ADC_ram_shifter is
--	port (
--		CLK : in std_logic := '0';
--		address_a_1		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
--		address_b_1		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
--		
--		address_a_2		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
--		address_b_2		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
--		
--		new_adc_in : std_logic_vector(7 downto 0);
--		stop_shift : in std_logic := '0';
--		q : in std_logic_vector(511 downto 0);
--		data : out std_logic_vector(512 downto 0)
--	);
--end component;

--component Correlation_function is
--	generic(
--		function_length : integer := 50
--	);
--	port(
--		EN: in std_logic := '0';
--		CLK: in std_logic;
--		input_adc_values: in std_logic_vector(400-1 downto 0);
--		output_value : out std_logic_vector(19 downto 0);
--		input_function_ram : in std_logic_vector(255 downto 0)
--	);
--end component;

component UART_Controller is
generic(
	BAUD_RATE_PRESCALER : integer := 9600
);
port(
	CLK: in std_logic;
	SEND_DATA_IN: in std_logic_vector(7 downto 0) := (others => '0');
	UART_FIFO_EMPTY: out std_logic := '0';
	SEND_DATA_IN_REQ: in std_logic := '0';
	TX : out std_logic := '1'
);
end component;

--component corr_func_rom_1 IS
--	PORT
--	(
--		address_a		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
--		address_b		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
--		clock		: IN STD_LOGIC  := '1';
--		q_a		: OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
--		q_b		: OUT STD_LOGIC_VECTOR (127 DOWNTO 0)
--	);
--END component;

component SPI_Controller is 
generic(
	SEND_CLK_COUNTER_MAX : integer := 500;
	BITS : integer := 16;
	SEND_CLK_WAIT_MAX : integer := 100 * 10
);
port(
	CLK : in std_logic;
	SPI_MOSI : inout std_logic;
	SPI_SCLK : out std_logic;
	SPI_CS : out std_logic;
	SPI_send_data : in std_logic_vector(BITS-1 downto 0) := (others => '0');
	SPI_send_irq : in std_logic := '0';
	SPI_FIFO_EMPTY : out std_logic := '0'
);
end component;

component wizard_pll IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC 
	);
end component;

--Function ram signals
--signal func_ram_address_bus : std_logic_vector(7 downto 0) := (others => '0');
--signal func_ram_en : std_logic := '0';
--signal func_ram_out : std_logic_vector(7 downto 0);

--Correlation signals
--signal c_en : std_logic := '0';
--signal c_long_value : std_logic_vector(20-1 downto 0) := (others => '0');

--Big ram for voltage shifting
--signal address_a_1		: STD_LOGIC_VECTOR (2 DOWNTO 0);
--signal address_b_1		: STD_LOGIC_VECTOR (2 DOWNTO 0);
--signal data_a_1		: STD_LOGIC_VECTOR (127 DOWNTO 0);
--signal data_b_1		: STD_LOGIC_VECTOR (127 DOWNTO 0);
--signal q_a_1		: STD_LOGIC_VECTOR (127 DOWNTO 0);
--signal q_b_1		: STD_LOGIC_VECTOR (127 DOWNTO 0);

--signal address_a_2		: STD_LOGIC_VECTOR (2 DOWNTO 0);
--signal address_b_2		: STD_LOGIC_VECTOR (2 DOWNTO 0);
--signal data_a_2		: STD_LOGIC_VECTOR (127 DOWNTO 0);
--signal data_b_2		: STD_LOGIC_VECTOR (127 DOWNTO 0);
--signal q_a_2		: STD_LOGIC_VECTOR (127 DOWNTO 0);
--signal q_b_2		: STD_LOGIC_VECTOR (127 DOWNTO 0);

--signal q : std_logic_vector(511 downto 0) := (others => '0');
--signal data : std_logic_vector(512 downto 0) := (others => '0');



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

--signal address_3_a		: STD_LOGIC_VECTOR (4 DOWNTO 0) := (others => '0');
--signal address_3_b		: STD_LOGIC_VECTOR (4 DOWNTO 0) := (others => '0');
--signal q_a_3		: STD_LOGIC_VECTOR (287 DOWNTO 0) := (others => '0');
--signal q_b_3		: STD_LOGIC_VECTOR (287 DOWNTO 0) := (others => '0');
--signal q_3 : std_logic_vector(255 downto 0) := (others => '0');

--Misc
--signal RECEIVED_CODE : std_logic_vector(5 downto 0);


--signal shift_en : std_logic := '0';

component MRAM_Controller is
	port(
	CLK : in std_logic := '0';
	data_in : in std_logic_vector(15 downto 0) := (others => '0');
	data_out : out std_logic_vector(15 downto 0) := (others => '0');
	address_in_write : in std_logic_vector(17 downto 0) := (others => '0');
	address_in_read : in std_logic_vector(17 downto 0) := (others => '0');
	write_data : in std_logic := '0';
	read_data : in std_logic := '0';
	done : out std_logic := '0';
	
	MRAM_EN : out std_logic := '1';
	MRAM_OUTPUT_EN : out std_logic := '1';
	MRAM_WRITE_EN : out std_logic := '1';
	MRAM_UPPER_EN : out std_logic := '1';
	MRAM_LOWER_EN : out std_logic := '1';
	MRAM_A : out std_logic_vector(17 downto 0) := (others => '0');
	MRAM_D : inout std_logic_vector(15 downto 0) := (others => 'Z')
	);
end component;

component STATE_MANAGER is
port (
	CLK : in std_logic := '0';
	SETUP_DONE : in std_logic := '0';
	READ_ADC_DONE : in std_logic := '0';
	WRITE_OUT_DONE : in std_logic := '0';
	
	EN_READ_ADC : out std_logic := '0';
	EN_WRITE_OUT_MRAM : out std_logic := '0'
	
);
end component;

component Setup_manager is
port(
	CLK : in std_logic := '0';
	EN_SETUP : in std_logic := '0';
	
	SPI_send_data : out std_logic_vector(16-1 downto 0) := (others => '0');
	SPI_send_irq : out std_logic := '0';
	SPI_FIFO_EMPTY : in std_logic := '0';
	ADC_SYNC : out std_logic := '0';
	
	SETUP_DONE : out std_logic := '0'
);
end component;

component Read_adc_manager is
generic(
	MAX_ADDRESS_COUNTS : integer :=  100
);
port(
	CLK : in std_logic := '0';
	DCLK : in std_logic := '0';
	ADC_BIT : in std_logic_vector(9 downto 0) := (others => 'Z');
	MRAM_DATA_OUT : out std_logic_vector(15 downto 0) := (others => '0');
	MRAM_ADDRESS_OUT : out std_logic_vector(17 downto 0) := (others => '0');
	MRAM_WRITE_DATA : out std_logic := '0';
	MRAM_DONE : in std_logic := '0';
	
	EN_READ_ADC : in std_logic := '0';
	READ_ADC_DONE : out std_logic := '0'
);
end component;

component Write_out_mram_manager is
generic(
	MAX_ADDRESS_COUNTS : integer :=  100
);
port(
	CLK : in std_logic := '0';
	UART_SEND_DATA : out std_logic_vector(7 downto 0);
	UART_DATA_IRQ : out std_logic := '0';
	UART_FIFO_EMPTY : in std_logic := '0';
	
	MRAM_DATA_OUT : in std_logic_vector(15 downto 0) := (others => '0');
	MRAM_ADDRESS_IN : out std_logic_vector(17 downto 0) := (others => '0');
	MRAM_READ_DATA : out std_logic := '0';
	MRAM_DONE : in std_logic := '0';

	WRITE_OUT_DONE : out std_logic := '0';
	EN_WRITE_OUT_MRAM : in std_logic := '0'
);
end component;

component Corr_Main is
generic(
	BUFFER_LENGTH : integer := 50;
	BUFFER_WIDTH : integer := 8
);
port(
	CLK : in std_logic := '0';
	ADC_BITS : in std_logic_vector(15 downto 0) := (others => '0');
	ADC_BITS_VALID : in std_logic := '0';
	PREAMBULE_FOUND : out std_logic := '0'
);
end component;

signal CLK_160 : std_logic  := '0';

--MRAM

signal MRAM_DATA_IN : std_logic_vector(15 downto 0) := (others => '0');
signal MRAM_DATA_OUT : std_logic_vector(15 downto 0) := (others => '0');
signal MRAM_ADDRESS_IN_READ : std_logic_vector(17 downto 0) := (others => '0');
signal MRAM_ADDRESS_IN_WRITE : std_logic_vector(17 downto 0) := (others => '0');
signal MRAM_WRITE_DATA : std_logic := '0';
signal MRAM_READ_DATA : std_logic := '0';
signal MRAM_DONE : std_logic := '0';

--State machine
signal SETUP_DONE : std_logic := '0';
signal READ_ADC_DONE : std_logic := '0';
signal WRITE_OUT_DONE : std_logic := '0';

signal EN_SETUP : std_logic := '1';
signal EN_READ_ADC : std_logic := '0';
signal EN_WRITE_OUT_MRAM : std_logic := '0';

--SPI

signal ADC_SPI_send_data : std_logic_vector(16-1 downto 0) := (others => '0');
signal ADC_SPI_send_irq : std_logic := '0';
signal ADC_SPI_send_irq1 : std_logic := '0';
signal ADC_SPI_send_irq2 : std_logic := '0';
signal ADC_SPI_fifo_empty : std_logic := '0';
signal button_active : std_logic := '0';

--UART
signal UART_SEND_DATA : std_logic_vector(7 downto 0);
signal UART_DATA_IRQ : std_logic := '0';
signal UART_FIFO_EMPTY : std_logic := '0';

begin

pl : wizard_pll port map(inclk0 => CLK, c0 => CLK_160); --160MHz
ADC_SHDN <= '0';
ADC_CLK <= CLK;

this_mram_controller : MRAM_Controller port map(CLK => CLK_160, data_in => MRAM_DATA_IN, data_out => MRAM_DATA_OUT, address_in_write => MRAM_ADDRESS_IN_WRITE, address_in_read => MRAM_ADDRESS_IN_READ, 
							write_data => MRAM_WRITE_DATA, read_data => MRAM_READ_DATA, done => MRAM_DONE, MRAM_EN => MRAM_EN, MRAM_OUTPUT_EN => MRAM_OUTPUT_EN,
							MRAM_WRITE_EN => MRAM_WRITE_EN, MRAM_UPPER_EN => MRAM_UPPER_EN, MRAM_LOWER_EN => MRAM_LOWER_EN, MRAM_A => MRAM_A, MRAM_D => MRAM_D);

this_state_manager : state_manager port map (CLK => CLK_160, SETUP_DONE => SETUP_DONE, READ_ADC_DONE => READ_ADC_DONE, WRITE_OUT_DONE => WRITE_OUT_DONE, 
							EN_READ_ADC => EN_READ_ADC, EN_WRITE_OUT_MRAM => EN_WRITE_OUT_MRAM);
this_setup_manager : setup_manager port map(CLK => CLK_160, EN_SETUP => EN_SETUP, SPI_send_data => ADC_SPI_Send_data, SPI_send_irq => ADC_SPI_Send_irq1, SETUP_DONE => SETUP_DONE,
							SPI_FIFO_EMPTY => ADC_SPI_fifo_empty, ADC_SYNC => ADC_SYNC);
this_read_adc_manager : read_adc_manager generic map(MAX_ADDRESS_COUNTS => MAX_ADDRESS_COUNTS)
							port map(CLK => CLK_160, DCLK => ADC_DCLKA, ADC_BIT => ADC_BIT_A, MRAM_DATA_OUT => MRAM_DATA_IN, 
							MRAM_ADDRESS_OUT => MRAM_ADDRESS_IN_WRITE, MRAM_WRITE_DATA => MRAM_WRITE_DATA, MRAM_DONE => MRAM_DONE, EN_READ_ADC => EN_READ_ADC,
							READ_ADC_DONE => READ_ADC_DONE);
this_write_out_mram_manager : write_out_mram_manager generic map(MAX_ADDRESS_COUNTS => MAX_ADDRESS_COUNTS)
							port map (CLK => CLK_160,UART_SEND_DATA=>UART_SEND_DATA, UART_DATA_IRQ => UART_DATA_IRQ, 
							MRAM_DATA_OUT => MRAM_DATA_OUT, MRAM_ADDRESS_IN => MRAM_ADDRESS_IN_READ, MRAM_READ_DATA => MRAM_READ_DATA, MRAM_DONE => MRAM_DONE,
							WRITE_OUT_DONE => WRITE_OUT_DONE, EN_WRITE_OUT_MRAM => EN_WRITE_OUT_MRAM, UART_FIFO_EMPTY => UART_FIFO_EMPTY);

--spi_send_data_multi_or : Multi_OR generic map (BITS => 16) port map(input1 => ADC_SPI_send_data1, input2 => ADC_SPI_send_data2, output => ADC_SPI_send_data);
--ADC_SPI_send_irq_multi_or : Multi_OR generic map(BITS => 1) port map (input1 => ADC_SPI_send_irq1,input2 => ADC_SPI_send_irq2, output => ADC_SPI_send_irq);
ADC_SPI_send_irq <= ADC_SPI_Send_irq1 or ADC_SPI_send_irq2;
adc_spi_controller : SPI_Controller generic map (SEND_CLK_COUNTER_MAX => SEND_CLK_COUNTER_MAX, BITS => 16, SEND_CLK_WAIT_MAX => 20) port map(CLK => CLK_160, SPI_MOSI => ADC_SPI_SDIN, SPI_SCLK => ADC_SPI_SCLK,
							SPI_CS => ADC_SPI_CS, SPI_send_data => ADC_SPI_send_data, SPI_send_irq => ADC_SPI_Send_irq, SPI_FIFO_EMPTY => ADC_SPI_fifo_empty);
UART_Controller_1 : UART_Controller generic map(BAUD_RATE_PRESCALER => BAUD_RATE_PRESCALER) port map(CLK => CLK_160,
	SEND_DATA_IN => UART_SEND_DATA,
	SEND_DATA_IN_REQ => UART_DATA_IRQ,
	TX => UART_TX, UART_FIFO_EMPTY => UART_FIFO_EMPTY);
							
Corr_Main_1 : Corr_Main generic map (BUFFER_LENGTH => 50, BUFFER_WIDTH => 8) port map(CLK => CLK_160, ADC_BITS => MRAM_DATA_IN, 
								ADC_BITS_VALID => MRAM_WRITE_DATA, PREAMBULE_FOUND => SPI_CS);		

--adc_ram_shifter_1 : adc_ram_shifter port map(CLK => sync_clk, address_a_1 => address_a_1, address_a_2 => address_a_2, address_b_1 => address_b_1,
--	address_b_2 => address_b_2,
--	new_adc_in => ADC_BIT_A(7 downto 0), stop_shift => shift_en, q => q, data => data);


--ADC_Manager1 : ADC_Manager port map(CLK => CLK, DATA_OUT => RECEIVED_CODE, SYNC => sync_clk,
--												c_long_value_in => c_long_value,
--												c_en => c_en, DATA_DONE => UART_CONTROLLER_DATA_REQ, shift_en => shift_en,
--												corr_func_rom_adress_a => address_3_a, corr_func_rom_adress_b => address_3_b);
--wizard_ram_1 : wizard_ram port map(address => func_ram_address_bus, clock => CLK, data => "00000000", wren => '0', q => func_ram_out);



--clock_divider1 : clock_divider port map(CLK => CLK, Prescaler => std_Logic_vector(to_unsigned(5, 16)), CLK_OUT => sync_clk);
--corr_long : Correlation_function generic map(function_length => 50) port map(EN => c_en, CLK => CLK, output_value => c_long_value, 
--											input_adc_values => q(399 downto 0), input_function_ram => q_3);

--Ram for shifting voltage
--ram1 : big_ram_wizard port map(clock => CLK, address_a => address_a_1, address_b => address_b_1, data_a => data_a_1,
--										data_b => data_b_1, wren_a => '1', wren_b => '1', q_a => q_a_1, q_b => q_b_1);
--ram2 : big_ram_wizard port map(clock => CLK, address_a => address_a_2, address_b => address_b_2, data_a => data_a_2,
--										data_b => data_b_2, wren_a => '1', wren_b => '1', q_a => q_a_2, q_b => q_b_2);
--Ram for correlation functions
--ram3 : big_ram_wizard port map(clock => CLK, address_a => address_a_3, address_b => address_b_3, data_a => data_a_3,
--										data_b => data_b_3, wren_a => '1', wren_b => '1', q_a => q_a_3, q_b => q_b_3);
--ram4 : big_ram_wizard port map(clock => CLK, address_a => address_a_4, address_b => address_b_4, data_a => data_a_4,
--										data_b => data_b_4, wren_a => '1', wren_b => '1', q_a => q_a_4, q_b => q_b_4);
--ram3 : corr_func_rom_1 port map(clock => CLK, address_a => address_3_a, address_b => address_3_b, q_a => q_3(255 downto 128), q_b => q_3(127 downto 0));						

					
--DATA_OUT <= RECEIVED_CODE;
--ADC_SYNC <= sync_clk;

--q <= q_b_2 & q_a_2 & q_b_1 & q_a_1;
--data_a_1 <= data(128-1 downto 0);
--data_b_1 <= data(128*2-1 downto 128*1);
--data_a_2 <= data(128*3-1 downto 128*2);
--data_b_2 <= data(128*4-1 downto 128*3);

--UART_CONTROLLER_DATA_IN <= "00" & RECEIVED_CODE;

process(CLK_160)
begin
	if falling_edge(CLK_160) then
		if(BUTTON = '0') then
			button_active <= '1';
			end if;
		end if;
end process;


end architecture;