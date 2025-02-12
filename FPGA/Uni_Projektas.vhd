library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity UNI_Projektas is --Up to 260MHz operation
generic (
	BAUD_RATE : integer := 921600;
	MAX_ADDRESS_COUNTS : integer := 20;
	SEND_CLK_COUNTER_MAX : integer := 30
);
port(
	CLK : in std_logic;
	BUTTON : in std_logic;
	--ADC SIGNALS
	ADC_SHDN : out std_logic := 'Z'; --1 - ADC OFF, 0 - ADC ON
	ADC_SYNC : out std_logic := 'Z'; --Sinchronizacija tarp FPGA CLk ir ADC vidinio CLK
	ADC_CLK : out std_logic := 'Z';
	ADC_DORB : in std_logic := '0'; --Data over range
	ADC_DORA : in std_logic := '0';
	ADC_DCLKB : in std_logic := '0'; --Valid data on rising edge
	ADC_DCLKA : in std_logic := '0';
	ADC_BIT_B : in std_logic_vector(9 downto 0) := (others => '0');
	ADC_BIT_A : in std_logic_vector(9 downto 0) := (others => '0');
	--ADC SPI
	ADC_SPI_SDIN : inout std_logic := 'Z';
	ADC_SPI_SCLK : out std_logic := 'Z';
	ADC_SPI_CS : out std_logic := 'Z';
	
	--SPI TO FPGA
	SPI_MOSI : in std_logic := '0';
	SPI_MISO : inout std_logic := 'Z';
	SPI_SCLK : in std_logic := '0';
	SPI_CS : in std_logic := '0';
	
	--MRAM
	MRAM_OUTPUT_EN : out std_logic := 'Z';
	MRAM_A : out std_logic_vector(16 downto 0) := (others => 'Z');
	MRAM_EN : out std_logic := 'Z';
	MRAM_WRITE_EN : out std_logic := 'Z';
	MRAM_D : inout std_logic_vector(7 downto 0) := (others => 'Z');
	
	--UART
	UART_TX : out std_logic := '1';
	
	--RTC
	PPS : in std_logic := '0';
	
	--IRQ
	PACKET_IRQ : out std_logic := '0';
	
	--DEBUG
	DEBUG_1 : out std_logic := '0';
	DEBUG_2 : out std_logic := '0'
);
end entity;

architecture arc of UNI_Projektas is

component UART_TX_DRIVER is
generic(
	BAUD_RATE : integer := 9600
);
port(
	CLK: in std_logic;
	SEND_DATA : in std_logic_vector(7 downto 0);
	START_SEND_DATA : in std_logic;
	TX_BUSY : out std_logic := '0';
	TX : out std_logic
);
end component;

component SPI_MASTER is 
generic(
	SEND_CLK_COUNTER_MAX : integer := 500;
	BITS : integer := 16
);
port(
	CLK: in std_logic;
	SPI_SCLK: out std_logic := '0';
	SPI_MOSI: inout std_logic := '0';
	SPI_CS: out std_logic := '1';
	SEND_DATA: in std_logic_vector(BITS-1 downto 0) := (others => '0');
	SEND_IRQ: in std_logic := '0';
	SEND_DONE: out std_logic := '0'
);
end component;

component wizard_pll IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC 
	);
end component;

component MRAM_Controller is
	port(
	CLK : in std_logic := '0';
	data_in : in std_logic_vector(7 downto 0) := (others => '0');
	data_out : out std_logic_vector(7 downto 0) := (others => '0');
	address_in : in std_logic_vector(16 downto 0) := (others => '0');
	write_data : in std_logic := '0';
	read_data : in std_logic := '0';
	done : out std_logic := '0';
	
	MRAM_EN : out std_logic := '1';
	MRAM_OUTPUT_EN : out std_logic := '1';
	MRAM_WRITE_EN : out std_logic := '1';
	MRAM_A : out std_logic_vector(16 downto 0) := (others => '0');
	MRAM_D : inout std_logic_vector(7 downto 0) := (others => 'Z')
	);
end component;

component STATE_MANAGER is
port (
	CLK : in std_logic := '0';
	SETUP_DONE : in std_logic := '0';
	WRITE_OUT_DONE : in std_logic := '0';
	CORR_DONE : in std_logic := '0';
	
	EN_SETUP : out std_logic := '1';
	EN_READ_ADC : out std_logic := '0';
	EN_WRITE_OUT_MRAM : out std_logic := '0';
	EN_CORR : out std_logic := '0'
);
end component;

component Setup_manager is
port(
	CLK : in std_logic := '0';
	EN_SETUP : in std_logic := '0';
	
	SPI_send_data : out std_logic_vector(16-1 downto 0) := (others => '0');
	SPI_send_irq : out std_logic := '0';
	SPI_DONE : in std_logic := '0';
	ADC_SYNC : out std_logic := '0';
	
	SETUP_DONE : out std_logic := '0'
);
end component;

