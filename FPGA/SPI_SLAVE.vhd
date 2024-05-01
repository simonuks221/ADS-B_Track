library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity SPI_SLAVE is 
port(
	CLK: in std_logic := '0';
	SPI_SCLK: in std_logic := '0';
	SPI_MOSI: in std_logic := '0';
	SPI_MISO: inout std_logic := '0';
	SPI_CS: in std_logic := '1';
	
	RESP_DATA: in std_logic_vector(7 downto 0) := (others => '0');
	RESP_LATCH: in std_logic := '0';
	CMD_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : out std_logic := '0';
	SPI_RESET : out std_logic := '0'
);
end entity;

architecture arc of SPI_SLAVE is

signal cmd_buffer : std_logic_vector(7 downto 0) := (others => '0');
signal bit_idx : integer range 0 to 7 := 0;
signal tx_buffer : std_logic_vector(7 downto 0) := (others => '0');
--Signals for SPI SCLK metastability
signal spi_sclk_buf1 : std_logic := '0';
signal spi_sclk_buf2 : std_logic := '0';
signal spi_sclk_buf3 : std_logic := '0';

signal spi_mosi_buf1 : std_logic := '0';
signal spi_mosi_buf2 : std_logic := '0';

begin

SPI_MISO <= tx_buffer(0) when SPI_CS = '0' else 'Z';
SPI_RESET <= '0' when SPI_CS = '0' else '1'; 
CMD_DATA <= cmd_buffer;

--Deal with metastability of SPI signals
process(CLK)
begin
	if rising_edge(CLK) then
		spi_sclk_buf1 <= SPI_SCLK;
		spi_sclk_buf2 <= spi_sclk_buf1;
		spi_sclk_buf3 <= spi_sclk_buf2;
		
		spi_mosi_buf1 <= SPI_MOSI;
		spi_mosi_buf2 <= spi_mosi_buf1;
	end if;

end process;

process(CLK)
begin
	if rising_edge(CLK) then
		if SPI_CS = '1' then
			bit_idx <= 0;
			SPI_CYCLE_DONE <= '0';
			tx_buffer <= (others => '0');
		else
			SPI_CYCLE_DONE <= '0';
			if RESP_LATCH = '1' then
				tx_buffer <= RESP_DATA;
			end if;
			if spi_sclk_buf3 = '0' and spi_sclk_buf2 = '1' then
				--Rising SPI_SCLK edge
				cmd_buffer <= spi_mosi_buf2 & cmd_buffer(7 downto 1);

			elsif spi_sclk_buf3 = '1' and spi_sclk_buf2 = '0' then
				--Falling SPI_SCLK edge
				--Reset bit index on last falling edge
				if bit_idx = 7 then
					SPI_CYCLE_DONE <= '1';
					bit_idx <= 0;
				else
					bit_idx <= bit_idx + 1; --TODO: might need to change depending on SPI timing
					tx_buffer <= '0' & tx_buffer(7 downto 1);
				end if;
--				if bit_idx = 0 then
--					--Latch if first bit
--					--tx_buffer <= RESP_DATA;
--				else
--					tx_buffer <= '0' & tx_buffer(7 downto 1);
--				end if;
			end if;
		end if;
	end if;
end process;

end architecture;