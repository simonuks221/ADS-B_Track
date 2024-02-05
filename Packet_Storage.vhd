library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Packet_Storage is 
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : in std_logic := '0';
	SPI_RESET : out std_Logic := '0'
);
end entity;

architecture arc of Packet_Storage is
	constant PRINTOUT_AMOUNT : integer := 2;
	signal printout_idx : integer range 0 to PRINTOUT_AMOUNT := 1;
	signal printout_data : std_logic_vector(PRINTOUT_AMOUNT*8-1 downto 0) := x"0203";
	signal resp_data_buffer : std_logic_vector(7 downto 0) := (others => '0');
begin

RESP_DATA <= resp_data_buffer when EN = '1' else (others => '0');

process(CLK)
begin
	if rising_edge(CLK) then
		SPI_RESET <= '0';
		if EN = '0' then
			resp_data_buffer <= printout_data(7 downto 0);
		else
			if SPI_CYCLE_DONE = '1' then
				--Check if printed everything out
				if printout_idx = PRINTOUT_AMOUNT then
					printout_idx <= 1;
					SPI_RESET <= '1';
				else
					printout_idx <= printout_idx + 1;
					resp_data_buffer <= printout_data((printout_idx+1)*8-1 downto printout_idx*8);
				end if;
			end if;
		end if;
	end if;
end process;


end architecture;