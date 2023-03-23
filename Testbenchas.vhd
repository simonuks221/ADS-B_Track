library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;                               

ENTITY Testbenchas IS
generic(
VOLTAGE_DATA_LEN: integer := 436
);

END Testbenchas;

ARCHITECTURE UNI_Projektas_arch OF Testbenchas IS
-- constants                                                 
-- signals                                                   
SIGNAL ADC_IN : STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0');
SIGNAL CLK : STD_LOGIC := '0';
SIGNAL SYNC : STD_LOGIC;
signal arrIndex : integer := 0;

--Functions
--Read from file
file file_voltages: text;
type b_data is array(0 to VOLTAGE_DATA_LEN) of std_logic_vector(9 downto 0);
impure function init return b_data is
variable r : b_data := (others => (others => '0'));
variable iline: line;
variable temp_data : std_logic_vector(9 downto 0);
begin
	file_open(file_voltages, "testVoltage.txt",  read_mode);
	 for i in 0 to VOLTAGE_DATA_LEN-1 loop --Iskaitant 9
		readline(file_voltages, iline);
		read(iline, temp_data);
		r(i) := temp_data;
	end loop;
	return r;
end function init;
signal adc_buffer : b_data := init;


component UNI_Projektas is
generic (
	baud_rate : integer := 434 --115200 baud reitui toki prescaleri naudojam
);
port(
	CLK : in std_logic := '0';
	BUTTON : in std_logic := '0';
	
	--ADC SIGNALS
	ADC_SHDN : out std_logic := '0'; --1 - ADC OFF, 0 - ADC ON
	ADC_SYNC : out std_logic := '0'; --Sinchronizacija tarp FPGA CLk ir ADC vidinio CLK
	ADC_CLK : out std_logic := '0';
	ADC_DORB : in std_logic := '0'; --Data over range
	ADC_DORA : in std_logic := '0';
	ADC_DCLKB : in std_logic := '0'; --Valid data on rising edge
	ADC_DCLKA : in std_logic := '0';
	ADC_BIT_B : in std_logic_vector(9 downto 0) := (others => '0');
	ADC_BIT_A : in std_logic_vector(9 downto 0) := (others => '0');
	--ADC SPI
	ADC_SPI_SDIN : inout std_logic := 'Z';
	ADC_SPI_SCLK : out std_logic := '0';
	ADC_SPI_CS : out std_logic := '1';
	
	--SPI TO FPGA
	SPI_MOSI : inout std_logic := 'Z';
	SPI_MISO : inout std_logic := 'Z';
	SPI_SCLK : inout std_logic := 'Z';
	SPI_CS : inout std_logic := 'Z';
	
	--MRAM
	MRAM_OUTPUT_EN : out std_logic := '0';
	MRAM_A : out std_logic_vector(17 downto 0) := (others => '0');
	MRAM_EN : out std_logic := '0';
	MRAM_WRITE_EN : out std_logic := '0';
	MRAM_UPPER_EN : out std_logic := '0';
	MRAM_LOWER_EN : out std_logic := '0';
	MRAM_D : out std_logic_vector(15 downto 0) := (others => '0')
	
);
end component;

BEGIN
i1 : UNI_Projektas port map(CLK => CLK);
	
CLK <= not CLK after 0.01us; --50MHz 0.01us 50MHz

process(SYNC)
begin
	if(rising_edge(SYNC)) then
		if now > 10us then
			if(arrIndex < VOLTAGE_DATA_LEN-1) then
				arrIndex <= arrIndex + 1;
				adc_in <= adc_buffer(arrIndex);
			else
				adc_in <= (others => '0');
			end if;
		else
			adc_in <= (others => '0');
		end if;
	end if;
end process;                                          
END UNI_Projektas_arch;
