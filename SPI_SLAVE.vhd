library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity SPI_SLAVE is 
generic(
	BITS : integer := 8
);
port(
	CLK: in std_logic;
	SPI_SCLK: in std_logic := '0';
	SPI_MOSI: in std_logic := '0';
	SPI_MISO: inout std_logic := '0';
	SPI_CS: in std_logic := '1';
	SLAVE_DATA: in std_logic_vector(BITS-1 downto 0) := (others => '0');
	SLAVE_DATA_LATCH: in std_logic := '0';
	DATA_EMPTY: out std_logic := '1'
);
end entity;

architecture arc of SPI_SLAVE is
type state is (idle, got_data, cs_down, action); --TODO: unused, incorporate rx capability
signal curr_state : state := idle;
signal SPI_SCLK_LAST : std_logic := '0';
signal slave_buf : std_logic_vector(BITS-1 downto 0) := (others => '0');
signal bits_sent : integer range 0 to BITS + 1 := 9;
signal bit_to_send : std_logic := '0';
begin

SPI_MISO <= 'Z' when SPI_CS = '1' else bit_to_send;

process(CLK)
begin
	if rising_edge(CLK) then
		--if SPI_CS = '1' then
		--	curr_state <= idle;
		--else
			case curr_state is
			when idle =>
				if SLAVE_DATA_LATCH = '1' then
					curr_state <= got_data;
				end if;
			when got_data=>
				if SPI_CS = '0' then
					curr_state <= cs_down;
				end if;
			when cs_down =>
				curr_state <= action;
			when action =>
				if bits_sent = 9 then
					curr_state <= idle;
				end if;
			end case;
		--end if;
	end if;
end process;

process(CLK) 
begin
	if rising_edge(CLK) then
		case curr_state is
			when idle =>
				DATA_EMPTY <= '1';
				if SLAVE_DATA_LATCH = '1' then
					slave_buf <= SLAVE_DATA;
					DATA_EMPTY <= '0';
				end if;
			when got_data=>
				DATA_EMPTY <= '0';
			when cs_down => --For the first bit to register
				bit_to_send <= slave_buf(0);
				slave_buf <= "0" & slave_buf(7 downto 1);
				bits_sent <= 1;
			when action =>
				SPI_SCLK_LAST <= SPI_SCLK;
				if SPI_SCLK_LAST = '1' and SPI_SCLK = '0' then
					--Falling edge
					bit_to_send <= slave_buf(0); --Left as this for metastability when changing signals
					slave_buf <= "0" & slave_buf(7 downto 1);
					bits_sent <= bits_sent + 1;
				end if;
		end case;
		
	end if;
end process;

end architecture;