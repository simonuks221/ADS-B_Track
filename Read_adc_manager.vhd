library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Read_adc_manager is
port(
	CLK : in std_logic := '0';
	DCLK : in std_logic := '0';
	ADC_BIT : in std_logic_vector(9 downto 0) := (others => '0');
	ADC_BIT_VALID : out std_logic := '0';
	BITS_OUT : out std_logic_vector(9 downto 0) := (others => '0');
	
	EN_READ_ADC : in std_logic := '0'
);
end entity;

architecture arc of Read_adc_manager is
	
	component adc_sync_fifo IS
	port(
		data		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		rdclk		: IN STD_LOGIC ;
		rdreq		: IN STD_LOGIC ;
		wrclk		: IN STD_LOGIC ;
		wrreq		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
		rdempty		: OUT STD_LOGIC ;
		wrfull		: OUT STD_LOGIC
	);
	end component;
	
	constant READ_COUNTER_MAX : integer := 4;
	
	signal fifo_data : std_logic_vector(9 downto 0) := (others => '0');
	signal rdclk : std_logic := '0';
	signal rdreq : std_logic := '0';
	signal wrclk : std_logic := '0';
	signal wrreq : std_logic := '0';
	signal fifo_q : std_logic_vector(9 downto 0) := (others => '0');
	signal rdempty : std_logic := '0';
	signal wrfull : std_logic := '0';

	signal read_counter : integer range 0 to READ_COUNTER_MAX := 0;
	
	--Synchronisation --TODO: could make fifo instead
	signal DCLK_sync_1 : std_logic := '0';
	signal DCLK_sync_2 : std_logic := '0';
	signal DCLK_sync_3 : std_logic := '0';
	signal ADC_BIT_sync_1 : std_logic_vector(9 downto 0) := (others => '0');
	signal ADC_BIT_sync_2 : std_logic_vector(9 downto 0) := (others => '0');
begin

adc_fifo_1 : adc_sync_fifo port map(fifo_data, rdclk, rdreq, wrclk, wrreq, fifo_q, rdempty, wrfull);

wrclk <= DCLK;
rdclk <= CLK;

process(DCLK)
begin
	if rising_edge(DCLK) then
		if(read_counter = READ_COUNTER_MAX) then
			read_counter <= 0;
			fifo_data <= ADC_BIT;
			wrreq <= not wrfull; --Protect against writing to full FIFO
		else
			read_counter <= read_counter + 1;
			wrreq <= '0';
		end if;
	end if;
end process;

BITS_OUT <= std_logic_vector(to_unsigned(to_integer(unsigned(fifo_q)), 10));

process(CLK)
begin
	if rising_edge(CLK) then
		if EN_READ_ADC = '1' then
			rdreq <= not rdempty; --Read when data present in FIFO
			ADC_BIT_VALID <= rdreq;
		end if;
	end if;
end process;

end architecture;