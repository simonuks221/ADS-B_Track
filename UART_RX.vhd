library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity UART_RX is
port(
CLK : in std_logic := '0';
RX : in std_logic := '0';
DATA_OUT : out std_logic_vector(7 downto 0) := (others => '0');
DATA_READY : out std_logic := '0'
);
end entity;

architecture arc of UART_RX is 
type state is (waiting, reading, reading_done);

signal curr_state : state := waiting;

signal byte_read_index : integer range 0 to 8 := 0;
signal clock_counter : integer range 0 to 434 := 0;
signal temp_data : std_logic_vector(7 downto 0) := (others => '0');
begin

process(CLK, curr_state)
begin
	if(rising_edge(CLK)) then
		case curr_state is
			when waiting =>
				DATA_READY <= '0';
				if(RX = '0') then
					curr_state <= reading;
				end if;
			when reading =>
				if(clock_counter = 434) then
					--Read RX
					clock_counter <= 0;
					temp_data <= RX & temp_data(7 downto 1);
					if(byte_read_index = 8) then
						byte_read_index <= 0;
						curr_state <= reading_done;
						DATA_OUT <= temp_data;
					else
						byte_read_index <= byte_read_index + 1;
					end if;
				else
					clock_counter <= clock_counter + 1;
				end if;
			when reading_done =>
				DATA_READY <= '1';
				curr_state <= waiting;
		end case;
	end if;
end process;

end architecture;