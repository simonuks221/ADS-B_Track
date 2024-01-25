-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 10.12.2023 17:08:06 UTC

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;    

entity CORR_Testbench is
end CORR_Testbench;

architecture tb of CORR_Testbench is

    component Corr_Main
        port (CLK              : in std_logic;
              ADC_BITS         : in std_logic_vector (15 downto 0) := (others => '0');
              ADC_BITS_VALID   : in std_logic;
              PREAMBULE_FOUND  : out std_logic;
              EN_CORR          : in std_logic;
              CORR_DONE        : out std_logic;
              MRAM_DATA_OUT    : out std_logic_vector (15 downto 0) := (others => '0');
              MRAM_ADDRESS_OUT : out std_logic_vector (17 downto 0) := (others => '0');
              MRAM_WRITE_DATA  : out std_logic;
              MRAM_DONE        : in std_logic);
    end component;

    signal CLK              : std_logic := '0';
    signal ADC_BITS         : std_logic_vector (15 downto 0) := (others => '0');
    signal ADC_BITS_VALID   : std_logic := '0';
    signal PREAMBULE_FOUND  : std_logic := '0';
    signal EN_CORR          : std_logic := '0';
    signal CORR_DONE        : std_logic := '0';
    signal MRAM_DATA_OUT    : std_logic_vector (15 downto 0) := (others => '0');
    signal MRAM_ADDRESS_OUT : std_logic_vector (17 downto 0) := (others => '0');
    signal MRAM_WRITE_DATA  : std_logic := '0';
    signal MRAM_DONE        : std_logic := '0';

    constant TbPeriod : time := 6.66 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
	 
	 --Functions
	--Read from file
	file file_voltages: text;
	type b_data is array(0 to 440) of std_logic_vector(9 downto 0);
	impure function init return b_data is
	variable r : b_data := (others => (others => '0'));
	variable iline: line;
	variable temp_data : std_logic_vector(9 downto 0);
	begin
		file_open(file_voltages, "testVoltage.txt",  read_mode);
		 for i in 0 to 440-1 loop --Iskaitant 9
			readline(file_voltages, iline);
			read(iline, temp_data);
			r(i) := temp_data;
		end loop;
		return r;
	end function init;

	signal adc_buffer : b_data := init;
	signal adc_buffer_index : integer := 0;
	signal adc_buffer_counter : integer := 0;
begin
    dut : Corr_Main
    port map (CLK              => CLK,
              ADC_BITS         => ADC_BITS,
              ADC_BITS_VALID   => ADC_BITS_VALID,
              PREAMBULE_FOUND  => PREAMBULE_FOUND,
              EN_CORR          => EN_CORR,
              CORR_DONE        => CORR_DONE,
              MRAM_DATA_OUT    => MRAM_DATA_OUT,
              MRAM_ADDRESS_OUT => MRAM_ADDRESS_OUT,
              MRAM_WRITE_DATA  => MRAM_WRITE_DATA,
              MRAM_DONE        => MRAM_DONE);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 ;

    CLK <= TbClock;
	 
	 EN_CORR <= '1';
	 MRAM_DONE <= '1';

    process(CLK)
    begin
		if rising_edge(CLK) then
			if now > 10us then
				if(adc_buffer_counter = 0) then
					ADC_BITS_VALID <= '1';
				else
					ADC_BITS_VALID <= '0';
				end if;
				ADC_BITS <= "000000" & adc_buffer(adc_buffer_index);
				adc_buffer_counter <= adc_buffer_counter + 1;
				if(adc_buffer_counter = 4) then
					adc_buffer_counter <= 0;
					if(adc_buffer_index /= 440) then
						adc_buffer_index <= adc_buffer_index + 1;
					end if;
				else
					adc_buffer_counter <= adc_buffer_counter + 1;
				end if;
			end if;
		end if;
    end process;

end architecture;