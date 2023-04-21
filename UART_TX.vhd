--INspiracija:
--https://github.com/jakubcabal/uart-for-fpga/blob/master/rtl/comp/uart_tx.vhd
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity UART_TX is
generic(
	BAUD_RATE_PRESCALER : integer := 9600
);
port(
	CLK: in std_logic;
	UART_CLK : in std_logic;
	SEND_DATA : in std_logic_vector(7 downto 0);
	START_SEND_DATA : in std_logic;
	TX_BUSY : out std_logic := '0';
	TX : out std_logic
);
end entity;
--
architecture arc of UART_TX is
	type state is (idle, sync, start, data, stop);
	signal tx_curr_state : state := idle;
	signal tx_next_state : state := idle;
	
	signal data_index : integer range 0 to 8 := 0;
	signal data_send : std_logic_vector(7 downto 0) := "01110110";
	
	signal counter : integer range 0 to 1000 := 0;
begin
--
--Set TX output
--process(UART_CLK)
--begin
--	if(rising_edge(UART_CLK)) then
--		case tx_curr_state is
--			when idle =>
--				TX <= '1';
--				TX_BUSY <= '0';
--			when sync =>
--				data_send <= SEND_DATA; --Isirasom duomenis
--				TX_BUSY <= '1';
--				TX <= '1';
--			when start =>
--				TX_BUSY <= '1';
--				TX <= '0';
--			when data =>
--				TX_BUSY <= '1';
--				TX <= data_send(data_index);
--			when stop =>
--				TX_BUSY <= '1';
--				TX <= '1';
--		end case;
--	end if;
--end process;
process(CLK)
begin
	if(rising_edge(CLK)) then
		counter <= counter + 1;
		case tx_curr_state is
			when idle =>
				if(START_SEND_DATA = '1') then
					tx_curr_state <= sync;
				end if;
				TX <= '1';
				TX_BUSY <= '0';
				counter <= 0;
				data_index <= 0;
			when sync =>
				data_send <= SEND_DATA; --Isirasom duomenis
				TX_BUSY <= '1';
				TX <= '1';
				counter <= 0;
				tx_curr_state <= start;
			when start =>
				TX_BUSY <= '1';
				TX <= '0';
				if(counter = BAUD_RATE_PRESCALER) then
					tx_curr_state <= data;
					counter <= 0;
				end if;
			when data =>
				TX_BUSY <= '1';
				TX <= data_send(data_index);
				if(counter = BAUD_RATE_PRESCALER) then
					data_index <= data_index + 1;
					counter <= 0;
						if(data_index = 7) then
							tx_curr_state <= stop;
							counter <= 0;
					end if;
				end if;
				
			when stop =>
				TX_BUSY <= '1';
				TX <= '1';
				if(counter = BAUD_RATE_PRESCALER+1) then
					tx_curr_state <= idle;
					counter <= 0;
				end if;
		end case;
	end if;
end process;

--
--Set next state
process(CLK)
begin
	if(rising_edge(CLK)) then
		--tx_curr_state <= tx_next_state;
	end if;
end process;

--process (CLK)
--begin
--	if rising_edge(CLK) then
--		case tx_curr_state is
--			when idle =>
--				tx_next_state <= sync;
--			when sync =>
--				tx_next_state <= start;
--			when start =>
--				tx_next_state <= data;
--			when data =>
--				tx_next_state <= stop;
--			when stop =>
--				tx_next_state <= idle;
--		end case;
--	end if;
--end process;
--
--Set next state
--process(UART_CLK)
--begin
--	if(rising_edge(UART_CLK)) then
--		data_index <= 0;
--		--TX <= '1';
--		case tx_curr_state is
--			when idle =>
--				if(START_SEND_DATA = '1') then
--					tx_next_state <= sync;
--				end if;
--			when sync =>
--				tx_next_state <= start;
--			when start =>
--				tx_next_state <= data;
--			when data =>
--				--TX <= data_send(data_index);
--				if(data_index = 7) then
--					tx_next_state <= stop;
--				else
--					data_index <= data_index + 1;
--				end if;
--			when stop =>
--				TX <= '1';
--				if(UART_CLK = '1') then
--					tx_next_state <= idle;
--				end if;
--		end case;
--	end if;
--end process;
--
--process(UART_CLK)
--begin
--	if rising_edge(UART_CLK) then
--		if(tx_curr_state = data) then
--			
--		else
--			data_index <= 0;
--		end if;
--	end if;
--end process;
--
--
--State management
--process(UART_CLK)
--begin
--	if(rising_edge(UART_CLK)) then
--		case tx_curr_state is
--			when idle =>
--				TX_BUSY <= '0';
--				if(START_SEND_DATA = '1') then
--					tx_next_state <= sync;
--					TX_BUSY <= '1';
--				end if;
--			when sync =>
--				data_send <= SEND_DATA; --Isirasom duomenis
--				TX_BUSY <= '1';
--				if(UART_CLK = '1') then
--					tx_next_state <= start;
--				end if;
--			when start =>
--				if(UART_CLK = '1') then
--					tx_next_state <= data;
--					data_index <= 0;
--				end if;
--			when data =>
--				if(UART_CLK = '1') then
--					if(data_index = 7) then
--						tx_next_state <= stop;
--					else
--						data_index <= data_index + 1;
--					end if;
--				end if;
--			when stop =>
--				if(UART_CLK = '1') then
--					tx_next_state <= idle;
--				end if;
--			when others =>
--				tx_next_state <= idle;
--				TX_BUSY <= '0';
--		end case;
--	end if;
--end process;
--
--
end architecture;