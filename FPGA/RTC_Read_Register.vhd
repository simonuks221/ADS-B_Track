library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity RTC_Read_Register is
generic(
	RTC_IMPULSE_LENGTH_BITS : integer := 24;
	RTC_SECONDS_LENGTH_BITS : integer := 17;
	RTC_TIME_LENGTH_BYTES : integer := 6
);
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	
	RTC_CAPTURE_IRQ : std_logic := '0';
   RTC_CAPTURED_IMPULSES : std_logic_vector(RTC_IMPULSE_LENGTH_BITS - 1 downto 0) := (others => '0');
   RTC_CAPTURED_SECONDS : std_logic_vector(RTC_SECONDS_LENGTH_BITS - 1 downto 0) := (others => '0')
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
	
	--Determine how many bits/bytes the timestamp consists of
	constant COMBINED_TIME_LENGTH_BITS : integer := RTC_IMPULSE_LENGTH_BITS + RTC_SECONDS_LENGTH_BITS;
	constant COMBINED_TIME_BYTES : integer := COMBINED_TIME_LENGTH_BITS / 8 + 1;
	
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
	signal last_en : std_logic := '0';
	
	signal resp_data_buffer : std_logic_vector(7 downto 0) := (others => '0');
	
	signal captured_impulses : std_logic_vector(RTC_IMPULSE_LENGTH_BITS - 1 downto 0) := (others => '0');
   signal captured_seconds : std_logic_vector(RTC_SECONDS_LENGTH_BITS - 1 downto 0) := (others => '0');
	signal captured_combined_time : std_logic_vector(COMBINED_TIME_BYTES*8 - 1 downto 0) := (others => '0');
	signal rtc_capture_irq_delay : std_logic := '0';
	signal fifo_write_idx : integer range 0 to COMBINED_TIME_BYTES := 0;
	signal fifo_writing : std_logic := '0';
begin

time_fifo : PACKET_STORAGE_FIFO port map(CLK, fifo_data_in, fifo_read_rq, fifo_wr_rq, fifo_empty, fifo_full, fifo_q, fifo_curr_length);

--Stores combined seconds and impulses timestamp, add "000" to make a round byte from 45 to 48, total - 6 bytes
--captured_combined_time <= "000" & captured_impulses & captured_seconds;
--captured_combined_time <= "0000000000000000000000000000000" & captured_seconds;
captured_combined_time <= x"123456789ABC";
--captured_combined_time <= std_logic_vector(to_unsigned(1000, captured_combined_time'length));

process(CLK)
begin
	if rising_edge(CLK) then
		if EN = '1' then
			RESP_DATA <= resp_data_buffer;
		else
			RESP_DATA <= (others => '0');
		end if;
	end if;
end process;

--Writing to FIFO packet data
process(CLK)
begin
	if rising_edge(CLK) then
		fifo_wr_rq <= '0';
		rtc_capture_irq_delay <= RTC_CAPTURE_IRQ;
		if rtc_capture_irq_delay = '1' and fifo_writing = '0' and fifo_full = '0' then --Don't receive new time stamp if previous is writing
			--Received time capture interrupt, start writing to fifo
			captured_impulses <= RTC_CAPTURED_IMPULSES;
			--captured_seconds <= RTC_CAPTURED_SECONDS;
			captured_seconds <= std_logic_vector(to_unsigned(1000, captured_seconds'length));
			fifo_writing <= '1';
			fifo_write_idx <= 0;
		end if;
		
		if fifo_writing = '1' then
			if fifo_full = '1' then
				--FIFO full, abort writing
				fifo_writing <= '0';
				fifo_wr_rq <= '0';
			else
				--Writing to FIFO
				if fifo_write_idx = COMBINED_TIME_BYTES then
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
				--resp_data_buffer <= x"12";
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
		--Request another read if EN disabled
		if last_en = '1' and EN = '0' then
			
			fifo_loaded <= '0';
		end if;
	end if;
end process;


end architecture;