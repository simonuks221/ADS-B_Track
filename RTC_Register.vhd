library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity RTC_Register is 
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : in std_logic := '0';
	SPI_RESET : out std_logic := '0';
	--
	OUTPUT_IRQ : in std_logic := '0';
	OUTPUT_MS : in std_logic_vector(31 downto 0) := (others => '0');
	OUTPUT_NS : in std_logic_vector(18 downto 0) := (others => '0')
);
end entity;

architecture arc of RTC_Register is
	signal resp_data_buffer : std_logic_vector(7 downto 0) := (others => '0');
begin

RESP_DATA <= resp_data_buffer when EN = '1' else (others => '0');

process(CLK)
begin
	if rising_edge(CLK) then
		SPI_RESET <= '0';
		resp_data_buffer <= (others => '0');
		if EN = '0' then
			
		else
			if SPI_CYCLE_DONE = '1' then
				SPI_RESET <= '1';
			end if;
		end if;
	end if;
end process;


end architecture;