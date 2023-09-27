library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_Testbench is
end entity;

architecture arc of UART_Testbench is
component UART_Controller is
generic(
	BAUD_RATE : integer := 115200
);
port(
	CLK: in std_logic;
	SEND_DATA_IN: in std_logic_vector(7 downto 0) := (others => '0');
	UART_FIFO_EMPTY: out std_logic := '0';
	SEND_DATA_IN_REQ: in std_logic := '0';
	TX : out std_logic := '1'
);
end component;

signal CLK : std_logic := '1';
signal UART_RX : std_logic := 'Z';
signal UART_TX : std_logic := '1';
signal UART_SEND_DATA : std_logic_vector(7 downto 0) := (others => '0');
signal UART_DATA_IRQ : std_logic := '0';
signal UART_FIFO_EMPTY : std_logic := '0';

begin
UART_Controller_1 : UART_Controller generic map(BAUD_RATE => 115200) port map(CLK => CLK,
	SEND_DATA_IN => UART_SEND_DATA,
	SEND_DATA_IN_REQ => UART_DATA_IRQ,
	TX => UART_TX, UART_FIFO_EMPTY => UART_FIFO_EMPTY);
CLK <= not CLK after 3.33ns; --50MHz 20ns 150Mhz 6.66ns

process
begin
	wait for 100ns;
	wait until falling_edge(CLK);
	UART_SEND_DATA <= "10101010";
	UART_DATA_IRQ <= '1';
	wait until falling_edge(CLK);
	UART_SEND_DATA <= "11101110";
	wait until falling_edge(CLK);
	UART_SEND_DATA <= "00110011";
	wait until falling_edge(CLK);
	UART_DATA_IRQ <= '0';
	wait;
end process;

end architecture;