library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;                               

ENTITY Testbenchas IS
generic(
VOLTAGE_DATA_LEN: integer := 4120
);

END Testbenchas;

ARCHITECTURE UNI_Projektas_arch OF Testbenchas IS                                              

-- signals                                                   
SIGNAL CLK : STD_LOGIC := '0';
signal BUTTON : std_logic := '1';

--ADC SIGNALS
signal ADC_SHDN : std_logic := '0'; --1 - ADC OFF, 0 - ADC ON
signal ADC_SYNC : std_logic := '0'; --Sinchronizacija tarp FPGA CLk ir ADC vidinio CLK
signal ADC_CLK : std_logic := '0';
signal ADC_DORB : std_logic := '0'; --Data over range
signal ADC_DORA : std_logic := '0';
signal ADC_DCLKB : std_logic := '0'; --Valid data on rising edge
signal ADC_DCLKA : std_logic := '0';
signal ADC_BIT_B : std_logic_vector(9 downto 0) :=  (others =>'0');
signal ADC_BIT_A : std_logic_vector(9 downto 0) :=  (others =>'0');
--ADC SPI
signal ADC_SPI_SDIN : std_logic := '0';
signal ADC_SPI_SCLK : std_logic := '0';
signal ADC_SPI_CS : std_logic := '0';

--SPI TO FPGA
signal SPI_MOSI : std_logic := '0';
signal SPI_MISO : std_logic := '0';
signal SPI_SCLK : std_logic := '0';
signal SPI_CS : std_logic := '1';

--MRAM
signal MRAM_OUTPUT_EN : std_logic := '0';
signal MRAM_A : std_logic_vector(16 downto 0) :=  (others =>'0');
signal MRAM_EN : std_logic := '0';
signal MRAM_WRITE_EN : std_logic := '0';
signal MRAM_D : std_logic_vector(7 downto 0) :=  (others =>'0');

--UART
signal UART_RX : std_logic := '0';
signal UART_TX : std_logic := '1';

--IRQ
signal PACKET_IRQ : std_logic := '0';

--RTC
signal PPS : std_logic := '0';

--DEBUG
signal DEBUG_1 : std_logic := '0';

--Functions
--Read from file
file file_voltages: text;
type b_data is array(0 to VOLTAGE_DATA_LEN) of integer;
impure function init return b_data is
variable r : b_data := (others => 0);
variable iline: line;
variable temp_data : integer;
begin
	file_open(file_voltages, "test_voltage.txt",  read_mode);
	 for i in 0 to VOLTAGE_DATA_LEN-1 loop
		readline(file_voltages, iline);
		read(iline, temp_data);
		r(i) := temp_data+400;
	end loop;
	return r;
end function init;

--Send SPI command
procedure spi_send(constant FIRST_CMD : in std_logic_vector(7 downto 0);
						constant CMD_AMOUNT : in integer;
						signal P_SPI_MOSI : out std_logic;
						signal P_SPI_MISO : in std_logic;
						signal P_SPI_SCLK : out std_logic;
						signal P_SPI_CS : out std_logic
						) is
begin
	P_SPI_CS <= '0';
	P_SPI_SCLK <= '0';
	wait for 5 ns;
	for k in 0 to CMD_AMOUNT - 1 loop
		for i in 0 to 7 loop
			P_SPI_SCLK <= '0';
			if k = 0 then
				P_SPI_MOSI <= FIRST_CMD(i);
			end if;
			wait for 500 ns;
			P_SPI_SCLK <= '1';
			wait for 500 ns;
		end loop;
	end loop;
	P_SPI_SCLK <= '0';
	wait for 1000 ns;
	P_SPI_CS <= '1';
	wait for 5 ns;
end procedure ;

--Send SPI command
procedure spi_send_time(constant CMD : in std_logic_vector(24-1 downto 0);
						signal P_SPI_MOSI : out std_logic;
						signal P_SPI_MISO : in std_logic;
						signal P_SPI_SCLK : out std_logic;
						signal P_SPI_CS : out std_logic
						) is
	constant time_cmd : std_logic_vector(7 downto 0) := x"03";
begin
	P_SPI_CS <= '0';
	P_SPI_SCLK <= '0';
	wait for 5 ns;
	for k in 0 to 4 - 1 loop
		for i in 0 to 7 loop
			P_SPI_SCLK <= '0';
			if k = 0 then
				P_SPI_MOSI <= time_cmd(i);
			else
				P_SPI_MOSI <= CMD(i+(k-1)*8);
			end if;
			wait for 500 ns;
			P_SPI_SCLK <= '1';
			wait for 500 ns;
		end loop;
	end loop;
	P_SPI_SCLK <= '0';
	wait for 1000 ns;
	P_SPI_CS <= '1';
end procedure ;

signal adc_buffer : b_data := init;
signal adc_buffer_index : integer := 0;
signal adc_buffer_counter : integer := 0;


component UNI_Projektas is
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
	SPI_MOSI : in std_logic := '0';
	SPI_MISO : inout std_logic := 'Z';
	SPI_SCLK : in std_logic := '0';
	SPI_CS : in std_logic := '0';
	
	--MRAM
	MRAM_OUTPUT_EN : out std_logic := '0';
	MRAM_A : out std_logic_vector(16 downto 0) := (others => '0');
	MRAM_EN : out std_logic := '0';
	MRAM_WRITE_EN : out std_logic := '0';
	MRAM_D : inout std_logic_vector(7 downto 0) := (others => '0');
	
	--UART
	UART_TX : out std_logic := '1';
	
	--IRQ
	PACKET_IRQ : out std_logic := '0';
	
	--RTC
	PPS : in std_logic := '0';
	
	--DEBUG
	DEBUG_1 : out std_logic := '0'
);
end component;

