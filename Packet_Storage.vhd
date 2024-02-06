library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Packet_Storage is 
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : in std_logic := '0';
	SPI_RESET : out std_logic := '0';
	--Packets in from correlator
	PACKET_IN_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	PACKET_IN_VALID : in std_logic := '0'
);
end entity;

architecture arc of Packet_Storage is
	
	component PACKET_STORAGE_FIFO is
	PORT(
		clock		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdreq		: IN STD_LOGIC ;
		wrreq		: IN STD_LOGIC ;
		empty		: OUT STD_LOGIC ;
		full		: OUT STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		usedw		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
	end component;

	constant PRINTOUT_AMOUNT : integer := 2;
	
	signal printout_idx : integer range 0 to PRINTOUT_AMOUNT := 1;
	signal printout_data : std_logic_vector(PRINTOUT_AMOUNT*8-1 downto 0) := x"0203";
	signal resp_data_buffer : std_logic_vector(7 downto 0) := (others => '0');
	
	--Packet storage FIFO
	signal fifo_data_in	: std_logic_vector (7 DOWNTO 0) := (others => '0');
	signal fifo_read_rq	: std_logic := '0';
	signal fifo_wr_rq	: std_logic := '0';
	signal fifo_empty	: std_logic := '0';
	signal fifo_full	: std_logic := '0';
	signal fifo_q	: std_logic_vector (7 DOWNTO 0) := (others => '0');
	signal fifo_curr_length	: std_logic_vector (9 DOWNTO 0) := (others => '0'); --Current FIFO length
	
begin

packet_fifo : PACKET_STORAGE_FIFO port map(CLK, fifo_data_in, fifo_read_rq, fifo_wr_rq, fifo_empty, fifo_full, fifo_q, fifo_curr_length);

RESP_DATA <= resp_data_buffer when EN = '1' else (others => '0');

process(CLK)
begin
	if rising_edge(CLK) then
		fifo_wr_rq <= '0';
		if PACKET_IN_VALID = '1' then
			if fifo_full = '0' then
				fifo_wr_rq <= '1';
				fifo_data_in <= PACKET_IN_DATA;
			else 
				--FIFO full, generate FIFO overrun flag
				--TODO: DO IT
			end if;
		end if;
	end if;
end process;

process(CLK)
begin
	if rising_edge(CLK) then
		SPI_RESET <= '0';
		if EN = '0' then
			resp_data_buffer <= printout_data(7 downto 0);
		else
			if SPI_CYCLE_DONE = '1' then
				--Check if printed everything out
				if printout_idx = PRINTOUT_AMOUNT then
					printout_idx <= 1;
					SPI_RESET <= '1';
				else
					printout_idx <= printout_idx + 1;
					resp_data_buffer <= printout_data((printout_idx+1)*8-1 downto printout_idx*8);
				end if;
			end if;
		end if;
	end if;
end process;


end architecture;