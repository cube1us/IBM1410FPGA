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
  
   PORT (
       FPGA_CLK: in STD_LOGIC;
       UART_RESET: in STD_LOGIC;
        
       -- TAU Input Signals From CPU
       
       MC_CPU_TO_TAU_BUS: in STD_LOGIC_VECTOR(7 downto 0);       
       
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

constant TAPE_UNIT_READY_BIT:       integer := 0;
constant TAPE_UNIT_LOAD_POINT_BIT:  integer := 2;
constant TAPE_UNIT_TAPE_IND_BIT:    integer := 3;
constant TAPE_UNIT_TAPE_REWIND_BIT: integer := 4;

constant OUT_STROBE_TIME: integer := 10;      -- 100ns UART strobe time
constant TAU_INPUT_FIFO_SIZE: integer := 10;  -- 1410 will be faster than PC support for now
constant TAU_INPUT_FIFO_WIDTH: integer := 8;  -- Bits per character 

constant TAU_SUPPORT_INPUT_DATA_FLAG: integer := 6;    -- This bit set means PC sending tape data.

signal FIFO_READ_ENABLE: STD_LOGIC := '0';
signal FIFO_READ_DATA_VALID: STD_LOGIC;
signal FIFO_READ_DATA: STD_LOGIC_VECTOR(7 downto 0);
signal FIFO_EMPTY: STD_LOGIC;
signal FIFO_EMPTY_NEXT: STD_LOGIC;
signal FIFO_FULL: STD_LOGIC;        -- Not used - assumption for now is that 1410 will keep up.
signal FIFO_FULL_NEXT: STD_LOGIC;   -- Not used - assumption for now is that 1410 will keep up.

type tauTriggerState_type is (
   tau_trigger_reset, 
   tau_trigger_idle,
   tau_trigger, 
   tau_trigger_wait);   
   
type tauUnitStatusState_type is (
   tau_unit_status_idle,
   tau_unit_status_waitForChar,
   tau_unit_status_getChar);
   
type tauReadState_type is (
   tau_read_idle,
   tau_read_waitForChar,
   tau_read_getChar,
   tau_read_done);
   
    
type TAU_TAPE_UNIT_STATUS_TYPE is array(0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
signal TAU_SELECTED_TAPE_DRIVE: integer := 15;
signal TAU_TAPE_UNIT_STATUSES: TAU_TAPE_UNIT_STATUS_TYPE :=
 ("00000000", "00000000", "00000000", "00000000", "00000000", 
  "00000000", "00000000", "00000000", "00000000", "00000000", 
  "11111111", "11111111", "11111111", "11111111", "11111111",
  "11111111");
 

signal tauTriggerStatus: STD_LOGIC := '0';
signal tauTriggerRead:   STD_LOGIC := '0';
signal tauTriggerComplete: STD_LOGIC := '0';
signal tauSupportUnit: integer := 15;

signal tauTriggerState: tauTriggerState_type := tau_trigger_reset; 
signal tauUnitStatusState: tauUnitStatusState_type := tau_unit_status_idle;
signal tauReadState: tauReadState_type := tau_read_idle;
  
begin

-- State machines / processes

-- The tauTriggerProcess wakes up when it gets input from the PC Console Support Program.
-- It uses the first character to decide if it is a unit status update (first character has x'40') or
-- tape read data (first charcter has no x'40').  

tauTriggerProcess: process(
   FPGA_CLK,
   UART_RESET,
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE,
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA,
   FIFO_READ_DATA_VALID,
   FIFO_EMPTY,
   FIFO_EMPTY_NEXT,
   tauTriggerRead,
   tauTriggerStatus,
   tauTriggerState)
   
   begin
   
   if UART_RESET = '1' then
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

-- The tauStatusProcess wakes up on tauTriggerRead, and accepts the next byte of input
-- from the support PC as a unit status for the specified unit.

tauStatusProcess: process(
   FPGA_CLK,
   UART_RESET,
   FIFO_READ_DATA_VALID,
   FIFO_READ_DATA,
   FIFO_EMPTY,
   tauTriggerRead,
   tauSupportUnit,
   tauUnitStatusState)
   
   begin
   
   if UART_RESET = '1' then
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
            -- Remember the status for this unit.
            TAU_TAPE_UNIT_STATUSES(tauSupportUnit) <= FIFO_READ_DATA;
            tauUnitStatusState <= tau_unit_status_idle;
         else
            tauUnitStatusState <= tau_unit_status_getChar;
         end if; 
         
      
      end case;
      
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

TAU_SELECTED_TAPE_DRIVE <= 
   0 when MC_UNIT_NU_0_TO_TAU = '0' else
   1 when MC_UNIT_NU_1_TO_TAU = '0' else
   2 when MC_UNIT_NU_2_TO_TAU = '0' else
   3 when MC_UNIT_NU_3_TO_TAU = '0' else
   4 when MC_UNIT_NU_4_TO_TAU = '0' else
   5 when MC_UNIT_NU_5_TO_TAU = '0' else
   6 when MC_UNIT_NU_6_TO_TAU = '0' else
   7 when MC_UNIT_NU_7_TO_TAU = '0' else
   8 when MC_UNIT_NU_8_TO_TAU = '0' else
   9 when MC_UNIT_NU_9_TO_TAU = '0' 
   else 10;  -- No tape drive selected
  
MC_TAPE_BUSY <= not(TAU_TAPE_UNIT_STATUSES(TAU_SELECTED_TAPE_DRIVE)(TAPE_UNIT_READY_BIT));  
MC_SELECT_AT_LOAD_POINT <= not(TAU_TAPE_UNIT_STATUSES(TAU_SELECTED_TAPE_DRIVE)(TAPE_UNIT_LOAD_POINT_BIT));
MC_SEL_OR_TAPE_IND_ON <= not(TAU_TAPE_UNIT_STATUSES(TAU_SELECTED_TAPE_DRIVE)(TAPE_UNIT_TAPE_IND_BIT));
MC_SELECT_AND_REWIND <= not(TAU_TAPE_UNIT_STATUSES(TAU_SELECTED_TAPE_DRIVE)(TAPE_UNIT_TAPE_REWIND_BIT));

FIFO_READ_ENABLE <= '1' when
   tauTriggerState = tau_trigger OR tauUnitStatusState = tau_unit_status_getchar
   else '0';
    
tauTriggerStatus <= '1' when
   (tauTriggerState = tau_trigger and FIFO_READ_DATA_VALID = '1' and 
      FIFO_READ_DATA(TAU_SUPPORT_INPUT_DATA_FLAG) = '0') OR
      tauUnitStatusState /= tau_unit_status_idle
   else '0';
   
tauTriggerRead <= '1' when
   (tauTriggerState = tau_trigger and FIFO_READ_DATA_VALID = '1' and 
      FIFO_READ_DATA(TAU_SUPPORT_INPUT_DATA_FLAG) = '1') OR
      tauReadState /= tau_read_idle
   else '0';
   
  
end Behavioral;
