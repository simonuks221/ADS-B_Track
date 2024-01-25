library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Setup_manager is
port(
	CLK : in std_logic := '0';
	EN_SETUP : in std_logic := '0';
	SPI_send_data : out std_logic_vector(16-1 downto 0) := (others => '0');
	SPI_send_irq : out std_logic := '0';
	SPI_DONE : in std_logic := '0';
	ADC_SYNC : out std_logic := '0';
	SETUP_DONE : out std_logic := '0'
);

end entity;

architecture arc of Setup_manager is
	type spi_command is array (0 to 4) of std_logic_vector(15 downto 0);
	constant spi_commands : spi_command  := ("0000000000000011",
	"1000000000000000",
	"0000011000010000",-- NORMAL WITH BIANRY OFFSET 06h --0000011011000000 TEST PATTERN
	"1000011000000000", --06h
	"0000100000001000"); --08h --0.9V common mode pullup
	signal spi_command_index : integer range 0 to 5 := 0;
begin

SPI_send_irq <= '1' when spi_command_index /= 5 and EN_SETUP = '1' else '0';
SETUP_DONE <= '1' when spi_command_index = 5 else '0';

process(SPI_DONE)
begin
	if rising_edge(SPI_DONE) and EN_SETUP = '1' then
		spi_command_index <= spi_command_index + 1;
	end if;
end process;

process(CLK)
begin
	if rising_edge(CLK) then
		if EN_SETUP = '1' then
			if spi_command_index /= 5 then
				SPI_send_data <= spi_commands(spi_command_index);
			end if;
		end if;
	end if;
end process;

end architecture;