component Read_adc_manager is
port(
	CLK : in std_logic := '0';
	DCLK : in std_logic := '0';
	ADC_BIT : in std_logic_vector(9 downto 0) := (others => '0');
	BITS_OUT : out std_logic_vector(9 downto 0) := (others => '0');
	ADC_BIT_VALID : out std_logic := '0';
	
	EN_READ_ADC : in std_logic := '0'
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
	
	MRAM_DATA_OUT : in std_logic_vector(7 downto 0) := (others => '0');
	MRAM_ADDRESS_IN : out std_logic_vector(16 downto 0) := (others => '0');
	MRAM_READ_DATA : out std_logic := '0';
	MRAM_DONE : in std_logic := '0';

	WRITE_OUT_DONE : out std_logic := '0';
	EN_WRITE_OUT_MRAM : in std_logic := '0'
);
end component;

component Corr_Main is
generic(
	BUFFER_LENGTH : integer := 50;
	BUFFER_WIDTH : integer := 9;
	MAX_ADDRESS_COUNTS : integer :=  1000
);
port(
	CLK : in std_logic := '0';
	ADC_BITS : in std_logic_vector(9 downto 0) := (others => '0');
	ADC_BITS_VALID : in std_logic := '0';
	PREAMBULE_FOUND : out std_logic := '0';
	
	EN_CORR : in std_logic := '0';
	CORR_DONE : out std_logic := '0';
	MRAM_DATA_OUT : out std_logic_vector(7 downto 0) := (others => '0');
	MRAM_ADDRESS_OUT : out std_logic_vector(16 downto 0) := (others => '0');
	MRAM_WRITE_DATA : out std_logic := '0';
	MRAM_DONE : in std_logic := '0';
	
	PACKET_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	PACKET_VALID : out std_logic := '0';
	
	PACKET_IRQ : out std_logic := '0'
);
end component;

component DATA_INTERFACE is
port(
	CLK: in std_Logic := '0';
	SPI_SCLK: in std_logic := '0';
	SPI_MOSI: in std_logic := '0';
	SPI_MISO: inout std_logic := '0';
	SPI_CS: in std_logic := '1';
	
	PACKET_IN_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	PACKET_IN_VALID : in std_logic := '0';
	
	STATUS_INIT_DONE : in std_logic := '0';
	PPS : in std_logic := '0';
	PREAMBULE_FOUND : in std_Logic := '0';
	DEBUG_2 : out std_logic := '0'
);
end component;

signal CLK_150 : std_logic  := '0';

--ADC
signal ADC_BIT_VALID : std_logic := '0';
signal ADC_BITS_OUT : std_logic_vector(9 downto 0) := (others => '0');

--MRAM
signal MRAM_DATA_IN : std_logic_vector(7 downto 0) := (others => '0');
signal MRAM_DATA_OUT : std_logic_vector(7 downto 0) := (others => '0');
signal MRAM_ADDRESS_IN_READ : std_logic_vector(16 downto 0) := (others => '0');
signal MRAM_ADDRESS_IN_WRITE : std_logic_vector(16 downto 0) := (others => '0');
signal MRAM_ADDRESS_IN_COMBINED : std_logic_vector(16 downto 0) := (others => '0');
signal MRAM_WRITE_DATA : std_logic := '0';
signal MRAM_READ_DATA : std_logic := '0';
signal MRAM_DONE : std_logic := '0';

--State machine
signal SETUP_DONE : std_logic := '0';
signal WRITE_OUT_DONE : std_logic := '0';
signal CORR_DONE : std_logic := '0';
signal EN_SETUP : std_logic := '0';
signal EN_READ_ADC : std_logic := '0';
signal EN_WRITE_OUT_MRAM : std_logic := '0';
signal EN_CORR : std_logic := '0';

--SPI
signal ADC_SPI_send_data : std_logic_vector(15 downto 0) := (others => '0');
signal ADC_SPI_send_irq : std_logic := '0';
signal ADC_SPI_send_irq1 : std_logic := '0';
signal ADC_SPI_send_irq2 : std_logic := '0';
signal ADC_SPI_DONE : std_logic := '0';
signal button_active : std_logic := '0';

--UART
signal UART_SEND_DATA : std_logic_vector(7 downto 0);
signal UART_DATA_IRQ : std_logic := '0';
signal UART_FIFO_EMPTY : std_logic := '0';

--DATA INTERFACE
signal PACKET_DATA : std_logic_vector(7 downto 0) := (others => '0');
signal PACKET_VALID : std_logic := '0';
signal STATUS_INIT_DONE : std_logic := '0';

signal PREAMB_FOUND : std_logic := '0'; --For debugging

begin
DEBUG_1 <= PREAMB_FOUND;

pll_1 : wizard_pll port map(inclk0 => CLK, c0 => CLK_150); --50 MHz -> 150 MHz
ADC_SHDN <= '0';
ADC_CLK <= CLK;

MRAM_ADDRESS_IN_COMBINED <= MRAM_ADDRESS_IN_WRITE or MRAM_ADDRESS_IN_READ;

