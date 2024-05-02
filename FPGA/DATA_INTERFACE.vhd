library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DATA_INTERFACE is
generic(
	RTC_IMPULSE_LENGTH_BITS : integer := 28;
	RTC_SECONDS_LENGTH_BITS : integer := 17;
	RTC_TIME_LENGTH_BYTES : integer := 6
);
port(
	CLK: in std_logic := '0';
	SPI_SCLK: in std_logic := '0';
	SPI_MOSI: in std_logic := '0';
	SPI_MISO: inout std_logic := '0';
	SPI_CS: in std_logic := '1';
	--Packet storage
	PACKET_IN_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	PACKET_IN_VALID : in std_logic := '0';
	--Status register
	STATUS_INIT_DONE : in std_logic := '0';
	--RTC
	PPS : in std_logic := '0';
	PREAMBULE_FOUND : in std_logic := '0'; --TODO: rtc discard signal
	DEBUG_2 : out std_logic := '0'
);
end entity;

architecture arc of DATA_INTERFACE is

component SPI_SLAVE is 
port(
	CLK: in std_logic;
	SPI_SCLK: in std_logic := '0';
	SPI_MOSI: in std_logic := '0';
	SPI_MISO: inout std_logic := '0';
	SPI_CS: in std_logic := '1';
	
	RESP_DATA: in std_logic_vector(7 downto 0) := (others => '0');
	RESP_LATCH: in std_logic := '0';
	CMD_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : out std_logic := '0';
	SPI_RESET : out std_logic := '0'
);
end component;

component SPI_DECODER is 
port(
	CLK: in std_logic := '0';
	RAW_CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	DECODED_CMD_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : in std_logic := '0';
	RESET : in std_logic := '0';
	PACKET_STORAGE_EN : out std_logic := '0';
	STATUS_REGISTER_EN : out std_logic := '0';
	RTC_REGISTER_SET_EN : out std_logic := '0';
	RTC_REGISTER_READ_EN : out std_logic := '0'
);
end component;

component Packet_Storage is 
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	--Packets in from correlator
	PACKET_IN_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	PACKET_IN_VALID : in std_logic := '0';
	PACKET_READY : out std_logic := '0'
);
end component;

component Status_Register is 
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	--Status signals
	INIT_DONE : in std_logic := '0';
	PACKET_READY : in std_logic := '0'
);
end component;

component RTC_Set_Register is
generic(
	RTC_IMPULSE_LENGTH_BITS : integer := 24;
	RTC_SECONDS_LENGTH_BITS : integer := 17
);
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	
	RTC_INPUT_IRQ : out std_logic := '0';
	RTC_INPUT_SECONDS : out std_logic_vector(RTC_SECONDS_LENGTH_BITS - 1 downto 0) := (others => '0')
);
end component;

component RTC_Read_Register is
generic(
	RTC_IMPULSE_LENGTH_BITS : integer := 24;
	RTC_SECONDS_LENGTH_BITS : integer := 17;
	RTC_TIME_LENGTH_BYTES : integer := 6
);
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	
	RTC_CAPTURE_IRQ : std_logic := '0';
   RTC_CAPTURED_IMPULSES : std_logic_vector(RTC_IMPULSE_LENGTH_BITS - 1 downto 0) := (others => '0');
   RTC_CAPTURED_SECONDS : std_logic_vector(RTC_SECONDS_LENGTH_BITS - 1 downto 0) := (others => '0')
);
end component;

component RTC is
generic(
	RTC_IMPULSE_LENGTH_BITS : integer := 24;
	RTC_SECONDS_LENGTH_BITS : integer := 17;
	RTC_TIME_LENGTH_BYTES : integer := 6
);
port(
	CLK: in std_logic;
	PPS_IRQ : in std_logic := '0';
	CAPTURE_IRQ : in std_logic := '0';
	CAPTURED_SECONDS : out std_logic_vector(RTC_SECONDS_LENGTH_BITS - 1 downto 0) := (others => '0');
	CAPTURED_IMPULSES : out std_logic_vector(RTC_IMPULSE_LENGTH_BITS - 1 downto 0) := (others => '0');
	INPUT_IRQ : in std_logic := '0';
	INPUT_SECONDS : in std_logic_vector(RTC_SECONDS_LENGTH_BITS - 1 downto 0) := (others => '0');
	DEBUG_2 : out std_logic := '0'
);
end component;

