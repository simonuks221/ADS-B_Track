library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Corr_Main is
generic(
	BUFFER_LENGTH : integer := 50;
	BUFFER_WIDTH : integer := 9;
	MAX_ADDRESS_COUNTS : integer :=  1000
);
port(
	CLK : in std_logic := '0';
	ADC_BITS : in std_logic_vector(15 downto 0) := (others => '0');
	ADC_BITS_VALID : in std_logic := '0';
	PREAMBULE_FOUND : out std_logic := '0';
	
	EN_CORR : in std_logic := '0';
	CORR_DONE : out std_logic := '0';
	MRAM_DATA_OUT : out std_logic_vector(15 downto 0) := (others => '0');
	MRAM_ADDRESS_OUT : out std_logic_vector(17 downto 0) := (others => '0');
	MRAM_WRITE_DATA : out std_logic := '0';
	MRAM_DONE : in std_logic := '0'
);
end entity;

architecture arc of Corr_Main is


component Corr_Buffer is
	generic(
		BUFFER_LENGTH: integer := 50;
		BUFFER_WIDTH : integer := 9
	);
	port (
		CLK : in std_logic := '0';
		DATA_IN : in std_logic_vector(BUFFER_WIDTH - 1 downto 0) := (others => '0');
		DATA_OUT_0 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_1 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_2 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_3 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_4 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_5 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_6 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_7 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_8 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0')
	);
end component;

signal corr_buffer_update : std_logic := '0';
signal DATA_IN : std_logic_vector(BUFFER_WIDTH - 1 downto 0) := (others => '0');
signal DATA_OUT_0 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_1 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_2 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_3 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_4 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_5 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_6 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_7 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_8 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');

signal corr_value : integer range -50000 to 50000 := 0;
--signal preambule_coef : std_logic_vector(50-1 downto 0) := "11111000001111100000000000000000000111110000011111"; --Nediferencijuota
--signal preambule_coef : std_logic_vector(50-1 downto 0) := "11000"; --Diferencijuota

type coef_array is array(49 downto 0) of integer range -2 to 2;
constant preambule_coef : coef_array := (1, 1, 0, 0, 0, -1, -1, 0, 0, 0, 1, 1, 0, 0, 0, -1, -1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	0,	0, 0, 0, 1, 1, 0, 0, 0, -1, -1, 0, 0, 0, 1, 1, 0, 0, 0);

signal read_counter : integer range 0 to 15 := 0;
signal address_counter : integer range 0 to MAX_ADDRESS_COUNTS+5 := 0;
signal real_data_counter : integer range 0 to 255 := 255;

begin

buff : corr_buffer generic map(BUFFER_LENGTH, BUFFER_WIDTH) port map(corr_buffer_update, DATA_IN, DATA_OUT_0, DATA_OUT_1, DATA_OUT_2, DATA_OUT_3, DATA_OUT_4,
									DATA_OUT_5, DATA_OUT_6, DATA_OUT_7, DATA_OUT_8);
