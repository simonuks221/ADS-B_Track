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

architecture arc of Corr_Main is          --TestVoltage signals "101101" ir "000010"

component Corr_Buffer is
	generic(
		BUFFER_LENGTH: integer := 50;
		BUFFER_WIDTH : integer := 8
	);
	port (
		CLK : in std_logic := '0';
		LATCH : in std_Logic := '0';
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
--Peambule correlation
signal p_corr : integer range -50000 to 50000 := 0;
--Correlations for first/newer bit
signal p_corr_first_1 : integer range -50000 to 50000 := 0;
signal p_corr_first_0 : integer range -50000 to 50000 := 0;
--Correlations for second/older bit
signal p_corr_second_1 : integer range -50000 to 50000 := 0;
signal p_corr_second_0 : integer range -50000 to 50000 := 0;

--Preambules arrayus
type preambule_coef_vector is array(0 to 49) of integer range 0 to 1; --WARNING: 0 at left, 49 at right of vector
type bit_coef_vector is array(0 to 9) of integer range 0 to 1; --WARNING: 0 at left, 49 at right of vector
--type coef_array is array(0 to 4) of coef_vector;
type corr_state is (preambule, waiting, bits);

constant preambule_coef : preambule_coef_vector := (1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 
																	0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1);
constant bit_1_coef : bit_coef_vector := (1, 1, 1, 1, 1, 0, 0, 0, 0, 0);
constant bit_0_coef : bit_coef_vector := (0, 0, 0, 0, 0, 1, 1, 1, 1, 1);
--constant coef_00 : coef_vector := (0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
--	0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
--constant coef_01 : coef_vector := (0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
--	0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
--constant coef_10 : coef_vector := (1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
--	0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
--constant coef_11 : coef_vector := (1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
--	0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
--signal table_coef : coef_array := (preambule_coef, coef_00, coef_01, coef_10, coef_11);
--signal table_coef_idx : integer range 0 to 3 := 0;

signal address_counter : integer range 0 to MAX_ADDRESS_COUNTS+5 := 0;

signal curr_corr_state : corr_state := preambule;

signal cnt : integer := 0;
signal buffer_latch : std_logic := '0';

signal waiting_cnt : integer range 0 to 30 := 0;--TODO: could use only one integer for counting? investigate
signal bits_cnt : integer range 0 to 20 := 0; --For bit timing
signal bits_idx : integer range 0 to 6 := 0;  --For bit tracking
signal bits_data : std_logic_vector(5 downto 0) := (others => '0'); --Correlated bit value

type size1 is array (0 to (BUFFER_LENGTH/2)-1) of unsigned(12 downto 0);
type size2 is array (0 to (BUFFER_LENGTH/4)-1) of unsigned(12 downto 0);
type size3 is array (0 to (BUFFER_LENGTH/8)-1) of unsigned(12 downto 0);
type size4 is array (0 to (BUFFER_LENGTH/16)-1) of unsigned(12 downto 0);

signal p_corr_pipeline_1 : size1 := (others => (others => '0')); --25
signal p_corr_pipeline_2 : size2 := (others => (others => '0')); --12 --Left one
signal p_corr_pipeline_3 : size3 := (others => (others => '0')); --6
signal p_corr_pipeline_4 : size4 := (others => (others => '0')); --3
signal p_corr_pipeline_51 : unsigned(12 downto 0) := (others => '0');
signal p_corr_pipeline_52 : unsigned(12 downto 0) := (others => '0');

begin
buff : corr_buffer generic map(BUFFER_LENGTH, BUFFER_WIDTH) port map(CLK, buffer_latch, DATA_IN, DATA_OUT_0, DATA_OUT_1, DATA_OUT_2, 
                                                            DATA_OUT_3, DATA_OUT_4, DATA_OUT_5, DATA_OUT_6, DATA_OUT_7, DATA_OUT_8);

--buffer_latch <= '1' when cnt = 1 else '0';
MRAM_ADDRESS_OUT <= std_logic_vector(to_unsigned(address_counter, MRAM_ADDRESS_OUT'length));
MRAM_DATA_OUT <= "0000" & std_logic_vector(to_unsigned(p_corr, 12)); --For debuging correlation value
--MRAM_DATA_OUT <= "0000000000" & bits_data; --For debugging correlated bit values

CORR_DONE <= '1' when address_counter = MAX_ADDRESS_COUNTS else '0';
DATA_IN <='0'&ADC_BITS(7 downto 0);

--Efficient Binary loop addition
--https://surf-vhdl.com/vhdl-for-loop-statement
process(CLK)
type size is array (0 to   BUFFER_LENGTH-1) of unsigned(12 downto 0);
variable vacc : size; --50
variable temp : unsigned(8 downto 0);
begin
	if rising_edge(CLK) then
		for i in 0 to BUFFER_LENGTH-1 loop
			temp := DATA_OUT_8(i)&DATA_OUT_7(i)&DATA_OUT_6(i)&DATA_OUT_5(i)&DATA_OUT_4(i)&DATA_OUT_3(i)&DATA_OUT_2(i)&DATA_OUT_1(i)&DATA_OUT_0(i);
			vacc(i) := to_unsigned(to_integer(temp) * preambule_coef(i), 13);--table_coef(table_coef_idx)(i), 13);
		end loop;
		
		for i in 0 to (BUFFER_LENGTH/2)-1 loop
			p_corr_pipeline_1(i) <= vacc(i*2)+vacc(i*2+1);
		end loop; 
		
		for i in 0 to (BUFFER_LENGTH/4)-1 loop
			p_corr_pipeline_2(i) <= p_corr_pipeline_1(i*2)+p_corr_pipeline_1(i*2+1); --24 left out
		end loop; --50 left out
		
		for i in 0 to (BUFFER_LENGTH/8)-1 loop
			p_corr_pipeline_3(i) <= p_corr_pipeline_2(i*2)+p_corr_pipeline_2(i*2+1);
		end loop;
		
		for i in 0 to (BUFFER_LENGTH/16)-1 loop
			p_corr_pipeline_4(i) <= p_corr_pipeline_3(i*2)+p_corr_pipeline_3(i*2+1);
		end loop;
		p_corr_pipeline_51 <= p_corr_pipeline_4(0) + p_corr_pipeline_4(1);
		p_corr_pipeline_52 <= p_corr_pipeline_4(2) + p_corr_pipeline_1(24);
		p_corr <= to_integer(p_corr_pipeline_51) + to_integer(p_corr_pipeline_52);
	end if;
end process;

--process(DATA_OUT_8, DATA_OUT_7, DATA_OUT_6, DATA_OUT_5, DATA_OUT_4, DATA_OUT_3, DATA_OUT_2, DATA_OUT_1, DATA_OUT_0, EN_CORR)
--type size is array (0 to 9) of unsigned(12 downto 0);
--variable p_corr_pipeline_1 : size;
--variable vacc0 : size;
--variable corr_1 : integer := 0;
--variable corr_0 : integer := 0;
--variable a : unsigned(8 downto 0);
--begin
--	corr_1 := 0;
--	corr_0 := 0;
--	for i in 0 to 9 loop
--		a := DATA_OUT_8(i)&DATA_OUT_7(i)&DATA_OUT_6(i)&DATA_OUT_5(i)&DATA_OUT_4(i)&DATA_OUT_3(i)&DATA_OUT_2(i)&DATA_OUT_1(i)&DATA_OUT_0(i);
--		vacc0(i) := to_unsigned(to_integer(a) * bit_0_coef(i), 13); --TODO: separate arrays
--		p_corr_pipeline_1(i) := to_unsigned(to_integer(a) * bit_1_coef(i), 13);
--	end loop;
--	
--	for i in 0 to 9 loop --Do not need two loops, PARALERISE
--		corr_1 := corr_1 + to_integer(p_corr_pipeline_1(i));
--		corr_0 := corr_0 + to_integer(vacc0(i));
--	end loop;
--	p_corr_first_0 <= corr_1; --TODO: why need to be switched?
--	p_corr_first_1 <= corr_0;
--end process;
--
--process(DATA_OUT_8, DATA_OUT_7, DATA_OUT_6, DATA_OUT_5, DATA_OUT_4, DATA_OUT_3, DATA_OUT_2, DATA_OUT_1, DATA_OUT_0, EN_CORR)
--type size is array (0 to 9) of unsigned(12 downto 0);
--variable p_corr_pipeline_1 : size;
--variable vacc0 : size;
--variable corr_1 : integer := 0;
--variable corr_0 : integer := 0;
--variable a : unsigned(8 downto 0);
--begin
--	corr_1 := 0;
--	corr_0 := 0;
--	for i in 10 to 19 loop
--		a := DATA_OUT_8(i)&DATA_OUT_7(i)&DATA_OUT_6(i)&DATA_OUT_5(i)&DATA_OUT_4(i)&DATA_OUT_3(i)&DATA_OUT_2(i)&DATA_OUT_1(i)&DATA_OUT_0(i);
--		vacc0(i-10) := to_unsigned(to_integer(a) * bit_0_coef(i-10), 13); --TODO: separate arrays
--		p_corr_pipeline_1(i-10) := to_unsigned(to_integer(a) * bit_1_coef(i-10), 13);
--	end loop;
--	
--	for i in 10 to 19 loop --Do not need two loops, PARALERISE
--		corr_1 := corr_1 + to_integer(p_corr_pipeline_1(i-10));
--		corr_0 := corr_0 + to_integer(vacc0(i-10));
--	end loop;
--	p_corr_second_0 <= corr_1; --TODO: why need to be switched?
--	p_corr_second_1 <= corr_0;
--end process;

process(CLK)
variable corr_00 : integer := 0;
variable corr_01 : integer := 0;
variable corr_10 : integer := 0;
variable corr_11 : integer := 0;
begin
	if rising_edge(CLK) then
		if(EN_CORR = '0') then
			MRAM_WRITE_DATA <= '0';
			address_counter <= 0;
			PREAMBULE_FOUND <= '0';
			curr_corr_state <= preambule;
			--table_coef_idx <= 0;
			waiting_cnt <= 0;
			bits_data <= (others => '0');
			bits_cnt <= 0;
			bits_idx <= 0;
			buffer_latch <= '0';
		else
			PREAMBULE_FOUND <= '0';
			MRAM_WRITE_DATA <= '0';
			if ADC_BITS_VALID = '1' then
				cnt <= 1;
			else
				cnt <= cnt + 1;
				buffer_latch <= '0';
				case cnt is 
					when 1 =>
					buffer_latch <= '1';
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
								if p_corr > 3655 or p_corr = 3655 then
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
								if bits_cnt = 19 then
									bits_cnt <= 0;
									corr_00 := p_corr_second_0 + p_corr_first_0;
									corr_01 := p_corr_second_0 + p_corr_first_1;
									corr_10 := p_corr_second_1 + p_corr_first_0;
									corr_11 := p_corr_second_1 + p_corr_first_1;
									if corr_00 > corr_11 and corr_00 > corr_01 and corr_00 > corr_10 then
										bits_data <= bits_data(3 downto 0) & "00";
									elsif corr_01 > corr_11 and corr_01 > corr_00 and corr_01 > corr_10 then
										bits_data <= bits_data(3 downto 0) & "01";
									elsif corr_10 > corr_11 and corr_10 > corr_01 and corr_10 > corr_00 then
										bits_data <= bits_data(3 downto 0) & "10";
									else
										bits_data <= bits_data(3 downto 0) & "11";
									end if;
--									if p_corr_first_1 > p_corr_first_0 then
--										--Correlated 1
--										bits_data <= bits_data(4 downto 0) & '1';
--									else
--										--Correlated 0
--										bits_data <= bits_data(4 downto 0) & '0';	
--									end if;
									if bits_idx = 6 then
										curr_corr_state <= preambule;
									else
										bits_idx <= bits_idx + 2; --Because correlating 2 bits at a time
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