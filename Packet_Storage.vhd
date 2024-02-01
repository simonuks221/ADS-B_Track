library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Packet_Storage is 
port(
	CLK: in std_logic;
	PACKET_IN : in std_logic_vector(15 downto 0) := (others => '0');
	PACKET_IN_LATCH : in std_logic := '0';
	SEND_DONE : in std_logic := '0';
	SEND_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SEND_DATA_LATCH : out std_logic := '0'
);
end entity;

architecture arc of Packet_Storage is
signal internal_packet : std_logic_vector(15 downto 0) := "1001011011110000";
signal internal_send_data_latch : std_logic := '0';
begin

SEND_DATA_LATCH <= internal_send_data_latch;

process(CLK)
begin
	if rising_edge(CLK) then
		internal_send_data_latch <= '0';
		if SEND_DONE = '1' and internal_send_data_latch = '0' then
			SEND_DATA <= internal_packet(7 downto 0);
			internal_packet <= internal_packet(15 downto 8);
			internal_send_data_latch <= '1';
		end if;
	end if;
end process;

end architecture;