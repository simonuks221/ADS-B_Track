library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity SPI_TX is 
generic(
	SEND_CLK_COUNTER_MAX : integer := 500;
	BITS : integer := 16
);
port(
	CLK: in std_logic;
	SPI_CS: out std_logic := '1';
	SPI_SCLK: out std_logic := '0';
	SPI_MOSI: out std_logic := '0';
	SEND_DATA: in std_logic_vector(BITS-1 downto 0) := (others => '0');
	SEND_IRQ: in std_logic := '0';
	SEND_DONE: out std_logic := '0'
);
end entity;

architecture arc of SPI_TX is
type state is (idle, running);
signal curr_state : state := idle;

signal tx_buf : std_logic_vector(BITS-1 downto 0) := (others => '0');
signal bits_sent : integer range 0 to BITS+1 := 0;

signal sclk : std_logic := '1';
signal sclk_fall : std_Logic := '0';

signal clk_counter : integer range 0 to SEND_CLK_COUNTER_MAX := 0;

begin

SPI_SCLK <= sclk;

process(CLK) 
begin
	if(rising_edge(CLK)) then
		case curr_state is
			when idle =>
				SPI_CS <= '1';
				SPI_MOSI <= '0';
				sclk <= '0';
				SEND_DONE <= '0';
				bits_sent <= 0;
				if(SEND_IRQ = '1') then
					tx_buf <= SEND_DATA;
					curr_state <= running;
					SPI_CS <= '0';
				end if;
			when running =>
				if(clk_counter = SEND_CLK_COUNTER_MAX) then
					--Pereiname i kita busena sclk
					sclk <= not sclk;
					if(sclk = '1') then --Pereiname i zema busena
						SPI_MOSI <= tx_buf(BITS-1);
						tx_buf <= tx_buf(BITS-2 downto 0) & '0';
						bits_sent <= bits_sent + 1;
						if(bits_sent = BITS) then
							curr_state <= idle;
							SEND_DONE <= '1';
						end if;
					
					elsif(sclk = '0' and bits_sent = 0) then
						SPI_MOSI <= tx_buf(BITS-1);
						tx_buf <= tx_buf(BITS-2 downto 0) & '0';
						bits_sent <= 1;
					end if;
					clk_counter  <= 0;
				else
					clk_counter <= clk_counter + 1;
				end if;
		end case;
		
	end if;
end process;

end architecture;