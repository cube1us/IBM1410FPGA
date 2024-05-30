-- Company: The Computer Collection
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 05/07/2024 20:09
-- Design Name: IBM1410
-- Module Name: IBM1410TapeAdapterUnit - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Simulates the IBM 1410 1414 Tape Adapter Unit (TAU)
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created

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

-- Multipler is 10000 for ms, 100 for testing.

entity IBM1410TapeAdapterUnit is

   GENERIC(
      CHANNEL_STROBE_LENGTH: integer := 100;  -- 1 us strobe
      CHANNEL_CYCLE_LENGTH:  integer := 1120  -- 11.2us per 800 bpi char
   );   
     
   PORT (
       FPGA_CLK: in STD_LOGIC;
        
       -- TAU Input Signals From CPU
       
       MC_CPU_TO_TAU_BUS: in STD_LOGIC_VECTOR(7 downto 0);       
       
       MC_COMP_RESET_TO_TAPE: in STD_LOGIC;
       MC_WRITE_TAPE_CALL: in STD_LOGIC;
       MC_WRITE_TAPE_MK_CALL: in STD_LOGIC;
       MC_ERASE_CALL: in STD_LOGIC;
       MC_REWIND_UNLOAD: in STD_LOGIC;
       MC_REWIND_CALL: in STD_LOGIC;
       MC_BACKSPACE_CALL: in STD_LOGIC;
       MC_TURN_OFF_TAPE_IND: in STD_LOGIC;
       MC_RESET_TAPE_SEL_REG: in STD_LOGIC;
       MC_SET_TAPE_SEL_REG: in STD_LOGIC;
       MC_DISCONNECT_CALL: in STD_LOGIC;
       MC_READ_TAPE_CALL: in STD_LOGIC;
       MC_ODD_PARITY_TO_TAPE: in STD_LOGIC;
       
       MC_UNIT_NU_0_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_1_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_2_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_3_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_4_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_5_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_6_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_7_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_8_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_9_TO_TAU: in STD_LOGIC;       
            
       -- TAU Output Signals to CPU
       
       MC_TAU_TO_CPU_BUS: out STD_LOGIC_VECTOR(7 downto 0);

       MC_WRITE_CONDITION: out STD_LOGIC;
       MC_SELECT_AND_REWIND: out STD_LOGIC;
       MC_SELECT_AT_LOAD_POINT: out STD_LOGIC;
       MC_SEL_OR_TAPE_IND_ON: out STD_LOGIC;
       
       MC_TAPE_READ_STROBE: out STD_LOGIC;
       MC_TAPE_BUSY: out STD_LOGIC;
       MC_TAPE_ERROR: out STD_LOGIC;
       MC_TAPE_READY: out STD_LOGIC;
       MC_TAPE_WRITE_STROBE: out STD_LOGIC;
       MC_TAPE_IN_PROCESS: out STD_LOGIC;
      
       -- TAU to PC Support System
       
       IBM1410_TAU_XMT_CHAR: out STD_LOGIC_VECTOR(7 downto 0);
       IBM1410_TAU_XMT_STROBE: out STD_LOGIC;
              
       -- PC Support System to TAU 
       
       IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE: in STD_LOGIC;
       IBM1410_TAU_INPUT_FIFO_WRITE_DATA: in STD_LOGIC_VECTOR(7 downto 0)       
   );

end IBM1410TapeAdapterUnit;

architecture Behavioral of IBM1410TapeAdapterUnit is

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

constant TAPE_UNIT_READ_READY_BIT: integer := 0;
constant TAPE_UNIT_WRITE_READY_BIT: integer := 1;
constant TAPE_UNIT_LOAD_POINT_BIT:  integer := 2;
constant TAPE_UNIT_TAPE_IND_BIT:    integer := 3;
constant TAPE_UNIT_TAPE_REWIND_BIT: integer := 4;

constant TAPE_UNIT_CTL_READ_REQUEST: integer := 0;
constant TAPE_UNIT_CTL_WRITE_REQUEST: integer := 1;
constant TAPE_UNIT_CTL_BACKSPACE_REQUEST: integer := 2;
constant TAPE_UNIT_CTL_ERASE_REQUEST: integer := 3;
constant TAPE_UNIT_CTL_MARK_REQUEST: integer := 4;
constant TAPE_UNIT_CTL_UNLOAD_REQUEST: integer := 5;
constant TAPE_UNIT_CTL_REWIND_REQUEST: integer := 6;
constant TAPE_UNIT_CTL_RESET_INDICATE: integer := 7;

constant OUT_STROBE_TIME: integer := 10;      -- 100ns UART strobe time
constant TAU_INPUT_FIFO_SIZE: integer := 10;  -- 1410 will be faster than PC support for now
constant TAU_INPUT_FIFO_WIDTH: integer := 8;  -- Bits per character 

constant TAU_SUPPORT_INPUT_DATA_FLAG: integer := 6;    -- This bit set means PC sending tape data.

constant TAPE_MARK_CHAR: STD_LOGIC_VECTOR(7 downto 0) := "00001111";

signal FIFO_READ_ENABLE: STD_LOGIC := '0';
signal FIFO_READ_DATA_VALID: STD_LOGIC;
signal FIFO_READ_DATA: STD_LOGIC_VECTOR(7 downto 0);
signal FIFO_EMPTY: STD_LOGIC;
signal FIFO_EMPTY_NEXT: STD_LOGIC;
signal FIFO_FULL: STD_LOGIC;
signal FIFO_FULL_NEXT: STD_LOGIC;
signal UART_RESET: STD_LOGIC;

