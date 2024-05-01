library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity RTC is
generic(
	RTC_IMPULSE_LENGTH_BITS : integer := 24;
	RTC_SECONDS_LENGTH_BITS : integer := 17;
	RTC_TIME_LENGTH_BYTES : integer := 6
);
port(
	CLK: in std_logic; --150MHz in
	PPS_IRQ : in std_logic := '0';
	CAPTURE_IRQ : in std_logic := '0';
	CAPTURED_SECONDS : out std_logic_vector(RTC_SECONDS_LENGTH_BITS - 1 downto 0) := (others => '0');
	CAPTURED_IMPULSES : out std_logic_vector(RTC_IMPULSE_LENGTH_BITS - 1 downto 0) := (others => '0');
	INPUT_IRQ : in std_logic := '0';
	INPUT_SECONDS : in std_logic_vector(RTC_SECONDS_LENGTH_BITS - 1 downto 0) := (others => '0');
	DEBUG_2 : out std_logic := '0'
);
end entity;

architecture arc of RTC is
	constant impulses_in_a_second : integer := 150000000;

	signal seconds_counter : integer range 0 to 24*60*60 := 0;
	signal impulse_counter : integer range 0 to impulses_in_a_second := 0;
begin

DEBUG_2 <= '1' when impulse_counter > 100000000 else '0';

--Output timestamp
process(CLK)
begin
	if rising_edge(CLK) then
		if CAPTURE_IRQ = '1' then
			CAPTURED_SECONDS <= std_logic_vector(to_unsigned(seconds_counter, CAPTURED_SECONDS'length));
			CAPTURED_IMPULSES <= std_logic_vector(to_unsigned(impulse_counter, CAPTURED_IMPULSES'length));
		end if;
	end if;
end process;

process(CLK)
variable remainder : integer range 0 to impulses_in_a_second := 0;
begin
	if rising_edge(CLK) then
		if INPUT_IRQ = '1' then
			--Write in value from SPI input
			seconds_counter <= to_integer(unsigned(INPUT_SECONDS));
			impulse_counter <= 0;
--		elsif PPS_IRQ = '1' then
--			--Synchronize to 1s period PPS
--			remainder := seconds_counter mod impulses_in_a_second;
--			if remainder < impulses_in_a_second / 2 then
--				--Round the second down
--				seconds_counter <= seconds_counter - 1;
--			else
--				--Round the second up
--            seconds_counter <= seconds_counter + 1;
--			end if;
--			impulse_counter <= 0;
		else
			--No PPS present
			if impulse_counter = impulses_in_a_second - 1 then
				--Increment impulse counter
				seconds_counter <= seconds_counter + 1;
				impulse_counter <= 0;
			else
				--Increment impulse counter
				impulse_counter <= impulse_counter + 1;
			end if;
		end if;
	end if;
end process;

end architecture;