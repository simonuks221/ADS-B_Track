library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DATA_INTERFACE is
port(
	CLK: in std_Logic := '0';
	PACKET_IN : in std_logic_vector(15 downto 0) := (others => '0');
	PACKET_IN_LATCH : in std_logic := '0';
	SPI_SCLK: in std_logic := '0';
	SPI_MOSI: in std_logic := '0';
	SPI_MISO: inout std_logic := '0';
	SPI_CS: in std_logic := '1'
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
	SPI_CYCLE_DONE : out std_logic := '0'
);
end component;

component Packet_Storage is 
port(
	CLK: in std_logic;
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : in std_logic := '0'
);
end component;


signal RESP_DATA: std_logic_vector(7 downto 0) := (others => '0');
	
signal CMD_DATA : std_logic_vector(7 downto 0) := (others => '0');
signal SPI_CYCLE_DONE : std_logic := '0';

begin

stor : Packet_Storage port map (CLK, CMD_DATA, RESP_DATA, SPI_CYCLE_DONE);
spi : SPI_SLAVE port map(CLK, SPI_SCLK, SPI_MOSI, SPI_MISO, SPI_CS, RESP_DATA, CMD_DATA, SPI_CYCLE_DONE);

end architecture;