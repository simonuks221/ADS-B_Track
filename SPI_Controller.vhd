library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity SPI_Controller is 
generic(
	SEND_CLK_PRESCALER : integer := 5
);
port(
	CLK: in std_logic;
	SPI_SCLK: out std_logic := '0';
	SPI_MOSI: out std_logic := '0';
	SPI_CS: out std_logic := '1';
	SEND_ADDRESS: in std_logic_vector(7 downto 0) := "10101010";
	SEND_DATA: in std_logic_vector(7 downto 0) := "11110000";
	SEND_READWRITE : in std_logic := '0';
	SEND_IRQ: in std_logic := '0'
	
);



end entity;

architecture arc of SPI_Controller is

component Clock_divider is
	port(
	CLK: in std_logic;
	Prescaler : in std_logic_vector(15 downto 0);

	CLK_OUT: out std_logic
	);
end component;

type state is (idle, readwrite, address, data);

signal curr_state : state := idle;
signal send_readwrite_buffer : std_logic := '0';
signal send_address_buffer : std_logic_vector(7 downto 0) := (others => '0');
signal send_data_buffer : std_logic_vector(7 downto 0) := (others => '0');

signal send_counter : integer range 0 to 16 := 0;
signal send_CLK : std_logic := '0';

begin

send_clock_divider : Clock_divider port map(CLK => CLK, Prescaler => std_logic_vector(to_unsigned(SEND_CLK_PRESCALER, 16)), CLK_OUT => send_CLK);

process(CLK)
begin
	if(rising_edge(CLK))then
		case curr_state is
			when idle =>
				if(SEND_IRQ = '1') then
					curr_state <= readwrite;
				end if;
			when readwrite =>
				--if(send_counter = 1) then
					curr_state <= address;
				--end if;
			when address =>
				if(send_counter = 7) then
					curr_state <= data;
				end if;
			when data =>
				if(send_counter = 15) then
					curr_state <= idle;
				end if;
		end case;
	end if;
end process;

process(send_CLK)
begin
	if(rising_edge(send_CLK))then
		case curr_state is
			when idle =>
				SPI_CS <= '1';
				SPI_MOSI <= '0';
				SPI_SCLK <= '0';
			when readwrite =>
				SPI_CS <= '0';
				SPI_MOSI <= send_readwrite_buffer;
			when address =>
				SPI_MOSI <= send_address_buffer(send_counter);
				send_counter <= send_counter + 1;
			when data =>
				SPI_MOSI <= send_data_buffer(send_counter-8);
				send_counter <= send_counter + 1;
		end case;
	end if;
end process;

process(CLK)
begin
	if(rising_edge(CLK))then
		--send_CLK_counter <= send_CLK_Counter + 1;
		
	end if;
end process;

end architecture;