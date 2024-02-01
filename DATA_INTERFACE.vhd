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
generic(
	BITS : integer := 8
);
port(
	CLK: in std_logic;
	SPI_SCLK: in std_logic := '0';
	SPI_MOSI: in std_logic := '0';
	SPI_MISO: inout std_logic := '0';
	SPI_CS: in std_logic := '1';
	SLAVE_DATA: in std_logic_vector(8-1 downto 0) := (others => '0');
	SLAVE_DATA_LATCH: in std_logic := '0';
	SLAVE_DONE: out std_logic := '1'
);
end component;

component Packet_Storage is 
port(
	CLK: in std_logic;
	PACKET_IN : in std_logic_vector(15 downto 0) := (others => '0');
	PACKET_IN_LATCH : in std_logic := '0';
	SEND_DONE : in std_logic := '0';
	SEND_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SEND_DATA_LATCH : out std_logic := '0'
);
end component;

signal SEND_DONE : std_logic := '0';
signal SEND_DATA : std_logic_vector(7 downto 0) := (others => '0');
signal SEND_DATA_LATCH : std_logic := '0';

begin

stor : Packet_Storage port map (CLK, PACKET_IN, PACKET_IN_LATCH, SEND_DONE, SEND_DATA, SEND_DATA_LATCH);
spi : SPI_SLAVE port map(CLK, SPI_SCLK, SPI_MOSI, SPI_MISO, SPI_CS, SEND_DATA, SEND_DATA_LATCH, SEND_DONE);

end architecture;