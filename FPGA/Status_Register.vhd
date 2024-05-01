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
	--Status signals
	INIT_DONE : in std_logic := '0';
	PACKET_READY : in std_logic := '0'
);
end entity;

architecture arc of Status_Register is
	--STATUS BITS:
	--7 - 
	--6 - 
	--5 - 
	--4 - 
	--3 - 
	--2 - Packet ready
	--1 - Init done
	--0 - Always ON
begin

process(CLK)
begin
	if rising_edge(CLK) then
		if EN = '1' then
			RESP_DATA <= "000000" & INIT_DONE & '1';
		else
			RESP_DATA <= (others => '0');
		end if;
	end if;
end process;


end architecture;