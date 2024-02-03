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

architecture arc of Corr_Main is          --TestVoltage signalai "101101" ir "000010"

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
		DATA_OUT_7 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_8 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0')
	);
end component;

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
signal corr_value1 : integer range -50000 to 50000 := 0;
signal corr_value0 : integer range -50000 to 50000 := 0;

--Preambules arrayus
type coef_vector is array(0 to 49) of integer range 0 to 1; --WARNING: 0 at left, 49 at right of vector
type coef_array is array(0 to 4) of coef_vector;
type corr_state is (preambule, waiting, bits);

constant preambule_coef : coef_vector := (1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0,	0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1);
constant coef_00 : coef_vector := (0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
constant coef_01 : coef_vector := (0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
constant coef_10 : coef_vector := (1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
constant coef_11 : coef_vector := (1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
signal table_coef : coef_array := (preambule_coef, coef_00, coef_01, coef_10, coef_11);
signal table_coef_idx : integer range 0 to 3 := 0;

signal mram_write_cnt : integer range 0 to 15 := 0;
signal address_counter : integer range 0 to MAX_ADDRESS_COUNTS+5 := 0;

signal curr_corr_state : corr_state := preambule;

signal cnt : integer := 0;
signal buffer_latch : std_logic := '0';

signal waiting_cnt : integer range 0 to 30 := 0;--TODO: could use only one integer for counting? investigate
signal bits_cnt : integer range 0 to 20 := 0; --For bit timing
signal bits_idx : integer range 0 to 6 := 0;  --For bit tracking
signal bits_data : std_logic_vector(5 downto 0) := (others => '0'); --Correlated bit value

begin
buff : corr_buffer generic map(BUFFER_LENGTH, BUFFER_WIDTH) port map(buffer_latch, DATA_IN, DATA_OUT_0, DATA_OUT_1, DATA_OUT_2, 
                                                            DATA_OUT_3, DATA_OUT_4, DATA_OUT_5, DATA_OUT_6, DATA_OUT_7, DATA_OUT_8);

buffer_latch <= '1' when cnt = 1 else '0';
MRAM_ADDRESS_OUT <= std_logic_vector(to_unsigned(address_counter, MRAM_ADDRESS_OUT'length));
--MRAM_DATA_OUT <= "0000" & std_logic_vector(to_unsigned(corr_value, 12)); --For debuging correlation value
MRAM_DATA_OUT <= "0000000000" & bits_data; --For debugging correlated bit value

CORR_DONE <= '1' when address_counter = MAX_ADDRESS_COUNTS else '0';
DATA_IN <='0'&ADC_BITS(7 downto 0);

--Efficient Binary loop addition
--https://surf-vhdl.com/vhdl-for-loop-statement
process(DATA_OUT_8, DATA_OUT_7, DATA_OUT_6, DATA_OUT_5, DATA_OUT_4, DATA_OUT_3, DATA_OUT_2, DATA_OUT_1, DATA_OUT_0, EN_CORR)
type size is array (0 to   BUFFER_LENGTH-1) of unsigned(12 downto 0); --TODO: why 12? Shouldnt be 9?
type size1 is array (0 to (BUFFER_LENGTH/2)-1) of unsigned(12 downto 0);
type size2 is array (0 to (BUFFER_LENGTH/4)-1) of unsigned(12 downto 0);
type size3 is array (0 to (BUFFER_LENGTH/8)-1) of unsigned(12 downto 0);
type size4 is array (0 to (BUFFER_LENGTH/16)-1) of unsigned(12 downto 0);
variable vacc : size; --50
variable vacc1 : size1; --25
variable vacc2 : size2; --12 --Left one
variable vacc3 : size3; --6
variable vacc4 : size4; --3
variable vacc51 : unsigned(12 downto 0) := (others => '0');
variable vacc52 : unsigned(12 downto 0) := (others => '0');
variable a : unsigned(8 downto 0);
begin
	for i in 0 to BUFFER_LENGTH-1 loop
		a := DATA_OUT_8(i)&DATA_OUT_7(i)&DATA_OUT_6(i)&DATA_OUT_5(i)&DATA_OUT_4(i)&DATA_OUT_3(i)&DATA_OUT_2(i)&DATA_OUT_1(i)&DATA_OUT_0(i);
		vacc(i) := to_unsigned(to_integer(a) * table_coef(table_coef_idx)(i), 13);
	end loop;
	
	for i in 0 to (BUFFER_LENGTH/2)-1 loop
		vacc1(i) := vacc(i*2)+vacc(i*2+1);
	end loop; 
	
	for i in 0 to (BUFFER_LENGTH/4)-1 loop
		vacc2(i) := vacc1(i*2)+vacc1(i*2+1); --24 left out
	end loop; --50 left out
	
	for i in 0 to (BUFFER_LENGTH/8)-1 loop
		vacc3(i) := vacc2(i*2)+vacc2(i*2+1);
	end loop;
	
	for i in 0 to (BUFFER_LENGTH/16)-1 loop
		vacc4(i) := vacc3(i*2)+vacc3(i*2+1);
	end loop;
	vacc51 := vacc4(0) + vacc4(1);
	vacc52 := vacc4(2) + vacc1(24);
	corr_value <= to_integer(vacc51) + to_integer(vacc52);
end process;

process(DATA_OUT_8, DATA_OUT_7, DATA_OUT_6, DATA_OUT_5, DATA_OUT_4, DATA_OUT_3, DATA_OUT_2, DATA_OUT_1, DATA_OUT_0, EN_CORR)
type size is array (0 to 9) of unsigned(12 downto 0);
variable vacc1 : size;
variable vacc0 : size;

variable corr_1 : integer := 0;
variable corr_0 : integer := 0;

variable a : unsigned(8 downto 0);
begin
	corr_1 := 0;
	corr_0 := 0;
	for i in 0 to 9 loop
		a := DATA_OUT_8(i)&DATA_OUT_7(i)&DATA_OUT_6(i)&DATA_OUT_5(i)&DATA_OUT_4(i)&DATA_OUT_3(i)&DATA_OUT_2(i)&DATA_OUT_1(i)&DATA_OUT_0(i);
		vacc0(i) := to_unsigned(to_integer(a) * table_coef(1)(i), 13); --TODO: separate arrays
		vacc1(i) := to_unsigned(to_integer(a) * table_coef(3)(i), 13);
	end loop;
	
	for i in 0 to 9 loop --Do not need two loops, PARALERISE
		corr_1 := corr_1 + to_integer(vacc1(i));
		corr_0 := corr_0 + to_integer(vacc0(i));
	end loop;
	corr_value0 <= corr_1; --TODO: why need to be switched?
	corr_value1 <= corr_0;

end process;

process(CLK)
begin
	if rising_edge(CLK) then
		if(EN_CORR = '0') then
			mram_write_cnt <= 0;
			MRAM_WRITE_DATA <= '0';
			address_counter <= 0;
			PREAMBULE_FOUND <= '0';
			curr_corr_state <= preambule;
			table_coef_idx <= 0;
			waiting_cnt <= 0;
			bits_data <= (others => '0');
			bits_cnt <= 0;
			bits_idx <= 0;
		else
			PREAMBULE_FOUND <= '0';
			MRAM_WRITE_DATA <= '0';
			if ADC_BITS_VALID = '1' then
				cnt <= 1;
			else
				cnt <= cnt + 1;
				case cnt is 
					when 1 =>
						--Left empty for addition delay
					when 2 =>
						--Left empty for addition delay
					when 3=>
						case curr_corr_state is
							when preambule =>
								waiting_cnt <= 0;
								bits_cnt <= 0;
								bits_idx <= 0;
								bits_data <= (others => '0');
								if corr_value > 3655 or corr_value = 3655 then
									PREAMBULE_FOUND <= '1';
									curr_corr_state <= waiting;
								end if;
							when waiting =>
								if waiting_cnt = 29 then
									curr_corr_state <= bits;
									waiting_cnt <= 0;
								else
									waiting_cnt <= waiting_cnt + 1;
								end if;
							when bits =>
								if bits_cnt = 9 then
									bits_cnt <= 0;
									if corr_value1 > corr_value0 then
										--Correlated 1
										bits_data <= bits_data(4 downto 0) & '1';
									else
										--Correlated 0
										bits_data <= bits_data(4 downto 0) & '0';	
									end if;
									if bits_idx = 6 then
										curr_corr_state <= preambule;
									else
										bits_idx <= bits_idx + 1;
									end if;
								else
									bits_cnt <= bits_cnt + 1;
								end if;
						end case;
						cnt <= 0;
						address_counter <= address_counter + 1;
						MRAM_WRITE_DATA <= '1';
					when others =>
						cnt <= 0;
				end case;
			end if;
		end if;
	end if;
end process;
end architecture;