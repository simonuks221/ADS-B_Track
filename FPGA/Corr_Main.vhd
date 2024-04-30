library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Corr_Main is
generic(
	BUFFER_LENGTH : integer := 80;
	BUFFER_WIDTH : integer := 9;
	MAX_ADDRESS_COUNTS : integer :=  1000;
	BIT_AMOUNT : integer := 56
);
port(
	CLK : in std_logic := '0';
	ADC_BITS : in std_logic_vector(9 downto 0) := (others => '0');
	ADC_BITS_VALID : in std_logic := '0';
	PREAMBULE_FOUND : out std_logic := '0';
	
	EN_CORR : in std_logic := '0';
	CORR_DONE : out std_logic := '0';
	MRAM_DATA_OUT : out std_logic_vector(7 downto 0) := (others => '0');
	MRAM_ADDRESS_OUT : out std_logic_vector(16 downto 0) := (others => '0');
	MRAM_WRITE_DATA : out std_logic := '0';
	MRAM_DONE : in std_logic := '0';
	
	PACKET_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	PACKET_VALID : out std_logic := '0';
	
	PACKET_IRQ : out std_logic := '0'
);
end entity;

architecture arc of Corr_Main is

component Corr_Buffer is
	generic(
		BUFFER_LENGTH: integer := 80;
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
		DATA_OUT_8 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_9 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0')
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
signal DATA_OUT_9 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
--Peambule correlation
signal p_corr : integer range -100000 to 100000 := -18000;
--Correlations for first/newer bit
signal first_1_corr : integer range -50000 to 50000 := 0;
signal first_0_corr : integer range -50000 to 50000 := 0;
--Correlations for second/older bit
signal second_1_corr : integer range -50000 to 50000 := 0;
signal second_0_corr : integer range -50000 to 50000 := 0;

--Coefficients array
type preambule_coef_vector is array(BUFFER_LENGTH-1 downto 0) of integer range -1 to 1;
type bit_coef_vector is array(9 downto 0) of integer range 0 to 1;
type corr_state is (preambule, waiting, bits);

--Regular preambule
--constant preambule_coef : preambule_coef_vector := (1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 
--																	0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1);
--Preambule negative
constant preambule_coef : preambule_coef_vector := (
1, 1, 1, 1, 1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, 
																	-1, -1, -1, -1, -1, -1, -1, -1, -1, -1,	-1, -1, -1, 1, 1, 1, 1, 1, -1, -1, -1,
																	-1, -1, 1, 1, 1, 1, 1,-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
																	-1, -1, -1, -1, -1, -1, -1, -1, -1, -1);

constant bit_1_coef : bit_coef_vector := (1, 1, 1, 1, 1, 0, 0, 0, 0, 0);
constant bit_0_coef : bit_coef_vector := (0, 0, 0, 0, 0, 1, 1, 1, 1, 1);

constant BIT_LENGTH : integer := 10;

signal address_counter : integer range 0 to MAX_ADDRESS_COUNTS+5 := 0;
signal curr_corr_state : corr_state := preambule;
signal cnt : integer := 0;

signal waiting_cnt : integer range 0 to 30 := 0;--TODO: could use only one integer for counting? investigate
signal bits_cnt : integer range 0 to 20 := 0; --For bit timing
signal bits_idx : integer range 0 to BIT_AMOUNT := 0;  --For bit tracking
signal bits_byte_cnt : integer range 0 to 8 := 0;
signal bits_data : std_logic_vector(7 downto 0) := (others => '0'); --Correlated bit value

type p_size1 is array (0 to (BUFFER_LENGTH/2)-1) of signed(11 downto 0);
type p_size2 is array (0 to (BUFFER_LENGTH/4)-1) of signed(12 downto 0);
type p_size3 is array (0 to (BUFFER_LENGTH/8)-1) of signed(13 downto 0);
type p_size4 is array (0 to (BUFFER_LENGTH/16)-1) of signed(14 downto 0);

type b_size1 is array (0 to (BIT_LENGTH/2)-1) of signed(10 downto 0); --10
type b_size2 is array (0 to (BIT_LENGTH/4)-1) of signed(11 downto 0); --5

signal p_corr_pipeline_1 : p_size1 := (others => (others => '0')); --40
signal p_corr_pipeline_2 : p_size2 := (others => (others => '0')); --20
signal p_corr_pipeline_3 : p_size3 := (others => (others => '0')); --10
signal p_corr_pipeline_4 : p_size4 := (others => (others => '0')); --5

signal p_corr_pipeline_51 : signed(15 downto 0) := (others => '0');
signal p_corr_pipeline_52 : signed(15 downto 0) := (others => '0');
signal p_corr_pipeline_53 : signed(15 downto 0) := (others => '0');
signal p_corr_pipeline_54 : signed(16 downto 0) := (others => '0');
signal p_corr_pipeline_55 : signed(16 downto 0) := (others => '0');

signal first_0_corr_pipeline_1 : b_size1 := (others => (others => '0')); --TODO: OPTIMISE, dont need that many stages here
signal first_0_corr_pipeline_2 : b_size2 := (others => (others => '0'));
signal first_0_corr_pipeline_31 : signed(12 downto 0) := (others => '0');

signal first_1_corr_pipeline_1 : b_size1 := (others => (others => '0'));
signal first_1_corr_pipeline_2 : b_size2 := (others => (others => '0'));
signal first_1_corr_pipeline_31 : signed(12 downto 0) := (others => '0');

signal second_0_corr_pipeline_1 : b_size1 := (others => (others => '0'));
signal second_0_corr_pipeline_2 : b_size2 := (others => (others => '0'));
signal second_0_corr_pipeline_31 : signed(12 downto 0) := (others => '0');

signal second_1_corr_pipeline_1 : b_size1 := (others => (others => '0'));
signal second_1_corr_pipeline_2 : b_size2 := (others => (others => '0'));
signal second_1_corr_pipeline_31 : signed(12 downto 0) := (others => '0');

signal p_corr_unsigned : std_logic_vector(13 downto 0) := (others => '0');

signal adc_bits_valid_last : std_logic := '0';

signal corr_buffer_latch : std_logic := '0';

begin
--Write to corr buffer when new bits arrive on rising edge
corr_buffer_latch <= '1' when adc_bits_valid_last = '0' and ADC_BITS_VALID = '1' else '0';

buff : corr_buffer generic map(BUFFER_LENGTH, BUFFER_WIDTH) port map(CLK, corr_buffer_latch, DATA_IN, DATA_OUT_0, DATA_OUT_1, DATA_OUT_2, 
                                                            DATA_OUT_3, DATA_OUT_4, DATA_OUT_5, DATA_OUT_6, DATA_OUT_7, DATA_OUT_8,
																				DATA_OUT_9);

MRAM_ADDRESS_OUT <= std_logic_vector(to_unsigned(address_counter, MRAM_ADDRESS_OUT'length));
p_corr_unsigned <= std_logic_vector(to_signed(p_corr/16, p_corr_unsigned'length));

PACKET_DATA <= bits_data; --For sending to DATA INTERFACE

CORR_DONE <= '1' when address_counter = MAX_ADDRESS_COUNTS else '0';
DATA_IN <= ADC_BITS;

--PREAMBULE_FOUND <= '1' when p_corr > -1000 else '0';

--Correlating preambule
process(CLK)
type size is array (0 to BUFFER_LENGTH-1) of signed(10 downto 0);
variable vacc : size; --80
variable temp : unsigned(9 downto 0);
begin
	if rising_edge(CLK) then
		--Efficient Binary loop addition
		--https://surf-vhdl.com/vhdl-for-loop-statement
		for i in 0 to BUFFER_LENGTH-1 loop
			temp := DATA_OUT_9(i)&DATA_OUT_8(i)&DATA_OUT_7(i)&DATA_OUT_6(i)&DATA_OUT_5(i)&DATA_OUT_4(i)&DATA_OUT_3(i)&DATA_OUT_2(i)&DATA_OUT_1(i)&DATA_OUT_0(i);
			vacc(i) := to_signed(to_integer(temp) * preambule_coef(i), vacc(0)'length);--table_coef(table_coef_idx)(i), 13);
		end loop;
		
		for i in 0 to (BUFFER_LENGTH/2)-1 loop
			p_corr_pipeline_1(i) <= resize(vacc(i*2), p_corr_pipeline_1(0)'length)+ 
											resize(vacc(i*2+1), p_corr_pipeline_1(0)'length);
		end loop; 
		
		for i in 0 to (BUFFER_LENGTH/4)-1 loop
			p_corr_pipeline_2(i) <= resize(p_corr_pipeline_1(i*2), p_corr_pipeline_2(0)'length)+
											resize(p_corr_pipeline_1(i*2+1), p_corr_pipeline_2(0)'length); --24 left out
		end loop; --50 left out
		
		for i in 0 to (BUFFER_LENGTH/8)-1 loop
			p_corr_pipeline_3(i) <= resize(p_corr_pipeline_2(i*2), p_corr_pipeline_3(0)'length)+
											resize(p_corr_pipeline_2(i*2+1), p_corr_pipeline_3(0)'length);
		end loop;
		
		for i in 0 to (BUFFER_LENGTH/16)-1 loop
			p_corr_pipeline_4(i) <= resize(p_corr_pipeline_3(i*2), p_corr_pipeline_4(0)'length)+
											resize(p_corr_pipeline_3(i*2+1), p_corr_pipeline_4(0)'length);
		end loop;
		p_corr_pipeline_51 <= resize(p_corr_pipeline_4(0), p_corr_pipeline_51'length) + 
									resize(p_corr_pipeline_4(1), p_corr_pipeline_51'length);
		p_corr_pipeline_52 <= resize(p_corr_pipeline_4(2), p_corr_pipeline_51'length) + 
									resize(p_corr_pipeline_4(3), p_corr_pipeline_51'length);
		p_corr_pipeline_53 <= resize(p_corr_pipeline_4(4), p_corr_pipeline_51'length);

		p_corr <= to_integer(p_corr_pipeline_51) + to_integer(p_corr_pipeline_52) + to_integer(p_corr_pipeline_53);
	end if;
end process;

--Correlating first bit
process(CLK)
type size is array (0 to BIT_LENGTH-1) of signed(10 downto 0);
variable vacc_0 : size; --10
variable vacc_1 : size; --10
variable temp : unsigned(9 downto 0);
begin
	if rising_edge(CLK) then
		for i in 0 to BIT_LENGTH-1 loop
			temp := DATA_OUT_9(i)&DATA_OUT_8(i)&DATA_OUT_7(i)&DATA_OUT_6(i)&DATA_OUT_5(i)&DATA_OUT_4(i)&DATA_OUT_3(i)&DATA_OUT_2(i)&DATA_OUT_1(i)&DATA_OUT_0(i);
			vacc_0(i) := to_signed(to_integer(temp) * bit_0_coef(i), vacc_0(0)'length);
			vacc_1(i) := to_signed(to_integer(temp) * bit_1_coef(i), vacc_1(0)'length);
		end loop;
		
		for i in 0 to (BIT_LENGTH/2)-1 loop --5
			first_0_corr_pipeline_1(i) <= resize(vacc_0(i*2), first_0_corr_pipeline_1(0)'length)+
													resize(vacc_0(i*2+1), first_0_corr_pipeline_1(0)'length);
			first_1_corr_pipeline_1(i) <= resize(vacc_1(i*2), first_1_corr_pipeline_1(0)'length)+
													resize(vacc_1(i*2+1), first_1_corr_pipeline_1(0)'length);
		end loop; 
		
		for i in 0 to (BIT_LENGTH/4)-1 loop --2
			first_0_corr_pipeline_2(i) <= resize(first_0_corr_pipeline_1(i*2), first_0_corr_pipeline_2(0)'length)+
													resize(first_0_corr_pipeline_1(i*2+1), first_0_corr_pipeline_2(0)'length);
			first_1_corr_pipeline_2(i) <= resize(first_1_corr_pipeline_1(i*2), first_1_corr_pipeline_2(0)'length)+
													resize(first_1_corr_pipeline_1(i*2+1), first_1_corr_pipeline_2(0)'length);
		end loop;
		
		first_0_corr_pipeline_31 <= resize(first_0_corr_pipeline_2(0), first_0_corr_pipeline_31'length) + 
											resize(first_0_corr_pipeline_2(1), first_0_corr_pipeline_31'length);
		first_0_corr <= to_integer(first_0_corr_pipeline_31) + to_integer(first_0_corr_pipeline_1(4));
		first_1_corr_pipeline_31 <= resize(first_1_corr_pipeline_2(0), first_1_corr_pipeline_31'length) + 
										resize(first_1_corr_pipeline_2(1), first_1_corr_pipeline_31'length);
		first_1_corr <= to_integer(first_1_corr_pipeline_31) + to_integer(first_1_corr_pipeline_1(4));
	end if;
end process;

--Correlating second bit
process(CLK)
type size is array (0 to BUFFER_LENGTH-1) of signed(10 downto 0);
variable vacc_0 : size := (others => (others => '0')); --50
variable vacc_1 : size := (others => (others => '0')); --50
variable temp : unsigned(9 downto 0);
begin
	if rising_edge(CLK) then
		for i in BIT_LENGTH to BIT_LENGTH*2-1 loop
			temp := DATA_OUT_9(i)&DATA_OUT_8(i)&DATA_OUT_7(i)&DATA_OUT_6(i)&DATA_OUT_5(i)&DATA_OUT_4(i)&DATA_OUT_3(i)&DATA_OUT_2(i)&DATA_OUT_1(i)&DATA_OUT_0(i);
			vacc_0(i-10) := to_signed(to_integer(temp) * bit_0_coef(i-10), vacc_0(0)'length);
			vacc_1(i-10) := to_signed(to_integer(temp) * bit_1_coef(i-10), vacc_1(0)'length);
		end loop;
		
		for i in 0 to (BIT_LENGTH/2)-1 loop
			second_0_corr_pipeline_1(i) <= resize(vacc_0(i*2), second_0_corr_pipeline_1(0)'length)+
														resize(vacc_0(i*2+1), second_0_corr_pipeline_1(0)'length);
			second_1_corr_pipeline_1(i) <= resize(vacc_1(i*2), second_1_corr_pipeline_1(0)'length)+
														resize(vacc_1(i*2+1), second_1_corr_pipeline_1(0)'length);
		end loop; 
		
		for i in 0 to (BIT_LENGTH/4)-1 loop
			second_0_corr_pipeline_2(i) <= resize(second_0_corr_pipeline_1(i*2), second_0_corr_pipeline_2(0)'length)+
														resize(second_0_corr_pipeline_1(i*2+1), second_0_corr_pipeline_2(0)'length);
			second_1_corr_pipeline_2(i) <= resize(second_1_corr_pipeline_1(i*2), second_0_corr_pipeline_2(0)'length)+
														resize(second_1_corr_pipeline_1(i*2+1), second_0_corr_pipeline_2(0)'length);
		end loop;
		
		second_0_corr_pipeline_31 <= resize(second_0_corr_pipeline_2(0), second_0_corr_pipeline_31'length)+
												resize(second_0_corr_pipeline_2(1), second_0_corr_pipeline_31'length);
		second_0_corr <= to_integer(second_0_corr_pipeline_31) + to_integer(second_0_corr_pipeline_1(4));
		second_1_corr_pipeline_31 <= resize(second_1_corr_pipeline_2(0), second_1_corr_pipeline_31'length)+
												resize(second_1_corr_pipeline_2(1), second_1_corr_pipeline_31'length);
		second_1_corr <= to_integer(second_1_corr_pipeline_31) + to_integer(second_1_corr_pipeline_1(4));
	end if;
end process;

--CNT tracking process
process(CLK)
begin
	if rising_edge(CLK) then
		adc_bits_valid_last <= ADC_BITS_VALID;
		if adc_bits_valid_last = '0' and ADC_BITS_VALID = '1' then
			cnt <= 1;
		else 
			cnt <= cnt + 1;
		end if;
	end if;
end process;

--MRAM writeout process
process(CLK)
begin
	if rising_edge(CLK) then
		if EN_CORR = '0' then
			MRAM_DATA_OUT <= (others => '0');
			MRAM_WRITE_DATA <= '0';
			address_counter <= 0;
		else
			MRAM_WRITE_DATA <= '0';
			case cnt is
				when 1 =>
					--Write out LSB of whole value, indicate it with 0 in 8 bit MSB spot
					MRAM_DATA_OUT <= "0" & p_corr_unsigned(6 downto 0); --Preambule correlation value 16 bits
					--MRAM_DATA_OUT <= "0" & ADC_BITS(6 downto 0); --ADC data 16 bits
					--MRAM_DATA_OUT <= ADC_BITS(9 downto 2); --Regular ADC data
					--MRAM_DATA_OUT <= p_corr_unsigned(11 downto 4); --Regular corr data
					--MRAM_DATA_OUT <= "00000000" & bits_data; --For debugging correlated bit values
					MRAM_WRITE_DATA <= '1';
					address_counter <= address_counter + 1;
				when 9 =>
				   --Write out MSB of whole value, inciate with 1 in 8 bit MSB spot
					MRAM_DATA_OUT <= "1" & p_corr_unsigned(13 downto 7); --Preambule correlation value 16 bits
					--MRAM_DATA_OUT <= "1" & "0000" & ADC_BITS(9 downto 7); --ADC data 16 bits
					MRAM_WRITE_DATA <= '1';
					address_counter <= address_counter + 1;
				when others =>
					
			end case;
		end if;
	end if;
end process;

--Correlating process
process(CLK)
variable corr_00 : integer := 0;
variable corr_01 : integer := 0;
variable corr_10 : integer := 0;
variable corr_11 : integer := 0;
begin
	if rising_edge(CLK) then
		PACKET_VALID <= '0';
		PACKET_IRQ <= '0';
		if(EN_CORR = '0') then
			PREAMBULE_FOUND <= '0';
			curr_corr_state <= preambule;
			waiting_cnt <= 0;
			bits_data <= (others => '0');
			bits_cnt <= 0;
			bits_idx <= 0;
		else
			PREAMBULE_FOUND <= '0';
			case cnt is 
				when 8=>
					case curr_corr_state is
						when preambule =>
							waiting_cnt <= 0;
							bits_cnt <= 0;
							bits_idx <= 0;
							bits_data <= (others => '0');
							if p_corr > 0 then
								PREAMBULE_FOUND <= '1';
								--curr_corr_state <= waiting;
								curr_corr_state <= bits;
							end if;
						when waiting =>
							--This state is if using mask of 50 and need to wait 3us for bit phase
							--if waiting_cnt = 29 then
							--	curr_corr_state <= bits;
							---	waiting_cnt <= 0;
							--else
							--	waiting_cnt <= waiting_cnt + 1;
							--end if;
						when bits => 
								--Two bit period over, correlate last 20 values
								--Correlate bits
								corr_00 := second_0_corr + first_0_corr;
								corr_01 := second_0_corr + first_1_corr;
								corr_10 := second_1_corr + first_0_corr;
								corr_11 := second_1_corr + first_1_corr;
					end case;
				when 9 =>
					if curr_corr_state = bits then
						if bits_cnt = 19 then
							bits_cnt <= 0;
							if corr_00 > corr_11 and corr_00 > corr_01 and corr_00 > corr_10 then
								bits_data <= bits_data(5 downto 0) & "00";
							elsif corr_01 > corr_11 and corr_01 > corr_00 and corr_01 > corr_10 then
								bits_data <= bits_data(5 downto 0) & "01";
							elsif corr_10 > corr_11 and corr_10 > corr_01 and corr_10 > corr_00 then
								bits_data <= bits_data(5 downto 0) & "10";
							else
								bits_data <= bits_data(5 downto 0) & "11";
							end if;
							bits_byte_cnt <= bits_byte_cnt + 2;
							bits_idx <= bits_idx + 2; --Because correlating 2 bits at a time
						else
							bits_cnt <= bits_cnt + 1;
						end if;
					end if;
				when 10 =>
					--Check if all bits received
					if bits_byte_cnt = 8 then
						--8 bit correlation done
						PACKET_VALID <= '1';
						bits_byte_cnt <= 0;
						if bits_idx = BIT_AMOUNT then
							--Whole packet is captured
							curr_corr_state <= preambule;
							PACKET_IRQ <= '1';
						end if;
					end if;
				when others =>
			end case;
		end if;
	end if;
end process;
end architecture;