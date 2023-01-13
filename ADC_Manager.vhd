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
SIGNAL_BUF_LEN: integer := 200;
PREAMBULE_FUNC_LEN: integer := 50;
BITS_FUNC_LEN: integer := 20;
MAX_DATA_COUNTS : integer := 3;
BITS_PER_DATA_COUNT : integer := 2;
PREAMBULE_FUNC_THRESHOLD : integer := 480000;
BITS_FUNC_THRESHOLD : integer := 3; --Buvo 3000
PREAMBULE_DELAY_LEN: integer := 30
);
port(
CLK : in std_logic;
ADC_IN : in std_logic_vector(7 downto 0);
DATA_OUT : out std_logic_vector(6-1 downto 0);

RAM_DATA_BUS : in std_logic_vector(7 downto 0);
RAM_ADDRESS_BUS : out std_logic_vector(7 downto 0);

SYNC: in std_logic
);
end entity;

architecture arc of ADC_Manager is

--Load voltage data from files
--file file_voltages: text;
--impure function init(file_name : string; array_length : integer) return double_array is
--variable r : double_array(0 to array_length-1) := (others => (others => '0'));
--variable iline: line;
--variable temp_data : std_logic_vector(7 downto 0);
--begin
--	file_open(file_voltages, file_name, read_mode);
--	 for i in 0 to array_length-1 loop --Reverse because why not, the time moves backwards
--		readline(file_voltages, iline);
--		read(iline, temp_data);
--		r(array_length - 1 - i) := temp_data;
--	end loop;
--	file_close(file_voltages);
--	return r;
--end function init;

--Function signals
--signal c_func : double_array(0 to CONV_FUNC_LEN-1) := init(file_name => "idealPreambuleVoltage.txt", array_length => CONV_FUNC_LEN);
--signal c_one_func : double_array(0 to CONV_BIT_FUNC_LEN-1) := init(file_name => "idealOneVoltage.txt", array_length => CONV_BIT_FUNC_LEN);
--signal c_zero_func : double_array(0 to CONV_BIT_FUNC_LEN-1) := init(file_name => "idealZeroVoltage.txt", array_length => CONV_BIT_FUNC_LEN);
signal c_preamb_func : double_array(0 to PREAMBULE_FUNC_LEN-1) := (others => (others => '0'));

signal c_10_func : double_array(0 to BITS_FUNC_LEN-1) := (others => (others => '0'));
signal c_01_func : double_array(0 to BITS_FUNC_LEN-1) := (others => (others => '0'));
signal c_00_func : double_array(0 to BITS_FUNC_LEN-1) := (others => (others => '0'));
signal c_11_func : double_array(0 to BITS_FUNC_LEN-1) := (others => (others => '0'));

signal c_10_value : integer range 0 to 1000000 := 0;
signal c_01_value : integer range 0 to 1000000 := 0;
signal c_00_value : integer range 0 to 1000000 := 0;
signal c_11_value : integer range 0 to 1000000 := 0;

signal adc_buffer : double_array(0 to SIGNAL_BUF_LEN-1) := (others => (others => '0'));

--Function result signals
signal c_long_value : std_logic_vector(CONV_BITS-1 downto 0) := (others => '0');
signal c_short_value : std_logic_vector(CONV_BITS-1 downto 0) := (others => '0');

signal c_long_func_input : double_array(0 to PREAMBULE_FUNC_LEN-1) := (others => (others => '0'));
signal c_short_func_input : double_array(0 to BITS_FUNC_LEN-1) := (others => (others => '0'));

--Counting signals
signal preambule_found : std_logic := '0';
signal counter: integer := 0;
signal ram_counter: integer := 0;
signal preambule_delay_done : std_logic := '0';
signal data_buffer : std_logic_vector(MAX_DATA_COUNTS*BITS_PER_DATA_COUNT-1 downto 0) := (others => '0');
signal data_counts : integer := 0;
signal data_done : std_logic := '0';
signal readDataFromRam : std_logic := '1';

--Correlation inputs
signal c_long_func_input_index : integer range 0 to 2 := 0;
signal c_short_func_input_index : integer range 0 to 5 := 0;
signal check_corr : std_logic := '0';

--Components
component Correlation_function is
generic(
function_length : integer := 250
);
port(
CLK: in std_logic;
input_function : in double_array(0 to function_length - 1);
input_values : in double_array(0 to function_length - 1);
output_value : out std_logic_vector(19 downto 0)
);
end component;

begin
--Components
corr_long : Correlation_function generic map(function_length => PREAMBULE_FUNC_LEN) port map(CLK => CLK, input_function => c_long_func_input, input_values => adc_buffer(0 to PREAMBULE_FUNC_LEN-1), output_value => c_long_value);
corr_short : Correlation_function generic map(function_length => BITS_FUNC_LEN) port map(CLK => CLK, input_function => c_short_func_input, input_values => adc_buffer(0 to BITS_FUNC_LEN-1), output_value => c_short_value);

DATA_OUT <= data_buffer;


c_long_func_input <= c_preamb_func when c_long_func_input_index = 1 else
							(others => (others => '0'));