--Spi decoder
signal raw_cmd_data : std_logic_vector(7 downto 0) := (others => '0');
signal decoded_cmd_data : std_logic_vector(7 downto 0) := (others => '0');
signal spi_cycle_done : std_logic := '0';
--Response lathces on any register enable
signal resp_latch : std_logic := '0';
--Shared bus for responses, must be left as 0 if not enabled
signal resp_data_bus: std_logic_vector(7 downto 0) := (others => '0');
signal storage_resp_data : std_logic_vector(7 downto 0) := (others => '0');
signal status_resp_data : std_logic_vector(7 downto 0) := (others => '0');
signal rtc_set_resp_data : std_logic_vector(7 downto 0) := (others => '0');
signal rtc_read_resp_data : std_logic_vector(7 downto 0) := (others => '0');
--Shared reset to reset decoder cmd
signal spi_reset : std_logic := '0';
--Signals for controlling decoder peripherals
signal packet_storage_en : std_logic := '0';
signal status_register_en : std_logic := '0';
signal rtc_register_set_en : std_logic := '0';
signal rtc_register_read_en : std_logic := '0';
--Packet storage signals
signal PACKET_READY : std_Logic := '0';
--RTC
signal rtc_captured_impulses : std_logic_vector(RTC_IMPULSE_LENGTH_BITS - 1 downto 0) := (others => '0');
signal rtc_captured_seconds : std_logic_vector(RTC_SECONDS_LENGTH_BITS - 1 downto 0) := (others => '0');
signal rtc_input_irq : std_logic := '0';
signal rtc_input_seconds : std_logic_vector(RTC_SECONDS_LENGTH_BITS - 1 downto 0) := (others => '0');

begin

spi : SPI_SLAVE port map(CLK, SPI_SCLK, SPI_MOSI, SPI_MISO, SPI_CS, resp_data_bus, resp_latch, raw_cmd_data, spi_cycle_done, spi_reset);

decoder : SPI_DECODER port map(CLK, raw_cmd_data, decoded_cmd_data, spi_cycle_done, spi_reset, packet_storage_en,
											status_register_en, rtc_register_set_en, rtc_register_read_en);

stor : Packet_Storage port map (packet_storage_en, CLK, decoded_cmd_data, storage_resp_data,
											PACKET_IN_DATA, PACKET_IN_VALID, PACKET_READY);

stat : Status_Register port map(status_register_en, CLK, decoded_cmd_data, status_resp_data,
											STATUS_INIT_DONE, PACKET_READY);

rtc_timer : RTC generic map (RTC_IMPULSE_LENGTH_BITS, RTC_SECONDS_LENGTH_BITS, RTC_TIME_LENGTH_BYTES) 
					 port map(CLK, PPS, PREAMBULE_FOUND, RTC_CAPTURED_SECONDS, RTC_CAPTURED_IMPULSES, RTC_INPUT_IRQ, RTC_INPUT_SECONDS,
						       DEBUG_2);

rtc_set : RTC_Set_Register generic map (RTC_IMPULSE_LENGTH_BITS, RTC_SECONDS_LENGTH_BITS)
				               port map(rtc_register_set_en, CLK, decoded_cmd_data, rtc_set_resp_data, 
                                    RTC_INPUT_IRQ, RTC_INPUT_SECONDS);
rtc_read : RTC_Read_Register generic map (RTC_IMPULSE_LENGTH_BITS, RTC_SECONDS_LENGTH_BITS, RTC_TIME_LENGTH_BYTES)
								     port map(rtc_register_read_en, CLK, decoded_cmd_data, rtc_read_resp_data,
                                      PREAMBULE_FOUND, RTC_CAPTURED_IMPULSES, RTC_CAPTURED_SECONDS);
resp_data_bus <= storage_resp_data or status_resp_data or rtc_set_resp_data or rtc_read_resp_data;

process(CLK)
begin
	if rising_edge(CLK) then
		resp_latch <= packet_storage_en or status_register_en or rtc_register_set_en or rtc_register_read_en;
	end if;
end process;

end architecture;