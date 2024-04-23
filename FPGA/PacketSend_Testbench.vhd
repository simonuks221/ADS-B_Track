library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PacketSend_Testbench is
end entity;

architecture arc of PacketSend_Testbench is

component DATA_INTERFACE is
port(
	CLK: in std_Logic := '0';
	SPI_SCLK: in std_logic := '0';
	SPI_MOSI: in std_logic := '0';
	SPI_MISO: inout std_logic := '0';
	SPI_CS: in std_logic := '1';
	
	PACKET_IN_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	PACKET_IN_VALID : in std_logic := '0'
);
end component;

signal CLK : std_logic := '1';

signal SPI_SCLK: std_logic := '0';
signal SPI_MOSI: std_logic := '0';
signal SPI_MISO: std_logic := '0';
signal SPI_CS: std_logic := '1';

signal PACKET_IN_DATA : std_logic_vector(7 downto 0) := (others => '0');
signal PACKET_IN_VALID : std_logic := '0';

signal mosi_data : std_logic_vector(11*8-1 downto 0) := x"0000010000010100000100";

begin

CLK <= not CLK after 3.33 ns; --50MHz 20ns 150Mhz 6.66ns

intf : DATA_INTERFACE port map(CLK, SPI_SCLK, SPI_MOSI, SPI_MISO, SPI_CS, PACKET_IN_DATA, PACKET_IN_VALID);

process
begin
	wait for 50 ns;
	wait until rising_edge(CLK);
	PACKET_IN_VALID <= '1';
	PACKET_IN_DATA <= x"AA";
	wait until rising_edge(CLK);
	PACKET_IN_VALID <= '0';
	wait;
end process;

process
begin
	wait for 100 ns;
	SPI_CS <= '0';
	SPI_SCLK <= '0';
	SPI_MOSI <= mosi_data(0);
	mosi_data <= '0' & mosi_data(11*8-1 downto 1);
	wait for 5 ns;
	for i in 0 to 3*8-1 loop
		SPI_SCLK <= '1';
		wait for 50 ns;
		SPI_SCLK <= '0';
		SPI_MOSI <= mosi_data(0);
		mosi_data <= '0' & mosi_data(11*8-1 downto 1);
		wait for 50 ns;
	end loop;
	wait for 5 ns;
	SPI_CS <= '1';
	
	wait for 1200 ns;
	for i in 0 to 2*8-1 loop
		SPI_SCLK <= '1';
		wait for 50 ns;
		SPI_SCLK <= '0';
		SPI_MOSI <= mosi_data(0);
		mosi_data <= '0' & mosi_data(11*8-1 downto 1);
		wait for 50 ns;
	end loop;
	SPI_CS <= '1';
	wait for 1200 ns;
	SPI_CS <= '0';
	for i in 0 to 6*8-1 loop
		SPI_SCLK <= '1';
		wait for 50 ns;
		SPI_SCLK <= '0';
		SPI_MOSI <= mosi_data(0);
		mosi_data <= '0' & mosi_data(11*8-1 downto 1);
		wait for 50 ns;
	end loop;
	SPI_CS <= '1';
	wait;
end process;

end architecture;