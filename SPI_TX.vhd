library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity SPI_TX is 
generic(
	SEND_CLK_COUNTER_MAX : integer := 100;
	BITS : integer := 16
);
port(
	CLK: in std_logic;
	SPI_SCLK: out std_logic := '0';
	SPI_MOSI: inout std_logic := '0';
	SPI_CS: out std_logic := '1';
	SEND_DATA: in std_logic_vector(BITS-1 downto 0) := (others => '0');
	SEND_IRQ: in std_logic := '0';
	SEND_DONE: out std_logic := '1'
);
end entity;

architecture arc of SPI_TX is
type state is (idle, latch_data, running, cs_up);
signal curr_state : state := idle;
signal tx_buf : std_logic_vector(BITS-1 downto 0) := (others => '0');
signal rx_buf : std_logic_vector(BITS-1 downto 0) := (others => '0');
signal bits_sent : integer range 0 to BITS + 1 := 0;
signal sclk : std_logic := '0';
signal clk_counter : integer range 0 to SEND_CLK_COUNTER_MAX*2+1 := 0;
signal is_read : std_logic := '0'; --Read 1, write - 0
begin

SPI_SCLK <= sclk;

process(CLK)
begin
	if rising_edge(CLK) then
		case curr_state is
			when idle =>
				if(SEND_IRQ = '1') then
					curr_state <= latch_data;
				end if;
			when latch_data =>
				curr_state <= running;
			when running =>
				if(bits_sent = BITS) then
					curr_state <= cs_up;
				end if;
			when cs_up =>
				if(clk_counter = SEND_CLK_COUNTER_MAX*2) then
					curr_state <= idle;
				end if;
		end case;
	end if;
end process;

SPI_MOSI <= 'Z' when bits_sent >= 8 and is_read = '1' else tx_buf(BITS-1);
SPI_CS <= '1' when curr_state = idle or curr_state = cs_up else '0';
SEND_DONE <= '1' when curr_state = idle else '0';

process(CLK) 
begin
	if(rising_edge(CLK)) then
		case curr_state is
			when idle =>
				clk_counter <= 0;
				sclk <= '0';
				bits_sent <= 0;
			when latch_data =>
				tx_buf <= SEND_DATA;
				is_read <= SEND_DATA(BITS - 1); 
			when running =>
				if(clk_counter = SEND_CLK_COUNTER_MAX) then --Pereiname i kita busena sclk
					sclk <= not sclk;
					if(sclk = '1') then --Pereiname i zema busena
						tx_buf <= tx_buf(BITS-2 downto 0) & '0';
						bits_sent <= bits_sent + 1;
					else
						if(is_read = '1' and bits_sent >= 8) then
							rx_buf <= rx_buf(BITS-2 downto 0) & SPI_MOSI;
						end if;
					end if;
					clk_counter  <= 0;
				else
					clk_counter <= clk_counter + 1;
				end if;
			when cs_up =>
				clk_counter <= clk_counter + 1;
		end case;
	end if;
end process;
end architecture;