library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;

entity SPI_Test_projektas is
	port(
		CLK : in std_logic;
		SPI_MOSI : out std_logic;
		SPI_SCLK : out std_logic;
		SPI_CS : out std_logic;
		LED_OUT : out std_logic := '1'
	);
end entity;

architecture arc of SPI_Test_projektas is

component SPI_Controller is 
	generic(
		SEND_CLK_COUNTER_MAX : integer := 500;
		BITS : integer := 16
	);
	port(
		CLK : in std_logic;
		SPI_MOSI : out std_logic;
		SPI_SCLK : out std_logic;
		SPI_CS : out std_logic;
		SPI_send_data : std_logic_vector(BITS-1 downto 0) := (others => '0');
		SPI_send_irq : std_logic := '0'
	);
end component;

signal SPI_send_data : std_logic_vector(16-1 downto 0) := (others => '0');
signal SPI_send_irq : std_logic := '0';

signal counter : integer range 0 to 50000000:= 0;

begin

spi_controller_1: SPI_Controller port map(CLK => CLK, SPI_MOSI => SPI_MOSI, SPI_SCLK => SPI_SCLK, SPI_CS => SPI_CS,
	SPI_send_data => SPI_send_data, SPI_send_irq => SPI_send_irq);

process(CLK)
begin
	if(rising_edge(CLK)) then
		case counter is
			when 100 =>
				SPI_send_data <= "1111000011110000";
			when 102 =>
				SPI_send_irq <= '1';
			when 103 =>
				SPI_send_irq <= '0';
			when 104 => 
				SPI_send_data <= "1111000011110000";
				SPI_send_irq <= '1';
			when 105 =>
				SPI_send_irq <= '0';
			when 25000000 =>
				
			when others =>
				
		end case;
		if(counter = 50000000) then
			counter <= 0;
			LED_OUT <= '1';
		else
			counter <= counter + 1;
		end if;
	end if;
end process;

end architecture;