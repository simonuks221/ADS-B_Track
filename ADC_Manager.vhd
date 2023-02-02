library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
use work.corr_package.all;

entity ADC_Manager is
	generic(
		SIGNAL_BITS: integer := 8;
		CONV_BITS: integer := 20;
		SIGNAL_BUF_LEN: integer := 50;
		PREAMBULE_FUNC_LEN: integer := 50; --91 87 29 2 basic --Su 2 ramais  95 90 32 3 --Su sumazinta koreliacija 58 38 37 3
		BITS_FUNC_LEN: integer := 20; --60 40 38 4 su UART 61 45 38 su 'upgreidais' lmao
		MAX_DATA_COUNTS : integer := 3;
		BITS_PER_DATA_COUNT : integer := 2;
		PREAMBULE_FUNC_THRESHOLD : integer := 480000;--480000;
		BITS_FUNC_THRESHOLD : integer := 3;
		PREAMBULE_DELAY_LEN: integer := 30 --3us, 30 atskaitu
	);
	port(
		CLK : in std_logic;
		DATA_OUT : out std_logic_vector(6-1 downto 0);
		DATA_DONE : out std_logic := '0';

		RAM_DATA_BUS : in std_logic_vector(7 downto 0);
		RAM_ADDRESS_BUS : out std_logic_vector(7 downto 0);

		c_long_value_in : in std_logic_vector(20-1 downto 0) := (others => '0');
		c_long_func_input_out : out double_array(0 to 50-1) := (others => (others => '0'));
		c_en : out std_logic := '0';
		shift_en : out std_logic := '0';

		SYNC: in std_logic;
		
		--Corr function rom addresses: 0 - preambule, 1 - preambule2, 2 - 01, 3 - 11, 4 - 10, 5 - 00
		corr_func_rom_adress_a	: out STD_LOGIC_VECTOR (4 DOWNTO 0) := (others => '0');
		corr_func_rom_adress_b	: out STD_LOGIC_VECTOR (4 DOWNTO 0) := (others => '0')
);
end entity;

architecture arc of ADC_Manager is

--Function signals
signal c_preamb_func : double_array(0 to PREAMBULE_FUNC_LEN-1) := (others => (others => '0'));

signal c_1_func : double_array(0 to 10-1) := (others => (others => '0'));
signal c_0_func : double_array(0 to 10-1) := (others => (others => '0'));

signal c_10_value : integer range 0 to 4000 := 0;
signal c_01_value : integer range 0 to 4000 := 0;
signal c_00_value : integer range 0 to 4000 := 0;
signal c_11_value : integer range 0 to 4000 := 0;

--Function result signals
signal c_long_value : std_logic_vector(CONV_BITS-1 downto 0) := (others => '0');
signal c_long_func_input : double_array(0 to PREAMBULE_FUNC_LEN-1) := (others => (others => '0'));

--Counting signals
signal counter: integer := 0;
signal bit_counter: integer := 0;
signal bit_polarity: std_logic := '0';
signal ram_counter: integer := 0;
signal data_buffer : std_logic_vector(MAX_DATA_COUNTS*BITS_PER_DATA_COUNT-1 downto 0) := (others => '0');
signal data_counts : integer := 0;
signal data_end : std_logic := '0';

--Correlation inputs
signal c_short_func_input_index : natural range 0 to 9 := 0;

--FSM
type m_state is (read_init_mem, finding_preambule, waiting_preambule, waiting_bits, finding_bits, sending_bits, waiting_after);

signal main_state : m_state := read_init_mem;
--signal main_state : m_state := read_init_mem;

begin
DATA_OUT <= data_buffer;
c_long_value <= c_long_value_in;
c_long_func_input_out <= c_long_func_input;

c_en <= '1' when main_state = finding_preambule or main_state = finding_bits else '0';
shift_en <= '1' when main_state = finding_bits else '0';

--FSM set variables

--Change state to next
process(CLK)
begin
	if(rising_edge(CLK)) then
		--main_state <= main_state;
	end if;
end process;

