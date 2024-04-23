library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Status_Register is 
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : in std_logic := '0';
	--Status signals
	INIT_DONE : in std_logic := '0'
);
end entity;

architecture arc of Status_Register is
	signal resp_data_buffer : std_logic_vector(7 downto 0) := (others => '0');
	signal status_reg : std_logic_vector(7 downto 0) := (others => '0'); --BITS:
																								--7 - 
																								--6 - 
																								--5 - 
																								--4 - 
																								--3 - 
																								--2 - 
																								--1 - Init done
																								--0 - Always ON
begin

RESP_DATA <= resp_data_buffer when EN = '1' else (others => '0');

resp_data_buffer <= status_reg; --TODO: left this as only one register made

process(CLK)
begin
	if rising_edge(CLK) then
		status_reg <= "000000" & INIT_DONE & '1';
	end if;
end process;


end architecture;