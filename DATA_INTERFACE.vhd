library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DATA_INTERFACE is
port(
	CLK: in std_Logic := '0';
	SPI_SCLK: in std_logic := '0';
	SPI_MOSI: in std_logic := '0';
	SPI_MISO: inout std_logic := '0';
	SPI_CS: in std_logic := '1';
	
	PACKET_IN_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	PACKET_IN_VALID : in std_logic := '0'
);
end entity;

architecture arc of DATA_INTERFACE is

component SPI_SLAVE is 
port(
	CLK: in std_logic;
	SPI_SCLK: in std_logic := '0';
	SPI_MOSI: in std_logic := '0';
	SPI_MISO: inout std_logic := '0';
	SPI_CS: in std_logic := '1';
	
	RESP_DATA: in std_logic_vector(7 downto 0) := (others => '0');
	CMD_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : out std_logic := '0';
	SPI_RESET : out std_logic := '0'
);
end component;

component SPI_DECODER is 
port(
	CLK: in std_logic := '0';
	RAW_CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	DECODED_CMD_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	DECODED_CMD_VALID : out std_logic := '0';
	SPI_CYCLE_DONE : in std_logic := '0';
	RESET : in std_logic := '0';
	PACKET_STORAGE_EN : out std_logic := '0'
);
end component;

component Packet_Storage is 
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : in std_logic := '0';
	SPI_RESET : out std_logic := '0';
	--Packets in from correlator
	PACKET_IN_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	PACKET_IN_VALID : in std_logic := '0'
);
end component;
--Spi decoder
signal raw_cmd_data : std_logic_vector(7 downto 0) := (others => '0');
signal decoded_cmd_data : std_logic_vector(7 downto 0) := (others => '0');
signal decoded_cmd_valid : std_logic := '0';
signal spi_cycle_done : std_logic := '0';
--Shared bus for responses, must be left as 0 if not enabled
signal resp_data_bus: std_logic_vector(7 downto 0) := (others => '0'); --Shared bus
signal storage_resp_data : std_logic_vector(7 downto 0) := (others => '0');
--Shared reset to reset decoder cmd
signal reset_bus : std_logic := '0';
signal spi_reset : std_logic := '0';
signal storage_reset : std_logic := '0';
--Signals for controlling decoder peripherals
signal packet_storage_en : std_logic := '0';

begin

spi : SPI_SLAVE port map(CLK, SPI_SCLK, SPI_MOSI, SPI_MISO, SPI_CS, resp_data_bus, raw_cmd_data, spi_cycle_done, spi_reset);

decoder : SPI_DECODER port map(CLK, raw_cmd_data, decoded_cmd_data, decoded_cmd_valid, spi_cycle_done, reset_bus, packet_storage_en);

stor : Packet_Storage port map (packet_storage_en, CLK, decoded_cmd_data, storage_resp_data, decoded_cmd_valid, storage_reset,
											PACKET_IN_DATA, PACKET_IN_VALID);

resp_data_bus <= storage_resp_data;
reset_bus <= storage_reset or spi_reset;

end architecture;