this_mram_controller : MRAM_Controller port map(CLK => CLK_150, data_in => MRAM_DATA_IN, data_out => MRAM_DATA_OUT,
							address_in => MRAM_ADDRESS_IN_COMBINED, write_data => MRAM_WRITE_DATA, read_data => MRAM_READ_DATA,
							done => MRAM_DONE, MRAM_EN => MRAM_EN, MRAM_OUTPUT_EN => MRAM_OUTPUT_EN, MRAM_WRITE_EN => MRAM_WRITE_EN,
							MRAM_A => MRAM_A, MRAM_D => MRAM_D);

this_state_manager : state_manager port map (CLK => CLK_150, SETUP_DONE => SETUP_DONE,
							WRITE_OUT_DONE => WRITE_OUT_DONE, EN_READ_ADC => EN_READ_ADC, EN_WRITE_OUT_MRAM => EN_WRITE_OUT_MRAM,
							EN_SETUP => EN_SETUP, EN_CORR => EN_CORR, CORR_DONE => CORR_DONE);

this_setup_manager : setup_manager port map(CLK => CLK_150, EN_SETUP => EN_SETUP, SPI_send_data => ADC_SPI_Send_data, 
							SPI_send_irq => ADC_SPI_Send_irq1, SETUP_DONE => SETUP_DONE, SPI_DONE => ADC_SPI_DONE, ADC_SYNC => ADC_SYNC);

this_read_adc_manager : read_adc_manager port map(CLK => CLK_150, DCLK => ADC_DCLKA, ADC_BIT => ADC_BIT_A, 
                     ADC_BIT_VALID => ADC_BIT_VALID, BITS_OUT => ADC_BITS_OUT, EN_READ_ADC => EN_READ_ADC);

this_write_out_mram_manager : write_out_mram_manager generic map(MAX_ADDRESS_COUNTS => MAX_ADDRESS_COUNTS)
							port map (CLK => CLK_150,UART_SEND_DATA=>UART_SEND_DATA, UART_DATA_IRQ => UART_DATA_IRQ,
							MRAM_DATA_OUT => MRAM_DATA_OUT, MRAM_ADDRESS_IN => MRAM_ADDRESS_IN_READ, MRAM_READ_DATA => MRAM_READ_DATA,
							MRAM_DONE => MRAM_DONE, WRITE_OUT_DONE => WRITE_OUT_DONE, EN_WRITE_OUT_MRAM => EN_WRITE_OUT_MRAM,
							UART_FIFO_EMPTY => UART_FIFO_EMPTY);

ADC_SPI_send_irq <= ADC_SPI_Send_irq1 or ADC_SPI_send_irq2;

adc_spi : SPI_MASTER generic map (SEND_CLK_COUNTER_MAX => SEND_CLK_COUNTER_MAX, BITS => 16) port map(CLK => CLK_150,
							SPI_MOSI => ADC_SPI_SDIN, SPI_SCLK => ADC_SPI_SCLK, SPI_CS => ADC_SPI_CS, SEND_DATA => ADC_SPI_send_data,
							SEND_IRQ => ADC_SPI_Send_irq, SEND_DONE => ADC_SPI_DONE);
UART_TX_1 : UART_TX_DRIVER generic map(BAUD_RATE => BAUD_RATE) port map(CLK => CLK_150, SEND_DATA => UART_SEND_DATA,
							START_SEND_DATA => UART_DATA_IRQ, TX => UART_TX, TX_BUSY => UART_FIFO_EMPTY);

							--TODO:remove hardcode 80 and 9
Corr_Main_1 : Corr_Main generic map (BUFFER_LENGTH => 80, BUFFER_WIDTH => 10, MAX_ADDRESS_COUNTS => MAX_ADDRESS_COUNTS) 
							port map(CLK => CLK_150, ADC_BITS => ADC_BITS_OUT, ADC_BITS_VALID => ADC_BIT_VALID, PREAMBULE_FOUND => PREAMB_FOUND,
							MRAM_DATA_OUT => MRAM_DATA_IN, MRAM_ADDRESS_OUT => MRAM_ADDRESS_IN_WRITE, MRAM_WRITE_DATA => MRAM_WRITE_DATA,
							MRAM_DONE => MRAM_DONE, EN_CORR => EN_CORR, CORR_DONE => CORR_DONE, PACKET_DATA => PACKET_DATA,
							PACKET_VALID => PACKET_VALID, PACKET_IRQ => PACKET_IRQ);

data_interface_1 : DATA_INTERFACE port map(CLK_150, SPI_SCLK, SPI_MOSI, SPI_MISO, SPI_CS, PACKET_DATA, PACKET_VALID, SETUP_DONE, 
                                           PPS, PREAMB_FOUND, DEBUG_2);

process(CLK_150)
begin
	if falling_edge(CLK_150) then
		if(BUTTON = '0') then
			button_active <= '1';
		end if;
	end if;
end process;

end architecture;