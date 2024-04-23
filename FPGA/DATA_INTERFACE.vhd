library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DATA_INTERFACE is
port(
	CLK: in std_Logic := '0';
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
	PREAMBULE_FOUND : in std_Logic := '0' --TODO: rtc discard signal
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
	DECODED_CMD_VALID : out std_logic := '0';
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
	SPI_CYCLE_DONE : in std_logic := '0';
	--Packets in from correlator
	PACKET_IN_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	PACKET_IN_VALID : in std_logic := '0'
);
end component;

component Status_Register is 
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : in std_logic := '0';
	--Status signals
	INIT_DONE : in std_logic := '0'
);
end component;

component RTC_Set_Register is 
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : in std_logic := '0';
	
	RTC_INPUT_IRQ : out std_logic := '0';
	RTC_INPUT_MS : out std_logic_vector(31 downto 0) := (others => '0')
);
end component;

component RTC_Read_Register is 
port(
	EN: in std_logic := '0';
	CLK: in std_logic := '0';
	CMD_DATA : in std_logic_vector(7 downto 0) := (others => '0');
	RESP_DATA : out std_logic_vector(7 downto 0) := (others => '0');
	SPI_CYCLE_DONE : in std_logic := '0';
	
	RTC_CAPTURE_IRQ : std_logic := '0';
   RTC_CAPTURED_MS : std_logic_vector(31 downto 0) := (others => '0');
   RTC_CAPTURED_NS : std_logic_vector(18 downto 0) := (others => '0')
);
end component;

component RTC is
port(
	CLK: in std_logic;
	PPS_IRQ : in std_logic := '0';
	CAPTURE_IRQ : in std_logic := '0';
	CAPTURED_MS : out std_logic_vector(31 downto 0) := (others => '0');
	CAPTURED_NS : out std_logic_vector(18 downto 0) := (others => '0');
	INPUT_IRQ : in std_logic := '0';
	INPUT_MS : in std_logic_vector(31 downto 0) := (others => '0')
);
end component;

--Spi decoder
signal raw_cmd_data : std_logic_vector(7 downto 0) := (others => '0');
signal decoded_cmd_data : std_logic_vector(7 downto 0) := (others => '0');
signal decoded_cmd_valid : std_logic := '0';
signal spi_cycle_done : std_logic := '0';
--Shared bus for responses, must be left as 0 if not enabled
signal resp_data_bus: std_logic_vector(7 downto 0) := (others => '0'); --Shared bus
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

--RTC
signal PPS : std_logic := '0'; --TODO: implement
signal RTC_CAPTURED_MS : std_logic_vector(31 downto 0) := (others => '0');
signal RTC_CAPTURED_NS : std_logic_vector(18 downto 0) := (others => '0');
signal RTC_INPUT_IRQ : std_logic := '0';
signal RTC_INPUT_MS : std_logic_vector(31 downto 0) := (others => '0');

begin

spi : SPI_SLAVE port map(CLK, SPI_SCLK, SPI_MOSI, SPI_MISO, SPI_CS, resp_data_bus, raw_cmd_data, spi_cycle_done, spi_reset);

decoder : SPI_DECODER port map(CLK, raw_cmd_data, decoded_cmd_data, decoded_cmd_valid, spi_cycle_done, spi_reset, packet_storage_en,
											status_register_en, rtc_register_set_en, rtc_register_read_en);

stor : Packet_Storage port map (packet_storage_en, CLK, decoded_cmd_data, storage_resp_data, decoded_cmd_valid,
											PACKET_IN_DATA, PACKET_IN_VALID);

stat : Status_Register port map(status_register_en, CLK, decoded_cmd_data, status_resp_data, decoded_cmd_valid,
											STATUS_INIT_DONE);

rtc_timer : RTC port map(CLK, PPS, PREAMBULE_FOUND, RTC_CAPTURED_MS, RTC_CAPTURED_NS, RTC_INPUT_IRQ, RTC_INPUT_MS);

rtc_set : RTC_Set_Register port map(rtc_register_set_en, CLK, decoded_cmd_data, rtc_set_resp_data, decoded_cmd_valid, 
                                    RTC_INPUT_IRQ, RTC_INPUT_MS);
rtc_read : RTC_Read_Register port map(rtc_register_read_en, CLK, decoded_cmd_data, rtc_read_resp_data, decoded_cmd_valid,
                                      PREAMBULE_FOUND, RTC_CAPTURED_MS, RTC_CAPTURED_NS);
resp_data_bus <= storage_resp_data or status_resp_data or rtc_set_resp_data or rtc_read_resp_data;

end architecture;