library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

--First send bit (So MSB of 16bit) 0 - write, 1 - read. Ant kylancio fronto skaityt

entity SPI_Controller is 
generic(
	SEND_CLK_COUNTER_MAX : integer := 100;
	BITS : integer := 16;
	SEND_CLK_WAIT_MAX : integer := 100 * 10
);
port(
	CLK : in std_logic;
	SPI_MOSI : inout std_logic;
	SPI_SCLK : out std_logic;
	SPI_CS : out std_logic;
	SPI_send_data : std_logic_vector(BITS-1 downto 0) := (others => '0');
	SPI_send_irq : std_logic := '0';
	SPI_FIFO_EMPTY : out std_logic := '0'
);
end entity;

architecture arc of SPI_Controller is

component wizard_spi_fifo IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		rdreq		: IN STD_LOGIC ;
		wrreq		: IN STD_LOGIC ;
		empty		: OUT STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END component;

component SPI_TX is 
generic(
	SEND_CLK_COUNTER_MAX : integer := 100;
	BITS : integer := 8
);
port(
	CLK: in std_logic := '0';
	SPI_SCLK: out std_logic := '0';
	SPI_MOSI: inout std_logic := '0';
	SEND_DATA: in std_logic_vector(BITS-1 downto 0) := (others => '0');
	SEND_IRQ: in std_logic := '0';
	SEND_DONE: out std_logic := '0'
);
end component;

signal fifo_clk : STD_LOGIC := '0';
signal fifo_rdreq : STD_LOGIC := '0';
signal fifo_empty : STD_LOGIC := '0';
signal fifo_q : STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0');

--Spi tx component
signal tx_send_data : std_logic_vector(BITS-1 downto 0);
signal tx_send_irq : std_logic := '0';
signal tx_send_done : std_logic := '0';

type state is (idle, reading_fifo, waiting, transmiting, cs_up);
signal curr_state : state := idle;
signal cs_up_counter : integer range 0 to SEND_CLK_WAIT_MAX := 0;
begin

SPI_FIFO_EMPTY <= fifo_empty;

spi_fifo_component : wizard_spi_fifo port map(clock => fifo_clk, data => SPI_send_data, rdreq => fifo_rdreq, wrreq => SPI_send_irq, empty => fifo_empty, q => fifo_q);

spi_tx_component : spi_tx generic map(SEND_CLK_COUNTER_MAX => SEND_CLK_COUNTER_MAX, BITS => BITS) 
						port map(CLK => CLK, SPI_SCLK => SPI_SCLK, SPI_MOSI => SPI_MOSI, SEND_DATA => tx_send_data, SEND_IRQ => tx_send_irq, SEND_DONE => tx_send_done);
tx_send_data <= fifo_q;
fifo_clk <= CLK;

process(CLK)
begin
	if rising_edge(CLK) then
		case curr_state is
			when idle =>
				if(fifo_empty = '0') then
					curr_state <= reading_fifo;
				end if;
			when  reading_fifo =>
				curr_state <= transmiting;
			when transmiting =>
				curr_state <= waiting;
			when waiting =>
				if(tx_send_done = '1') then
					curr_state <= cs_up;
				end if;
			when cs_up =>
				if(cs_up_counter = SEND_CLK_WAIT_MAX) then
					curr_state <= idle;
					cs_up_counter <= 0;
				else
					cs_up_counter <= cs_up_counter + 1;
				end if;
		end case;
	end if;
end process;

process(CLK)
begin
	if(rising_edge(CLK)) then
		case curr_state is
			when idle =>
				SPI_CS <= '1';
				tx_send_irq <= '0';
			when reading_fifo =>
				fifo_rdreq <= '1';
			when transmiting =>
				tx_send_irq <= '1';
				SPI_CS <= '0';
				fifo_rdreq <= '0';
			when waiting =>
				tx_send_irq <= '0';
			when cs_up =>
				SPI_CS <= '1';
				tx_send_irq <= '0';
		end case;
	end if;
end process;
end architecture;