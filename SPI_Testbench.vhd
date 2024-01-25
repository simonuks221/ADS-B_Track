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

component SPI_TX is 
generic(
	SEND_CLK_COUNTER_MAX : integer := 100;
	BITS : integer := 8
);
port(
	CLK: in std_logic := '0';
	SPI_SCLK: out std_logic := '0';
	SPI_MOSI: inout std_logic := '0';
	SPI_CS : out std_logic := '1';
	SEND_DATA: in std_logic_vector(BITS-1 downto 0) := (others => '0');
	SEND_IRQ: in std_logic := '0';
	SEND_DONE: out std_logic := '0'
);
end component;

signal CLK : std_logic := '1';

--SPI
signal SPI_send_data : std_logic_vector(16-1 downto 0) := (others => '0');
signal SPI_send_irq : std_logic := '0';
signal SPI_send_done : std_logic := '0';

signal SPI_SDIN : std_logic := 'Z';
signal SPI_SCLK : std_logic := 'Z';
signal SPI_CS :  std_logic := 'Z';

begin

spi_tx_component : spi_tx generic map(SEND_CLK_COUNTER_MAX => 500, BITS => 16) 
						port map(CLK => CLK, SPI_SCLK => SPI_SCLK,SPI_CS =>SPI_CS, SPI_MOSI => SPI_SDIN, SEND_DATA => SPI_send_data, SEND_IRQ => SPI_send_irq, SEND_DONE => SPI_send_done);

CLK <= not CLK after 10ns; --50MHz 20ns

process
begin
	wait for 100us;
	wait until falling_edge(CLK);
	SPI_send_data <= "0000011000010000";
	SPI_send_irq <= '1';
	wait until rising_edge(SPI_send_done);
	SPI_send_data <= "1000011000000000";
	wait until falling_edge(CLK);
	wait until falling_edge(CLK);
	SPI_send_irq <= '0';
	wait;
end process;

end architecture;