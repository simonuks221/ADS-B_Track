library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity SPI_Testbench is --Up to 260MHz operation
generic (
	SEND_CLK_COUNTER_MAX : integer := 30
);
end entity;

architecture arc of SPI_Testbench is

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

signal CLK : std_logic := '1';

--SPI
signal ADC_SPI_send_data : std_logic_vector(16-1 downto 0) := (others => '0');
signal ADC_SPI_send_irq : std_logic := '0';
signal ADC_SPI_fifo_empty : std_logic := '0';
signal button_active : std_logic := '0';

signal adc_spi_test_counter : integer := 0;
signal ADC_SPI_SDIN : std_logic := 'Z';
signal ADC_SPI_SCLK : std_logic := 'Z';
signal ADC_SPI_CS :  std_logic := 'Z';

begin

adc_spi_controller : SPI_Controller generic map (SEND_CLK_COUNTER_MAX => SEND_CLK_COUNTER_MAX, BITS => 16, SEND_CLK_WAIT_MAX => 20) port map(CLK => CLK, SPI_MOSI => ADC_SPI_SDIN, SPI_SCLK => ADC_SPI_SCLK,
							SPI_CS => ADC_SPI_CS, SPI_send_data => ADC_SPI_send_data, SPI_send_irq => ADC_SPI_Send_irq, SPI_FIFO_EMPTY => ADC_SPI_fifo_empty);

CLK <= not CLK after 10ns; --50MHz 20ns

process
begin
	wait for 100ns;
	wait until falling_edge(CLK);
	ADC_SPI_send_Data <= "0101010101010101";
	ADC_SPI_send_irq <= '1';
	wait until falling_edge(CLK);
	ADC_SPI_send_irq <= '1';
	ADC_SPI_send_Data <= "1111000000000000";
	wait until falling_edge(CLK);
	ADC_SPI_send_irq <= '0';
	wait;
end process;

end architecture;