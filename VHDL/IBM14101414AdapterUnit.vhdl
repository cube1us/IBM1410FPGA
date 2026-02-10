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
        CHANNEL_STROBE_LENGTH: integer := 100;      -- 1 us strobe
        CHANNEL_CYCLE_LENGTH:  integer := 1120;     -- 11.2 us per character
        IOSYNC_OUTPUT_FIFO_SIZE: integer := 140     -- Enough for printer, too
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

constant UNIT_READY_BIT: integer       := 0;
constant UNIT_BUSY_BIT:  integer       := 1;
constant UNIT_DATA_CHECK_BIT: integer  := 2;
constant UNIT_WLR_BIT: integer         := 4;
constant READER_LAST_CARD_BIT: integer := 5; -- Only set if reader EOF button also pressed.

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

-- There are three different processes that might set INPUT_FIFO_READ_ENABLE, so each needs
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

-- States for process to handle unit record actions initated from PC Support program

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

type unitReaderTransferState_type is (
   unit_reader_transfer_reset,
   unit_reader_transfer_idle,
   unit_reader_transfer_start,
   unit_reader_transfer_wait_channel,    -- To make sure we dont' strobe the channel too fast.
   unit_reader_transfer_strobe_channel,
   unit_reader_transfer_end_of_transfer,
   unit_reader_transfer_done
);