c_short_func_input <= c_10_func when c_short_func_input_index = 0 else
							c_01_func when c_short_func_input_index = 1 else
							c_11_func when c_short_func_input_index = 2 else
							c_00_func when c_short_func_input_index = 3 else
							(others => (others => '0'));

--Processes
--Sync signal 10MHz process
process(SYNC)
begin
	if(rising_edge(SYNC)) then
		if(data_done = '0') then
			if(readDataFromRam = '0') then
				--Not reading from ram
				--Shift ADC buffer and add new voltage value
				for i in 1 to SIGNAL_BUF_LEN-2 loop
					adc_buffer(i) <= adc_buffer(i-1);
				end loop;
				adc_buffer(0) <= ADC_IN;
				
				if(preambule_found = '1') then
					if(preambule_delay_done = '1') then
						if(counter = BITS_FUNC_LEN) then
							--New bit found
							counter <= 0;
							--Add to tracking of found bits number
							data_counts <= data_counts + 1;
							if(data_counts = MAX_DATA_COUNTS-1) then
								--data_done <= '1';
							end if;
						else
							counter <= counter + 1;
						end if;
					else
						--Preambule delay not done
						counter <= counter + 1;
						if(counter = PREAMBULE_DELAY_LEN) then --3us for delay between preambule and data
							counter <= 0;
							preambule_delay_done <= '1';
						end if;
					end if;
				end if;
			end if;
		end if;
	end if;
end process;

--50MHz process
process(CLK)
begin
	if(rising_edge(CLK)) then
		if(data_done = '0' or data_done = '1') then
			if(readDataFromRam = '0') then
				if(preambule_found = '1') then
					if(preambule_delay_done = '1') then
						if(check_corr = '1') then
							case(c_short_func_input_index) is
								when 1 =>
									c_10_value <=  to_integer(unsigned(c_short_value));
								when 2 =>
									c_01_value <=  to_integer(unsigned(c_short_value));
								when 3 =>
									c_11_value <=  to_integer(unsigned(c_short_value));
								when 4 =>
									c_00_value <=  to_integer(unsigned(c_short_value));
								when 5 =>
									--check_corr <= '0';
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
											data_buffer <= data_buffer(MAX_DATA_COUNTS*BITS_PER_DATA_COUNT-2-1 downto 0) & "00"; --Shift left to add new found data bit
										end if;
									elsif(c_11_value > c_10_value and c_11_value > c_01_value and c_11_value > c_00_value) then
										if(c_11_value > BITS_FUNC_THRESHOLD) then --Threshold value
											data_buffer <= data_buffer(MAX_DATA_COUNTS*BITS_PER_DATA_COUNT-2-1 downto 0) & "11"; --Shift left to add new found data bit
										end if;
									end if;
								when others =>
									
							end case;
							if(c_short_func_input_index = 5) then
								c_short_func_input_index <= 0;
							else
								c_short_func_input_index <= c_short_func_input_index + 1;
							end if;
						else --Check_corr = '0'
							if(counter = BITS_FUNC_LEN-1) then
								check_corr <= '1';
							end if;
						end if;
					else --Preambule delay not done
						
					end if;
				else --Preambule not found
					c_long_func_input_index <= 1; --Preambule
					if(to_integer(unsigned(c_long_value)) > PREAMBULE_FUNC_THRESHOLD) then
						preambule_found <= '1';
					end if;
				end if;
			else
				if(ram_counter = PREAMBULE_FUNC_LEN+4*BITS_FUNC_LEN+3) then
						--Pabaiga duomenu skaitymo
						readDataFromRam <= '0';
						ram_counter <= 0;
				else
					ram_counter <= ram_counter + 1;
				end if;
				--Read data from ram
				if (ram_counter < PREAMBULE_FUNC_LEN+4*BITS_FUNC_LEN) then
					ram_ADDRESS_BUS <= std_logic_vector(to_unsigned(ram_counter, ram_ADDRESS_BUS'length));
				end if;
				
				if(ram_counter > 2) then
					if(ram_counter < PREAMBULE_FUNC_LEN+3) then --Preambules verciu irasinejimas
							c_preamb_func(ram_counter-3) <= ram_DATA_BUS;
					elsif(ram_counter < PREAMBULE_FUNC_LEN+1*BITS_FUNC_LEN+3) then
						c_10_func(ram_counter-3-PREAMBULE_FUNC_LEN) <= ram_DATA_BUS;
					elsif(ram_counter < PREAMBULE_FUNC_LEN+2*BITS_FUNC_LEN+3) then
						c_01_func(ram_counter-3-PREAMBULE_FUNC_LEN-BITS_FUNC_LEN) <= ram_DATA_BUS;
					elsif(ram_counter < PREAMBULE_FUNC_LEN+3*BITS_FUNC_LEN+3) then
						c_00_func(ram_counter-3-PREAMBULE_FUNC_LEN-2*BITS_FUNC_LEN) <= ram_DATA_BUS;
					elsif(ram_counter < PREAMBULE_FUNC_LEN+4*BITS_FUNC_LEN+3) then
						c_11_func(ram_counter-3-PREAMBULE_FUNC_LEN-3*BITS_FUNC_LEN) <= ram_DATA_BUS;
					end if;
					
				end if;
			end if;
		end if;
	end if;
end process;

end architecture;