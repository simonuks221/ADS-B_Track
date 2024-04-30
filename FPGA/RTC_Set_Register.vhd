library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity RTC_Set_Register is 
generic(
	RTC_IMPULSE_LENGTH_BITS : integer := 24;
	RTC_SECONDS_LENGTH_BITS : integer := 17
);
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0'); --This module does not respond
	SPI_CYCLE_DONE : in std_logic := '0';
	
	RTC_INPUT_IRQ : out std_logic := '0';
	RTC_INPUT_SECONDS : out std_logic_vector(RTC_SECONDS_LENGTH_BITS - 1 downto 0) := (others => '0')
);
end entity;

architecture arc of RTC_Set_Register is
	signal received_idx : integer := 0;
	signal input_seconds : std_logic_vector(RTC_SECONDS_LENGTH_BITS - 1 downto 0) := (others => '0');
begin

RTC_INPUT_SECONDS <= input_seconds(RTC_INPUT_SECONDS'length - 1 downto 0);

process(CLK)
begin
	if rising_edge(CLK) then
		if EN = '0' then
			received_idx <= 0;
			RTC_INPUT_IRQ <= '0';
		else
			RTC_INPUT_IRQ <= '0';
			if SPI_CYCLE_DONE = '1' then
				input_seconds <= cmd_data & input_seconds(RTC_SECONDS_LENGTH_BITS - 1 downto 8);
				received_idx <= received_idx + 1;
				if received_idx = RTC_SECONDS_LENGTH_BITS / 8 + 1 - 1 then
					--End transaction, write rtc value
					RTC_INPUT_IRQ <= '1';
				end if;
			end if;
		end if;
	end if;
end process;


end architecture;