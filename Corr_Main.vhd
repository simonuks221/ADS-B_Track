library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Corr_Main is
generic(
	BUFFER_LENGTH : integer := 50;
	BUFFER_WIDTH : integer := 8
);
port(
	CLK : in std_logic := '0';
	ADC_BITS : in std_logic_vector(15 downto 0) := (others => '0');
	ADC_BITS_VALID : in std_logic := '0';
	PREAMBULE_FOUND : out std_logic := '0'
);
end entity;

architecture arc of Corr_Main is


component Corr_Buffer is
	generic(
		BUFFER_LENGTH: integer := 50;
		BUFFER_WIDTH : integer := 8
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
		DATA_OUT_7 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0')
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

signal corr_value : integer := 0;
signal preambule_coef : std_logic_vector(50-1 downto 0) := "11111000001111100000000000000000000111110000011111";
signal test : std_logic_vector(1 downto 0) := (others => '0');

signal byte : unsigned (7 downto 0) := (others => '0');

begin

buff : corr_buffer generic map(BUFFER_LENGTH, BUFFER_WIDTH) port map(corr_buffer_update, DATA_IN, DATA_OUT_0, DATA_OUT_1, DATA_OUT_2, DATA_OUT_3, DATA_OUT_4,
									DATA_OUT_5, DATA_OUT_6, DATA_OUT_7);

DATA_IN <= 	ADC_BITS(7 downto 0);

--PREAMBULE_FOUND <= '1' when corr_value > 2000 else '0';



--test <= DATA_OUT_0(0) & DATA_OUT_1(0);
process(CLK)
type size is array (0 to (BUFFER_LENGTH)-1) of unsigned(12 downto 0);
type size1 is array (0 to (BUFFER_LENGTH/2)-1) of unsigned(12 downto 0);
type size2 is array (0 to (BUFFER_LENGTH/4)-1) of unsigned(12 downto 0);
type size3 is array (0 to (BUFFER_LENGTH/4)-1) of unsigned(12 downto 0);
type size4 is array (0 to (BUFFER_LENGTH/4)-1) of unsigned(12 downto 0);
type size5 is array (0 to (BUFFER_LENGTH/4)-1) of unsigned(12 downto 0);

variable vacc : size; --50
variable vacc1 : size1; --25
variable vacc2 : size2; --12 --paliktas vienas
variable vacc3 : size3; --6
variable vacc4 : size4; --3

variable a : unsigned(7 downto 0);
begin
	--https://surf-vhdl.com/vhdl-for-loop-statement/ --Efficient Binary loop addition
	for i in 0 to BUFFER_LENGTH-1 loop
		a := DATA_OUT_0(i)&DATA_OUT_1(i)&DATA_OUT_2(i)&DATA_OUT_3(i)&DATA_OUT_4(i)&DATA_OUT_5(i)&DATA_OUT_6(i)&DATA_OUT_7(i);
		vacc(i) := to_unsigned(to_integer(unsigned(a)),13);
	end loop;
	
	--250ns velinimas bandymas: 0
	
	if(to_integer(unsigned(vacc(0))) > 150 and to_integer(unsigned(vacc(1))) > 150 and to_integer(unsigned(vacc(3))) > 150) then
		PREAMBULE_FOUND <= '1';
	else
		PREAMBULE_FOUND <= '0';
	end if;
--	if(vacc(0) > 100) then
--		corr_value <= 10000;
--	else
--		corr_value <= 0;
--	end if;
	
--	for i in 0 to (BUFFER_LENGTH/2)-1 loop
--		vacc1(i) := vacc(i*2)+vacc(i*2+1);
--	end loop; 
--	
--	for i in 0 to (BUFFER_LENGTH/4)-1 loop
--		vacc2(i) := vacc1(i*2)+vacc1(i*2+1);
--	end loop; --paliktas vienas 50tas
--	
--	for i in 0 to (BUFFER_LENGTH/8)-1 loop
--		vacc3(i) := vacc2(i*2)+vacc2(i*2+1);
--	end loop;
--	
--	for i in 0 to (BUFFER_LENGTH/16)-1 loop
--		vacc4(i) := vacc3(i*2)+vacc3(i*2+1);
--	end loop;
--	
--	corr_value <= to_integer(vacc4(0)) + to_integer(vacc4(1));--+ to_integer(vacc1(24));
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
--
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
									
						
--process(CLK)
--variable corr_value_var : integer := 0;
--variable currByte : std_logic_vector(BUFFER_WIDTH-1 downto 0) := (others => '0');
--begin
--	if rising_edge(CLK) then
--		if(ADC_BITS_VALID = '1') then
--			corr_buffer_update <= '1';
--			corr_value_var := 0;
--			for i in 0 to 49 loop
--				if(preambule_coef(i) = '1') then
--					currByte(0) := DATA_OUT_0(i);
--					currByte(1) := DATA_OUT_1(i);
--					currByte(2) := DATA_OUT_2(i);
--					currByte(3) := DATA_OUT_3(i);
--					currByte(4) := DATA_OUT_4(i);
--					currByte(5) := DATA_OUT_5(i);
--					currByte(6) := DATA_OUT_6(i);
--					currByte(7) := DATA_OUT_7(i);
--					corr_value_var := corr_value_var + to_integer(unsigned(currByte));
--					corr_value <= corr_value_var;
--				end if;
--			end loop;
--		else
--			corr_buffer_update <= '0';
--		end if;
--	end if;
--end process;

									
end architecture;