type mram_data_type is array(0 to 25600) of std_logic_vector(7 downto 0);
signal mram_data : mram_data_type := (others => (others => '0'));

constant status_register_cmd : std_logic_vector(7 downto 0) := x"01";
constant packet_storage_cmd : std_logic_vector(7 downto 0) := x"02";
constant rtc_register_set_cmd : std_logic_vector(7 downto 0) := x"03";
constant rtc_register_read_cmd : std_logic_vector(7 downto 0) := x"04";

BEGIN
i1 : UNI_Projektas port map(CLK => CLK, BUTTON => BUTTON, ADC_SHDN => ADC_SHDN, ADC_SYNC => ADC_SYNC, ADC_CLK => ADC_CLK,
									ADC_SPI_SDIN => ADC_SPI_SDIN, ADC_SPI_SCLK => ADC_SPI_SCLK, ADC_SPI_CS => ADC_SPI_CS,ADC_DCLKA => ADC_DCLKA,
									MRAM_OUTPUT_EN => MRAM_OUTPUT_EN,  MRAM_A => MRAM_A, MRAM_EN => MRAM_EN, MRAM_WRITE_EN => MRAM_WRITE_EN,
									MRAM_D => MRAM_D,ADC_BIT_A => ADC_BIT_A,
									UART_TX => UART_TX, SPI_MOSI => SPI_MOSI, SPI_MISO => SPI_MISO, 
									SPI_CS => SPI_CS, SPI_SCLK => SPI_SCLK, PACKET_IRQ => PACKET_IRQ, PPS => PPS, DEBUG_1 => DEBUG_1);
	
CLK <= not CLK after 10 ns; --50MHz 20ns

ADC_DCLKA <= transport ADC_CLK after 5 ns; --50MHz 5ns, 1/4

--Process for FPGA SPI simulation
process
begin
	SPI_CS <= '1';
	wait for 1 us;
	spi_send(status_register_cmd, 2, SPI_MOSI, SPI_MISO, SPI_SCLK, SPI_CS);
	wait for 10 us;
	spi_send(status_register_cmd, 2, SPI_MOSI, SPI_MISO, SPI_SCLK, SPI_CS);
	--wait for 5 us;
	--spi_send(x"04", 3, SPI_MOSI, SPI_MISO, SPI_SCLK, SPI_CS);
	wait for 5 us;
	spi_send_time(x"100000", SPI_MOSI, SPI_MISO, SPI_SCLK, SPI_CS);
	--Wait until packet received
	wait for 0.5 us;
	spi_send(status_register_cmd, 2, SPI_MOSI, SPI_MISO, SPI_SCLK, SPI_CS);
	wait until rising_edge(PACKET_IRQ);
	--spi_send(packet_storage_cmd, 8, SPI_MOSI, SPI_MISO, SPI_SCLK, SPI_CS);
	--spi_send(rtc_register_read_cmd, 7, SPI_MOSI, SPI_MISO, SPI_SCLK, SPI_CS);
	wait until rising_edge(PACKET_IRQ);
	--spi_send(packet_storage_cmd, 8, SPI_MOSI, SPI_MISO, SPI_SCLK, SPI_CS);
	spi_send(rtc_register_read_cmd, 7, SPI_MOSI, SPI_MISO, SPI_SCLK, SPI_CS);
	spi_send(rtc_register_read_cmd, 7, SPI_MOSI, SPI_MISO, SPI_SCLK, SPI_CS);
	--spi_send(packet_storage_cmd, 3, SPI_MOSI, SPI_MISO, SPI_SCLK, SPI_CS);
	--wait until rising_edge(PACKET_IRQ);
	--wait for 1 us;
	--spi_send(packet_storage_cmd, 3, SPI_MOSI, SPI_MISO, SPI_SCLK, SPI_CS);
	wait;
end process;

--ADC values simulation
process(CLK)
begin
	if(falling_edge(CLK)) then
		if now > 42.2 us then
			if(adc_buffer_index < VOLTAGE_DATA_LEN-1) then
				if(adc_buffer_counter = 4) then
					adc_buffer_counter <= 0;
					adc_buffer_index <= adc_buffer_index + 1;
					ADC_BIT_A <= std_logic_vector(to_unsigned(adc_buffer(adc_buffer_index), ADC_BIT_A'length));
				else
					adc_buffer_counter <= adc_buffer_counter + 1;
				end if;
			else
				adc_buffer_index <= 0;
				ADC_BIT_A <= (others => '0');
			end if;
		else
			ADC_BIT_A <= (others => '0');
		end if;
	end if;
end process;

--PPS example
process
begin
	PPS <= '0';
	wait for 20us;
	PPS <= '1';
	wait for 1us;
	PPS <= '0';
	wait;
end process;               

--MRAM WRITE/READ emulation
process
begin
	wait until falling_edge(MRAM_EN);
		MRAM_D <= (others => 'Z');
		if(MRAM_WRITE_EN = '0') then
			wait until rising_edge(MRAM_WRITE_EN);
			mram_data(to_integer(unsigned(MRAM_A))) <= MRAM_D;
		else
			wait for 10 ns;
			if(MRAM_OUTPUT_EN = '0') then
				MRAM_D <= mram_data(to_integer(unsigned(MRAM_A)));
				wait until rising_edge(MRAM_EN);
				wait for 15 ns;
				MRAM_D <= (others => 'Z');
			end if;
		end if;
end process;

end architecture;
