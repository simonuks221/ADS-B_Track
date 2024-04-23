library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity RTC is
port(
	CLK: in std_logic; --150MHz in
	PPS_IRQ : in std_logic := '0';
	CAPTURE_IRQ : in std_logic := '0';
	CAPTURED_MS : out std_logic_vector(31 downto 0) := (others => '0');
	CAPTURED_NS : out std_logic_vector(18 downto 0) := (others => '0');
	INPUT_IRQ : in std_logic := '0';
	INPUT_MS : in std_logic_vector(31 downto 0) := (others => '0')
);
end entity;

architecture arc of RTC is
	--18 bits 262,143 counter range for ns resolution
	--32 bits UNIX time for ms since 1970-01-01
	signal ms_counter : unsigned(31 downto 0) := to_unsigned(1, 32); --32 bits
	signal ns_counter : integer range 0 to 262143 := 0; --18 bits
begin

--Output timestamp
process(CLK)
begin
	if rising_edge(CLK) then
		if CAPTURE_IRQ = '1' then
			CAPTURED_MS <= std_logic_vector(ms_counter);
			CAPTURED_NS <= std_logic_vector(to_unsigned(ns_counter, CAPTURED_NS'length));
		end if;
	end if;
end process;

process(CLK)
variable remainder : integer := 0;
variable rounded_number : integer := 0;
begin
	if rising_edge(CLK) then
		if INPUT_IRQ = '1' then
			--Write in value from SPI input
			ms_counter <= unsigned(INPUT_MS);
			
			if ns_counter = 149999 then
				--Increment ms counter
				ms_counter <= to_unsigned(to_integer(ms_counter) + 1, ms_counter'length);
				ns_counter <= 0;
			else
				--Increment ns counter
				ns_counter <= ns_counter + 1;
			end if;
		elsif PPS_IRQ = '1' then
			--Synchronize to 1s period PPS
			--Round up to upper 1000ms
			--TODO: find if near 1000ms and dont increment
			remainder := to_integer(ms_counter) mod 1000;
        
			if remainder < 500 then
				rounded_number := to_integer(ms_counter) - remainder;
			else
            rounded_number := to_integer(ms_counter) + (1000 - remainder);
			end if;
			ms_counter <= to_unsigned(rounded_number, ms_counter'length);
			ns_counter <= 0;
		else
			--No PPS present
			if ns_counter = 149999 then
				--Increment ms counter
				ms_counter <= to_unsigned(to_integer(ms_counter) + 1, ms_counter'length);
				ns_counter <= 0;
			else
				--Increment ns counter
				ns_counter <= ns_counter + 1;
			end if;
		end if;
	end if;
end process;

end architecture;