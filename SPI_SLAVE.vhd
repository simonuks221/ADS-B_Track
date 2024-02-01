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
	SLAVE_DONE: out std_logic := '1'
);
end entity;

architecture arc of SPI_SLAVE is
type state is (idle); --TODO: unused, incorporate rx capability
signal curr_state : state := idle;
signal SPI_SCLK_LAST : std_logic := '0';
signal slave_buf : std_logic_vector(BITS-1 downto 0) := (others => '0');
signal bits_sent : integer range 0 to BITS + 1 := 0;
signal bit_to_send : std_logic := '0';
signal slave_buf_index : integer range 0 to BITS-1 := 0;
begin

SPI_MISO <= 'Z' when SPI_CS = '1' else bit_to_send;

process(CLK) 
begin
	if rising_edge(CLK) then
		SPI_SCLK_LAST <= SPI_SCLK;
		--if SPI_SCLK_LAST = '0' and SPI_SCLK = '1' then
			--Rising edge
			
		if SPI_SCLK_LAST = '1' and SPI_SCLK = '0' then
			--Falling edge
			bit_to_send <= slave_buf(0); --Left as this for metastability when changing signals
			if slave_buf_index = (BITS - 1) then
				SLAVE_DONE <= '1';
			end if;
		end if;
		
		if SLAVE_DATA_LATCH = '1' then
			slave_buf <= SLAVE_DATA;
			SLAVE_DONE <= '0';
		end if;
	end if;
end process;

end architecture;