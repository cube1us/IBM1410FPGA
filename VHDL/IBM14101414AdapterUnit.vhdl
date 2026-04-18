-- Company: The Computer Collection
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 01/30/2026
-- Design Name: IBM1410
-- Module Name: IBM14101414AdapterUnit - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Simulates the IBM 1410 1414 Unit Record (Buffer) adapter
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
--
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IBM14101414AdapterUnit is
    GENERIC(
        CHANNEL_STROBE_LENGTH: integer := 100;        -- 1 us strobe
        CHANNEL_CYCLE_LENGTH:  integer := 1120;       -- 11.2 us per character
        IOSYNC_OUTPUT_FIFO_SIZE: integer := 140;      -- Enough for printer, too
        PUNCH_DELAY_TIME:      integer := 24000000    -- 240 ms/card in 10ns units
    );

PORT (
    FPGA_CLK: in STD_LOGIC;

    -- 1414 Input Signals from CPU

    MC_CPU_TO_I_O_SYNC_BUS:           in std_logic_vector(7 downto 0);

    MC_UNIT_1_SELECT_TO_I_O:        in std_logic;  -- Card Reader
    MC_UNIT_2_SELECT_TO_I_O:        in std_logic;  -- Printer
    MC_UNIT_4_SELECT_TO_I_O:        in std_logic;  -- Card Punch
    MC_INPUT_MODE_TO_BUFFER:        in std_logic;
    MC_OUTPUT_MODE_TO_BUFFER:       in std_logic;
    MC_1401_MODE_TO_BUFFER:         in std_logic;
    MC_READY_TO_BUFFER:             in std_logic;
    MC_COMP_RESET_TO_BUFFER:        in std_logic;
    MC_RESET_SELECT_BUFFER_LATCHES: in std_logic;
    MC_CORRECT_TRANS_TO_BUFFER:     in std_logic;
    MC_STACK_SELECT_TO_BUFFER:      in std_logic;
    MC_FORMS_STACKER_GO:            in std_logic;

    -- 1414 Output Signals to CPU

    MC_I_O_SYNC_TO_CPU_BUS:         out std_logic_vector(7 downto 0);

    MC_BUFFER_READY:                out std_logic;
    MC_BUFFER_BUSY:                 out std_logic;
    MC_BUFFER_CONDITION:            out std_logic;
    MC_BUFFER_ERROR:                out std_logic;
    MC_BUFFER_END_OF_TRANSFER:      out std_logic;
    MC_BUFFER_NO_TRANS_COND:        out std_logic;
    MC_BUFFER_STROBE:               out std_logic;

    MC_READER_BUSY:                 out std_logic;
    MC_PUNCH_BUSY:                  out std_logic;
    MC_1403_PRINT_BUFFER_BUSY:      out std_logic;
    MC_PRINTER_CHANNEL_9:           out std_logic;
    MC_PRINTER_CHANNEL_12:          out std_logic;
    MC_I_O_PRINTER_READY:           out std_logic;
    MC_FORMS_BUSY_STATUS_TO_CPU:    out std_logic;

    -- Priority Feature Signals

    MC_I_O_CLOCK_080_090_TIME:      out std_logic;

    -- 1414 to PC Support System

    IBM1410_1414_XMT_UART_DATA:     out std_logic_vector(7 downto 0);
    IBM1410_1414_UART_REQUEST:      out std_logic;
    IBM1410_1414_UART_GRANT:        in std_logic;
    IBM1410_UART_XMT_UDP_FLUSH:     out std_logic;

    -- PC Support System to 1414

    IBM1410_1414_INPUT_FIFO_WRITE_ENABLE:   in std_logic;
    IBM1410_1414_INPUT_FIFO_WRITE_DATA:     in std_logic_vector(7 downto 0)

    );

end IBM14101414AdapterUnit;

architecture Behavioral of IBM14101414AdapterUnit is

   component ring_buffer is
      generic (
         RAM_WIDTH : natural;
         RAM_DEPTH : natural
      );
      port (
         clk : in std_logic;
         rst : in std_logic;

         -- Write port
         wr_en : in std_logic;
         wr_data : in std_logic_vector(RAM_WIDTH - 1 downto 0);

         -- Read port
         rd_en : in std_logic;
         rd_valid : out std_logic;
         rd_data : out std_logic_vector(RAM_WIDTH - 1 downto 0);

         -- Flags
         empty : out std_logic;
         empty_next : out std_logic;
         full : out std_logic;
         full_next : out std_logic;

         -- The number of elements in the FIFO
         fill_count : out integer range RAM_DEPTH - 1 downto 0
      );
   end component;
   
constant CLOCKPERIOD: integer := 10;   -- 100 Mhz, 10 ns

constant BCD_1_BIT: integer := 0;
constant BCD_2_BIT: integer := 1;
constant BCD_4_BIT: integer := 2;
constant BCD_8_BIT: integer := 3;
constant BCD_A_BIT: integer := 4;
constant BCD_B_BIT: integer := 5;

constant READER_CH1_DEVICE_NUMBER:  integer := 1;
constant PUNCH_CH1_DEVICE_NUMBER:   integer := 4;
constant PRINTER_CH1_DEVICE_NUMBER: integer := 2;
constant READER_CH2_DEVICE_NUMBER:  integer := 65;
constant PUNCH_CH2_DEVICE_NUMBER:   integer := 68;
constant PRINTER_CH2_DEVICE_NUMBER: integer := 66;

constant UNIT_RECEIVE_STATUS_OPERATION:   integer := 1;
constant UNIT_RECEIVE_DATA_OPERATION:     integer := 2;

constant UNIT_READY_BIT: integer          := 0;
constant UNIT_BUSY_BIT:  integer          := 1;
constant UNIT_DATA_CHECK_BIT: integer     := 2;
constant UNIT_WLR_BIT: integer            := 3;
constant READER_LAST_CARD_BIT: integer    := 4; -- Only set if reader EOF button also pressed.
constant PRINTER_CHANNEL_9_BIT: integer   := 5;
constant PRINTER_CHANNEL_12_BIT: integer  := 6;

constant OUT_STROBE_TIME: integer         := 10;  -- 100ns UART Strobe time
constant UNIT_INPUT_FIFO_SIZE: integer    := 200; -- enough to hold two UDP data packets
constant UNIT_INPUT_FIFO_WIDTH: integer   := 8;   -- bits per PC Support Character
constant UNIT_OUTPUT_FIFO_WIDTH: integer  := 9;   -- Output FIFO also has a flush flag
constant UNIT_OUTPUT_FIFO_SIZE: integer   := 140; -- Output FIFO size

constant UNIT_TWIDDLE_TIME: integer       := 100; -- 100 us of busy time in UR minimum (TODO: Param)

signal UDP_RESET:                         std_logic := '1';
signal UNIT_INPUT_FIFO_READ_ENABLE:       std_logic := '0';
signal UNIT_INPUT_FIFO_READ_DATA_VALID:   std_logic := '0';
signal UNIT_INPUT_FIFO_READ_DATA:         std_logic_vector(7 downto 0) := "00000000";
signal UNIT_INPUT_FIFO_EMPTY:             std_logic := '0';
signal UNIT_INPUT_FIFO_EMPTY_NEXT:        std_logic := '0';
signal UNIT_INPUT_FIFO_FULL:              std_logic := '0';
signal UNIT_INPUT_FIFO_FULL_NEXT:         std_logic := '0';

-- There are multiple different processes that might set INPUT_FIFO_READ_ENABLE, so each needs
-- its own signal.

signal FIFO_READ_ENABLE_UNIT_TRIGGER:     std_logic := '0';
signal FIFO_READ_ENABLE_READER_DATA:      std_logic := '0';

signal UNIT_OUTPUT_FIFO_READ_ENABLE:      std_logic := '0';
signal UNIT_OUTPUT_FIFO_READ_DATA_VALID:  std_logic := '0';
signal UNIT_OUTPUT_FIFO_READ_DATA:        std_logic_vector(8 downto 0) := "000000000";
signal UNIT_OUTPUT_FIFO_EMPTY:            std_logic := '0';
signal UNIT_OUTPUT_FIFO_EMPTY_NEXT:       std_logic := '0';
signal UNIT_OUTPUT_FIFO_FULL:             std_logic := '0';
signal UNIT_OUTPUT_FIFO_FULL_NEXT:        std_logic := '0';
signal UNIT_OUTPUT_FIFO_WRITE_ENABLE:     std_logic := '0';
signal UNIT_OUTPUT_FIFO_WRITE_DATA:       std_logic_vector(8 downto 0) := "000000000";

signal UART_RESET: std_logic := '0';

-- States for the process to handle unit record actions initated from PC Support program

type unitTriggerState_type is (
   unit_trigger_reset,
   unit_trigger_idle,
   unit_trigger,
   unit_trigger_wait
);

-- States for the process to handle input data from card reader from PC Support Program

type unitReaderState_type is (
   unit_reader_reset,
   unit_reader_idle,
   unit_reader_waitForBuffer,
   unit_reader_waitForChar,
   unit_reader_getChar,
   unit_reader_done
);

-- States to handle transfer of data from internal FIFO to UART Subsystem

type unitUARTOutputState_type is (
   unit_uart_output_idle,
   unit_uart_output_getchar,
   unit_uart_output_wait,
   unit_uart_output_sendChar,
   unit_uart_output_grantwait
);

-- States to handle an Input request for the reader from the 1410 Channel

type unitReaderTransferState_type is (
   unit_reader_transfer_reset,
   unit_reader_transfer_idle,
   unit_reader_transfer_start,
   unit_reader_transfer_wait_channel,    -- To make sure we dont' strobe the channel too fast.
   unit_reader_transfer_strobe_channel,
   unit_reader_transfer_end_of_transfer,
   unit_reader_transfer_stacker_wait,
   unit_reader_transfer_done
);

-- States to handle sending a request to the reader to read and stack a card

type unitReaderRequestState_type is (
   unit_reader_request_reset,
   unit_reader_request_idle,
   unit_reader_request_fifo_wait_1,
   unit_reader_request_send_unit,
   unit_reader_request_fifo_wait_2,
   unit_reader_request_send_operation,
   unit_reader_request_done
);

type unitPunchTransferState_type is (
   unit_punch_transfer_reset,
   unit_punch_transfer_idle,
   unit_punch_transfer_strobe_channel,
   unit_punch_transfer_wait_channel,
   unit_punch_transfer_getchar,
   unit_punch_transfer_end_of_transfer,
   unit_punch_transfer_start_feed
);

type unitPunchFeedRequestState_type is (
   unit_punch_feed_request_reset,
   unit_punch_feed_request_idle,
   unit_punch_feed_request_fifo_wait_1,
   unit_punch_feed_request_send_unit,
   unit_punch_feed_request_fifo_wait_2,
   unit_punch_feed_request_send_operation,
   unit_punch_feed_request_fifo_wait_3,
   unit_punch_feed_request_send_column,
   unit_punch_feed_request_done
);

type unitPrinterTransferState_type is (
   unit_printer_transfer_reset,
   unit_printer_transfer_idle,
   unit_printer_transfer_getchar,
   unit_printer_transfer_strobe_channel,
   unit_printer_transfer_wait_channel,
   unit_printer_transfer_end_of_transfer,
   unit_printer_transfer_start_print
);

