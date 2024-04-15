library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity UART_TX_DRIVER is
generic(
	BAUD_RATE : integer := 9600
);
port(
	CLK: in std_logic;
	SEND_DATA : in std_logic_vector(7 downto 0);
	START_SEND_DATA : in std_logic;
	TX_BUSY : out std_logic := '0'; --TODO: rename to inverse
	TX : out std_logic
);
end entity;
--
architecture arc of UART_TX_DRIVER is
	constant BAUD_RATE_COUNTER_MAX : integer := 150000000/BAUD_RATE;
	type state is (idle, sync, start, data, stop);
	signal curr_state : state := idle;
	signal data_index : integer range 0 to 7 := 0;
	signal data_send : std_logic_vector(7 downto 0) := (others => '0');
	signal counter : integer range 0 to BAUD_RATE_COUNTER_MAX+1 := 0;
begin

TX <= '0' when curr_state = start else data_send(data_index) when curr_state = data else '1';
TX_BUSY <= '1' when curr_state = idle else '0';

process(CLK)
begin
	if rising_edge(CLK) then
		case curr_state is
			when idle =>
				if(START_SEND_DATA = '1') then
					curr_state <= sync;
				end if;
			when sync =>
				curr_state <= start;
			when start =>
				if(counter = BAUD_RATE_COUNTER_MAX) then
					curr_state <= data;
				end if;
			when data =>
				if(counter = BAUD_RATE_COUNTER_MAX) then
					if(data_index = 7) then
						curr_state <= stop;
					end if;
				end if;
			when stop =>
				if(counter = BAUD_RATE_COUNTER_MAX) then
					curr_state <= idle;
				end if;
		end case;
	end if;
end process;

process(CLK)
begin
	if rising_edge(CLK) then
		counter <= counter + 1;
		case curr_state is
			when idle =>
				counter <= 0;
				data_index <= 0;
			when sync =>
				data_send <= SEND_DATA; --Isirasom duomenis
				counter <= 0;
			when start =>
				if(counter = BAUD_RATE_COUNTER_MAX) then
					counter <= 0;
				end if;
			when data =>
				if(counter = BAUD_RATE_COUNTER_MAX) then
					if(data_index = 7) then
						
					else
						data_index <= data_index + 1;
					end if;
					counter <= 0;
				end if;
			when stop =>
				if(counter = BAUD_RATE_COUNTER_MAX) then
					counter <= 0;
				end if;
		end case;
	end if;
end process;

end architecture;