MRAM_ADDRESS_OUT <= std_logic_vector(to_unsigned(address_counter, MRAM_ADDRESS_OUT'length));

CORR_DONE <= '1' when address_counter = MAX_ADDRESS_COUNTS else '0';
DATA_IN <='0'&ADC_BITS(9 downto 2);

PREAMBULE_FOUND <= '1' when corr_value > 460 or corr_value = 460 else '0';

process(CLK)
type size is array (0 to   BUFFER_LENGTH-1) of signed(12 downto 0);
type size1 is array (0 to (BUFFER_LENGTH/2)-1) of signed(12 downto 0);
type size2 is array (0 to (BUFFER_LENGTH/4)-1) of signed(12 downto 0);
type size3 is array (0 to (BUFFER_LENGTH/8)-1) of signed(12 downto 0);
type size4 is array (0 to (BUFFER_LENGTH/16)-1) of signed(12 downto 0);

variable vacc : size; --50
variable vacc1 : size1; --25
variable vacc2 : size2; --12 --paliktas vienas
variable vacc3 : size3; --6
variable vacc4 : size4; --3

variable a : signed(8 downto 0);
variable suma : integer range -50000 to 50000 := 0;
begin
	if(EN_CORR = '1') then
	--https://surf-vhdl.com/vhdl-for-loop-statement/ --Efficient Binary loop addition
		suma := 0;
		for i in 0 to BUFFER_LENGTH-1 loop
			a := DATA_OUT_8(i)&DATA_OUT_7(i)&DATA_OUT_6(i)&DATA_OUT_5(i)&DATA_OUT_4(i)&DATA_OUT_3(i)&DATA_OUT_2(i)&DATA_OUT_1(i)&DATA_OUT_0(i);--DATA_OUT_0(i)&DATA_OUT_1(i)&DATA_OUT_2(i)&DATA_OUT_3(i)&DATA_OUT_4(i)&DATA_OUT_5(i)&DATA_OUT_6(i)&DATA_OUT_7(i);
			vacc(i) := to_signed(to_integer(a) * preambule_coef(i), 13) ;
			suma := suma + to_integer(vacc(i));
		end loop;
		--corr_value <= suma;
		--250ns velinimas bandymas: 0
		
--		corr_value <= to_integer(unsigned(vacc(0))) + to_integer(unsigned(vacc(1)))+ to_integer(unsigned(vacc(2))) + to_integer(unsigned(vacc(3))) + to_integer(unsigned(vacc(4))) + 
--		to_integer(unsigned(vacc(10))) + to_integer(unsigned(vacc(11)))+ to_integer(unsigned(vacc(12))) + to_integer(unsigned(vacc(13))) + to_integer(unsigned(vacc(14))) + 
--		to_integer(unsigned(vacc(35))) + to_integer(unsigned(vacc(36)))+ to_integer(unsigned(vacc(37))) + to_integer(unsigned(vacc(38))) + to_integer(unsigned(vacc(39))) + 
--		to_integer(unsigned(vacc(45))) + to_integer(unsigned(vacc(46)))+ to_integer(unsigned(vacc(47))) + to_integer(unsigned(vacc(48))) + to_integer(unsigned(vacc(49)));
	--	if(to_integer(unsigned(vacc(0))) > 150 and to_integer(unsigned(vacc(1))) > 150 and to_integer(unsigned(vacc(2))) > 150 and to_integer(unsigned(vacc(3))) > 150 and to_integer(unsigned(vacc(4))) > 150) then
	--		PREAMBULE_FOUND <= '1';
	--	else
	--		PREAMBULE_FOUND <= '0';
	--	end if;
		
		for i in 0 to (BUFFER_LENGTH/2)-1 loop
			vacc1(i) := vacc(i*2)+vacc(i*2+1);
		end loop; 
		
		for i in 0 to (BUFFER_LENGTH/4)-1 loop
			vacc2(i) := vacc1(i*2)+vacc1(i*2+1); --24 nepaimam
		end loop; --paliktas vienas 50tas
		
		for i in 0 to (BUFFER_LENGTH/8)-1 loop
			vacc3(i) := vacc2(i*2)+vacc2(i*2+1);
		end loop;
		
		for i in 0 to (BUFFER_LENGTH/16)-1 loop
			vacc4(i) := vacc3(i*2)+vacc3(i*2+1);
		end loop;
		
		corr_value <= to_integer(vacc4(0)) + to_integer(vacc4(1)) + to_integer(vacc4(2))+ to_integer(vacc1(24));--+ to_integer(vacc2(11))+ to_integer(vacc3(6));
		--corr_value <= to_integer(vacc(0)) + to_integer(vacc(1)) + to_integer(vacc(5))*(-1) + to_integer(vacc(6))* (-1) + to_integer(vacc(10)) + to_integer(vacc(11)) + 
			--to_integer(vacc(15))* (-1) + to_integer(vacc(16))*(-1) + to_integer(vacc(33)) + to_integer(vacc(34)) + to_integer(vacc(38))*(-1) +  to_integer(vacc(39))*(-1) + 
			--to_integer(vacc(43)) + to_integer(vacc(44)) + to_integer(vacc(48))*(-1) + to_integer(vacc(49))*(-1);
		--corr_value <= to_integer(vacc(0)) + to_integer(vacc(1)) + to_integer(vacc(5)) + to_integer(vacc(6)) + to_integer(vacc(10)) + to_integer(vacc(11)) + 
			--to_integer(vacc(15)) + to_integer(vacc(16)) + to_integer(vacc(33)) + to_integer(vacc(34)) + to_integer(vacc(38)) +  to_integer(vacc(39)) + 
			--to_integer(vacc(43)) + to_integer(vacc(44)) + to_integer(vacc(48)) + to_integer(vacc(49));
		--constant preambule_coef : coef_array := (1, 1, 0, 0, 0, -1, -1, 0, 0, 0, 1, 1, 0, 0, 0, -1, -1, 0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	--0,	0, 1, 1, 0, 0, 0, -1, -1, 0, 0, 0, 1, 1, 0, 0, 0, -1, -1);
	else
		corr_value <= 0;
	end if;
end process;

process(CLK)
begin
	if rising_edge(CLK) then
		if(EN_CORR = '0') then
		read_counter <= 0;
			MRAM_WRITE_DATA <= '0';
			address_counter <= 0;
		else
			if(read_counter = 14) then
				if(MRAM_DONE = '1') then
					read_counter <= 0;
					address_counter <= address_counter + 1;
					
					if(real_data_counter = 0) then
						real_data_counter <= 255;
					else
						real_data_counter <= real_data_counter - 1;
					end if;

					MRAM_DATA_OUT <= "0000" & std_logic_vector(to_signed(corr_value, 12));
					MRAM_WRITE_DATA <= '1';
				else
					MRAM_WRITE_DATA <= '0';
				end if;
			else
				if(read_counter /= 14) then
					read_counter <= read_counter + 1;	
				end if;
					MRAM_WRITE_DATA <= '0';
			end if;
		end if;
	end if;
end process;

--process(ADC_BITS_VALID)
--begin
--	if rising_edge(ADC_BITS_VALID) then
--		if(corr_value > 1000) then --2600 testavimui
--				PREAMBULE_FOUND <= '1';
--		else
--			PREAMBULE_FOUND <= '0';
--		end if;
--	end if;
--end process;

process(CLK)
begin
	if rising_edge(CLK) then
		if(ADC_BITS_VALID = '1') then
			corr_buffer_update <= '1';
		else
			corr_buffer_update <= '0';
		end if;
	end if;
end process;
									
						

									
end architecture;