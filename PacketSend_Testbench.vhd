library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PacketSend_Testbench is
end entity;

architecture arc of PacketSend_Testbench is

component DATA_INTERFACE is
port(
	CLK: in std_Logic := '0';
	PACKET_IN : in std_logic_vector(15 downto 0) := (others => '0');
	PACKET_IN_LATCH : in std_logic := '0';
	SPI_SCLK: in std_logic := '0';
	SPI_MOSI: in std_logic := '0';
	SPI_MISO: inout std_logic := '0';
	SPI_CS: in std_logic := '1'
);
end component;


signal CLK : std_logic := '1';


signal SPI_SCLK: std_logic := '0';
signal SPI_MOSI: std_logic := '0';
signal SPI_MISO: std_logic := '0';
signal SPI_CS: std_logic := '1';

signal PACKET_IN : std_logic_vector(15 downto 0) := (others => '0');
signal PACKET_IN_LATCH : std_logic := '0';

signal mosi_data : std_logic_vector(5*8-1 downto 0) := x"0100000100";

begin

CLK <= not CLK after 3.33ns; --50MHz 20ns 150Mhz 6.66ns

intf : DATA_INTERFACE port map(CLK, PACKET_IN, PACKET_IN_LATCH, SPI_SCLK, SPI_MOSI, SPI_MISO, SPI_CS);

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
	SPI_SCLK <= '0';
	SPI_MOSI <= mosi_data(0);
	mosi_data <= '0' & mosi_data(5*8-1 downto 1);
	wait for 5ns;
	for i in 0 to 3*8-1 loop
		SPI_SCLK <= '1';
		wait for 50ns;
		SPI_SCLK <= '0';
		SPI_MOSI <= mosi_data(0);
		mosi_data <= '0' & mosi_data(5*8-1 downto 1);
		wait for 50ns;
	end loop;
	wait for 5ns;
	SPI_CS <= '1';
	wait for 1200ns;
	for i in 0 to 2*8-1 loop
		SPI_SCLK <= '1';
		wait for 50ns;
		SPI_SCLK <= '0';
		SPI_MOSI <= mosi_data(0);
		mosi_data <= '0' & mosi_data(5*8-1 downto 1);
		wait for 50ns;
	end loop;
	wait;
end process;

end architecture;