type unitPrinterPrintRequestState_type is (
   unit_printer_print_request_reset,
   unit_printer_print_request_idle,
   unit_printer_print_request_fifo_wait_1,
   unit_printer_print_request_send_unit,
   unit_printer_print_request_fifo_wait_2,
   unit_printer_print_request_send_operation,
   unit_printer_print_request_fifo_wait_3,
   unit_printer_print_request_send_column,
   unit_printer_print_request_done
);

type unitPrinterCarriageState_type is (
   unit_printer_carriage_reset,
   unit_printer_carriage_idle,
   unit_printer_carriage_forms_go
);

signal UNIT_RECEIVED_DEVICE:     std_logic_vector(7 downto 0) := "00000000";
signal UNIT_RECEIVED_OPERATION:  std_logic_vector(7 downto 0) := "00000000";

signal READER_CH1_STATUS:  std_logic_vector(7 downto 0) := "00000000"; -- Coming from the PC
signal PUNCH_CH1_STATUS:   std_logic_vector(7 downto 0) := "00000000"; -- Coming from the PC
signal PRINTER_CH1_STATUS: std_logic_vector(7 downto 0) := "00000000"; -- Coming from the PC
signal READER_CH2_STATUS:  std_logic_vector(7 downto 0) := "00000000"; -- Coming from the PC
signal PUNCH_CH2_STATUS:   std_logic_vector(7 downto 0) := "00000000"; -- Coming from the PC
signal PRINTER_CH2_STATUS: std_logic_vector(7 downto 0) := "00000000"; -- Coming from the PC

constant READER_BUFFER_LENGTH:   integer := 80;
type READER_BUFFER_TYPE is array (READER_BUFFER_LENGTH-1 downto 0) of std_logic_vector(7 downto 0);
signal READER_CH1_BUFFER:  READER_BUFFER_TYPE := (others => X"80");
signal READER_CH1_BUFFER_INPUT_POSITION:  integer range 0 to READER_BUFFER_LENGTH := 0;
signal READER_CH1_BUFFER_SCAN_POSITION:   integer range 0 to READER_BUFFER_LENGTH := 0;
signal READER_CH1_BUFFER_READY:           std_logic := '0'; -- Indicates buffer has data
signal READER_CH1_NO_TRANSFER:            std_logic := '0';
signal READER_CH1_END_OF_FILE:            std_logic := '0';
signal READER_CH1_EOF_NOT_READY:          std_logic := '0';
-- signal READER_CH1_EOF_DELAY:              std_logic := '0';
-- signal READER_CH1_FED:                    std_logic := '0';
signal READER_CH1_FEED_START:             std_logic := '0';
signal READER_CH1_FEEDING:                std_logic := '0';
signal READER_CH1_MULTI_READ:             std_logic := '0';
signal READER_CH1_MULTI_READ_FEED:        std_logic := '0';
signal READER_CH1_ERROR:                  std_logic := '0';
signal READER_CH1_STACKER_SELECTED:       integer range 0 to 9 := 0;
signal READER_CH1_VALIDITY_CHECK:         std_logic := '0';

signal READER_CH1_BUFFER_BUSY:            std_logic := '0'; -- True when receiving a card image
signal READER_CH1_BUFFER_EMPTY:           std_logic := '1'; -- Indicates we do not have a card image stored (process)
signal READER_CH1_BUFFER_FILLING:         std_logic := '0'; -- True when reader process filling the buffer
signal READER_CH1_BUFFER_TRANSFERRING:    std_logic := '0'; -- True when we are transffering data to CPU

signal READER_CH1_REQUEST_DATA:           std_logic_vector(8 downto 0) := "000000000";

constant PUNCH_BUFFER_LENGTH: integer := 80;
type PUNCH_BUFFER_TYPE is array (PUNCH_BUFFER_LENGTH-1 downto 0) of std_logic_vector(7 downto 0);
signal PUNCH_CH1_BUFFER: PUNCH_BUFFER_TYPE := (others => X"80");
signal PUNCH_CH1_BUFFER_FILL_POSITION:    integer range 0 to PUNCH_BUFFER_LENGTH := 0;  -- Channel to Buffer
signal PUNCH_CH1_BUFFER_SCAN_POSITION:    integer range 0 to PUNCH_BUFFER_LENGTH := 0;  -- Buffer to Support Program
signal PUNCH_CH1_BUFFER_BUSY:             std_logic := '0';
signal PUNCH_CH1_DELAY_COUNTER:           integer range 0 to PUNCH_DELAY_TIME := 0;
signal PUNCH_CH1_BUFFER_FILLING:          std_logic := '0';  -- Channel to Buffer
signal PUNCH_CH1_BUFFER_SENDING:          std_logic := '0';  -- Buffer to Support Program
signal PUNCH_CH1_STACKER_SELECTED:        integer range 0 to 9 := 0;  -- Selected punch stacker
signal PUNCH_CH1_START_FEED:              std_logic := '0';  -- True to send card to PC support pgm

signal PUNCH_CH1_REQUEST_DATA:            std_logic_vector(8 downto 0) := "000000000";

constant PRINTER_BUFFER_LENGTH: integer := 132;
type PRINTER_BUFFER_TYPE is array (PRINTER_BUFFER_LENGTH-1 downto 0) of std_logic_vector(7 downto 0);
signal PRINTER_CH1_BUFFER: PRINTER_BUFFER_TYPE := (others => X"80");

signal PRINTER_CH1_CARRIAGE_CHARACTER:    std_logic_vector(7 downto 0);

signal PRINTER_CH1_BUFFER_FILL_POSITION:  integer range 0 to PRINTER_BUFFER_LENGTH := 0;  -- Channel to Buffer
signal PRINTER_CH1_BUFFER_SCAN_POSITION:  integer range 0 to PRINTER_BUFFER_LENGTH := 0;  -- Buffer to Support Program
signal PRINTER_CH1_BUFFER_BUSY:           std_logic := '0';
signal PRINTER_CH1_BUFFER_FILLING:        std_logic := '0';  -- Channel to Buffer
signal PRINTER_CH1_BUFFER_SENDING:        std_logic := '0';  -- Buffer to Support Program
signal PRINTER_CH1_CARRIAGE_SENDING:      std_logic := '0';  -- While sending carriage control char to support pgm
signal PRINTER_CH1_START_PRINT:           std_logic := '0';  -- True to send card to PC support pgm
signal PRINTER_CH1_START_CARRIAGE:	      std_logic := '0';  -- True to send carriage control to PC support pgm
signal PRINTER_CH1_CARRIAGE_OPERATION:	   std_logic := '0';  -- Latch: True if we are sending a carriage operation

signal PRINTER_CH1_REQUEST_DATA:          std_logic_vector(8 downto 0) := "000000000";

-- Signals deduced from the ILD and signals related to that.

signal UNIT_SELECT_UNIT_1:                std_logic := '0'; -- Indicates unit 1 is selected with channel in input mode.
signal UNIT_CH1_STACKER_SELECTED:         integer range 0 to 9 := 0;  -- Selected stacker
signal UNIT_SELECT_UNIT_4:                std_logic := '0'; -- Indicates Unit 4 is selected with channel in output mode
signal UNIT_SELECT_UNIT_2:                std_logic := '0'; -- Indicates Unit 2 is selected with channel in output mode

signal unitTriggerState: unitTriggerState_type := unit_trigger_reset;
signal unitCh1ReaderState: unitReaderState_type := unit_reader_reset;
signal unitCh1ReaderTransferState: unitReaderTransferState_type := unit_reader_transfer_reset;
signal unitUARTOutputState: unitUARTOutputState_type := unit_uart_output_idle;
signal unitCh1ReaderRequestState: unitReaderrequestState_type := unit_reader_request_reset;
signal unitCh1PunchTransferState: unitPunchTransferState_type := unit_punch_transfer_reset;
signal unitCh1PunchFeedRequestState: unitPunchFeedRequestState_type := unit_punch_feed_request_reset;
signal unitCh1PrinterTransferState: unitPrinterTransferState_type := unit_printer_transfer_reset;
signal unitCh1PrinterPrintRequestState: unitPrinterPrintRequestState_type := unit_printer_print_request_reset;
signal unitCh1PrinterCarriageState: unitPrinterCarriageState_type := unit_printer_carriage_reset;

signal UNIT_SUPPORT_UNIT:        integer := 0; -- Unit in incoming PC message
signal UNIT_SUPPORT_OPERATION:   integer := 0; -- Operation in incoming PC message

-- Signals used by various unit processes to tell the trigger process they are done.
-- In this 1414, vs. the tape, we are handling all of the status reports in the top
-- level trigger process (or so I hope.)

signal unitTriggerCH1ReaderData: std_logic := '0'; -- '1' while we are reading card image from PC
signal unitReaderDelayCounter:   integer range 0 to CHANNEL_CYCLE_LENGTH := 0;
signal unitReaderStrobeCounter:  integer range 0 to CHANNEL_STROBE_LENGTH := 0;
signal unitPunchDelayCounter:    integer range 0 to CHANNEL_CYCLE_LENGTH := 0;
signal unitPunchStrobeCounter:   integer range 0 to CHANNEL_STROBE_LENGTH := 0;
signal unitPrinterDelayCounter:  integer range 0 to CHANNEL_CYCLE_LENGTH := 0;
signal unitPrinterStrobeCounter: integer range 0 to CHANNEL_STROBE_LENGTH := 0;