-- States for Process to handle tape action initiated from PC

type tauTriggerState_type is (
   tau_trigger_reset, 
   tau_trigger_idle,
   tau_trigger, 
   tau_trigger_wait);   
   
-- States to handle drive status update from PC   
   
type tauUnitStatusState_type is (
   tau_unit_status_idle,
   tau_unit_status_waitForChar,
   tau_unit_status_getChar,
   tau_unit_set_status);

-- States to handle tape read
   
type tauReadState_type is (
   tau_read_idle,
   tau_read_fifo_wait_1,
   tau_read_send_unit_to_PC,
   tau_read_fifo_wait_2,
   tau_read_send_action_to_PC,
   tau_read_trigger_wait,
   tau_read_waitForChar,
   tau_read_getChar,
   tau_read_wait_channel,    -- To make sure we dont' strobe the channel too fast.
   tau_read_strobe_channel,
   tau_read_done);
   
-- States to handle Write and Write Tape Mark

type tauWriteState_type is (
   tau_write_idle,
   tau_write_fifo_wait_1,
   tau_write_send_unit_to_PC,
   tau_write_fifo_wait_2,
   tau_write_send_action_to_PC,
   tau_write_fifo_wait_3,
   tau_write_wait_channel,
   tau_write_send_char_to_PC,
   tau_write_strobe_channel,
   tau_write_fifo_wait_4,
   tau_write_send_eor_to_PC,
   tau_write_done);
   
-- States for Backup, Rewind and Rewind/Unload state machine   
   
type tauBRUEState_type is (
   tau_brue_idle,
   tau_brue_called,            -- Call activated - prep unit number to send to PC
   tau_brue_twiddle,           -- Wait for 1us for benefit of CPU
   tau_brue_fifo_wait,         -- waiting for FIFO to send unit number
   tau_brue_send_unit_to_PC,   -- At this point, send unit to PC for tape operation
   tau_brue_prepare_action,    -- Space between write enables
   tau_brue_send_action_to_PC, -- At this point, send operation to PC for tape operation
   tau_brue_wait );            -- After this point TAU goes NOT busy.
               
