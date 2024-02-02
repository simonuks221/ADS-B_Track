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
	SPI_CYCLE_DONE : in std_logic := '0';
	SPI_RESET : in std_Logic := '0'
);
end entity;

architecture arc of Packet_Storage is
	type state is (waiting_command, respond_command);
	type command is (nop, printout);
	
	constant PRINTOUT_AMOUNT : integer := 2;
	
	signal curr_state : state := waiting_command;
	signal curr_command : command := nop;
	signal printout_idx : integer range 0 to PRINTOUT_AMOUNT := 0;
	signal printout_data : std_logic_vector(PRINTOUT_AMOUNT*8-1 downto 0) := x"0203";
begin

RESP_DATA <= (others => '0') when curr_command = nop else
				printout_data(7 downto 0) when curr_command = printout;
				

process(CLK, CMD_DATA)
begin
	if rising_edge(CLK) then
		if SPI_RESET = '1' then
			curr_state <= waiting_command;
		else
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
						--Check if printed everything out
						if printout_idx = PRINTOUT_AMOUNT - 1 then
							printout_idx <= 0;
							curr_command <= nop;
							curr_state <= waiting_command;
						else
							printout_idx <= printout_idx + 1;
							printout_data <= x"00" & printout_data(PRINTOUT_AMOUNT*8-1 downto 8);
						end if;
					when others =>
						curr_state <= waiting_command;
				end case;
			end if;
		end if;
	end if;
end process;


end architecture;