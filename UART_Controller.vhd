library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity UART_Controller is
generic(
	baud_rate : integer := 9600
);
port(
	CLK: in std_logic;
	SEND_DATA_IN: in std_logic_vector(7 downto 0) := "00000000";
	SEND_DATA_IN_REQ: in std_logic := '0';
	UART_FIFO_EMPTY: out std_logic := '0';
	TX : out std_logic := '1'
);
end entity;

architecture arc of UART_Controller is

component Clock_divider is
generic(
Prescaler : integer := 434;
Half_Prescaler : integer := 217
);
port(
CLK: in std_logic;
CLK_OUT: out std_logic
);
end component;

component UART_TX is
port(
	CLK: in std_logic;
	UART_CLK : in std_logic;
	SEND_DATA : in std_logic_vector(7 downto 0);
	START_SEND_DATA : in std_logic;
	
	TX_BUSY : out std_logic;
	TX : out std_logic
);
end component;

component UART_FIFO_wizard IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdreq		: IN STD_LOGIC ;
		wrreq		: IN STD_LOGIC ;
		empty		: OUT STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END component;

type state is (idle, reading_fifo1, reading_fifo2, transmiting);
signal curr_state : state := idle;
signal next_state : state := idle;

signal UART_CLK : std_logic := '0';
signal START_SEND_DATA : std_Logic := '0';
signal TX_BUSY : std_logic;
signal SEND_DATA_OUT : std_logic_vector(7 downto 0) := (others => '0');
signal fifo_read_req : std_Logic := '0';
signal fifo_empty : std_logic := '0';

begin

uart_clk_divider : Clock_divider port map(CLK => CLK, CLK_OUT => UART_CLK);

uart_tx_1 : UART_TX port map(CLk => CLK, UART_CLK => UART_CLK, SEND_DATA => SEND_DATA_OUT, START_SEND_DATA => START_SEND_DATA, TX => TX,
				TX_BUSY => TX_BUSY);
				
uart_fifo : UART_FIFO_wizard port map(clock => CLK, data => SEND_DATA_IN, rdreq => fifo_read_req, wrreq => SEND_DATA_IN_REQ, q => SEND_DATA_OUT, empty => fifo_empty);

UART_FIFO_EMPTY <= fifo_empty;

--Set next state
process(CLK)
begin
	if(rising_edge(CLK)) then
		curr_state <= next_state;
	end if;
end process;

--Writing ports
process(curr_state)
begin
	case curr_state is
		when idle =>
			fifo_read_req <= '0';
			START_SEND_DATA <= '0';
		when reading_fifo1 =>
			fifo_read_req <= '1';
			START_SEND_DATA <= '1';
		when reading_fifo2 =>
			fifo_read_req <= '0';
			START_SEND_DATA <= '1';
		when transmiting =>
			fifo_read_req <= '0';
			START_SEND_DATA <= '0';
	end case;
end process;

--State management
process(CLK)
begin
	if(rising_edge(CLK)) then
		case curr_state is
			when idle =>
				if(fifo_empty = '0') then
					next_state <= reading_fifo1;
				end if;
			when reading_fifo1 =>
				next_state <= reading_fifo2;
			when reading_fifo2 =>
				if(TX_BUSY = '1') then
					next_state <= transmiting;
				end if;
			when transmiting =>
				if(TX_BUSY = '0') then
					next_state <= idle;
				end if;
		end case;
	end if;
end process;





--CLK <= not CLK after 0.01us; --50MHz
--process
--begin
--		wait until rising_edge(CLK);
--		SEND_DATA_IN <= "00000111";
--		SEND_DATA_IN_REQ <= '1';
--		wait until rising_edge(CLK);
--		SEND_DATA_IN_REQ <= '0';
--		
--		wait for 0.5us;
--		wait until rising_edge(CLK);
--		SEND_DATA_IN <= "10101010";
--		SEND_DATA_IN_REQ <= '1';
--		wait until rising_edge(CLK);
--		SEND_DATA_IN_REQ <= '0';
		--START_SEND_DATA <= '1';
--		wait;
--end process;
				
end architecture;