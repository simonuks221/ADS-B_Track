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
	RESP_DATA_EMPTY: out std_logic := '0';
	
	CMD_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	CMD_DATA_LATCH : out std_logic := '0'
	
);
end entity;

architecture arc of SPI_SLAVE is

signal resp_idx : integer range 0 to 7 := 0;
signal cmd_idx : integer range 0 to 7 := 0;
signal cmd_buffer : std_logic_vector(7 downto 0) := (others => '0');

--Signals for SPI SCLK metastability
signal spi_sclk_buf1 : std_logic := '0';
signal spi_sclk_buf2 : std_logic := '0';
signal spi_sclk_buf3 : std_logic := '0';

signal spi_mosi_buf1 : std_logic := '0';
signal spi_mosi_buf2 : std_logic := '0';

begin

--SPI_MISO <= 'Z' when SPI_CS = '1' else bit_to_send;
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
			cmd_idx <= 0;
			resp_idx <= 0;
			CMD_DATA_LATCH <= '0';
			RESP_DATA_EMPTY <= '0';
		else
			if spi_sclk_buf3 = '1' and spi_sclk_buf2 = '0' then
				--Rising SPI_SCLK edge
				cmd_buffer <= spi_mosi_buf2 & cmd_buffer(7 downto 1);
				if cmd_idx = 6 then
					CMD_DATA_LATCH <= '1'; --TODO: RESET
				else
					cmd_idx <= cmd_idx + 1;
				end if;
			elsif spi_sclk_buf3 = '0' and spi_sclk_buf2 = '1' then
				--Falling SPI_SCLK edge
				SPI_MISO <= RESP_DATA(resp_idx);
				if resp_idx = 6 then
					RESP_DATA_EMPTY <= '1'; --TODO: reset
				else
				resp_idx <= resp_idx + 1;
			end if;
			end if;
		end if;
		
	end if;
end process;

end architecture;