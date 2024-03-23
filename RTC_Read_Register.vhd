library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity RTC_Read_Register is 
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : in std_logic := '0';
	
	RTC_CAPTURE_IRQ : std_logic := '0';
   RTC_CAPTURED_MS : std_logic_vector(31 downto 0) := (others => '0');
   RTC_CAPTURED_NS : std_logic_vector(18 downto 0) := (others => '0')
);
end entity;

architecture arc of RTC_Read_Register is
	--Reusing FIFO
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
	
	constant MS_LENGTH : integer := 32;
	constant NS_LENGTH : integer := 19;
	constant COMBINED_TIME_LENGTH : integer := MS_LENGTH + NS_LENGTH; --51
	constant TIME_BYTES : integer := 56 / 8; --7 bytes in total, 56 bits, have 5 empty
	
	--Packet storage FIFO
	signal fifo_data_in	: std_logic_vector (7 DOWNTO 0) := (others => '0');
	signal fifo_read_rq	: std_logic := '0';
	signal fifo_wr_rq	: std_logic := '0';
	signal fifo_empty	: std_logic := '0';
	signal fifo_full	: std_logic := '0';
	signal fifo_q	: std_logic_vector (7 DOWNTO 0) := (others => '0');
	signal fifo_curr_length	: std_logic_vector (9 DOWNTO 0) := (others => '0'); --Current FIFO length
	
	signal fifo_rd_delay : std_logic := '0';
	signal fifo_loaded : std_logic := '0';
	
	signal resp_data_buffer : std_logic_vector(7 downto 0) := (others => '0');
	
	signal captured_ms : std_logic_vector(MS_LENGTH - 1 downto 0) := (others => '0');
   signal captured_ns : std_logic_vector(NS_LENGTH - 1 downto 0) := (others => '0');
	signal captured_combined_time : std_Logic_vector(TIME_BYTES*8 - 1 downto 0) := (others => '0');
	signal rtc_capture_irq_delay : std_logic := '0';
	signal fifo_write_idx : integer := 0;
	signal fifo_writing : std_logic := '0';
begin

time_fifo : PACKET_STORAGE_FIFO port map(CLK, fifo_data_in, fifo_read_rq, fifo_wr_rq, fifo_empty, fifo_full, fifo_q, fifo_curr_length);

RESP_DATA <= resp_data_buffer when EN = '1' else (others => '0');

--Stores combined ms and ns timestamp
captured_combined_time <= "00000" & captured_ms & captured_ns;

--Writing to FIFO packet data
process(CLK)
begin
	if rising_edge(CLK) then
		fifo_wr_rq <= '0';
		rtc_capture_irq_delay <= RTC_CAPTURE_IRQ;
		if rtc_capture_irq_delay = '1' and fifo_writing = '0' then --Don't receive new time stamp if previous is writing
			--Received time capture interrupt, start writing to fifo
			captured_ms <= RTC_CAPTURED_MS;
			captured_ns <= RTC_CAPTURED_NS;
			fifo_writing <= '1';
			fifo_write_idx <= 0;
		end if;
		
		if fifo_writing = '1' then --TODO: test if full fifo
			--Writing to FIFO
			if fifo_write_idx = TIME_BYTES then
				--End FIFO writing sequence
				fifo_writing <= '0';
				fifo_wr_rq <= '0';
			else 
				--Continue FIFO writing sequence
				fifo_write_idx <= fifo_write_idx + 1;
				fifo_wr_rq <= '1';
				fifo_data_in <= captured_combined_time((fifo_write_idx + 1)*8-1 downto fifo_write_idx*8);
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
		
		if EN = '0' then
		
		else 
			if SPI_CYCLE_DONE = '1' then
				--Request another read from fifo
				fifo_loaded <= '0';
			end if;
		end if;
	end if;
end process;


end architecture;