type unitReaderRequestState_type is (
   unit_reader_request_reset,
   unit_reader_request_idle,
   unit_reader_request_fifo_wait_1,
   unit_reader_request_send_unit,
   unit_reader_request_fifo_wait_2,
   unit_reader_request_send_operation,
   unit_reader_request_done
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
signal READER_CH1_EOF_DELAY:              std_logic := '0';
signal READER_CH1_FED:                    std_logic := '0';
signal READER_CH1_FEED_START:             std_logic := '0';
signal READER_CH1_MULTI_READ:             std_logic := '0';
signal READER_CH1_MULTI_READ_FEED:        std_logic := '0';
signal READER_CH1_ERROR:                  std_logic := '0';
signal READER_CH1_STACKER_SELECTED:       integer range 0 to 9 := 0;

signal READER_CH1_BUFFER_BUSY:            std_logic := '0'; -- True when receiving a card image
signal READER_CH1_BUFFER_EMPTY:           std_logic := '1'; -- Indicates we do not have a card image stored (process)
signal READER_CH1_BUFFER_FILLING:         std_logic := '0'; -- True when reader process filling the buffer
signal READER_CH1_BUFFER_TRANSFERRING:    std_logic := '0'; -- True when we are transffering data to CPU

signal READER_CH1_REQUEST_DATA:           std_logic_vector(8 downto 0) := "000000000";

-- Signals deduced from the ILD and signals related to that.

signal UNIT_SELECT_UNIT_1:                std_logic := '0'; -- Indicates unit 1 is selected with channel in input mode.
signal UNIT_CH1_STACKER_SELECTED:         integer range 0 to 9 := 0;  -- Selected stacker

signal unitTriggerState: unitTriggerState_type := unit_trigger_reset;
signal unitCh1ReaderState: unitReaderState_type := unit_reader_reset;
signal unitCH1ReaderTransferState: unitReaderTransferState_type := unit_reader_transfer_reset;
-- signal unitUARTOutputState: unitUARTOutputState_type := unit_uart_output_idle;
signal unitCh1ReaderRequestState: unitReaderrequestState_type := unit_reader_request_reset;

signal UNIT_SUPPORT_UNIT:        integer := 0; -- Unit in incoming PC message
signal UNIT_SUPPORT_OPERATION:   integer := 0; -- Operation in incoming PC message

-- Signals used by various unit processes to tell the trigger process they are done.
-- In this 1414, vs. the tape, we are handling all of the status reports in the top
-- level trigger process (or so I hope.)

signal unitTriggerCH1ReaderData: std_logic := '0'; -- '1' while we are reading card image from PC
signal unitReaderDelayCounter:   integer range 0 to CHANNEL_CYCLE_LENGTH := 0;
signal unitReaderStrobeCounter:   integer range 0 to CHANNEL_STROBE_LENGTH := 0;

-- We need a buffer for the reader, just like a real IBM 1414.
-- (I don't think we will need that for output devices - we can just fill the packet)

-- type reader_buffer_type is array (79 downto 0) of std_logic_vector(7 downto 0);
-- signal reader_buffer:  reader_buffer_type := (others => X"00");

-- Vivado debugging constraints so that we can find signals in the netlist to debug

attribute dont_touch: string;
attribute dont_touch of READER_CH1_STATUS:   signal is "true";
attribute dont_touch of READER_CH2_STATUS:   signal is "true";
attribute dont_touch of PUNCH_CH1_STATUS:    signal is "true";
attribute dont_touch of PUNCH_CH2_STATUS:    signal is "true";
attribute dont_touch of PRINTER_CH1_STATUS:  signal is "true";
attribute dont_touch of PRINTER_CH2_STATUS:  signal is "true";

-- The unitTriggerProcess wakes up when it gets input from the PC Console Support Program.
-- It uses the first characcter to decide which device it is for, and stores the second
-- character the kind of operation:  a status update, or data (e.g., from the reader),
-- and if it is a status report, that goes in the third character.

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
                  -- Latch that for latter use.
                  UNIT_SUPPORT_UNIT <= to_integer(unsigned(UNIT_INPUT_FIFO_READ_DATA));
                  unitTriggerState <= unit_trigger_idle;  -- Wait for next char (operation)

               elsif UNIT_SUPPORT_OPERATION = 0 then
                  -- The second byte we will see is the operation.
                  -- Latch that, too, for later use, and stay here.
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
                  if UNIT_SUPPORT_OPERATION <= UNIT_RECEIVE_STATUS_OPERATION then
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

unitCh1ReaderNoTransferLatchProcess: process (
   FPGA_CLK,
   MC_COMP_RESET_TO_BUFFER,
   MC_RESET_SELECT_BUFFER_LATCHES,
   READER_CH1_FED,
   UNIT_SELECT_UNIT_1,
   READER_CH1_BUFFER_EMPTY,
   READER_CH1_EOF_DELAY,
   READER_CH1_STATUS,
   READER_CH1_FEED_START,
   READER_CH1_MULTI_READ_FEED,
   unitCh1ReaderState)

   begin

      if MC_COMP_RESET_TO_BUFFER = '0' then
         READER_CH1_EOF_DELAY <= '0';
         READER_CH1_END_OF_FILE <= '0';
         -- READER_CH1_NO_TRANSFER_LATCH <= '0';
         READER_CH1_MULTI_READ <= '0';
         READER_CH1_MULTI_READ_FEED <= '0';
      elsif MC_RESET_SELECT_BUFFER_LATCHES = '0' and UNIT_SELECT_UNIT_1 = '1' then
         -- READER_CH1_NO_TRANSFER_LATCH <= '0';
         READER_CH1_END_OF_FILE <= '0';
      elsif READER_CH1_STATUS(UNIT_READY_BIT) = '0' then
         READER_CH1_EOF_DELAY <= '0';
      elsif FPGA_CLK'event and FPGA_CLK = '1' then
         -- TODO: Maybe this part can be moved into the combinatorial section at the end,
         -- dropping READER_CH1_NO_TRANSFER in the process
         if MC_STACK_SELECT_TO_BUFFER = '1' and READER_CH1_MULTI_READ = '1' and UNIT_SELECT_UNIT_1 = '1' then
            READER_CH1_NO_TRANSFER <= '1';
         elsif MC_STACK_SELECT_TO_BUFFER = '0' and UNIT_SELECT_UNIT_1 = '1' and READER_CH1_MULTI_READ_FEED = '1' then
            READER_CH1_NO_TRANSFER <= '1';
         else
            READER_CH1_NO_TRANSFER <= '0';
         end if;

         if READER_CH1_STATUS(READER_LAST_CARD_BIT) = '1' and 
            unitCh1ReaderState = unit_reader_waitForBuffer then
               READER_CH1_EOF_DELAY <= '1';
         end if;

         if READER_CH1_EOF_DELAY = '1' then -- or TODO 1401 READ LATCH
            READER_CH1_END_OF_FILE <= '1';
         end if;

         if unitCh1ReaderState = unit_reader_waitForBuffer then
            READER_CH1_MULTI_READ_FEED <= '0';
         elsif READER_CH1_FEED_START = '1' then
            READER_CH1_MULTI_READ_FEED <= '1';
         end if;

         if MC_READY_TO_BUFFER = '1' and  -- MC_READY_TO_BUFFER is known as READY2 as well
            READER_CH1_MULTI_READ_FEED = '1' then
            READER_CH1_MULTI_READ <= '0';
         elsif MC_CORRECT_TRANS_TO_BUFFER = '0' and
            (MC_RESET_SELECT_BUFFER_LATCHES = '0' or MC_FORMS_STACKER_GO = '0') and
            UNIT_SELECT_UNIT_1 = '1' then
            READER_CH1_MULTI_READ <= '1';
         end if;
         
      end if;
   end process;

   -- Process to set whether or not the reader buffer is empty.  To work, has to monitor the
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
         READER_CH1_BUFFER_READY <= '0';
         if UNIT_INPUT_FIFO_EMPTY = '0' then
            FIFO_READ_ENABLE_READER_DATA <= '1';
            unitCh1ReaderState <= unit_reader_getchar;            
         else
            unitCh1readerState <= unit_reader_waitForChar;
         end if;

      when unit_reader_getChar =>
         -- Have a character from the PC.
         if UNIT_INPUT_FIFO_READ_DATA_VALID = '1' then
            FIFO_READ_ENABLE_READER_DATA <= '0';
            if UNIT_INPUT_FIFO_READ_DATA = "00000000" then
               unitCh1ReaderState <= unit_reader_done;
            elsif READER_CH1_BUFFER_INPUT_POSITION < READER_BUFFER_LENGTH then
               READER_CH1_BUFFER(READER_CH1_BUFFER_INPUT_POSITION) <= UNIT_INPUT_FIFO_READ_DATA;
               READER_CH1_BUFFER_INPUT_POSITION <= READER_CH1_BUFFER_INPUT_POSITION + 1;
               unitCh1ReaderState <= unit_reader_waitForChar;
            end if;
         else
            -- This state is reached with FIFO_READ_ENABLE already a '1'
            -- If we are still in this state, then we already told the FIFO we are
            -- ready, and as long as the FIFO isn't empty, we should NOT asswert
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

unitReaderCh1TransferProcess: process(
   FPGA_CLK,
   UNIT_SELECT_UNIT_1,
   READER_CH1_BUFFER_FILLING
   )

   begin

   if MC_COMP_RESET_TO_BUFFER = '0' then
      unitCh1ReaderTransferState <= unit_reader_transfer_reset;
   
   elsif FPGA_CLK'event and FPGA_CLK = '1' then      

      case unitCh1ReaderTransferState is
      
      when unit_reader_transfer_reset =>
         READER_CH1_BUFFER_TRANSFERRING <= '0';
         READER_CH1_BUFFER_SCAN_POSITION <= 0;
         READER_CH1_FED <= '0';
         unitReaderDelayCounter <= 0;
         unitReaderStrobeCounter <= 0;
         unitCh1ReaderTransferState <= unit_reader_transfer_idle;

      when unit_reader_transfer_idle =>
         -- Have we received either a read request or stack request, and we are ready?
         if UNIT_SELECT_UNIT_1 = '1' and MC_READY_TO_BUFFER = '0' and READER_CH1_BUFFER_FILLING = '0' and
            (MC_INPUT_MODE_TO_BUFFER = '0' or 
            (MC_STACK_SELECT_TO_BUFFER = '0' and MC_FORMS_STACKER_GO = '0')) then

            READER_CH1_STACKER_SELECTED <= UNIT_CH1_STACKER_SELECTED;

            -- The read feed starts in another process in parallel when READER_CH1_FEED_START is set
            
            if MC_FORMS_STACKER_GO = '1' then  -- True if this is a read instruction M%1saaaaaR
               if UNIT_CH1_STACKER_SELECTED = 9 then
                  READER_CH1_FEED_START <= '0';
                  READER_CH1_FED <= '0';
               else
                  READER_CH1_FEED_START <= '1';
                  READER_CH1_FED <= '1';
               end if;               
               unitCh1ReaderTransferState <= unit_reader_transfer_start;
            else -- This is a stacker instruction Ks
               READER_CH1_FED <= '1';
               READER_CH1_FEED_START <= '1';
               unitCh1ReaderTransferState <= unit_reader_transfer_done;
            end if;
         else
            unitCh1ReaderTransferState <= unit_reader_transfer_idle;
         end if;

      when unit_reader_transfer_start =>
         READER_CH1_BUFFER_SCAN_POSITION <= 0;
         unitReaderDelayCounter <= 0;
         unitReaderStrobeCounter <= 0;
         READER_CH1_FEED_START <= '0'; -- Feed message to PC should have already started.
         unitCh1ReaderTransferState <= unit_reader_transfer_wait_channel;

      when unit_reader_transfer_wait_channel =>
         if unitReaderDelayCounter = CHANNEL_CYCLE_LENGTH - 1 then
            -- Put the data on the bus one tick early => .
            MC_I_O_SYNC_TO_CPU_BUS <= not READER_CH1_BUFFER(READER_CH1_BUFFER_SCAN_POSITION);
         end if;
         if unitReaderDelayCounter = CHANNEL_CYCLE_LENGTH then
            unitReaderDelayCounter <= 0;
            unitReaderStrobeCounter <= 0;
            READER_CH1_BUFFER_SCAN_POSITION <= READER_CH1_BUFFER_SCAN_POSITION + 1;
            unitCh1ReaderTransferState <= unit_reader_transfer_strobe_channel;
         else
            unitReaderDelayCounter <= unitReaderDelayCounter + 1;
            unitCh1ReaderTransferState <= unit_reader_transfer_wait_channel;
         end if;

      when unit_reader_transfer_strobe_channel =>
         if unitReaderStrobeCounter = CHANNEL_STROBE_LENGTH then
            if READER_CH1_BUFFER_SCAN_POSITION < READER_BUFFER_LENGTH then
               unitCh1ReaderTransferState <= unit_reader_transfer_wait_channel;
            else
               unitCh1ReaderTransferState <= unit_reader_transfer_end_of_transfer;
            end if;
         else
            unitReaderStrobeCounter <= unitReaderStrobeCounter + 1;
            if unitReaderDelayCounter /= CHANNEL_CYCLE_LENGTH - 1 then
               -- this counts towards channel cycle delay
               unitReaderDelayCounter <= unitReaderDelayCounter + 1; 
            end if;
            unitCh1ReaderTransferState <= unit_reader_transfer_strobe_channel;
         end if;

      when unit_reader_transfer_end_of_transfer =>
         if MC_CORRECT_TRANS_TO_BUFFER = '0' then
            unitCh1ReaderTransferState <= unit_reader_transfer_done;
         else
            unitCh1ReaderTransferState <= unit_reader_transfer_end_of_transfer;
         end if;

      when unit_reader_transfer_done =>
         READER_CH1_FEED_START <= '0';      -- Feed process should have already started
         if UNIT_SELECT_UNIT_1 = '1' then   -- Wait for CPU to deselect us
            unitCh1ReaderTransferState <= unit_reader_transfer_done;
         else
            READER_CH1_FEED_START <= '0';   -- Feed process should have already started
            READER_CH1_BUFFER_TRANSFERRING <= '0';
            READER_CH1_BUFFER_SCAN_POSITION <= 0;         
            unitReaderDelayCounter <= 0;
            unitReaderStrobeCounter <= 0;
            READER_CH1_FED <= '0';
            unitCh1ReaderTransferState <= unit_reader_transfer_idle;
         end if;
      end case;

   end if;
end process;

-- TODO: Process to waith for READER_CH1_FEED_START = '1', and send feed message to PC, then
   -- wait for READER_CH1_FEED_START to go back to '0'

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
            if UNIT_OUTPUT_FIFO_FULL = '1' then
               unitCh1ReaderRequestState <= unit_reader_request_fifo_wait_1;
            else
               READER_CH1_REQUEST_DATA <= "000000001";  -- Top bit is flush bit.
               unitCh1ReaderRequestState <= unit_reader_request_send_unit;
            end if;
         
         when unit_reader_request_send_unit =>
            -- At this point the unit is placed onto the FIFO based on this state
            unitCh1ReaderRequestState <= unit_reader_request_fifo_wait_2;

         when unit_reader_request_fifo_wait_2 =>
            if UNIT_OUTPUT_FIFO_FULL = '1' then
               unitCh1ReaderRequestState <= unit_reader_request_fifo_wait_2;
            else
               READER_CH1_REQUEST_DATA <= '0' & 
                  std_logic_vector(to_unsigned(READER_CH1_STACKER_SELECTED, 8));
               unitCh1ReaderRequestState <= unit_reader_request_send_operation;
            end if;

         when unit_reader_request_send_operation =>
            unitCh1ReaderRequestState <= unit_reader_request_done;

         when unit_reader_request_done =>
            unitCh1ReaderRequestState <= unit_reader_request_idle;
         
         end case;
      end if;

   end process; -- unitCh1ReaderRequestProcess


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

-- Inidicate when the buffer is busy

READER_CH1_BUFFER_BUSY <= READER_CH1_BUFFER_FILLING or READER_CH1_BUFFER_TRANSFERRING;

-- 1414 ILD signals and signals related to that.

UNIT_SELECT_UNIT_1 <= (not MC_UNIT_1_SELECT_TO_I_O) AND not (MC_INPUT_MODE_TO_BUFFER);

UNIT_CH1_STACKER_SELECTED <=
   0 when MC_CPU_TO_I_O_SYNC_BUS = "10001010" else
   1 when MC_CPU_TO_I_O_SYNC_BUS = "00000001" else
   2 when MC_CPU_TO_I_O_SYNC_BUS = "00000010" else
   4 when MC_CPU_TO_I_O_SYNC_BUS = "00000100" else
   8 when MC_CPU_TO_I_O_SYNC_BUS = "00001000" else
   9 when MC_CPU_TO_I_O_SYNC_BUS = "00001001" else
   0;

UNIT_OUTPUT_FIFO_WRITE_ENABLE <= '1' when  -- Eventuall will include punch and printer stuff
   unitCh1ReaderRequestState = unit_reader_request_send_unit or
   unitCh1ReaderRequestState = unit_reader_request_send_operation
   else '0';

UNIT_OUTPUT_FIFO_WRITE_DATA <= 
   READER_CH1_REQUEST_DATA;  -- Eventually will include punch and printer stuff


-- Reader No transfer latch is set by a process that empties the reader buffer,
-- an cleared on CPU reset or the reader clutch is engaged.

-- 1414 to 1411 interface signals (MC => ACTIVE LOW)

MC_BUFFER_READY <= '0'
   when UNIT_SELECT_UNIT_1 = '1' and
      (READER_CH1_END_OF_FILE = '1' or READER_CH1_STATUS(UNIT_READY_BIT) = '1')  -- More devices later
   else '1';

MC_BUFFER_BUSY <= '0' 
   -- TODO --- Need to add 1401 mode read here
   when UNIT_SELECT_UNIT_1 = '1' and (READER_CH1_FED = '1' or READER_CH1_BUFFER_FILLING = '1') -- More devices later
   else '1';

MC_BUFFER_CONDITION <= '0' 
   when UNIT_SELECT_UNIT_1 = '1' and READER_CH1_END_OF_FILE = '1'  -- More deivces later
   else '1';

MC_BUFFER_NO_TRANS_COND <= '0'
   when UNIT_SELECT_UNIT_1 = '1' and READER_CH1_NO_TRANSFER = '1'  -- More devices later
   else  '1';
  
MC_BUFFER_STROBE <= '0'
   when unitCh1ReaderTransferState = unit_reader_transfer_strobe_channel -- More devices later
   else '1';

--  TODO: The following may need fixing?
 -- (For Priority Feature) Reader is reloading the buffer

MC_READER_BUSY <= '0'
   when (READER_CH1_FED = '1' or READER_CH1_BUFFER_FILLING = '1')
   else  '1';

MC_BUFFER_END_OF_TRANSFER <= '0'
   when  unitCh1ReaderTransferState = unit_reader_transfer_end_of_transfer 
   else '1';

MC_BUFFER_ERROR <= '1';  -- Not sure what if anything would assert this.

-- TODO: Not uuet implemented
MC_PUNCH_BUSY <= '1';
MC_1403_PRINT_BUFFER_BUSY <= '1';
MC_PRINTER_CHANNEL_9 <= '1';
MC_PRINTER_CHANNEL_12 <= '1';
MC_I_O_PRINTER_READY <= '1';
MC_FORMS_BUSY_STATUS_TO_CPU <= '1';

end Behavioral;