-- We need a buffer for the reader, just like a real IBM 1414.
-- (I don't think we will need that for output devices - we can just fill the packet)

-- Vivado debugging constraints so that we can find signals in the netlist to debug

attribute dont_touch: string;
attribute dont_touch of READER_CH1_STATUS:   signal is "true";
attribute dont_touch of READER_CH2_STATUS:   signal is "true";
attribute dont_touch of PUNCH_CH1_STATUS:    signal is "true";
attribute dont_touch of PUNCH_CH2_STATUS:    signal is "true";
attribute dont_touch of PRINTER_CH1_STATUS:  signal is "true";
attribute dont_touch of PRINTER_CH2_STATUS:  signal is "true";


begin

-- Instantiate Components

UNIT_INPUT_FIFO: ring_buffer
   generic map (
      RAM_WIDTH => UNIT_INPUT_FIFO_WIDTH,
      RAM_DEPTH => UNIT_INPUT_FIFO_SIZE
   )
   port map (
      clk => FPGA_CLK,
      rst => UDP_RESET,
      wr_en => IBM1410_1414_INPUT_FIFO_WRITE_ENABLE,
      wr_data => IBM1410_1414_INPUT_FIFO_WRITE_DATA,
      rd_en => UNIT_INPUT_FIFO_READ_ENABLE,
      rd_valid => UNIT_INPUT_FIFO_READ_DATA_VALID,
      rd_data => UNIT_INPUT_FIFO_READ_DATA,
      empty => UNIT_INPUT_FIFO_EMPTY,
      empty_next => UNIT_INPUT_FIFO_EMPTY_NEXT,
      full => UNIT_INPUT_FIFO_FULL,
      full_next => UNIT_INPUT_FIFO_FULL_NEXT,
      fill_count => OPEN
   );
      

   -- I decided to put a FIFO in between the 1414 and the PC Support grant system.
   -- It saves a bunch of states because they can just check full and strobe, 
   -- without having to have a state that checks for grants.
   
   UNIT_OUTPUT_FIFO : ring_buffer
      generic map (
         RAM_WIDTH => UNIT_OUTPUT_FIFO_WIDTH,
         RAM_DEPTH => UNIT_OUTPUT_FIFO_SIZE
      )
      port map (
         clk => FPGA_CLK,
         rst => UART_RESET,
         wr_en => UNIT_OUTPUT_FIFO_WRITE_ENABLE,
         wr_data => UNIT_OUTPUT_FIFO_WRITE_DATA,
         rd_en => UNIT_OUTPUT_FIFO_READ_ENABLE,
         rd_valid => UNIT_OUTPUT_FIFO_READ_DATA_VALID,
         rd_data => UNIT_OUTPUT_FIFO_READ_DATA,
         empty => UNIT_OUTPUT_FIFO_EMPTY,
         empty_next => UNIT_OUTPUT_FIFO_EMPTY_NEXT,
         full => UNIT_OUTPUT_FIFO_FULL,
         full_next => UNIT_OUTPUT_FIFO_FULL_NEXT,
         fill_count => OPEN
    );
   
-- Process to take data from the output FIFO and request the containing
-- module to process

UnitUARTOutputProcess: process(
   FPGA_CLK,
   MC_COMP_RESET_TO_BUFFER,
   UNIT_OUTPUT_FIFO_READ_DATA_VALID,
   UNIT_OUTPUT_FIFO_READ_DATA,
   UNIT_OUTPUT_FIFO_EMPTY,   
   IBM1410_1414_UART_GRANT,
   unitUARTOutputState)
   
   begin
   
   if MC_COMP_RESET_TO_BUFFER = '0' then
      IBM1410_1414_UART_REQUEST <= '0';
      IBM1410_UART_XMT_UDP_FLUSH <= '0';
      IBM1410_1414_XMT_UART_DATA <= "00000000";
      unitUARTOutputState <= unit_uart_output_idle;      
   
   elsif FPGA_CLK'event and FPGA_CLK = '1' then
      case unitUARTOutputState is
      
      when unit_uart_output_idle =>
         -- wait for a character to appear in the internal FIFO
         if UNIT_OUTPUT_FIFO_EMPTY = '1' then
            unitUARTOutputState <= unit_uart_output_idle;
         else
            unitUARTOutputState <= unit_uart_output_getChar;
         end if;
      
      when unit_uart_output_getChar =>
         -- Read the character from the FIFO -- raise read enable
         if UNIT_OUTPUT_FIFO_READ_DATA_VALID = '1' then
            IBM1410_1414_XMT_UART_DATA <= UNIT_OUTPUT_FIFO_READ_DATA (7 downto 0);
            IBM1410_UART_XMT_UDP_FLUSH <= UNIT_OUTPUT_FIFO_READ_DATA(8);
            unitUARTOutputState <= unit_uart_output_wait;
         else
            unitUARTOutputState <= unit_uart_output_getChar;
         end if;
      
      when unit_uart_output_wait =>
         -- Drop read eanble
         -- Wait for grant to go away, in case it is still up from a previous
         -- request!!
         if IBM1410_1414_UART_GRANT = '1' then
            unitUARTOutputState <= unit_uart_output_wait;
         else
            unitUARTOutputState <= unit_uart_output_sendChar;
         end if;
      
      when unit_uart_output_sendChar =>
         -- Raise UART subsystem request here...
         IBM1410_1414_UART_REQUEST <= '1';
         unitUARTOutputState <= unit_uart_output_grantWait;
      
      when unit_uart_output_grantWait =>
         -- Have to drop the request - the UDP output requester expects that to go away.
         IBM1410_1414_UART_REQUEST <= '0';
         -- Wait for request to be granted before getting another character
         if IBM1410_1414_UART_GRANT = '1' then
            IBM1410_UART_XMT_UDP_FLUSH <= '0';
            unitUARTOutputState <= unit_uart_output_idle;
         else
            unitUARTOutputState <= unit_uart_output_grantWait;
         end if;
            
      end case;
   end if;
      
end process;

-- Process to wait for an incoming message from the PC support program to start, and
-- trigger the appropriate process to handle the message

-- The unitTriggerProcess wakes up when it gets input from the PC Console Support Program.
-- It uses the first characcter to decide which device it is for, and stores the second
-- character as the kind of operation:  a status update, or data (e.g., from the reader),
-- and if it is a status report, that goes in the third character.

unitCh1TriggerProcess: process (
   FPGA_CLK,
   MC_COMP_RESET_TO_BUFFER,
   IBM1410_1414_INPUT_FIFO_WRITE_ENABLE,
   IBM1410_1414_INPUT_FIFO_WRITE_DATA,
   UNIT_INPUT_FIFO_READ_DATA_VALID,
   UNIT_INPUT_FIFO_EMPTY,
   UNIT_INPUT_FIFO_READ_DATA,
   unitTriggerState)

   begin

   if MC_COMP_RESET_TO_BUFFER = '0' then
      unitTriggerState <= unit_trigger_reset;
      UNIT_SUPPORT_UNIT <= 0;
      UNIT_SUPPORT_OPERATION <= 0;
      READER_CH1_ERROR <= '0';

   elsif FPGA_CLK'event and FPGA_CLK = '1' then
      case unitTriggerState is
         
         when unit_trigger_reset =>
            unitTriggerState <= unit_trigger_idle;
            FIFO_READ_ENABLE_UNIT_TRIGGER <= '0';
         
         when unit_trigger_idle =>
            if UNIT_INPUT_FIFO_EMPTY = '0' then
               unitTriggerState <= unit_trigger;
               FIFO_READ_ENABLE_UNIT_TRIGGER <= '1';
            else
               unitTriggerState <= unit_trigger_idle;
            end if;

         when unit_trigger =>
            if UNIT_INPUT_FIFO_READ_DATA_VALID = '1' then
               -- The FIFO has some data for us
               FIFO_READ_ENABLE_UNIT_TRIGGER <= '0';

               if UNIT_SUPPORT_UNIT = 0 then
                  -- The first byte we will see is the unit identifier.
                  -- Latch that for later use.
                  UNIT_SUPPORT_UNIT <= to_integer(unsigned(UNIT_INPUT_FIFO_READ_DATA));
                  unitTriggerState <= unit_trigger_idle;  -- Wait for next char (operation)

               elsif UNIT_SUPPORT_OPERATION = 0 then
                  -- The second byte we will see is the operation.
                  -- Latch that, too, for later use.
                  UNIT_SUPPORT_OPERATION <= to_integer(unsigned(UNIT_INPUT_FIFO_READ_DATA));
                  -- If this is a receive status operation, stick around until we get the
                  -- status, otherwise go wait for data
                  if to_integer(unsigned(UNIT_INPUT_FIFO_READ_DATA)) = 
                     UNIT_RECEIVE_STATUS_OPERATION then
                     unitTriggerState <= unit_trigger_idle;
                  else
                     unitTriggerState <= unit_trigger_wait;
                  end if;

               else
                  -- The third byte of a status message is the actual status.
                  -- Update the appropriate device's status.  This should ALWAYS be
                  -- a receive status operation at this point, but check just in case.
                  if UNIT_SUPPORT_OPERATION = UNIT_RECEIVE_STATUS_OPERATION then
                     case UNIT_SUPPORT_UNIT is
                        when READER_CH1_DEVICE_NUMBER =>
                           READER_CH1_STATUS <= UNIT_INPUT_FIFO_READ_DATA;
                           READER_CH1_ERROR <= UNIT_INPUT_FIFO_READ_DATA(UNIT_DATA_CHECK_BIT);
                        when READER_CH2_DEVICE_NUMBER =>
                           READER_CH2_STATUS <= UNIT_INPUT_FIFO_READ_DATA;
                        when PUNCH_CH1_DEVICE_NUMBER =>
                           PUNCH_CH1_STATUS <= UNIT_INPUT_FIFO_READ_DATA;
                        when PUNCH_CH2_DEVICE_NUMBER =>
                           PUNCH_CH2_STATUS <= UNIT_INPUT_FIFO_READ_DATA;
                        when PRINTER_CH1_DEVICE_NUMBER =>
                           PRINTER_CH1_STATUS <= UNIT_INPUT_FIFO_READ_DATA;
                        when PRINTER_CH2_DEVICE_NUMBER =>
                           PRINTER_CH2_STATUS <= UNIT_INPUT_FIFO_READ_DATA;
                        when others => null;
                     end case;
                  end if;
                  -- Since this is (presumably) just a status message, go back to idle
                  -- after setting the status, and reset the unit and operation, to 
                  -- prepare for the next message.
                  UNIT_SUPPORT_UNIT <= 0;
                  UNIT_SUPPORT_OPERATION <= 0;
                  unitTriggerState <= unit_trigger_idle;
               end if;

            else
               -- This state is reached with FIFO_READ_ENABLE already a '1'
               -- but the FIFO does not yet have data for us.
               -- If we are still in this state, then we already told the FIFO we are
               -- ready, and as long as the FIFO isn't empty, we should NOT assert
               -- FIFO_READ_ENABLE, or we will get two characters at once.
               if UNIT_INPUT_FIFO_EMPTY = '0' then
                  FIFO_READ_ENABLE_UNIT_TRIGGER <= '0';
               else
                  FIFO_READ_ENABLE_UNIT_TRIGGER <= '1';
               end if;
               unitTriggerState <= unit_trigger;
            end if;


         when unit_trigger_wait =>
            -- We wait here while we are receiving unit record data
            -- (e.g., from the card reader on the PC).  Note that if
            -- we get data for other than the units below (currently just
            -- the card reader on Ch1), it will be ignored, and cause problems, 
            -- because the bad info will still be in the UDP stream, and thus
            -- confuse the heck out of the trigger process.
            FIFO_READ_ENABLE_UNIT_TRIGGER <= '0';
            if unitTriggerCH1ReaderData = '1' then
               unitTriggerState <= unit_trigger_wait;
            else
               -- Once we have received the data, reset our state, unit and operation
               UNIT_SUPPORT_UNIT <= 0;
               UNIT_SUPPORT_OPERATION <= 0;               
               unitTriggerState <= unit_trigger_idle;
            end if;

         end case;

      end if;  -- FPGA_CLK

   end process;

-- Process to set and reset various reader latches

unitCh1ReaderLatchProcess: process (
   FPGA_CLK,
   MC_COMP_RESET_TO_BUFFER,
   MC_RESET_SELECT_BUFFER_LATCHES,
   MC_STACK_SELECT_TO_BUFFER,
   -- READER_CH1_FED,
   UNIT_SELECT_UNIT_1,
   READER_CH1_BUFFER_EMPTY,
   -- READER_CH1_EOF_DELAY,
   READER_CH1_STATUS,
   READER_CH1_FEED_START,
   READER_CH1_MULTI_READ_FEED,
   READER_CH1_MULTI_READ,
   unitCh1ReaderState,
   unitCh1ReaderTransferState)

   begin

      if FPGA_CLK'event and FPGA_CLK = '1' then

         -- TODO: Maybe this FIRST part can be moved into the combinatorial section at the end
         -- maybe even dropping READER_CH1_NO_TRANSFER signal in the process
         if MC_STACK_SELECT_TO_BUFFER = '1' and READER_CH1_MULTI_READ = '1' and 
            UNIT_SELECT_UNIT_1 = '1' then
            READER_CH1_NO_TRANSFER <= '1';
         elsif MC_STACK_SELECT_TO_BUFFER = '0' and UNIT_SELECT_UNIT_1 = '1' and 
            READER_CH1_MULTI_READ_FEED = '1' then
            READER_CH1_NO_TRANSFER <= '1';
         else
            READER_CH1_NO_TRANSFER <= '0';
         end if;

         -- Read Latch (and trigger, in the ILD).  Sets when a request to feed a card is sent,
         -- resets when the PC message for the card image has been received and processed, or
         -- (thought this isn't explicitly in the ILD) if we receive an EOF from the card reader.
         
         if READER_CH1_FEED_START = '1' then
            READER_CH1_FEEDING <= '1';
         elsif unitCh1ReaderState = unit_reader_done or
            READER_CH1_END_OF_FILE = '1' then
            READER_CH1_FEEDING <= '0';
         end if;

         -- EOF Latch

         if READER_CH1_STATUS(READER_LAST_CARD_BIT) = '1' and
            READER_CH1_STATUS(UNIT_READY_BIT) = '1' and
            -- unitCh1ReaderState = unit_reader_waitForBuffer and
            unitCh1ReaderTransferState = unit_reader_transfer_done then
               -- READER_CH1_EOF_DELAY <= '1';
            READER_CH1_END_OF_FILE <= '1';
         -- elsif READER_CH1_STATUS(UNIT_READY_BIT) = '0' then
         --   READER_CH1_EOF_DELAY <= '0';
         -- else
            -- READER_CH1_EOF_DELAY <= '0';
         end if;

         if MC_COMP_RESET_TO_BUFFER = '0' or
            (MC_RESET_SELECT_BUFFER_LATCHES = '0' and UNIT_SELECT_UNIT_1 = '1') then
            READER_CH1_END_OF_FILE <= '0';
            -- There may be more to reset here . . . 
         end if;

         -- After a EOF (CONDITION status to channel), the reader needs to go not
         -- ready.  Unfortunately, we cannot guarantee that the PC Support program
         -- will get the status updated from EOF to not ready fast enough (diagnostic
         -- RP01A fails).  So there is a status signal which forces not ready after
         -- the condition state (we had EOF and the 1411 reset select buffer latches)
         -- until the next PC status update.

         if READER_CH1_END_OF_FILE = '1' and MC_RESET_SELECT_BUFFER_LATCHES = '0' then
            READER_CH1_EOF_NOT_READY <= '1';
         elsif MC_COMP_RESET_TO_BUFFER = '0' or 
            (READER_CH1_EOF_NOT_READY = '1' and unitTriggerState = unit_trigger and
            UNIT_SUPPORT_UNIT = READER_CH1_DEVICE_NUMBER and
            UNIT_SUPPORT_OPERATION = UNIT_RECEIVE_STATUS_OPERATION) then
               READER_CH1_EOF_NOT_READY <= '0';
         end if;

         -- if READER_CH1_EOF_DELAY = '1' then -- and
            -- READER_CH1_FEED_START = '1' then 
            -- READER_CH1_FEEDING = '1' then            
            -- or TODO 1401 READ LATCH
         --    READER_CH1_END_OF_FILE <= '1';
         -- end if;

         -- Multi Read Fead Latch

         if unitCh1ReaderTransferState = unit_reader_transfer_start then
            READER_CH1_MULTI_READ_FEED <= '0';
         elsif READER_CH1_FEED_START = '1' then
            READER_CH1_MULTI_READ_FEED <= '1';
         end if;

         -- Multi Read Latch

         if MC_READY_TO_BUFFER = '1' and  -- MC_READY_TO_BUFFER is known as READY2 as well
            READER_CH1_MULTI_READ_FEED = '1' then
            READER_CH1_MULTI_READ <= '0';
         elsif (MC_CORRECT_TRANS_TO_BUFFER = '0' or MC_RESET_SELECT_BUFFER_LATCHES = '0') and
            UNIT_SELECT_UNIT_1 = '1' then
            READER_CH1_MULTI_READ <= '1';
         end if;
         
      end if;
   end process;

unitCh1PrinterLatchProcess: process (
   FPGA_CLK,
   unitCh1PrinterCarriageState,
   UNIT_SUPPORT_OPERATION,
   UNIT_INPUT_FIFO_READ_DATA
   )

   -- Latch process to make carriage busy on carriage operations until we get
   -- ready not busy status back from PC Support Program.

   begin
      if FPGA_CLK'event and FPGA_CLK = '1' then
         if unitCh1PrinterCarriageState = unit_printer_carriage_forms_go then
            MC_FORMS_BUSY_STATUS_TO_CPU <= '0';
         elsif unitTriggerState = unit_trigger and
            UNIT_SUPPORT_UNIT = PRINTER_CH1_DEVICE_NUMBER and
            UNIT_SUPPORT_OPERATION = UNIT_RECEIVE_STATUS_OPERATION  and
            UNIT_INPUT_FIFO_READ_DATA(UNIT_BUSY_BIT) = '0' then
               MC_FORMS_BUSY_STATUS_TO_CPU <= '1';
         end if;
      end if;
   end process;


-- Process to set whether or not the reader buffer is empty.  To work, it has to monitor the
-- states of the filling and emptying processes

unitCh1ReaderBufferStatusProcess: process (
   FPGA_CLK,
   unitCh1ReaderState,
   unitCh1ReaderTransferState
   )  

   begin
      if FPGA_CLK'event and FPGA_CLK = '1' then
         if unitCh1ReaderState = unit_Reader_Done then
            READER_CH1_BUFFER_EMPTY <= '0';
         elsif unitCh1ReaderTransferState /= unit_reader_transfer_done then
            READER_CH1_BUFFER_EMPTY <= '1';
         end if;
      end if;
   end process;

-- Process to handle an incoming card image from the card reader emulation
-- in the PC support program.

unitCh1ReaderDataProcess: process (
   FPGA_CLK,
   MC_COMP_RESET_TO_BUFFER,
   READER_CH1_BUFFER_TRANSFERRING,
   UNIT_INPUT_FIFO_READ_DATA,
   UNIT_INPUT_FIFO_READ_DATA_VALID,
   UNIT_INPUT_FIFO_EMPTY,
   READER_CH1_BUFFER_INPUT_POSITION,
   unitCh1ReaderState)

   begin

   if MC_COMP_RESET_TO_BUFFER = '0' then
      unitCh1ReaderState <= unit_reader_reset;

   elsif FPGA_CLK'event and FPGA_CLK = '1' then

      case unitCh1ReaderState is

      when unit_reader_reset =>         
         READER_CH1_BUFFER_INPUT_POSITION <= 0;
         FIFO_READ_ENABLE_READER_DATA  <= '0';
         READER_CH1_BUFFER_READY <= '0';
         READER_CH1_BUFFER_FILLING <= '0';
         unitCh1ReaderState <= unit_reader_idle;
      
      -- Wait for an indication from the trigger process that we have
      -- incoming card data.

      when unit_reader_idle =>
         if unitTriggerCH1ReaderData = '1' then
            READER_CH1_BUFFER_INPUT_POSITION <= 0;
            FIFO_READ_ENABLE_READER_DATA  <= '0';         
            READER_CH1_BUFFER_READY <= '0';
            READER_CH1_VALIDITY_CHECK <= '0';
            unitCh1ReaderState <= unit_reader_waitForBuffer;
         else
            unitCh1ReaderState <= unit_reader_idle;
         end if;

      -- Wait to make sure we aren't in the middle of transferring data to the CPU

      when unit_reader_waitForBuffer =>
         if READER_CH1_BUFFER_TRANSFERRING = '1' then
            unitCh1ReaderState <= unit_reader_waitForBuffer;
         else
            READER_CH1_BUFFER_FILLING <= '1';
            unitCh1ReaderState <= unit_reader_waitForChar;
         end if;

      when unit_reader_waitForChar =>
         -- If we went not ready, reset feeding flag and reset.
         -- if READER_CH1_STATUS(UNIT_READY_BIT) = '0' then
         --   unitCh1ReaderState <= unit_reader_done;
         -- else
            READER_CH1_BUFFER_READY <= '0'; -- Not sure about this one . . .
            if UNIT_INPUT_FIFO_EMPTY = '0' then
               FIFO_READ_ENABLE_READER_DATA <= '1';
               unitCh1ReaderState <= unit_reader_getchar;            
            else
               unitCh1readerState <= unit_reader_waitForChar;
            end if;
         -- end if;

      when unit_reader_getChar =>
         -- Have a character from the PC.
         if UNIT_INPUT_FIFO_READ_DATA_VALID = '1' then
            FIFO_READ_ENABLE_READER_DATA <= '0';
            if UNIT_INPUT_FIFO_READ_DATA = "00000000" then
               unitCh1ReaderState <= unit_reader_done;
            elsif READER_CH1_BUFFER_INPUT_POSITION < READER_BUFFER_LENGTH then
               -- The incoming stream has the parity where the WM bit would normally be, because
               -- the high bit is used for identifying when the device in the message from the PC
               -- changes, so set them appropriately, with a 0 WM bit.
               READER_CH1_BUFFER(READER_CH1_BUFFER_INPUT_POSITION) <= UNIT_INPUT_FIFO_READ_DATA(6) &
                  "0" & UNIT_INPUT_FIFO_READ_DATA(5 downto 0);
               -- If even parity, turn on the validity check latch
               if (UNIT_INPUT_FIFO_READ_DATA(6) xor 
                  UNIT_INPUT_FIFO_READ_DATA(5) xor
                  UNIT_INPUT_FIFO_READ_DATA(4) xor
                  UNIT_INPUT_FIFO_READ_DATA(3) xor
                  UNIT_INPUT_FIFO_READ_DATA(2) xor
                  UNIT_INPUT_FIFO_READ_DATA(1) xor
                  UNIT_INPUT_FIFO_READ_DATA(0)) = '0' then
                     READER_CH1_VALIDITY_CHECK <= '1';
               end if;
               READER_CH1_BUFFER_INPUT_POSITION <= READER_CH1_BUFFER_INPUT_POSITION + 1;
               unitCh1ReaderState <= unit_reader_waitForChar;
            end if;
         else
            -- This state is reached with FIFO_READ_ENABLE already a '1'
            -- If we are still in this state, then we already told the FIFO we are
            -- ready, and as long as the FIFO isn't empty, we should NOT assert
            -- FIFO_READ_ENABLE, or we will get two characters at once.            
            if(UNIT_INPUT_FIFO_EMPTY = '0') then
               FIFO_READ_ENABLE_READER_DATA <= '0';
            else
               FIFO_READ_ENABLE_READER_DATA <= '1';
            end if;
            unitCh1ReaderState <= unit_reader_getChar;
         end if;

      when unit_reader_done =>
         -- This will also reset the READER_CH1_BUFFER_EMPTY "latch" via another process
         READER_CH1_BUFFER_FILLING <= '0';  -- So Buffer won't be busy now.
         unitCh1ReaderState <= unit_reader_reset;

   end case;
      
   end if;

end process;

-- Process to handle a 1410 Read instruction M%1saaaaaR or an SSF Kd

unitReaderCh1TransferOrStackProcess: process(
   FPGA_CLK,
   unitCh1ReaderTransferState,
   UNIT_SELECT_UNIT_1,
   READER_CH1_BUFFER_FILLING,
   MC_READY_TO_BUFFER,
   MC_STACK_SELECT_TO_BUFFER,
   UNIT_CH1_STACKER_SELECTED,
   READER_CH1_BUFFER,
   unitReaderDelayCounter,
   unitReaderStrobeCounter,
   READER_CH1_BUFFER_SCAN_POSITION,
   MC_CORRECT_TRANS_TO_BUFFER
   )

   begin

   if MC_COMP_RESET_TO_BUFFER = '0' then
      unitCh1ReaderTransferState <= unit_reader_transfer_reset;
   
   elsif FPGA_CLK'event and FPGA_CLK = '1' then      

      case unitCh1ReaderTransferState is
      
      when unit_reader_transfer_reset =>
         READER_CH1_BUFFER_TRANSFERRING <= '0';
         READER_CH1_BUFFER_SCAN_POSITION <= 0;
         -- READER_CH1_FED <= '0';
         unitReaderDelayCounter <= 0;
         unitReaderStrobeCounter <= 0;
         unitCh1ReaderTransferState <= unit_reader_transfer_idle;

      when unit_reader_transfer_idle =>
         -- Have we received either a read request or stack request, and we are ready?
         if UNIT_SELECT_UNIT_1 = '1' and READER_CH1_BUFFER_FILLING = '0' and
            READER_CH1_END_OF_FILE = '0' and
            (MC_READY_TO_BUFFER = '0' or MC_STACK_SELECT_TO_BUFFER = '0') then

            -- If there was a validity check, stacker 0 is forced.

            if READER_CH1_VALIDITY_CHECK = '0' then
               READER_CH1_STACKER_SELECTED <= UNIT_CH1_STACKER_SELECTED;
            else
               READER_CH1_STACKER_SELECTED <= 0;
            end if;

            -- The read feed starts in another process in parallel when READER_CH1_FEED_START is set
            -- Note that for SSF instructions, we stay in this state until we see Forms Stacker GO asserted,
            -- so that we don't start the reader until we see "Go".
            
            if MC_READY_TO_BUFFER = '0' then  -- True if this is a read instruction M%1saaaaaR
               -- Go start the actual transfer, but don't start the read feed yet
               unitCh1ReaderTransferState <= unit_reader_transfer_start;
            elsif MC_STACK_SELECT_TO_BUFFER = '0' and MC_FORMS_STACKER_GO = '0' then
               -- This is a stacker instruction Ks and Forms Stacker Go has been asserted,
               -- So we can start the read feed.
               -- READER_CH1_FED <= '1';
               READER_CH1_FEED_START <= '1';
               unitCh1ReaderTransferState <= unit_reader_transfer_stacker_wait;
            end if;
         else
            unitCh1ReaderTransferState <= unit_reader_transfer_idle;
         end if;

      when unit_reader_transfer_start =>
         READER_CH1_BUFFER_TRANSFERRING <= '1';
         READER_CH1_BUFFER_SCAN_POSITION <= 0;
         -- We will initiate the reader feed, if appropriate, as we LEAVE this state, because
         -- this state first RESETS multi-read feed!
         if UNIT_CH1_STACKER_SELECTED = 9 then
            READER_CH1_FEED_START <= '0';
            -- READER_CH1_FED <= '0';
         else
            READER_CH1_FEED_START <= '1';
            -- READER_CH1_FED <= '1';
         end if;               
         unitReaderDelayCounter <= 0;
         unitReaderStrobeCounter <= 0;
         unitCh1ReaderTransferState <= unit_reader_transfer_wait_channel;

      when unit_reader_transfer_wait_channel =>
         READER_CH1_FEED_START <= '0';   -- The reader feed should have started now. 
         if unitReaderDelayCounter = CHANNEL_CYCLE_LENGTH - 1 then
            -- Put the data on the bus one tick early . . .
            MC_I_O_SYNC_TO_CPU_BUS <= not (READER_CH1_BUFFER(READER_CH1_BUFFER_SCAN_POSITION)(7) &
               "1" & READER_CH1_BUFFER(READER_CH1_BUFFER_SCAN_POSITION)(5 downto 0));
         end if;
         if unitReaderDelayCounter = CHANNEL_CYCLE_LENGTH then
            -- Now we are ready to strobe the 1411's channel
            unitReaderDelayCounter <= 0;
            unitReaderStrobeCounter <= 0;
            READER_CH1_BUFFER_SCAN_POSITION <= READER_CH1_BUFFER_SCAN_POSITION + 1;
            unitCh1ReaderTransferState <= unit_reader_transfer_strobe_channel;
         else
            -- Still giving the channel time.
            unitReaderDelayCounter <= unitReaderDelayCounter + 1;
            unitCh1ReaderTransferState <= unit_reader_transfer_wait_channel;
         end if;

      when unit_reader_transfer_strobe_channel =>
         -- Tell the 1411 CPU Channel we have data for it 
         -- (strobe happens in combinatorial logic based on this state)
         if unitReaderStrobeCounter = CHANNEL_STROBE_LENGTH then
            -- Strobe is done.  Have we hit the end of the buffer yet?
            if READER_CH1_BUFFER_SCAN_POSITION < READER_BUFFER_LENGTH then
               unitCh1ReaderTransferState <= unit_reader_transfer_wait_channel;
            else
               unitReaderDelayCounter <= 0;  -- Also use this counter for end of transfer signal
               unitCh1ReaderTransferState <= unit_reader_transfer_end_of_transfer;
            end if;
         else
            -- Still in the process of the strobe signal
            unitReaderStrobeCounter <= unitReaderStrobeCounter + 1;
            if unitReaderDelayCounter /= CHANNEL_CYCLE_LENGTH - 1 then
               -- this counts towards channel cycle delay, too.
               unitReaderDelayCounter <= unitReaderDelayCounter + 1; 
            end if;
            unitCh1ReaderTransferState <= unit_reader_transfer_strobe_channel;
         end if;

      when unit_reader_transfer_end_of_transfer =>
         -- Transfer should be done, now.
         if MC_CORRECT_TRANS_TO_BUFFER = '0' or MC_RESET_SELECT_BUFFER_LATCHES = '0' then
            unitCh1ReaderTransferState <= unit_reader_transfer_done;
         elsif unitReaderDelayCounter = CHANNEL_CYCLE_LENGTH - 1 then            
            unitCh1ReaderTransferState <= unit_reader_transfer_done;
         else
            unitReaderDelayCounter <= unitReaderDelayCounter + 1;
            unitCh1ReaderTransferState <= unit_reader_transfer_end_of_transfer;
         end if;
         -- Removed the following, as MC_BUFFER_END_OF_TRANSFER should NOT wait for MC_CORRECT_TRANS_TO_BUFFER

         -- if MC_CORRECT_TRANS_TO_BUFFER = '0' then
         --    unitCh1ReaderTransferState <= unit_reader_transfer_done;
         -- else
         --    unitCh1ReaderTransferState <= unit_reader_transfer_end_of_transfer;
         -- end if;

      -- For a SSF instruction, we need to wait for FORMS_STACKER_GO to go away, or
      -- we will go nuts sending feed requests to the PC Support Program.

      when unit_reader_transfer_stacker_wait =>
         READER_CH1_FEED_START <= '0';       -- Feed process has already started.
         if MC_FORMS_STACKER_GO = '1' then
            unitCh1ReaderTransferState <= unit_reader_transfer_done;
         else
            unitCh1ReaderTransferState <= unit_reader_transfer_stacker_wait;
         end if;

      when unit_reader_transfer_done =>
         READER_CH1_FEED_START <= '0';      -- Feed process should have already started
         -- Wait for CPU to deselect us
         if UNIT_SELECT_UNIT_1 = '1' and MC_READY_TO_BUFFER = '0' then   
            unitCh1ReaderTransferState <= unit_reader_transfer_done;
         else
            -- Clean up / reset signals, and go idle
            READER_CH1_BUFFER_TRANSFERRING <= '0';
            READER_CH1_BUFFER_SCAN_POSITION <= 0;         
            unitReaderDelayCounter <= 0;
            unitReaderStrobeCounter <= 0;
            -- READER_CH1_FED <= '0';
            unitCh1ReaderTransferState <= unit_reader_transfer_idle;
         end if;
      end case;

   end if;
end process;

-- Process to wait for READER_CH1_FEED_START = '1', and send feed message to PC
-- It also waits for READER_CH1_FEED_START to go back to '0' as a "safety" measure.

unitCh1ReaderRequestProcess: process (
   FPGA_CLK,
   MC_COMP_RESET_TO_BUFFER,
   READER_CH1_FEED_START,
   UNIT_OUTPUT_FIFO_WRITE_ENABLE,
   UNIT_OUTPUT_FIFO_FULL,
   unitCh1ReaderRequestState
   )

   begin

      if MC_COMP_RESET_TO_BUFFER = '0' then
         unitCh1ReaderRequestState <= unit_reader_request_reset;
         READER_CH1_REQUEST_DATA <= "000000000";
      
      elsif FPGA_CLK'event and FPGA_CLK = '1' then

         case unitCh1ReaderRequestState is
         
         when unit_reader_request_reset =>
            unitCh1ReaderRequestState <= unit_reader_request_idle;

         when unit_reader_request_idle =>
            if READER_CH1_FEED_START = '1' then
               unitCh1ReaderRequestState <= unit_reader_request_fifo_wait_1;
            else
               unitCh1ReaderRequestState <= unit_reader_request_idle;
            end if;

         when unit_reader_request_fifo_wait_1 =>
            -- Got a request to start a feed.  Waiting for the output FIFO to have room
            if UNIT_OUTPUT_FIFO_FULL = '1' then
               unitCh1ReaderRequestState <= unit_reader_request_fifo_wait_1;
            else
               -- FIFO has room, so fill in the unit number
               READER_CH1_REQUEST_DATA <= "000000001";  -- Reader Unit.  Top bit is flush bit.
               unitCh1ReaderRequestState <= unit_reader_request_send_unit;
            end if;
         
         when unit_reader_request_send_unit =>
            -- At this point the unit is placed onto the FIFO based on this state
            unitCh1ReaderRequestState <= unit_reader_request_fifo_wait_2;

         when unit_reader_request_fifo_wait_2 =>
            -- Now, wait until the FIFO has room for the operation
            if UNIT_OUTPUT_FIFO_FULL = '1' then
               unitCh1ReaderRequestState <= unit_reader_request_fifo_wait_2;
            else
               -- Send the operation with the flush bit set.
               -- The operation has the reader code in the top 4 bits, and
               -- the selected stacker in the bottom 4 bits.
               READER_CH1_REQUEST_DATA <= '1' & "0001" &
                  std_logic_vector(to_unsigned(READER_CH1_STACKER_SELECTED, 4));
               unitCh1ReaderRequestState <= unit_reader_request_send_operation;
            end if;

         when unit_reader_request_send_operation =>            
            -- Send the operation number.  Wait for feed start to go away - though
            -- it ought to have already gone away by now.
            if READER_CH1_FEED_START = '0' then
               READER_CH1_REQUEST_DATA <= "000000000";  -- Clear the flush flag
               unitCh1ReaderRequestState <= unit_reader_request_done;
            else
               -- Should never really get here.
               unitCh1ReaderRequestState <= unit_reader_request_send_operation;
            end if;

         when unit_reader_request_done =>
            unitCh1ReaderRequestState <= unit_reader_request_idle;
         
         end case;
      end if;

   end process; -- unitCh1ReaderRequestProcess

-- Process to handle CPU requests to fill the Punch buffer

unitCh1PunchTransferProcess: process (
   FPGA_CLK,
   unitCh1PunchTransferState,
   UNIT_SELECT_UNIT_4,
   PUNCH_CH1_BUFFER_SENDING,
   MC_READY_TO_BUFFER,
   UNIT_CH1_STACKER_SELECTED,
   PUNCH_CH1_BUFFER,
   unitPunchDelayCounter,
   unitPunchStrobeCounter,   
   PUNCH_CH1_BUFFER_FILL_POSITION,
   MC_CORRECT_TRANS_TO_BUFFER
)

   begin

   if MC_COMP_RESET_TO_BUFFER = '0' then
      unitCh1PunchTransferState <= unit_punch_transfer_reset;

   elsif FPGA_CLK'event and FPGA_CLK = '1' then

      case unitCh1PunchTransferState is

         when unit_punch_transfer_reset =>
            PUNCH_CH1_BUFFER_FILL_POSITION <= 0;
            PUNCH_CH1_START_FEED <= '0';
            unitPunchDelayCounter <= 0;
            unitPunchStrobeCounter <= 0;
            unitCh1PunchTransferState <= unit_punch_transfer_idle;

         when unit_punch_transfer_idle =>
            -- Wait for a punch request from the CPU.
            if UNIT_SELECT_UNIT_4 = '1' and PUNCH_CH1_BUFFER_SENDING = '0' and
               MC_READY_TO_BUFFER = '0' then
               PUNCH_CH1_STACKER_SELECTED <= UNIT_CH1_STACKER_SELECTED;
               unitCh1PunchTransferState <= unit_punch_transfer_strobe_channel;
            else
               unitCh1PunchTransferState <= unit_punch_transfer_idle;
            end if;

         when unit_punch_transfer_strobe_channel =>
            -- Strobe the next character from the channel
            if MC_READY_TO_BUFFER = '1' then
               unitCh1PunchTransferState <= unit_punch_transfer_reset;
            elsif unitPunchStrobeCounter = CHANNEL_STROBE_LENGTH then
               unitPunchStrobeCounter <= 0;
               unitPunchDelayCounter <= 0;               
               if PUNCH_CH1_BUFFER_FILL_POSITION = PUNCH_BUFFER_LENGTH then
                  PUNCH_CH1_BUFFER_FILL_POSITION <= 0;
                  unitCh1PunchTransferState <= unit_punch_transfer_end_of_transfer;
               else
                  unitCh1PunchTransferState <= unit_punch_transfer_wait_channel;
               end if;
            else
               unitPunchStrobeCounter <= unitPunchStrobeCounter + 1;
               unitCh1PunchTransferState <= unit_punch_transfer_strobe_channel;
            end if;

         when unit_punch_transfer_wait_channel =>
            -- Give the channel time to produce the next character

            -- It seems that even if there is an early GMWM, the channel will just leave the
            -- last character before the GMWM in E2, and the buffer will fill with that until
            -- it issues MC_BUFFEER_END_OF_TRANSFER.  This logic should work OK that way, but
            -- it will also work if the channel drops assertion of MC_READY_TO_BUFFER in these
            -- circumstances

            if MC_READY_TO_BUFFER = '1' then
               unitCh1PunchTransferState <= unit_punch_transfer_reset;
            elsif unitPunchDelayCounter = CHANNEL_CYCLE_LENGTH then
               unitPunchDelayCounter <= 0;
               unitCh1PunchTransferState <= unit_punch_transfer_getchar;
            else
               unitPunchDelaycounter <= unitPunchDelayCounter + 1;
            end if;

         when unit_punch_transfer_getchar =>
            if MC_READY_TO_BUFFER = '1' then
               unitCh1PunchTransferState <= unit_punch_transfer_reset;
            else
               -- Snag the character, dropping the WM bit.
               -- I suppose one *could* check parity here, but really, no need.
               PUNCH_CH1_BUFFER(PUNCH_CH1_BUFFER_FILL_POSITION) <=
                  (not MC_CPU_TO_I_O_SYNC_BUS) and "10111111";
               PUNCH_CH1_BUFFER_FILL_POSITION <= PUNCH_CH1_BUFFER_FILL_POSITION + 1;
               unitCh1PunchTransferState <= unit_punch_transfer_strobe_channel;
            end if;

         when unit_punch_transfer_end_of_transfer =>
            if MC_CORRECT_TRANS_TO_BUFFER = '0' then
               unitCh1PunchTransferState <= unit_punch_transfer_start_feed;
            elsif MC_READY_TO_BUFFER = '1' then
               unitCh1PunchTransferState <= unit_punch_transfer_reset;
            else
               unitCh1PunchTransferState <= unit_punch_transfer_end_of_transfer;
            end if;               

         when unit_punch_transfer_start_feed =>
            PUNCH_CH1_START_FEED <= '1';
            unitCh1PunchTransferState <= unit_punch_transfer_reset;         

      end case;

   
   end if;

   end process;  -- unitCh1PunchTransferProcess

-- Process to send the punch card image to the PC Support program

unitCh1PunchFeedProcess: process (
   FPGA_CLK,
   MC_COMP_RESET_TO_BUFFER,
   PUNCH_CH1_START_FEED,
   UNIT_OUTPUT_FIFO_WRITE_ENABLE,
   UNIT_OUTPUT_FIFO_FULL,
   PUNCH_CH1_BUFFER,
   unitCh1PunchFeedRequestState
   )

   begin

   if MC_COMP_RESET_TO_BUFFER = '0' then
      PUNCH_CH1_REQUEST_DATA <= "000000000";
      unitCh1PunchFeedRequestState <= unit_punch_feed_request_reset;

   elsif FPGA_CLK'event and FPGA_CLK = '1' then
      
      case unitCh1PunchFeedRequestState is

         when unit_punch_feed_request_reset =>
            PUNCH_CH1_BUFFER_SCAN_POSITION <= 0;
            PUNCH_CH1_REQUEST_DATA <= "000000000";
            unitCh1PunchFeedRequestState <= unit_punch_feed_request_idle;

         when unit_punch_feed_request_idle =>
            -- Wait for a request for a punch feed - to send data to punch
            if PUNCH_CH1_START_FEED = '1' then
               unitCh1PunchFeedRequestState <= unit_punch_feed_request_fifo_wait_1;
            else
               unitCh1PunchFeedRequestState <= unit_punch_feed_request_idle;
            end if;

         when unit_punch_feed_request_fifo_wait_1 =>
            -- Got a request to start a feed.  Wait for the output FIFO to have room
            if UNIT_OUTPUT_FIFO_FULL = '1' then
               unitCh1PunchFeedRequestState <= unit_punch_feed_request_fifo_wait_1;
            else
               PUNCH_CH1_REQUEST_DATA <= "000000100"; -- Punch Unit.  Top bit is flush bit
               unitCh1PunchFeedRequestState <= unit_punch_feed_request_send_unit;
            end if;

         when unit_punch_feed_request_send_unit =>
            -- In this state, the unit data is written to the FIFO
            unitCh1PunchFeedRequestState <= unit_punch_feed_request_fifo_wait_2;

         when unit_punch_feed_request_fifo_wait_2 =>
            -- We have sent the unit.  Wait the output FIFO to have room for the operation
            if UNIT_OUTPUT_FIFO_FULL = '1' then
               unitCh1PunchFeedRequestState <= unit_punch_feed_request_fifo_wait_2;
            else
               PUNCH_CH1_REQUEST_DATA <= "00100" &
                  std_logic_vector(to_unsigned(PUNCH_CH1_STACKER_SELECTED, 4));
               unitCh1PunchFeedRequestState <= unit_punch_feed_request_send_operation;
            end if;

         when unit_punch_feed_request_send_operation =>
            -- In this state, the operation data is written to the FIFO
            unitCh1PunchFeedRequestState <= unit_punch_feed_request_fifo_wait_3;

         when unit_punch_feed_request_fifo_wait_3 =>
            -- We have sent the unit and operation.  Wait for the FIFO to have room for data
            if UNIT_OUTPUT_FIFO_FULL = '1' then
               unitCh1PunchFeedRequestState <= unit_punch_feed_request_fifo_wait_3;
            else
               if PUNCH_CH1_BUFFER_SCAN_POSITION = PUNCH_BUFFER_LENGTH then
                  PUNCH_CH1_REQUEST_DATA <= "100000000";  -- 0x00 byte with flush bit set at end
               else
                  -- Prepare the punch character with a 0 for the flush bit.
                  -- We also need to move the parity bit from bit 7 down to where the WM bit would be,
                  -- because we can't set the high bit inside of a message.
                  PUNCH_CH1_REQUEST_DATA <= "00" & PUNCH_CH1_BUFFER(PUNCH_CH1_BUFFER_SCAN_POSITION)(7) &
                     PUNCH_CH1_BUFFER(PUNCH_CH1_BUFFER_SCAN_POSITION)(5 downto 0);
               end if;
               unitCh1PunchFeedRequestState <= unit_punch_feed_request_send_column;
            end if;

         when unit_punch_feed_request_send_column =>
            -- In this state, we send a column, or the trailiing 0x00 with the flush bit.
            -- But now we have to check to see if we are all done,a s well.
            if PUNCH_CH1_BUFFER_SCAN_POSITION = PUNCH_BUFFER_LENGTH then
               PUNCH_CH1_DELAY_COUNTER <= 0;
               unitCh1PunchFeedRequestState <= unit_punch_feed_request_done;
            else
               PUNCH_CH1_BUFFER_SCAN_POSITION <= PUNCH_CH1_BUFFER_SCAN_POSITION + 1;
               unitCh1PunchFeedRequestState <= unit_punch_feed_request_fifo_wait_3;
            end if;

         when unit_punch_feed_request_done =>
            -- Keep the punch busy for a while, but we have to clear the flush
            -- flag because otherwise it could end up getting OR'd with the next
            -- character(s) that get transmitted (say, for the reader or printer)
            -- until this delay is finished.
            PUNCH_CH1_REQUEST_DATA <= "000000000";
            if PUNCH_CH1_DELAY_COUNTER = PUNCH_DELAY_TIME then
               unitCh1PunchFeedRequestState <= unit_punch_feed_request_reset;
            else
               PUNCH_CH1_DELAY_COUNTER <= PUNCH_CH1_DELAY_COUNTER + 1;
               unitCh1PunchFeedRequestState <= unit_punch_feed_request_done;
            end if;
               
      end case;
   end if;

   end process; -- unitCh1PunchFeedProcess

-- Combinatorial logic follows.

-- Process to handle CPU request to transfer data to the printer buffer

unitCh1PrintTransferProcess: process (
   FPGA_CLK,
   unitCh1PrinterTransferState,
   UNIT_SELECT_UNIT_2,
   PRINTER_CH1_BUFFER_SENDING,
   PRINTER_CH1_CARRIAGE_SENDING,
   MC_READY_TO_BUFFER,
   PRINTER_CH1_BUFFER,
   unitPrinterDelayCounter,
   unitPrinterStrobeCounter,   
   PRINTER_CH1_BUFFER_FILL_POSITION,
   MC_CORRECT_TRANS_TO_BUFFER
)

   begin

   if MC_COMP_RESET_TO_BUFFER = '0' then
      unitCh1PrinterTransferState <= unit_printer_transfer_reset;

   elsif FPGA_CLK'event and FPGA_CLK = '1' then

      case unitCh1PrinterTransferState is

         when unit_printer_transfer_reset =>
            PRINTER_CH1_BUFFER_FILL_POSITION <= 0;
            PRINTER_CH1_START_PRINT <= '0';
            unitPrinterDelayCounter <= 0;
            unitPrinterStrobeCounter <= 0;
            unitCh1PrinterTransferState <= unit_printer_transfer_idle;

         when unit_printer_transfer_idle =>
            -- Wait for a print request from the CPU.
            if UNIT_SELECT_UNIT_2 = '1' and PRINTER_CH1_BUFFER_SENDING = '0' and 
               PRINTER_CH1_CARRIAGE_SENDING = '0' and MC_READY_TO_BUFFER = '0' then
               -- Unlike the punch, there is no "extra" strobe here to save the stacker.
               -- So, also, we need to wait a bit for the first character to appear as well.
               -- unitCh1PrinterTransferState <= unit_printer_transfer_getchar;
               unitPrinterDelayCounter <= 0;
               unitCh1PrinterTransferState <= unit_printer_transfer_wait_channel;
            else
               unitCh1PrinterTransferState <= unit_printer_transfer_idle;
            end if;

         when unit_printer_transfer_getchar =>
            if MC_READY_TO_BUFFER = '1' then
               unitCh1PrinterTransferState <= unit_printer_transfer_reset;
            else
               PRINTER_CH1_BUFFER(PRINTER_CH1_BUFFER_FILL_POSITION) <=
                  (not MC_CPU_TO_I_O_SYNC_BUS) and "10111111";
               --if PRINTER_CH1_BUFFER_FILL_POSITION = PRINTER_BUFFER_LENGTH - 1 then
               --   PRINTER_CH1_BUFFER_FILL_POSITION <= 0;
               --   unitCh1PrinterTransferState <= unit_printer_transfer_end_of_transfer;
               -- else
               --   PRINTER_CH1_BUFFER_FILL_POSITION <= PRINTER_CH1_BUFFER_FILL_POSITION + 1;
               --    unitCh1PrinterTransferState <= unit_printer_transfer_strobe_channel;
               -- end if;
               PRINTER_CH1_BUFFER_FILL_POSITION <= PRINTER_CH1_BUFFER_FILL_POSITION + 1;
               unitCh1PrinterTransferState <= unit_printer_transfer_strobe_channel;
            end if;

         when unit_printer_transfer_strobe_channel =>
            -- Strobe the next character from the channel

            -- It seems that even if there is an early GMWM, the channel will just leave the
            -- last character before the GMWM in E2, and the buffer will fill with that until
            -- it issues MC_BUFFEER_END_OF_TRANSFER.  This logic should work OK that way, but
            -- it will also work if the channel drops assertion of MC_READY_TO_BUFFER in these
            -- circumstances

            if MC_READY_TO_BUFFER = '1' then
               unitCh1PrinterTransferState <= unit_printer_transfer_reset;
            elsif unitPrinterStrobeCounter = CHANNEL_STROBE_LENGTH then
               unitPrinterStrobeCounter <= 0;
               unitPrinterDelayCounter <= 0;
               -- unitCh1PrinterTransferState <= unit_printer_transfer_wait_channel;
               if PRINTER_CH1_BUFFER_FILL_POSITION = PRINTER_BUFFER_LENGTH then
                  PRINTER_CH1_BUFFER_FILL_POSITION <= 0;
                  unitCh1PrinterTransferState <= unit_printer_transfer_end_of_transfer;
               else
                  unitCh1PrinterTransferState <= unit_printer_transfer_wait_channel;
               end if;
            else
               unitPrinterStrobeCounter <= unitPrinterStrobeCounter + 1;
               unitCh1PrinterTransferState <= unit_printer_transfer_strobe_channel;
            end if;

         when unit_printer_transfer_wait_channel =>
            -- Give the channel time to produce the next character
            if MC_READY_TO_BUFFER = '1' then
               unitCh1PrinterTransferState <= unit_printer_transfer_reset;
            elsif unitPrinterDelayCounter = CHANNEL_CYCLE_LENGTH then
               unitPrinterDelayCounter <= 0;
               unitCh1PrinterTransferState <= unit_printer_transfer_getchar;
            else
               unitPrinterDelaycounter <= unitPrinterDelayCounter + 1;
            end if;


         when unit_printer_transfer_end_of_transfer =>
            if MC_CORRECT_TRANS_TO_BUFFER = '0' then
               unitCh1PrinterTransferState <= unit_printer_transfer_start_print;
            elsif MC_READY_TO_BUFFER = '1' then
               unitCh1PrinterTransferState <= unit_printer_transfer_reset;
            else
               unitCh1PrinterTransferState <= unit_printer_transfer_end_of_transfer;
            end if;               

         when unit_printer_transfer_start_print =>
            PRINTER_CH1_START_PRINT <= '1';
            unitCh1PrinterTransferState <= unit_printer_transfer_reset;         

      end case;

   end if;

   end process;  -- unitCh1rinterTransferProcess

-- Process to handle a form feed instruction from CPU

unitCh1PrinterCarriageControlProcess: process (
   FPGA_CLK,
   unitCh1PrinterCarriageState,
   UNIT_SELECT_UNIT_2,
   PRINTER_CH1_BUFFER_SENDING,
   PRINTER_CH1_BUFFER_FILLING,
   PRINTER_CH1_CARRIAGE_SENDING,
   PRINTER_CH1_CARRIAGE_CHARACTER,
   MC_FORMS_STACKER_GO
   )

   begin

   if MC_COMP_RESET_TO_BUFFER = '0' then
      unitCh1PrinterCarriageState <= unit_printer_carriage_reset;

   elsif FPGA_CLK'event and FPGA_CLK = '1' then

      case unitCh1PrinterCarriageState is

         when unit_printer_carriage_reset =>
            PRINTER_CH1_START_CARRIAGE <= '0';
            unitCh1PrinterCarriageState <= unit_printer_carriage_idle;

         when unit_printer_carriage_idle =>
            -- Wait for carriage control instruction from CPU
            if UNIT_SELECT_UNIT_2 = '1' and PRINTER_CH1_BUFFER_SENDING = '0' and
               PRINTER_CH1_CARRIAGE_SENDING = '0' and MC_FORMS_STACKER_GO = '0' then
               PRINTER_CH1_CARRIAGE_CHARACTER <= (not MC_CPU_TO_I_O_SYNC_BUS) and "00111111";  -- Strip down to 6 bits
               PRINTER_CH1_START_CARRIAGE <= '1';
               unitCh1PrinterCarriageState <= unit_printer_carriage_forms_go;
            else
               unitCh1PrinterCarriageState <= unit_printer_carriage_idle;
            end if;

         when unit_printer_carriage_forms_go =>
            PRINTER_CH1_START_CARRIAGE <= '0';
            if MC_FORMS_STACKER_GO = '1' then
               unitCh1PrinterCarriageState <= unit_printer_carriage_reset;
            else
               unitCh1PrinterCarriageState <= unit_printer_carriage_forms_go;
            end if;

      end case;
   end if;

   end process; -- unitCh1PrinterCarriageControlProcess

-- Process to handle creating and sending message for a print line or carriage control
-- operation to the PC Support program.

unitCh1PrintRequestProcess: process (
   FPGA_CLK,
   MC_COMP_RESET_TO_BUFFER,
   PRINTER_CH1_START_PRINT,
   PRINTER_CH1_START_CARRIAGE,
   PRINTER_CH1_CARRIAGE_OPERATION,
   UNIT_OUTPUT_FIFO_WRITE_ENABLE,
   UNIT_OUTPUT_FIFO_FULL,
   PRINTER_CH1_BUFFER,
   PRINTER_CH1_CARRIAGE_CHARACTER,
   unitCh1PrinterPrintRequestState
   )

   begin

   if MC_COMP_RESET_TO_BUFFER = '0' then
      PRINTER_CH1_REQUEST_DATA <= "000000000";
      unitCh1PrinterPrintRequestState <= unit_printer_print_request_reset;

   elsif FPGA_CLK'event and FPGA_CLK = '1' then
      
      case unitCh1PrinterPrintRequestState is

         when unit_printer_print_request_reset =>
            PRINTER_CH1_BUFFER_SCAN_POSITION <= 0;
            PRINTER_CH1_CARRIAGE_OPERATION <= '0';
            PRINTER_CH1_REQUEST_DATA <= "000000000";
            unitCh1PrinterPrintRequestState <= unit_printer_print_request_idle;

         when unit_printer_print_request_idle =>
            -- Wait for a request for a print line or carriage control operation
            if PRINTER_CH1_START_PRINT = '1' or PRINTER_CH1_START_CARRIAGE = '1' then
               PRINTER_CH1_CARRIAGE_OPERATION <= PRINTER_CH1_START_CARRIAGE;
               unitCh1PrinterPrintRequestState <= unit_printer_print_request_fifo_wait_1;
            else
               unitCh1PrinterPrintRequestState <= unit_printer_print_request_idle;
            end if;

         when unit_printer_print_request_fifo_wait_1 =>
            -- Got a request to start a print operation.  Wait for the output FIFO to have room
            if UNIT_OUTPUT_FIFO_FULL = '1' then
               unitCh1PrinterPrintRequestState <= unit_printer_print_request_fifo_wait_1;
            else
               PRINTER_CH1_REQUEST_DATA <= "000000010"; -- Printer Unit.  Top bit is flush bit
               unitCh1PrinterPrintRequestState <= unit_printer_print_request_send_unit;
            end if;

         when unit_printer_print_request_send_unit =>
            -- In this state, the unit data is written to the FIFO
            unitCh1PrinterPrintRequestState <= unit_printer_print_request_fifo_wait_2;

         when unit_printer_print_request_fifo_wait_2 =>
            -- We have sent the unit.  Wait the output FIFO to have room for the operation
            if UNIT_OUTPUT_FIFO_FULL = '1' then
               unitCh1PrinterPrintRequestState <= unit_printer_print_request_fifo_wait_2;
            else
               if PRINTER_CH1_CARRIAGE_OPERATION = '1' then
                  PRINTER_CH1_REQUEST_DATA <= "000101111";   -- 0x2f - carriage operation
               else
                  PRINTER_CH1_REQUEST_DATA <= "000100000";   -- 0x20 - print line operation
               end if;
               unitCh1PrinterPrintRequestState <= unit_printer_print_request_send_operation;
            end if;

         when unit_printer_print_request_send_operation =>
            -- In this state, the operation data is written to the FIFO
            unitCh1PrinterPrintRequestState <= unit_printer_print_request_fifo_wait_3;

         when unit_printer_print_request_fifo_wait_3 =>
            -- We have sent the unit and operation.  Wait for the FIFO to have room for data
            if UNIT_OUTPUT_FIFO_FULL = '1' then
               unitCh1PrinterPrintRequestState <= unit_printer_print_request_fifo_wait_3;
            else
               if PRINTER_CH1_CARRIAGE_OPERATION = '1' then
                  PRINTER_CH1_REQUEST_DATA <= "0" & PRINTER_CH1_CARRIAGE_CHARACTER;
               elsif PRINTER_CH1_BUFFER_SCAN_POSITION = PRINTER_BUFFER_LENGTH then
                     PRINTER_CH1_REQUEST_DATA <= "100000000";  -- 0x00 byte with flush bit set at end
               else
                  -- Prepare the print character with a 0 for the flush bit.
                  -- We also need to move the parity bit from bit 7 down to where the WM bit would be, 
                  -- because we can't set the high bit inside of a message.
                  PRINTER_CH1_REQUEST_DATA <= "00" & PRINTER_CH1_BUFFER(PRINTER_CH1_BUFFER_SCAN_POSITION)(7) &
                  PRINTER_CH1_BUFFER(PRINTER_CH1_BUFFER_SCAN_POSITION)(5 downto 0);
               end if;
               unitCh1PrinterPrintRequestState <= unit_printer_print_request_send_column;
            end if;

         when unit_printer_print_request_send_column =>
            -- In this state, we send a column, or the trailiing 0x00 with the flush bit or
            -- the carriage control character.
            -- But now we have to check to see if we are all done, as well.
            if PRINTER_CH1_CARRIAGE_OPERATION = '1' then
               -- We want to send the 0x00 after a carriage operation, so fake it out so we can
               -- use the normal print operation termination by removing the carriage operation flag
               -- and setting the buffer scan position to the printer buffer length.
               PRINTER_CH1_CARRIAGE_OPERATION <= '0';
               PRINTER_CH1_BUFFER_SCAN_POSITION <= PRINTER_BUFFER_LENGTH;  -- Fakey.
               unitCh1PrinterPrintRequestState <= unit_printer_print_request_fifo_wait_3;
            elsif PRINTER_CH1_BUFFER_SCAN_POSITION = PRINTER_BUFFER_LENGTH then
               PRINTER_CH1_REQUEST_DATA <= "000000000";  -- Clear the flush flag
               unitCh1PrinterPrintRequestState <= unit_printer_print_request_done;
            else
               PRINTER_CH1_BUFFER_SCAN_POSITION <= PRINTER_CH1_BUFFER_SCAN_POSITION + 1;
               unitCh1PrinterPrintRequestState <= unit_printer_print_request_fifo_wait_3;
            end if;

         when unit_printer_print_request_done =>
               unitCh1PrinterPrintRequestState <= unit_printer_print_request_reset;
               
      end case;
   end if;

   end process; -- unitCh1PrintRequestProcess



UDP_RESET <= not MC_COMP_RESET_TO_BUFFER;

-- Wake up trigger for the reader data process and to keep the trigger process
-- sleeping until the data from the PC is read

unitTriggerCh1ReaderData <= '1' when
   unitTriggerState = unit_trigger_wait and 
      UNIT_SUPPORT_UNIT = READER_CH1_DEVICE_NUMBER and
      UNIT_SUPPORT_OPERATION = UNIT_RECEIVE_DATA_OPERATION and
      unitCh1ReaderState /= unit_reader_done
   else '0';

-- Conditions under which we want to read from the incoming data from the PC
-- we should NEVER have MORE THAN 1 of these at "1" at any time.


UNIT_INPUT_FIFO_READ_ENABLE <= (FIFO_READ_ENABLE_UNIT_TRIGGER OR FIFO_READ_ENABLE_READER_DATA);

UNIT_OUTPUT_FIFO_READ_ENABLE <= '1' when unitUartOutputState = unit_uart_output_getchar
   and UNIT_OUTPUT_FIFO_READ_DATA_VALID = '0'
   else '0';

-- Inidicate when the buffers are busy

READER_CH1_BUFFER_BUSY <= READER_CH1_BUFFER_FILLING or READER_CH1_BUFFER_TRANSFERRING;

PUNCH_CH1_BUFFER_FILLING <= '1' when
   unitCh1PunchTransferState /= unit_punch_transfer_idle
   else '0';

PUNCH_CH1_BUFFER_SENDING <= '1' when
   unitCh1PunchFeedRequestState /= unit_punch_feed_request_idle
   else '0';

PUNCH_CH1_BUFFER_BUSY <= PUNCH_CH1_BUFFER_FILLING or PUNCH_CH1_BUFFER_SENDING;

PRINTER_CH1_BUFFER_FILLING <= '1' when
   unitCh1PrinterTransferState /= unit_printer_transfer_idle
   else '0';

PRINTER_CH1_BUFFER_SENDING <= '1' when
   unitCh1PrinterPrintRequestState /= unit_printer_print_request_idle
else '0';

PRINTER_CH1_CARRIAGE_SENDING <= PRINTER_CH1_BUFFER_SENDING;

PRINTER_CH1_BUFFER_BUSY <= PRINTER_CH1_BUFFER_FILLING or PRINTER_CH1_BUFFER_SENDING;

-- 1414 ILD signals and signals related to that.

UNIT_SELECT_UNIT_1 <= (not MC_UNIT_1_SELECT_TO_I_O) AND (not MC_INPUT_MODE_TO_BUFFER);
UNIT_SELECT_UNIT_4 <= (not MC_UNIT_4_SELECT_TO_I_O) and 
   ((not MC_OUTPUT_MODE_TO_BUFFER) or (not MC_READY_TO_BUFFER)) ;
UNIT_SELECT_UNIT_2 <= (not MC_UNIT_2_SELECT_TO_I_O) and 
   ((not MC_OUTPUT_MODE_TO_BUFFER) or (not MC_READY_TO_BUFFER)) ;


UNIT_CH1_STACKER_SELECTED <=
   0 when not MC_CPU_TO_I_O_SYNC_BUS = "11001010" else
   0 when not MC_CPU_TO_I_O_SYNC_BUS = "11000000" else
   1 when not MC_CPU_TO_I_O_SYNC_BUS = "01000001" else
   2 when not MC_CPU_TO_I_O_SYNC_BUS = "01000010" else
   4 when not MC_CPU_TO_I_O_SYNC_BUS = "01000100" else
   8 when not MC_CPU_TO_I_O_SYNC_BUS = "01001000" else
   9 when not MC_CPU_TO_I_O_SYNC_BUS = "11001001" else
   0;

UNIT_OUTPUT_FIFO_WRITE_ENABLE <= '1' when  -- Eventually will include printer stuff
   unitCh1ReaderRequestState = unit_reader_request_send_unit or
   unitCh1ReaderRequestState = unit_reader_request_send_operation or
   unitCh1PunchFeedRequestState = unit_punch_feed_request_send_unit or
   unitCh1PunchFeedRequestState = unit_punch_feed_request_send_operation or
   unitCh1PunchFeedRequestState = unit_punch_feed_request_send_column OR
   unitCh1PrinterPrintRequestState = unit_printer_print_request_send_unit or
   unitCh1PrinterPrintRequestState = unit_printer_print_request_send_operation or
   unitCh1PrinterPrintRequestState = unit_printer_print_request_send_column
   else '0';

UNIT_OUTPUT_FIFO_WRITE_DATA <= 
   READER_CH1_REQUEST_DATA or PUNCH_CH1_REQUEST_DATA or PRINTER_CH1_REQUEST_DATA;
   -- Make sure it is "00000000" when not in use.

-- Reader No transfer latch is set by a process that empties the reader buffer,
-- an cleared on CPU reset or the reader clutch is engaged.

-- 1414 to 1411 interface signals (MC => ACTIVE LOW)

MC_BUFFER_READY <= '0'
   when 
      (UNIT_SELECT_UNIT_1 = '1' and READER_CH1_EOF_NOT_READY = '0' and
         (READER_CH1_END_OF_FILE = '1' or READER_CH1_STATUS(UNIT_READY_BIT) = '1')) or
      (UNIT_SELECT_UNIT_4 = '1' and PUNCH_CH1_STATUS(UNIT_READY_BIT) = '1') or
      (UNIT_SELECT_UNIT_2 = '1' and PRINTER_CH1_STATUS(UNIT_READY_BIT) = '1')
   else '1';

MC_BUFFER_BUSY <= '0' 
   -- TODO --- Need to add 1401 mode read here
   when (UNIT_SELECT_UNIT_1 = '1' and (READER_CH1_FEEDING = '1' or READER_CH1_BUFFER_FILLING = '1') and
        READER_CH1_END_OF_FILE = '0') or
      (UNIT_SELECT_UNIT_4 = '1' and (PUNCH_CH1_BUFFER_SENDING = '1' or PUNCH_CH1_BUFFER_FILLING = '1')) or
      (UNIT_SELECT_UNIT_2 = '1' and (PRINTER_CH1_BUFFER_SENDING = '1' or PRINTER_CH1_BUFFER_FILLING = '1')) or
      (UNIT_SELECT_UNIT_2 = '1' and (PRINTER_CH1_CARRIAGE_SENDING = '1'))
   else '1';

MC_BUFFER_CONDITION <= '0' 
   when UNIT_SELECT_UNIT_1 = '1' and READER_CH1_END_OF_FILE = '1'  -- More devices later (punch not applicable)
   else '1';

MC_BUFFER_NO_TRANS_COND <= '0'
   when UNIT_SELECT_UNIT_1 = '1' and READER_CH1_NO_TRANSFER = '1'  -- More devices later
   else  '1';
  
MC_BUFFER_STROBE <= '0'
   when unitCh1ReaderTransferState = unit_reader_transfer_strobe_channel or
      unitCh1PunchTransferState = unit_punch_transfer_strobe_channel or
      unitCh1PrinterTransferState = unit_printer_transfer_strobe_channel
   else '1';

MC_BUFFER_END_OF_TRANSFER <= '0'
   when  unitCh1ReaderTransferState = unit_reader_transfer_end_of_transfer or
         unitCh1PunchTransferState = unit_punch_transfer_end_of_transfer or
         unitCh1PrinterTransferState = unit_printer_transfer_end_of_transfer

   else '1';

MC_BUFFER_ERROR <= '0' when
   (UNIT_SELECT_UNIT_1 = '1' and READER_CH1_VALIDITY_CHECK = '1')
   else '1';

MC_PRINTER_CHANNEL_9 <= not PRINTER_CH1_STATUS(PRINTER_CHANNEL_9_BIT);
MC_PRINTER_CHANNEL_12 <= not PRINTER_CH1_STATUS(PRINTER_CHANNEL_12_BIT);
-- MC_FORMS_BUSY_STATUS_TO_CPU <= '1';  See printer latch process above.

--  TODO: The following may need fixing?
-- (For Priority Feature) Reader is reloading the buffer
-- MC_READER_BUSY <= '0'
--   when (READER_CH1_FEEDING = '1' or READER_CH1_BUFFER_FILLING = '1')
--    else  '1';

MC_PUNCH_BUSY <= '1';
MC_READER_BUSY <= '1';
MC_1403_PRINT_BUFFER_BUSY <= '1';
MC_I_O_PRINTER_READY <= '1';
MC_FORMS_BUSY_STATUS_TO_CPU <= '1';

end Behavioral;