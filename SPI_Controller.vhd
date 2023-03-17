library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity SPI_Controller is 
generic(
	SEND_CLK_COUNTER_MAX : integer := 500;
	BITS : integer := 16
);
port(
	CLK : in std_logic;
	SPI_MOSI : out std_logic;
	SPI_SCLK : out std_logic;
	SPI_CS : out std_logic;
	SPI_send_data : std_logic_vector(BITS-1 downto 0) := (others => '0');
	SPI_send_irq : std_logic := '0'
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
	SEND_CLK_COUNTER_MAX : integer := 500;
	BITS : integer := 8
);
port(
	CLK: in std_logic := '0';
	SPI_CS: out std_logic := '1';
	SPI_SCLK: out std_logic := '0';
	SPI_MOSI: out std_logic := '0';
	SEND_DATA: in std_logic_vector(BITS-1 downto 0) := (others => '0');
	SEND_IRQ: in std_logic := '0';
	SEND_DONE: out std_logic := '0'
);
end component;

signal fifo_clk : STD_LOGIC := '0';
signal fifo_data : STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0');
signal fifo_rdreq : STD_LOGIC := '0';
signal fifo_wrreq : STD_LOGIC := '0';
signal fifo_empty : STD_LOGIC := '0';
signal fifo_q : STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0');

--Spi tx component
signal tx_send_data : std_logic_vector(BITS-1 downto 0);
signal tx_send_irq : std_logic := '0';
signal tx_send_done : std_logic := '0';

type state is (idle, reading_fifo, transmiting);
signal curr_state : state := idle;

begin

spi_fifo_component : wizard_spi_fifo port map(clock => fifo_clk, data => fifo_data, rdreq => fifo_rdreq, wrreq => fifo_wrreq, empty => fifo_empty, q => fifo_q);

spi_tx_component : spi_tx generic map(SEND_CLK_COUNTER_MAX => SEND_CLK_COUNTER_MAX, BITS => BITS) 
						port map(CLK => CLK, SPI_CS => SPI_CS, SPI_SCLK => SPI_SCLK, SPI_MOSI => SPI_MOSI, SEND_DATA => tx_send_data, SEND_IRQ => tx_send_irq, SEND_DONE => tx_send_done);

tx_send_data <= fifo_q;
fifo_clk <= CLK;
fifo_data <= SPI_send_data;
fifo_wrreq <= SPI_send_irq;
						
process(CLK)
begin
	if(rising_edge(CLK)) then
		case curr_state is
			when idle =>
				tx_send_irq <= '0';
				if(fifo_empty = '0') then
					fifo_rdreq <= '1';
					curr_state <= reading_fifo;
				end if;
			when reading_fifo =>
				fifo_rdreq <= '0';
				tx_send_irq <= '1';
				curr_state <= transmiting;
			when transmiting =>
				fifo_rdreq <= '0';
				tx_send_irq <= '0';
				if(tx_send_done = '1') then
					curr_state <= idle;
				end if;
		end case;
	end if;
end process;
			
end architecture;