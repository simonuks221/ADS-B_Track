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
	--Packets in from correlator
	PACKET_IN_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	PACKET_IN_VALID : in std_logic := '0';
	PACKET_READY : out std_logic := '0'
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

	constant PACKET_LENGTH : integer := 2;
	
	signal printout_idx : integer range 0 to PACKET_LENGTH := 1;
	signal last_en : std_logic := '0';
	
	signal resp_data_buffer : std_logic_vector(7 downto 0) := (others => '0');
	--Packet storage FIFO
	signal fifo_data_in	: std_logic_vector (7 DOWNTO 0) := (others => '0');
	signal fifo_read_rq	: std_logic := '0';
	signal fifo_wr_rq	: std_logic := '0';
	signal fifo_empty	: std_logic := '0';
	signal fifo_full	: std_logic := '0';
	signal fifo_q	: std_logic_vector (7 DOWNTO 0) := (others => '0');
	signal fifo_curr_length	: std_logic_vector (9 DOWNTO 0) := (others => '0');
	
	signal fifo_rd_delay : std_logic := '0';
	signal fifo_loaded : std_logic := '0';
begin

packet_fifo : PACKET_STORAGE_FIFO port map(CLK, fifo_data_in, fifo_read_rq, fifo_wr_rq, fifo_empty, fifo_full, fifo_q, fifo_curr_length);

RESP_DATA <= resp_data_buffer when EN = '1' else (others => '0');

--Packet is ready if 7 bytes are inside
PACKET_READY <= '1' when to_integer(unsigned(fifo_curr_length)) > 6 else '0'; 

--Writing to FIFO packet data
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

--Preload any received fifo data into send register
process(CLK)
begin
	if rising_edge(CLK) then
		fifo_read_rq <= '0';
		fifo_rd_delay <= fifo_read_rq;
		last_en <= EN;
		if fifo_loaded = '0' then
			--Try load fifo
			if fifo_rd_delay = '1' then
				--Already reading, latch data
				resp_data_buffer <= fifo_q;
				fifo_loaded <= '1';
			else
				if fifo_read_rq = '0' then
					if fifo_empty = '0' then
						fifo_read_rq <= '1';
					else
						resp_data_buffer <= (others => '0');
					end if;
				end if;
			end if;
		end if;
		
		if last_en = '1' and EN = '0' then
			--Request another read from fifo
			fifo_loaded <= '0';
		end if;
	end if;
end process;

end architecture;