type TAU_TAPE_UNIT_STATUS_TYPE is array(0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
signal TAU_SELECTED_TAPE_DRIVE: integer := 15;
signal TAU_TAPE_UNIT_STATUSES: TAU_TAPE_UNIT_STATUS_TYPE :=
 ("00000000", "00000000", "00000000", "00000000", "00000000", 
  "00000000", "00000000", "00000000", "00000000", "00000000", 
  "00000000", "11111110", "11111110", "11111110", "11111110",
  "11111110");

signal tauTriggerStatus: STD_LOGIC := '0';
signal tauTriggerRead:   STD_LOGIC := '0';
signal tauTriggerComplete: STD_LOGIC := '0';

signal tauBusy: STD_LOGIC := '0';
signal tauBRUEBusy: STD_LOGIC := '0';
signal tauReadBusy: STD_LOGIC := '0';
signal tauWriteBusy: STD_LOGIC := '0';

signal tauUnitControlXMTChar: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal tauWriteXMTChar: STD_LOGIC_VECTOR(7 downto 0) := "00000000"; 
signal tauReadXMTChar: STD_LOGIC_VECTOR(7 downto 0) := "00000000";  -- Used to send unit # and operationt to PC

signal tauBRUEStrobe: STD_LOGIC := '0';
signal tauWriteDataStrobe: STD_LOGIC := '0';
signal tauReadDataStrobe: STD_LOGIC := '0';  -- Used to send unit # and operation to PC

signal tauTriggerState: tauTriggerState_type := tau_trigger_reset; 
signal tauUnitStatusState: tauUnitStatusState_type := tau_unit_status_idle;
signal tauReadState: tauReadState_type := tau_read_idle;
signal tauBRUEState: tauBRUEState_type := tau_brue_idle;
signal tauWriteState: tauWriteState_type := tau_write_idle;

signal tauRewindLatch: STD_LOGIC := '0';
signal tauUnloadLatch: STD_LOGIC := '0';
signal tauBackspaceLatch: STD_LOGIC := '0';
signal tauEraseLatch: STD_LOGIC := '0';
signal tauWTMLatch : STD_LOGIC := '0';
signal tauResetTILatch: STD_LOGIC := '0';

-- Set unit status arbiter signals
signal tauBRUEUnit: integer := 0;
signal tauBRUEStatus: STD_LOGIC_VECTOR(7 downto 0);
signal tauBRUESetStatus: STD_LOGIC := '0';
signal tauSupportUnit: integer := 0;
signal tauSupportStatus: STD_LOGIC_VECTOR(7 downto 0);
signal tauSupportSetStatus: STD_LOGIC := '0';

signal tauReadFirstCharLatch: STD_LOGIC := '0';  -- For tape mark detection
signal tauReadTapeIndicateLatch:  STD_LOGIC := '0';

signal tauReadStrobeCounter: integer range 0 to CHANNEL_STROBE_LENGTH := 0;
signal tauReadDelayCounter:  integer range 0 to CHANNEL_CYCLE_LENGTH := CHANNEL_CYCLE_LENGTH;
signal tauWriteStrobeCounter: integer range 0 to CHANNEL_STROBE_LENGTH := 0;
signal tauWriteDelayCounter:  integer range 0 to CHANNEL_CYCLE_LENGTH := CHANNEL_CYCLE_LENGTH;
signal tauBRUETwiddleCounter: integer range 0 to CHANNEL_STROBE_LENGTH := 0;

signal tauUnitReadReady: STD_LOGIC := '0';
signal tauUnitWriteReady: STD_LOGIC := '0';

signal tauBRUEAction: STD_LOGIC := '0';  -- Indicates rewind, unload, erase or backspace
signal tauBRUEResetTI: STD_LOGIC := '0'; -- Indicates request to reset TI and tauResetLatch not set

begin

-- State machines / processes

-- The tauUnitProcess handles set and reset of the Unit Number latch
-- Doesn't need states.

tauUnitProcess: process(
   FPGA_CLK,
   MC_COMP_RESET_TO_TAPE,
   MC_RESET_TAPE_SEL_REG,
   MC_SET_TAPE_SEL_REG,
   TAU_SELECTED_TAPE_DRIVE)

   
   begin
   
   if MC_COMP_RESET_TO_TAPE = '0' then
      TAU_SELECTED_TAPE_DRIVE <= 10;
      
   elsif FPGA_CLK'event and FPGA_CLK = '1' then
      if MC_RESET_TAPE_SEL_REG = '0' then
         TAU_SELECTED_TAPE_DRIVE <= 10;
      elsif MC_SET_TAPE_SEL_REG = '0' then
            if    MC_UNIT_NU_0_TO_TAU = '0' then TAU_SELECTED_TAPE_DRIVE <= 0;
            elsif MC_UNIT_NU_1_TO_TAU = '0' then TAU_SELECTED_TAPE_DRIVE <= 1;
            elsif MC_UNIT_NU_2_TO_TAU = '0' then TAU_SELECTED_TAPE_DRIVE <= 2;
            elsif MC_UNIT_NU_3_TO_TAU = '0' then TAU_SELECTED_TAPE_DRIVE <= 3;
            elsif MC_UNIT_NU_4_TO_TAU = '0' then TAU_SELECTED_TAPE_DRIVE <= 4;
            elsif MC_UNIT_NU_5_TO_TAU = '0' then TAU_SELECTED_TAPE_DRIVE <= 5;
            elsif MC_UNIT_NU_6_TO_TAU = '0' then TAU_SELECTED_TAPE_DRIVE <= 6;
            elsif MC_UNIT_NU_7_TO_TAU = '0' then TAU_SELECTED_TAPE_DRIVE <= 7;
            elsif MC_UNIT_NU_8_TO_TAU = '0' then TAU_SELECTED_TAPE_DRIVE <= 8;
            elsif MC_UNIT_NU_9_TO_TAU = '0' then TAU_SELECTED_TAPE_DRIVE <= 9; 
            else TAU_SELECTED_TAPE_DRIVE <= 10;  -- No tape drive selected 
            end if;     
      end if;
   end if;
   end process;

-- The tauTriggerProcess wakes up when it gets input from the PC Console Support Program.
-- It uses the first character to decide if it is a unit status update (first character has x'40') or
-- tape read data (first charcter has no x'40').  

tauTriggerProcess: process(
   FPGA_CLK,
   MC_COMP_RESET_TO_TAPE,
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE,
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA,
   FIFO_READ_DATA_VALID,
   FIFO_EMPTY,
   FIFO_EMPTY_NEXT,
   FIFO_READ_DATA,
   tauTriggerRead,
   tauTriggerStatus,
   tauTriggerState)
   
   begin
   
   if MC_COMP_RESET_TO_TAPE = '0' then
      tauTriggerState  <= tau_trigger_reset;
         
   elsif FPGA_CLK'event and FPGA_CLK = '1' then
      case tauTriggerState is
      
      when tau_trigger_reset =>
         tauTriggerState <= tau_trigger_idle;
         
      when tau_trigger_idle =>
         if FIFO_EMPTY = '0' then
            tauTriggerState <= tau_trigger;
         else
            tauTriggerState <= tau_trigger_idle;
         end if;
         
      when tau_trigger =>
         if FIFO_READ_DATA_VALID = '1' then            
            tauTriggerState <= tau_trigger_wait;            
            -- Latch the unit number send from the support program.
            -- Received byte will set either tauTriggerRead or tauTriggerStatus.
            tauSupportUnit <= to_integer(unsigned(FIFO_READ_DATA));
         else
            tauTriggerState <= tau_trigger;
         end if;
         
      when tau_trigger_wait =>
         if tauTriggerRead = '1' or tauTriggerStatus = '1' then
            tauTriggerState <= tau_trigger_wait;
         else
            tauTriggerState <= tau_trigger_idle;
         end if;
         
      end case;
       
   end if;
   
   end process;   

-- The tauStatusProcess wakes up on tauTriggerStatus, and accepts the next byte of input
-- from the support PC as a unit status for the specified unit.

tauStatusProcess: process(
   FPGA_CLK,
   MC_COMP_RESET_TO_TAPE,
   FIFO_READ_DATA_VALID,
   FIFO_READ_DATA,
   FIFO_EMPTY,
   tauTriggerStatus,
   tauSupportUnit,
   tauUnitStatusState)
   
   begin
   
   if MC_COMP_RESET_TO_TAPE = '0' then
      tauUnitStatusState <= tau_unit_status_idle;
    
   elsif FPGA_CLK'event and FPGA_CLK = '1' then
      case tauUnitStatusState is
      
      when tau_unit_status_idle => 
         if tauTriggerStatus = '1' then
            tauUnitStatusState <= tau_unit_status_waitForChar;
         else
            tauUnitStatusState <= tau_unit_status_idle;
         end if;
         
      when tau_unit_status_waitForChar =>
         if FIFO_EMPTY = '0' then
            tauUnitStatusState <= tau_unit_status_getChar;
         else
            tauUnitStatusState <= tau_unit_status_waitForChar;
         end if;
            
      when tau_unit_status_getChar => 
         if FIFO_READ_DATA_VALID = '1' then
            -- Remember the status for this unit.  Have to do this thru a separate process/arbiter
            -- Because we may need to set an initial status in the FPGA, but it can also bet set
            -- here via received data from the PC
            -- TAU_TAPE_UNIT_STATUSES(tauSupportUnit) <= FIFO_READ_DATA;
            tauSupportStatus <= FIFO_READ_DATA;
            tauUnitStatusState <= tau_unit_set_status;
         else
            tauUnitStatusState <= tau_unit_status_getChar;
         end if; 
         
      when tau_unit_set_status =>
         tauUnitStatusState <= tau_unit_status_idle;
               
      end case;
      
   end if;
   
   end process;

-- Process to handle tape unit control commands except for Write Tape Mark
-- (So, Rewind, Unload, Erase and Backspace)
   
tauBRUEProcess: process(
   FPGA_CLK,
   MC_COMP_RESET_TO_TAPE,
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE,
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA,
   TAU_SELECTED_TAPE_DRIVE,
   MC_REWIND_UNLOAD,
   MC_REWIND_CALL,
   MC_BACKSPACE_CALL,
   MC_TURN_OFF_TAPE_IND,
   tauBusy,
   tauBRUEState)
   
   begin
   
   if MC_COMP_RESET_TO_TAPE = '0' then
      tauBRUEState <= tau_brue_idle;
      tauResetTILatch <= '0';
      
   elsif FPGA_CLK'event and FPGA_CLK = '1' then
   
      case tauBRUEState is
      
      when tau_brue_idle =>        

         tauUnitControlXMTChar <= "00000000";
         tauRewindLatch <= '0'; tauUnloadLatch <= '0'; tauBackspaceLatch <= '0'; 
         tauEraseLatch <= '0';
         
         -- Once turn off tape indicator goes away, reset our TI latch.
         if MC_TURN_OFF_TAPE_IND = '1' then
            tauResetTILatch <= '0';
         end if;          
         
         if tauBusy = '0' and tauBRUEAction = '1' then

            -- We need to latch the call type, because the channel may drop the call before
            -- we are done with it, especially if the FIFO to the PC happens to get full.
         
            if MC_REWIND_CALL = '0' then
               tauRewindLatch <= '1';
            elsif MC_REWIND_UNLOAD = '0' then
               tauUnloadLatch <= '1';
            elsif MC_BACKSPACE_CALL = '0' then
               tauBackspaceLatch <= '1';
            elsif MC_ERASE_CALL = '0' then
               tauEraseLatch <= '1';
            end if;
            
         end if;
            
         -- If we are about to take a drive action or reset its TI, 
         -- initialize status to existing status
         if (tauBusy = '0' and tauBRUEAction = '1') or tauBRUEResetTI = '1' then
            tauBRUEStatus <= TAU_TAPE_UNIT_STATUSES(TAU_SELECTED_TAPE_DRIVE);
            tauBRUEState <= tau_brue_called;            
         else
            tauBRUEState <= tau_brue_idle;
         end if;

                  
      when tau_brue_called =>

         -- Mark drive as not ready unless this is an erase call or a TI reset.
         -- The drive should later also say not ready for a while from the Support Program.
         if MC_ERASE_CALL = '1' and tauBRUEAction = '1' then
            tauBRUEStatus(TAPE_UNIT_READ_READY_BIT) <= '0';
            tauBRUEStatus(TAPE_UNIT_WRITE_READY_BIT) <= '0';
         end if;
         
         -- If a rewind or unload call, set the rewind bit as well.
         if tauRewindLatch = '1' or tauUnloadLatch = '1' then
            tauBRUEStatus(TAPE_UNIT_TAPE_REWIND_BIT) <= '1';
         end if;  
         
         -- If this is a TI reset action, then turn off the local copy for this drive
         if tauBRUEResetTI = '1' then
            -- Turn off local copy of the tape indicate for this drive ASAP
            tauBRUEStatus(TAPE_UNIT_TAPE_IND_BIT) <= '0';
            -- And set the reset TI latch so we don't keep updating the status on the PC
            tauResetTILatch <= '1';
         end if;
                
         -- Prepare unit number to send to PC
         tauUnitControlXMTChar <= std_logic_vector(to_unsigned(TAU_SELECTED_TAPE_DRIVE,
            tauUnitControlXMTChar'length));

         -- Possible issue:  we may need another state to hold "tape busy" long enough
         -- for the channel to notice.  Not sure.
               
         -- We need a separate fifo wait state here, because the FIFO could be full, and we
         -- need to release Tape Busy so the channel can continue one.

         -- Set up a delay counter to say TAU is busy for at least 1us unless this is a request
         -- to reset the tape indicate on the selected drive or an erase call
         
         if tauBRUEAction = '1' and MC_ERASE_CALL = '1' then
            tauBRUETwiddleCounter <= 0;                   
            tauBRUEState <= tau_brue_twiddle;
         else
            tauBRUEState <= tau_brue_fifo_wait;
         end if;
                  
      when tau_brue_twiddle =>
         if tauBRUETwiddleCounter = CHANNEL_STROBE_LENGTH then
            tauBRUEState <= tau_brue_fifo_wait;
         else
            tauBRUETwiddleCounter <= tauBRUETwiddleCounter + 1;
            tauBRUEState <= tau_brue_twiddle;
         end if;
          
      when tau_brue_fifo_wait =>
         if FIFO_FULL = '1' then
            tauBRUEState <= tau_brue_fifo_wait;
         else
            tauBRUEState <= tau_brue_send_unit_to_PC;
         end if;
               
      when tau_brue_send_unit_to_PC =>
         -- This state just triggers the XMT Strobe.
         tauBRUEState <= tau_brue_prepare_action;
      
      when tau_brue_prepare_action =>
         -- Prepare the byte specifying the action to take to send to the PC      
         tauUnitControlXMTChar <= "00000000";
         tauUnitControlXMTChar(TAPE_UNIT_CTL_REWIND_REQUEST) <= tauRewindLatch;
         tauUnitControlXMTChar(TAPE_UNIT_CTL_UNLOAD_REQUEST) <= tauUnloadLatch;
         tauUnitControlXMTChar(TAPE_UNIT_CTL_BACKSPACE_REQUEST) <= tauBackspaceLatch;
         tauUnitControlXMTChar(TAPE_UNIT_CTL_ERASE_REQUEST) <= tauEraseLatch;
         if tauResetTILatch = '1' and MC_TURN_OFF_TAPE_IND = '0' then
            tauUnitControlXMTChar(TAPE_UNIT_CTL_RESET_INDICATE) <= '1';
         end if;

         -- Here we don't need a special FIFO wait state.
         if FIFO_FULL = '1' then
            tauBRUEState <= tau_brue_prepare_action;
         else
            tauBRUEState <= tau_brue_send_action_to_PC;
         end if;
                     
      when tau_brue_send_action_to_PC =>
         -- Again, as before, this state just triggers the XMT Strobe.
         tauBRUEState <= tau_brue_wait;
      
      when tau_brue_wait =>
         tauUnitControlXMTChar <= "00000000";
         -- Wait for call signal from channel to go away.  Here we use the actual call
         -- signals, NOT our latched ones.
         -- We don't wait for the reset TI signal to go away.
         if tauBRUEAction = '0' then
            tauBRUEState <= tau_brue_idle;
         else
            tauBRUEState <= tau_brue_wait;
         end if;
   
      end case;
   end if;
   
   end process;

-- Process to handle a tape read request

taureadProcess: process(
   FPGA_CLK,
   MC_COMP_RESET_TO_TAPE,
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE,
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA,
   FIFO_EMPTY,
   FIFO_READ_DATA,
   FIFO_READ_DATA_VALID,
   TAU_SELECTED_TAPE_DRIVE,
   MC_READ_TAPE_CALL,
   tauBusy,
   tauTriggerRead,
   tauUnitReadReady,
   tauReadFirstCharLatch,
   tauReadStrobeCounter,
   tauReadDelayCounter,
   tauReadState)
   
   begin
   
   if MC_COMP_RESET_TO_TAPE = '0' then
      tauReadState <= tau_read_idle;
      tauReadFirstCharLatch <= '0';
      tauReadTapeIndicateLatch <= '0';
      tauReadStrobeCounter <= 0;
      tauReadDelayCounter <= CHANNEL_CYCLE_LENGTH;
      tauReadXMTChar <= "00000000";
      MC_TAU_TO_CPU_BUS <= "00000000";
      
   elsif FPGA_CLK'event and FPGA_CLK = '1' then
      case tauReadState is

      -- Wake up on a read call to a read tape drive
      
      when tau_read_idle =>
         if tauBusy = '0' and MC_READ_TAPE_CALL = '0' and tauUnitReadReady = '1' then
            tauReadState <= tau_read_fifo_wait_1;
            tauReadXMTChar <= std_logic_vector(to_unsigned(TAU_SELECTED_TAPE_DRIVE,
               tauReadXMTChar'length));
            tauReadDelayCounter <= CHANNEL_CYCLE_LENGTH;
            tauReadTapeIndicateLatch <= '0'; -- Reset TAU tape indicate latch before 1st char.
         else
            tauReadState <= tau_read_idle;
         end if;
      
      -- Wait until FIFO used to send data to PC has room
      when tau_read_fifo_wait_1 =>
         if FIFO_FULL = '1' then
            tauReadState <= tau_read_fifo_wait_1;
         else
            tauReadState <= tau_read_send_unit_to_PC;
         end if;
      
      -- Send unit number to PC - trigger's strobe
      when tau_read_send_unit_to_PC =>
         tauReadState <= tau_read_fifo_wait_2;
         tauReadTapeIndicateLatch <= '0';
      
      -- Prepare read action to send to PC, and wait for FIFO if necessary
      when tau_read_fifo_wait_2 =>
         tauReadXMTChar <= "00000000";
         tauReadFirstCharLatch <= '1';
         tauReadXMTChar(TAPE_UNIT_CTL_READ_REQUEST) <= '1';
         if FIFO_FULL = '1' then
            tauReadState <= tau_read_fifo_wait_2;
         else
            tauReadState <= tau_read_send_action_to_PC;
         end if;
      
      -- Strobe action character into output FIFO
      when tau_read_send_action_to_PC =>
         tauReadState <= tau_read_trigger_wait;
      
      -- Wait for the PC to start sending characters.  The trigger byte is first caught in
      -- tauTriggerProcess, so wait for it to give the go-ahead  
      when tau_read_trigger_wait =>
         if tauTriggerRead = '1' then
            tauReadState <= tau_read_waitForChar;
         else
            tauReadState <= tau_read_trigger_wait;
         end if;
      
      when tau_read_waitForChar =>
         if FIFO_EMPTY = '0' then
            tauReadState <= tau_read_getChar;
         else
            tauReadState <= tau_read_waitForChar;
         end if;
      
      when tau_read_getChar =>
         -- Have a character.  If it is the FIRST character and is a tape mark, set
         -- tape indicate.  Regardless, set up the channel input data lines with the data.
         
         -- Note that on a REAL machine, the TAU would have to tell the tape drive it hit a
         -- tape mark, but in OUR case, we can handle that in the PC Support program.
         
         if FIFO_READ_DATA_VALID = '1' then
            if FIFO_READ_DATA = "01000000" then
               tauReadState <= tau_read_done;           
            elsif tauReadFirstCharLatch = '1' and (FIFO_READ_DATA and "00111111") = TAPE_MARK_CHAR then
               tauReadTapeIndicateLatch <= '1';
               tauReadState <= tau_read_wait_channel;          
               MC_TAU_TO_CPU_BUS <= not FIFO_READ_DATA;
            else
               tauReadState <= tau_read_wait_channel;
               MC_TAU_TO_CPU_BUS <= not FIFO_READ_DATA;
            end if;          
         else
            tauReadState <= tau_read_getChar;  -- Really should never happen...
         end if;    
      
      when tau_read_wait_channel =>
         -- Make sure we don't strobe channel faster than 800 bpi * 112.5 ips 
         if tauReadDelayCounter = CHANNEL_CYCLE_LENGTH then
            tauReadStrobeCounter <= 0;  
            tauReadDelayCounter <= 0;
            tauReadState <= tau_read_strobe_channel;
         else
            tauReadDelayCounter <= tauReadDelayCounter + 1;
            tauReadState <= tau_read_wait_channel;
         end if;            
      
      when tau_read_strobe_channel =>
         -- Generate strobe.  Also, this counts as part of the channel cycle length.
         tauReadFirstCharLatch <= '0';
         if tauReadStrobeCounter = CHANNEL_STROBE_LENGTH then
            tauReadState <= tau_read_getChar;
         else
            tauReadStrobeCounter <= tauReadStrobeCounter + 1;
            if tauReadDelayCounter /= CHANNEL_CYCLE_LENGTH then
               tauReadDelayCounter <= tauReadDelayCounter + 1;
            end if;
            tauReadState <= tau_read_strobe_Channel;
         end if;
      
      when tau_read_done =>
         MC_TAU_TO_CPU_BUS <= "11111111";
         tauReadState <= tau_read_idle;
         tauReadDelayCounter <= CHANNEL_CYCLE_LENGTH;
         tauReadXMTChar <= "00000000";         
         
      
      
      end case;     
   end if;
   
   end process;
      

-- Process to handle a tape write or tape write tape mark request

tauWriteProcess: process(
   FPGA_CLK,
   MC_COMP_RESET_TO_TAPE,
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE,
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA,
   FIFO_EMPTY,
   FIFO_READ_DATA,
   FIFO_READ_DATA_VALID,
   TAU_SELECTED_TAPE_DRIVE,
   MC_WRITE_TAPE_CALL,
   MC_WRITE_TAPE_MK_CALL,
   MC_DISCONNECT_CALL,
   MC_CPU_TO_TAU_BUS,
   tauWTMLatch,
   tauBusy,
   tauUnitWriteReady,
   tauWriteStrobeCounter,
   tauWriteDelayCounter,
   tauWriteState)
   
   begin
   
   if MC_COMP_RESET_TO_TAPE = '0' then
      tauWriteState <= tau_write_idle;
      tauWriteStrobeCounter <= 0;
      tauWriteDelayCounter <= CHANNEL_CYCLE_LENGTH;
      tauWriteXMTChar <= "00000000";
      tauWTMLatch <= '0';
      
   elsif FPGA_CLK'event and FPGA_CLK = '1' then
      case tauWriteState is

      -- Wake up on a write or write tape mark call from CPU
      
      when tau_Write_idle =>
         if (MC_WRITE_TAPE_CALL = '0' or MC_WRITE_TAPE_MK_CALL = '0') and tauUnitWriteReady = '1' and
            tauBusy = '0' then
            tauWriteState <= tau_write_fifo_wait_1;
            tauWriteXMTChar <= std_logic_vector(to_unsigned(TAU_SELECTED_TAPE_DRIVE,
               tauWriteXMTChar'length));
            tauWriteDelayCounter <= CHANNEL_CYCLE_LENGTH;
            tauWTMLatch <= not MC_WRITE_TAPE_MK_CALL;
         else
            tauWriteState <= tau_write_idle;
         end if;
      
      -- Wait until FIFO used to send data to PC has room
      when tau_write_fifo_wait_1 =>
         if FIFO_FULL = '1' then
            tauWriteState <= tau_write_fifo_wait_1;
         else
            tauWriteState <= tau_write_send_unit_to_PC;
         end if;
      
      -- Send unit number to PC - trigger's strobe
      when tau_write_send_unit_to_PC =>
         tauWriteState <= tau_write_fifo_wait_2;
      
      -- Prepare write or write tape mark request, and wait for FIFO if necesary.
      when tau_write_fifo_wait_2 =>
         tauWriteXMTChar <= "00000000";
         if tauWTMlatch = '0' then
            tauWriteXMTChar(TAPE_UNIT_CTL_WRITE_REQUEST) <= '1';
         else
            tauWriteXMTChar(TAPE_UNIT_CTL_MARK_REQUEST) <= '1';
         end if;
         if FIFO_FULL = '1' then
            tauWriteState <= tau_write_fifo_wait_2;
         else
            tauWriteState <= tau_write_send_action_to_PC;
         end if;
      
      when tau_write_send_action_to_PC =>   -- Strobes action char to UART
         -- tauWriteState <= tau_write_latch_char;
         tauWriteDelayCounter <= 0;
         tauWriteState <= tau_write_fifo_wait_3;         
         
      -- Wait for FIFO to not be full, and also overlap count up channel wait time
      when tau_write_fifo_wait_3 =>
         if MC_DISCONNECT_CALL = '0' then
            -- DISCONNECT: No more chars - send EOR unless WMT         
            tauWriteState <= tau_write_fifo_wait_4;           
         elsif FIFO_FULL = '1' then
            if tauWriteDelayCounter /= CHANNEL_CYCLE_LENGTH then
               tauWriteDelayCounter <= tauWriteDelayCounter + 1;
            end if;
            tauWriteState <= tau_write_fifo_wait_3;
         else
            tauWriteState <= tau_write_wait_channel;
         end if;
            
      -- Give the channel time to give us a character if we have not already done so.
      -- At that point, if this is a WTM, we are all done. 
      when tau_write_wait_channel =>
         if tauWriteDelayCounter /= CHANNEL_CYCLE_LENGTH then
            tauWriteDelayCounter <= tauWriteDelayCounter + 1;
            tauWriteState <= tau_write_wait_channel;
         else
            if tauWTMLatch = '1' then
               tauWriteState <= tau_write_done;
            else
               tauWriteXMTChar <= not MC_CPU_TO_TAU_BUS; -- Latch character from CPU now
               tauWriteState <= tau_write_send_char_to_PC; 
            end if;                       
         end if;

      -- send the character to the PC (strobe)
      when tau_write_send_char_to_PC =>
         if MC_DISCONNECT_CALL = '0' then
            tauWriteState <= tau_write_fifo_wait_4; -- End of record tell the PC
         else          
            tauWriteStrobeCounter <= 0;
            tauWriteState <= tau_write_strobe_channel;
         end if;         
      
      -- Having sent the char off to the PC, we can now tell the channel we are
      -- ready for another character.  This is combinatorial logic.
      when tau_write_strobe_channel =>
         if MC_DISCONNECT_CALL = '0' then            
            tauWriteState <= tau_write_fifo_wait_4; -- End of Record tell the PC          
         elsif tauWriteStrobeCounter /= CHANNEL_STROBE_LENGTH then
            tauWriteStrobeCounter <= tauWriteStrobeCounter + 1;
            tauWriteState <= tau_write_strobe_channel;
         else
            -- Done strobing channel - go back and wait for next char from PC
            tauWriteState <= tau_write_fifo_wait_3;
         end if;

      -- End of record for normal write - prep to send EOR flag to PC, wait for FIFO
      when tau_write_fifo_wait_4 =>
         tauWriteXMTChar <= "01000000";  -- End of record flag.
         if FIFO_FULL = '1' then
            tauWriteState <= tau_write_fifo_wait_4;
         else
            tauWriteState <= tau_write_send_eor_to_PC;
         end if;                     
      
      -- Strobe to transmit the EOR charcter to the PC...  (strobe)
      when tau_write_send_eor_to_PC =>
         tauWriteState <= tau_write_done;
               
      when tau_write_done =>
         tauWriteState <= tau_write_idle;
         tauWriteDelayCounter <= CHANNEL_CYCLE_LENGTH; 
         tauWTMLatch <= '0';      
         tauWriteXMTChar <= "00000000";  
                     
      end case;     
   end if;
   
   end process;

         
-- Process to arbitrate / prioritize tape unit statuses.  Because the PC can take time to react, we sometimes
-- have to set a unit status initially in the FPGA (e.g., for Unit Control instructions like Rewind)
-- The PC can later overwrite that status.  FPGA gets precedence because it's setting signals are only
-- one clock period long.

tauSetStatusProcess: process(
   FPGA_CLK,
   MC_COMP_RESET_TO_TAPE,
   TAU_TAPE_UNIT_STATUSES,
   tauBRUEStatus,
   tauBRUESetStatus,
   TAU_SELECTED_TAPE_DRIVE,
   tauSupportUnit,
   tauSupportStatus,
   tauSupportSetStatus)
   
   begin
   
   if FPGA_CLK'event and FPGA_CLK = '1' then
      if tauBRUESetStatus = '1' then
         TAU_TAPE_UNIT_STATUSES(TAU_SELECTED_TAPE_DRIVE) <= tauBRUEStatus;
      elsif tauSupportSetStatus = '1' then
         TAU_TAPE_UNIT_STATUSES(tauSupportUnit) <= tauSupportStatus;
      end if;
   end if;
         
   end process;


-- Instantiate components   

   FIFO : ring_buffer
      generic map (
         RAM_WIDTH => TAU_INPUT_FIFO_WIDTH,
         RAM_DEPTH => TAU_INPUT_FIFO_SIZE
      )
      port map (
         clk => FPGA_CLK,
         rst => UART_RESET,
         wr_en => IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE,
         wr_data => IBM1410_TAU_INPUT_FIFO_WRITE_DATA,
         rd_en => FIFO_READ_ENABLE,
         rd_valid => FIFO_READ_DATA_VALID,
         rd_data => FIFO_READ_DATA,
         empty => FIFO_EMPTY,
         empty_next => FIFO_EMPTY_NEXT,
         full => FIFO_FULL,
         full_next => FIFO_FULL_NEXT,
         fill_count => OPEN
    );
   
-- Combinatorial code

UART_RESET <= not MC_COMP_RESET_TO_TAPE;

tauUnitReadReady <= TAU_TAPE_UNIT_STATUSES(TAU_SELECTED_TAPE_DRIVE)(TAPE_UNIT_READ_READY_BIT);
tauUnitWriteReady <= TAU_TAPE_UNIT_STATUSES(TAU_SELECTED_TAPE_DRIVE)(TAPE_UNIT_WRITE_READY_BIT);    
MC_TAPE_READY <= '1' when
   tauUnitReadReady = '0' or 
   ((MC_WRITE_TAPE_CALL = '0' or MC_ERASE_CALL = '0' or MC_WRITE_TAPE_MK_CALL = '0') and tauUnitWriteReady = '0')
   else '0';
     
MC_SELECT_AT_LOAD_POINT <= not(TAU_TAPE_UNIT_STATUSES(TAU_SELECTED_TAPE_DRIVE)(TAPE_UNIT_LOAD_POINT_BIT));
MC_SEL_OR_TAPE_IND_ON <= not(TAU_TAPE_UNIT_STATUSES(TAU_SELECTED_TAPE_DRIVE)(TAPE_UNIT_TAPE_IND_BIT) or
   tauReadTapeIndicateLatch) ; -- More to come on write.
MC_SELECT_AND_REWIND <= not(TAU_TAPE_UNIT_STATUSES(TAU_SELECTED_TAPE_DRIVE)(TAPE_UNIT_TAPE_REWIND_BIT));

tauBRUEBusy  <= '1' when 
   ((tauBRUEState = tau_brue_called or tauBRUEState = tau_brue_twiddle) and MC_ERASE_CALL = '1')   
   else '0';
   
tauBRUEAction <= '1' when
   MC_REWIND_UNLOAD = '0' or MC_REWIND_CALL = '0' or MC_BACKSPACE_CALL = '0' or
               MC_ERASE_CALL = '0'
   else '0';

-- True if we have a request to turn of TI and that has not already occured - so
-- we only send the status update to the PC one time.   
tauBRUEResetTI <= '1' when
   MC_TURN_OFF_TAPE_IND = '0' and tauResetTILatch = '0'
   else '0';
  
tauReadBusy <= '1' when
   tauReadState /= tau_read_idle
   else '0';
   
tauWriteBusy <= '1' when
   tauWriteState /= tau_write_idle
   else '0'; 
       
tauBusy <= tauBRUEBusy or tauReadBusy or tauWriteBusy;
MC_TAPE_BUSY <= not tauBusy;


FIFO_READ_ENABLE <= '1' when
   tauTriggerState = tau_trigger OR tauUnitStatusState = tau_unit_status_getchar or
      tauReadState = tau_read_getChar
   else '0';
    
tauTriggerStatus <= '1' when
   (tauTriggerState = tau_trigger and FIFO_READ_DATA_VALID = '1' and 
      FIFO_READ_DATA(TAU_SUPPORT_INPUT_DATA_FLAG) = '0') OR
      tauUnitStatusState /= tau_unit_status_idle
   else '0';
   
tauTriggerRead <= '1' when
   (tauTriggerState = tau_trigger and FIFO_READ_DATA_VALID = '1' and 
      FIFO_READ_DATA(TAU_SUPPORT_INPUT_DATA_FLAG) = '1') OR
      tauReadState = tau_read_waitForChar or tauReadState = tau_read_getChar or
      tauReadState = tau_read_wait_channel or tauReadState = tau_read_strobe_channel 
   else '0';

IBM1410_TAU_XMT_CHAR <= 
   tauUnitControlXMTChar or tauWriteXMTChar or tauReadXMTChar;
   
IBM1410_TAU_XMT_STROBE <= '1' when
   tauBRUEState = tau_brue_send_unit_to_PC or
   tauBRUEState = tau_brue_send_action_to_PC or
   tauReadState = tau_read_send_unit_to_PC or
   tauReadState = tau_read_send_action_to_PC or
   tauWriteState = tau_write_send_unit_to_PC or
   tauWriteState = tau_write_send_action_to_PC or
   tauWritestate = tau_write_send_char_to_PC or
   tauWritestate = tau_write_send_eor_to_PC
   else '0';

tauSupportSetStatus <= '1'  when 
    tauUnitStatusState = tau_unit_set_status
    else '0';
    
tauBRUESetStatus <= '1' when
    tauBRUEState = tau_brue_fifo_wait
    else '0';
    
MC_TAPE_READ_STROBE <= '0' when
    tauReadState = tau_read_strobe_channel
    else '1';
 
MC_TAPE_IN_PROCESS <= '0' when 
    tauReadBusy = '1' or tauWriteBusy = '1'
    else '1';

MC_TAPE_ERROR <= '1';
 
MC_TAPE_WRITE_STROBE <= '0' when
   tauWriteState = tau_write_strobe_channel
   else '1';
       
end Behavioral;