--Check to change state
process(CLK)
begin
	if(rising_edge(CLK)) then
		case(main_state) is
			when read_init_mem =>
				if (ram_counter < PREAMBULE_FUNC_LEN+3*BITS_FUNC_LEN) then
					ram_ADDRESS_BUS <= std_logic_vector(to_unsigned(ram_counter, ram_ADDRESS_BUS'length));
				end if;
				
				if(ram_counter > 2) then
					if(ram_counter < PREAMBULE_FUNC_LEN+3) then --Preambules verciu irasinejimas
							c_preamb_func(ram_counter-3) <= ram_DATA_BUS;
					elsif(ram_counter < PREAMBULE_FUNC_LEN+1*10+3) then
						c_1_func(ram_counter-3-PREAMBULE_FUNC_LEN) <= ram_DATA_BUS;
					elsif(ram_counter < PREAMBULE_FUNC_LEN+2*10+3) then
						c_0_func(ram_counter-3-PREAMBULE_FUNC_LEN-1*10) <= ram_DATA_BUS;
					end if;
				end if;
				if(ram_counter = PREAMBULE_FUNC_LEN+4*BITS_FUNC_LEN+3) then
						--Pabaiga duomenu skaitymo
						main_state <= finding_preambule;
				else
					ram_counter <= ram_counter + 1;
				end if;
				bit_polarity <= '1';
				
			when finding_preambule =>
				bit_polarity <= not bit_polarity;
				DATA_DONE <= '0';
				if(bit_polarity = '1') then
					corr_func_rom_adress_a <= std_logic_vector(to_unsigned(1, corr_func_rom_adress_a'length));
					corr_func_rom_adress_b <= std_logic_vector(to_unsigned(0, corr_func_rom_adress_b'length));
				else
					corr_func_rom_adress_a <= std_logic_vector(to_unsigned(3, corr_func_rom_adress_a'length));
					corr_func_rom_adress_b <= std_logic_vector(to_unsigned(2, corr_func_rom_adress_b'length));
				end if;
				
				c_long_func_input <= c_preamb_func;
				if(to_integer(unsigned(c_long_value)) > PREAMBULE_FUNC_THRESHOLD) then
					main_state <= waiting_preambule;
				end if;
			when waiting_preambule =>
				bit_polarity <= '1';
				c_long_func_input <= (others => (others => '0'));
				
				if(counter = PREAMBULE_DELAY_LEN) then --3us for delay between preambule and data
					main_state <= waiting_bits;
				end if;
			when waiting_bits =>
				bit_polarity <= '1';
				corr_func_rom_adress_a <= std_logic_vector(to_unsigned(5, corr_func_rom_adress_a'length));
				corr_func_rom_adress_b <= std_logic_vector(to_unsigned(4, corr_func_rom_adress_b'length));
				c_long_func_input(0 to 10-1) <= c_0_func;
				c_long_func_input(10 to 20-1) <= c_1_func;
				if(bit_counter = BITS_FUNC_LEN-1) then
					main_state <= finding_bits;
					corr_func_rom_adress_a <= std_logic_vector(to_unsigned(15, corr_func_rom_adress_a'length));
					corr_func_rom_adress_b <= std_logic_vector(to_unsigned(15, corr_func_rom_adress_b'length));
				end if;
				c_short_func_input_index <= 0;
				
			when finding_bits =>
				case(c_short_func_input_index) is
					when 0 =>
						corr_func_rom_adress_a <= std_logic_vector(to_unsigned(7, corr_func_rom_adress_a'length));
						corr_func_rom_adress_b <= std_logic_vector(to_unsigned(6, corr_func_rom_adress_b'length));
						
						c_long_func_input(0 to 10-1) <= c_0_func;
						c_long_func_input(10 to 20-1) <= c_1_func;
					when 1 =>
						corr_func_rom_adress_a <= std_logic_vector(to_unsigned(15, corr_func_rom_adress_a'length));
						corr_func_rom_adress_b <= std_logic_vector(to_unsigned(15, corr_func_rom_adress_b'length));
						c_long_func_input(0 to 10-1) <= c_1_func;
						c_long_func_input(10 to 20-1) <= c_1_func;
					when 2 =>
						c_01_value <=  to_integer(unsigned(c_long_value));
						corr_func_rom_adress_a <= std_logic_vector(to_unsigned(9, corr_func_rom_adress_a'length));
						corr_func_rom_adress_b <= std_logic_vector(to_unsigned(8, corr_func_rom_adress_b'length));
					when 3 =>
						corr_func_rom_adress_a <= std_logic_vector(to_unsigned(15, corr_func_rom_adress_a'length));
						corr_func_rom_adress_b <= std_logic_vector(to_unsigned(15, corr_func_rom_adress_b'length));
						c_long_func_input(0 to 10-1) <= c_1_func;
						c_long_func_input(10 to 20-1) <= c_0_func;
					when 4 =>
						corr_func_rom_adress_a <= std_logic_vector(to_unsigned(11, corr_func_rom_adress_a'length));
						corr_func_rom_adress_b <= std_logic_vector(to_unsigned(10, corr_func_rom_adress_b'length));
						c_11_value <=  to_integer(unsigned(c_long_value));
					when 5 =>
						corr_func_rom_adress_a <= std_logic_vector(to_unsigned(15, corr_func_rom_adress_a'length));
						corr_func_rom_adress_b <= std_logic_vector(to_unsigned(15, corr_func_rom_adress_b'length));
						c_long_func_input(0 to 10-1) <= c_0_func;
						c_long_func_input(10 to 20-1) <= c_0_func;
					when 6 =>
						corr_func_rom_adress_a <= std_logic_vector(to_unsigned(13, corr_func_rom_adress_a'length));
						corr_func_rom_adress_b <= std_logic_vector(to_unsigned(12, corr_func_rom_adress_b'length));
						c_10_value <=  to_integer(unsigned(c_long_value));
					when 7 =>
						corr_func_rom_adress_a <= std_logic_vector(to_unsigned(15, corr_func_rom_adress_a'length));
						corr_func_rom_adress_b <= std_logic_vector(to_unsigned(15, corr_func_rom_adress_b'length));
					when 8 =>
						c_00_value <=  to_integer(unsigned(c_long_value));
					when 9 =>
						corr_func_rom_adress_a <= std_logic_vector(to_unsigned(5, corr_func_rom_adress_a'length));
						corr_func_rom_adress_b <= std_logic_vector(to_unsigned(4, corr_func_rom_adress_b'length));
						c_long_func_input(0 to 10-1) <= c_0_func;
						c_long_func_input(10 to 20-1) <= c_1_func;
						c_short_func_input_index <= 0;
						if(c_01_value > c_10_value and c_01_value > c_00_value and c_01_value > c_11_value) then
							if(c_01_value > BITS_FUNC_THRESHOLD) then --Threshold value
								data_buffer <= data_buffer(MAX_DATA_COUNTS*BITS_PER_DATA_COUNT-2-1 downto 0) & "01"; --Shift left to add new found data bit
							end if;
						elsif(c_10_value > c_01_value and c_10_value > c_00_value and c_10_value > c_11_value) then
							if(c_10_value > BITS_FUNC_THRESHOLD) then --Threshold value
								data_buffer <= data_buffer(MAX_DATA_COUNTS*BITS_PER_DATA_COUNT-2-1 downto 0) & "10"; --Shift left to add new found data bit
							end if;
						elsif(c_00_value > c_01_value and c_00_value > c_10_value and c_00_value > c_11_value) then
							if(c_00_value > BITS_FUNC_THRESHOLD) then --Threshold value
								data_buffer <= data_buffer(MAX_DATA_COUNTS*BITS_PER_DATA_COUNT-2-1 downto 0) & "11"; --Shift left to add new found data bit
							end if;
						elsif(c_11_value > c_10_value and c_11_value > c_01_value and c_11_value > c_00_value) then
							if(c_11_value > BITS_FUNC_THRESHOLD) then --Threshold value
								data_buffer <= data_buffer(MAX_DATA_COUNTS*BITS_PER_DATA_COUNT-2-1 downto 0) & "00"; --Shift left to add new found data bit
							end if;
						end if;
						
						data_counts <= data_counts + 1;
						if(data_counts = MAX_DATA_COUNTS-1) then
							main_state <= sending_bits;
							data_counts <= 0;
						else
							main_state <= waiting_bits;
						end if;
					
				when others =>
						
				end case;
				if(c_short_func_input_index = 9) then
					c_short_func_input_index <= 0;
				else
					c_short_func_input_index <= c_short_func_input_index + 1;
				end if;
			when sending_bits =>
				DATA_DONE <= '1';
				main_state <= waiting_after;
			when waiting_after =>
				DATA_DONE <= '0';
				if(bit_counter = 150) then
					main_state <= finding_preambule;
				end if;
			when others =>
		end case;
	end if;
end process;

--Counter 10MHz
process(SYNC)
begin
	if(rising_edge(SYNC)) then
		case(main_state) is
			when read_init_mem =>
				
			when finding_preambule =>
				bit_counter <= 0;
			when waiting_preambule =>
				counter <= counter + 1;
			when waiting_bits =>
				counter <= 0;
				bit_counter <= bit_counter + 1;
			when finding_bits =>
				bit_counter <= 2;
			when waiting_after =>
				bit_counter <= bit_counter + 1;
			when others =>
				
		end case;
	end if;
end process;

end architecture;