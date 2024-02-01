library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PacketSend_Testbench is
end entity;

architecture arc of PacketSend_Testbench is

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
	DATA_EMPTY: out std_logic := '1'
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


signal CLK : std_logic := '1';
signal PACKET_IN : std_logic_vector(15 downto 0) := (others => '0');
signal PACKET_IN_LATCH : std_logic := '0';
signal SEND_DONE : std_logic := '0';
signal SEND_DATA : std_logic_vector(7 downto 0) := (others => '0');
signal SEND_DATA_LATCH : std_logic := '0';

signal SPI_SCLK: std_logic := '0';
signal SPI_MOSI: std_logic := '0';
signal SPI_MISO: std_logic := '0';
signal SPI_CS: std_logic := '1';

begin

CLK <= not CLK after 3.33ns; --50MHz 20ns 150Mhz 6.66ns

stor : Packet_Storage port map (CLK, PACKET_IN, PACKET_IN_LATCH, SEND_DONE, SEND_DATA, SEND_DATA_LATCH);
spi : SPI_SLAVE port map(CLK, SPI_SCLK, SPI_MOSI, SPI_MISO, SPI_CS, SEND_DATA, SEND_DATA_LATCH, SEND_DONE);

process
begin
	wait for 10ns;
	wait until rising_edge(CLK);
	PACKET_IN <= "0000111101011001";
	PACKET_IN_LATCH <= '1';
	wait until rising_edge(CLK);
	PACKET_IN_LATCH <= '0';
	wait;
end process;

process
begin
	wait for 50ns;
	SPI_CS <= '0';
	wait for 5ns;
	for i in 0 to 15 loop
		SPI_SCLK <= '1';
		wait for 50ns;
		SPI_SCLK <= '0';
		wait for 50ns;
	end loop;
	wait for 5ns;
	SPI_CS <= '1';
	wait;
end process;

end architecture;