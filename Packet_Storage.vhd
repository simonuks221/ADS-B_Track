library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Packet_Storage is 
port(
	CLK: in std_logic;
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : in std_logic := '0'
);
end entity;

architecture arc of Packet_Storage is
	type state is (waiting_command, respond_command);
	type command is (nop, printout);
	signal curr_state : state := waiting_command;
	signal curr_command : command := nop;
begin

RESP_DATA <= (others => '0') when curr_command = nop else
				(others => '1') when curr_command = printout;
				

process(CLK, CMD_DATA)
begin
	if rising_edge(CLK) then
		if SPI_CYCLE_DONE = '1' then
			case curr_state is
				when waiting_command =>
					case CMD_DATA is
						when x"00" =>
							--Empty command, do nothing
							curr_command <= nop;
						when x"01" =>
							curr_command <= printout;
						when others =>
							curr_command <= nop;
					end case;
					curr_state <= respond_command;
				when respond_command =>
					
				when others =>
					curr_state <= waiting_command;
			end case;
		end if;
	end if;
end process;


end architecture;