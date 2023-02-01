library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;                               

ENTITY Testbenchas IS
generic(
VOLTAGE_DATA_LEN: integer := 441
);

END Testbenchas;

ARCHITECTURE UNI_Projektas_arch OF Testbenchas IS
-- constants                                                 
-- signals                                                   
SIGNAL ADC_IN : STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0');
SIGNAL ADC_DOR : std_logic;
SIGNAL ADC_DCKL : std_logic;
SIGNAL CLK : STD_LOGIC := '0';
SIGNAL DATA_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SYNC : STD_LOGIC;
signal arrIndex : integer := 0;
SIGNAL UART_TX: std_logic := '0';
SIGNAL UART_RX: std_logic := '0';

--Functions
--Read from file
file file_voltages: text;
type b_data is array(0 to VOLTAGE_DATA_LEN) of std_logic_vector(7 downto 0);
impure function init return b_data is
variable r : b_data := (others => (others => '0'));
variable iline: line;
variable temp_data : std_logic_vector(7 downto 0);
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


COMPONENT UNI_Projektas
	PORT (
	ADC_IN : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	CLK : IN STD_LOGIC;
	DATA_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ADC_DOR : in std_logic;
	ADC_DCKL : in std_logic;
	SYNC : OUT STD_LOGIC;
	UART_TX: out std_logic;
	UART_RX_RX: in std_logic
	);
END COMPONENT;
BEGIN
i1 : UNI_Projektas
	PORT MAP (
	ADC_IN => ADC_IN,
	CLK => CLK,
	DATA_OUT => DATA_OUT,
	ADC_DOR => ADC_DOR,
	ADC_DCKL => ADC_DCKL,
	SYNC => SYNC,
	UART_RX_RX => UART_RX,
	UART_TX => UART_TX
);
	
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
