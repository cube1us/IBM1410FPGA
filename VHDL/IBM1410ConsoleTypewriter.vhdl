-- Company: The Computer Collection
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 01/09/2021 12:26:05 PM
-- Design Name: IBM1410
-- Module Name: IBM1410ConsoleTypewriter - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Simulates the IBM 1410 I/O Selectric Console
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Revision 0.02 - Debugging occured but not tracked by versin
-- Revision 0.03 - Changed output chars to all be < X"80", leaving high bit off
-- Revision 0.04 - Changing to a more canonical state machine, ditching single shots
-- Revision 0.05 - Fixed up a couple of characters, got rid of dead code from 0.04
-- Revision 0.06 - Added console keyboard lock support
-- Revision 0.07 - Input character, WM and Space Bar and Index 
--                 (force last column) now working

-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- TODOs

-- Maybe the shift key should operate when pressed - and only if KB is unlocked.
--   as it stands now, it operates on every input character.
-- Output inquiry request key (based on character input)
-- Output Inquiry release key ( " )
-- Output Inquiry cancel key ( " )

-- There are still some latches in the various state machines - see if they can become
--   combinatorial signals instead.

-- Perhaps the space, WM and space bar state machines could be combined.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Multipler is 10000 for ms, 100 for testing.

entity IBM1410ConsoleTypewriter is
   GENERIC(FAST_MULTIPLIER: integer := 100;
           SLOW_MULTIPLIER: integer := 10000);
  
   PORT (
       FPGA_CLK: in STD_LOGIC;
       UART_RESET: in STD_LOGIC;
       SLOW_TYPING: in STD_LOGIC;
        
       -- Console Output Signals 

       PW_CONS_PRINTER_R1_SOLENOID: in STD_LOGIC; --      
       PW_CONS_PRINTER_R2_SOLENOID: in STD_LOGIC; --
       PW_CONS_PRINTER_R2A_SOLENOID: in STD_LOGIC; --
       PW_CONS_PRINTER_R5_SOLENOID: in STD_LOGIC; --
       PW_CONS_PRINTER_T1_SOLENOID: in STD_LOGIC; --
       PW_CONS_PRINTER_T2_SOLENOID: in STD_LOGIC; --

       PW_UPPER_CASE_SHIFT_SOLENOID: in STD_LOGIC; --
       PW_LOWER_CASE_SHIFT_SOLENOID: in STD_LOGIC; --
       PW_BACKSPACE_SOLENOID: in STD_LOGIC; --
       PW_SPACE_SOLENOID: in STD_LOGIC; --
       PW_CARRIAGE_RETURN_SOLENOID: in STD_LOGIC; --      

       MW_KEYBOARD_LOCK_SOLENOID: in STD_LOGIC; --
       PW_CONS_PRINTER_CHK_SOLENOID: in STD_LOGIC; --
      
       MV_CONS_PRINTER_C1_CAM_NO: out STD_LOGIC; --
       MV_CONS_PRINTER_C1_CAM_NC: out STD_LOGIC; --
       MV_CONS_PRINTER_C2_CAM_NC: out STD_LOGIC; --
       MV_CONS_PRINTER_C2_CAM_NO: out STD_LOGIC; --
       MV_CONS_PRINTER_C3_OR_C4_NO: out STD_LOGIC; --

       MV_CONS_PRINTER_SPACE_NO: out STD_LOGIC;
      
       MV_CONS_PRINTER_UPPER_CASE_STAR_S1NC: out STD_LOGIC; --
       MV_CONS_PRINTER_LOWER_CASE_STAR_S1NO: out STD_LOGIC; --
       MB_CONS_PRINTER_EVEN_BIT_CHECK: out STD_LOGIC; --
       MV_CONS_PRINTER_ODD_BIT_CHECK: out STD_LOGIC; --
       MV_KEYBOARD_LOCK_MODE_STAR_NO: out STD_LOGIC; --
       MV_KEYBOARD_UNLOCK_MODE: out STD_LOGIC; --
      
       -- Console Input Signals
      
       MV_CONS_INQUIRY_REQUEST_KEY_STAR_NO: out STD_LOGIC;
       MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO: out STD_LOGIC;
       PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC: out STD_LOGIC;
       MV_CONS_PRINTER_LAST_COLUMN_SET: out STD_LOGIC;
      
       MV_CONS_PRTR_TO_CPU_BUS: out STD_LOGIC_VECTOR(5 downto 0);
       MB_CONS_PRTR_WM_INPUT_STAR_WM_T_NO: out STD_LOGIC;
       MV_CONSOLE_C_INPUT_STAR_CHK_OP: out STD_LOGIC;              
      
       -- Console Output UART
       
       IBM1410_CONSOLE_XMT_CHAR: out STD_LOGIC_VECTOR(7 downto 0);
       IBM1410_CONSOLE_XMT_STROBE: out STD_LOGIC;
       
       IBM1410_CONSOLE_LOCK_XMT_CHAR: out STD_LOGIC_VECTOR(7 downto 0);
       IBM1410_CONSOLE_LOCK_XMT_STROBE: out STD_LOGIC;
       
       -- Console Input UART
       
       IBM1410_CONSOLE_INPUT_FIFO_WRITE_ENABLE: in STD_LOGIC;
       IBM1410_CONSOLE_INPUT_FIFO_WRITE_DATA: in STD_LOGIC_VECTOR(7 downto 0)
   );

end IBM1410ConsoleTypewriter;

architecture Behavioral of IBM1410ConsoleTypewriter is

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


constant MAX_COLUMN: integer := 80;

constant CLOCKPERIOD: integer := 10;   -- 100 Mhz, 10 ns

constant BCD_1_BIT: integer := 0;
constant BCD_2_BIT: integer := 1;
constant BCD_4_BIT: integer := 2;
constant BCD_8_BIT: integer := 3;
constant BCD_A_BIT: integer := 4;
constant BCD_B_BIT: integer := 5;

constant FAST_OUT_S0_TIME: integer := (1500 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_OUT_S1_TIME: integer := (1250 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_OUT_S2_TIME: integer := (1970 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_OUT_S3_TIME: integer := (360 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_OUT_S4_TIME: integer := (900 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_OUT_S5_TIME: integer := (360 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_OUT_S6_TIME: integer := (1610 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_SPACE_S0_TIME: integer := (700 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_SPACE_S1_TIME: integer := (1790 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_SPACE_S2_TIME: integer := (180 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_SPACE_S3_TIME: integer := (2690 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_SPACE_S4_TIME: integer := (1790 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_SHIFT_S0_TIME: integer := (700 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_SHIFT_S1_TIME: integer := (1250 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_SHIFT_S2_TIME: integer := (3950 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_SHIFT_S3_TIME: integer := (1250 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_CR_S0_TIME: integer := (5890 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_CR_S1_TIME: integer := (10000 * FAST_MULTIPLIER) / CLOCKPERIOD;
constant FAST_CR_S2_TIME: integer := (3950 * FAST_MULTIPLIER) / CLOCKPERIOD;

constant SLOW_OUT_S0_TIME: integer := (1500 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_OUT_S1_TIME: integer := (1250 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_OUT_S2_TIME: integer := (1970 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_OUT_S3_TIME: integer := (360 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_OUT_S4_TIME: integer := (900 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_OUT_S5_TIME: integer := (360 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_OUT_S6_TIME: integer := (1610 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_SPACE_S0_TIME: integer := (700 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_SPACE_S1_TIME: integer := (1790 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_SPACE_S2_TIME: integer := (180 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_SPACE_S3_TIME: integer := (2690 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_SPACE_S4_TIME: integer := (1790 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_SHIFT_S0_TIME: integer := (700 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_SHIFT_S1_TIME: integer := (1250 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_SHIFT_S2_TIME: integer := (3950 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_SHIFT_S3_TIME: integer := (1250 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_CR_S0_TIME: integer := (5890 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_CR_S1_TIME: integer := (10000 * SLOW_MULTIPLIER) / CLOCKPERIOD;
constant SLOW_CR_S2_TIME: integer := (3950 * SLOW_MULTIPLIER) / CLOCKPERIOD;


constant OUT_STROBE_TIME: integer := 10;   -- 100 ns uart strobe time

constant CONSOLE_LOCK_UNLOCK_WAIT_TIME: integer := 5; -- wait to send updates because we may be in reset.

constant CONSOLE_INPUT_FIFO_SIZE: integer := 10;
constant CONSOLE_INPUT_FIFO_WIDTH: INTEGER := 8;

-- NOTE:  If all the bits below are set, it means last column
constant CONSOLE_INPUT_CONTROL_UPPER_CASE: integer := 0;
constant CONSOLE_INPUT_CONTROL_INQUIRY_REQUEST: integer := 1;
constant CONSOLE_INPUT_CONTROL_INQUIRY_RELEASE: integer := 2;
constant CONSOLE_INPUT_CONTROL_INQUIRY_CANCEL: integer := 3;
constant CONSOLE_INPUT_CONTROL_SPACE: integer := 4;
constant CONSOLE_INPUT_CONTROL_WM: integer := 5;

type outputState_type is (output_idle,
   output_s0, 
   output_s1, 
   output_s2, 
   output_s3, 
   output_strobe,
   output_s4, 
   output_s5, 
   output_s6); 
   
type spaceState_type is (space_idle,
   space_s0, 
   space_s1,
   space_strobe,    
   space_s2, 
   space_s3, 
   space_s4);
   
type wmState_type is (wm_idle,
   wm_s0, 
   wm_s1,
   wm_strobe,    
   wm_s2, 
   wm_s3, 
   wm_s4);
     
type sbState_type is (sb_idle,
   sb_s0, 
   sb_s1,
   sb_strobe,    
   sb_s2, 
   sb_s3, 
   sb_s4);
          
type shiftState_type is (shift_idle,
   shift_s0, 
   shift_s1, 
   shift_s2, 
   shift_s3);
   
type crState_type is (cr_idle,
   cr_s0, 
   cr_s1,
   cr_strobe,
   cr_s2);
   
type consoleReceiverState_type is (
   consoleReceiver_reset, consoleReceiver_waitForChar, consoleReceiver_waitForPrinter,
   consoleReceiver_getChar, consoleReceiver_sendChar, consoleReceiver_waitShift, 
   consoleReceiver_waitOutput, consoleReceiver_waitDone);   
   
type consoleLockState_type is(consoleLock_idle, consoleLock_wait, consoleLock_update);

signal outputCounter: INTEGER RANGE 0 to (2000 * SLOW_MULTIPLIER) / CLOCKPERIOD;   -- Max delay for any state
signal spaceCounter:  INTEGER RANGE 0 to (3000 * SLOW_MULTIPLIER) / CLOCKPERIOD;
signal wmCounter:  INTEGER RANGE 0 to (3000 * SLOW_MULTIPLIER) / CLOCKPERIOD;
signal sbCounter:  INTEGER RANGE 0 to (3000 * SLOW_MULTIPLIER) / CLOCKPERIOD;
signal shiftCounter:  INTEGER RANGE 0 to (4000 * SLOW_MULTIPLIER) / CLOCKPERIOD;
signal crCounter:     INTEGER RANGE 0 to (10000 * SLOW_MULTIPLIER) / CLOCKPERIOD;
signal consoleLockCounter: INTEGER RANGE 0 to CONSOLE_LOCK_UNLOCK_WAIT_TIME := 0;

signal outputState: outputState_type := output_idle;  -- , nextOutputState
signal spaceState: spaceState_type := space_idle; -- , nextSpaceState
signal wmState: wmState_type := wm_idle;
signal sbState: sbState_type := sb_idle;
signal shiftState: shiftState_type := shift_idle; -- , nextShiftState
signal crState: crState_type := cr_idle;  -- , nextCrState
signal consoleLockState: consoleLockState_type := consoleLock_idle;
signal consoleReceiverState: consoleReceiverState_type := consoleReceiver_reset;

 -- For rotateIndex, 0 is 5 units CW (-5), 10 is 5 units CCW (+5)
signal rotateIndex, latchedRotateIndex: integer range 0 to 10 := 5;
signal tiltIndex, latchedTiltIndex:  integer range 0 to 3;

signal latchedSpace: std_logic := '0';
signal latchedBackspace: std_logic := '0';
signal latchedCarriageReturn: std_logic := '0';
signal inUpperCase: std_logic := '0';  -- Default is upper case.
signal latchedCaseChange: std_logic := '0';

signal currentColumnUp: std_logic := '0';
signal currentColumnDown: std_logic := '0';
signal currentColumnReset: std_logic := '0';
signal currentColumnInProcess: std_logic := '0';
signal currentColumn: integer range 1 to 81 := 1;

signal R1Motion: integer range 0 to 1;
signal R2Motion: integer range 0 to 2;
signal R2AMotion: integer range 0 to 2;
signal R5Motion: integer range 0 to 5;
signal T1Motion: integer range 0 to 1;
signal T2Motion: integer range 0 to 2;
signal printChar: STD_LOGIC_VECTOR(7 downto 0);

signal output_parity: std_logic := '0';

signal consoleLockStatus: std_logic := '0'; -- locked

signal FIFO_READ_ENABLE: STD_LOGIC := '0';
signal FIFO_READ_DATA_VALID: STD_LOGIC;
signal FIFO_READ_DATA: STD_LOGIC_VECTOR(7 downto 0);
signal FIFO_EMPTY: STD_LOGIC;
signal FIFO_EMPTY_NEXT: STD_LOGIC;
signal FIFO_FULL: STD_LOGIC;        -- Not used - assumption for now is that 1410 will keep up.
signal FIFO_FULL_NEXT: STD_LOGIC;   -- Not used - assumption for now is that 1410 will keep up.

signal CONSOLE_PRINTER_CONTACT_R1: STD_LOGIC := '0';
signal CONSOLE_PRINTER_CONTACT_R2: STD_LOGIC := '0';
signal CONSOLE_PRINTER_CONTACT_R2A: STD_LOGIC := '0';
signal CONSOLE_PRINTER_CONTACT_R5: STD_LOGIC := '0';
signal CONSOLE_PRINTER_CONTACT_T1: STD_LOGIC := '0';
signal CONSOLE_PRINTER_CONTACT_T2: STD_LOGIC := '0';
signal CONSOLE_PRINTER_CONTACT_CHK: STD_LOGIC := '0';
signal CONSOLE_PRINTER_CONTACT_UPPER_CASE_SHIFT: STD_LOGIC := '0';
signal CONSOLE_PRINTER_CONTACT_LOWER_CASE_SHIFT: STD_LOGIC := '0';

signal CONSOLE_INPUT_BAIL_CONTACT_R1: STD_LOGIC := '0';
signal CONSOLE_INPUT_BAIL_CONTACT_R2: STD_LOGIC := '0';
signal CONSOLE_INPUT_BAIL_CONTACT_R2A: STD_LOGIC := '0';
signal CONSOLE_INPUT_BAIL_CONTACT_R5: STD_LOGIC := '0';
signal CONSOLE_INPUT_BAIL_CONTACT_T1: STD_LOGIC := '0';
signal CONSOLE_INPUT_BAIL_CONTACT_T2: STD_LOGIC := '0';
signal CONSOLE_INPUT_BAIL_CONTACT_CHK: STD_LOGIC := '0';
signal CONSOLE_INPUT_BAIL_CONTACT_UPPER_CASE_SHIFT: STD_LOGIC := '0';
signal CONSOLE_INPUT_BAIL_CONTACT_LOWER_CASE_SHIFT: STD_LOGIC := '0';
signal CONSOLE_INPUT_LAST_COLUMN_SET: STD_LOGIC := '0';

signal CONSOLE_INPUT_ACTIVE: STD_LOGIC := '0';
signal CONSOLE_INPUT_BUFFER: STD_LOGIC_VECTOR(5 downto 0) := "000000";
signal CONSOLE_INPUT_PARITY: STD_LOGIC := '0';
signal CONSOLE_INPUT_CONTROL_KEY_BUFFER: STD_LOGIC_VECTOR(5 downto 0) := "000000";
signal CONSOLE_INPUT_PRINTER_BUSY: STD_LOGIC := '0';

type GolfballTilt is array (0 to 10) of STD_LOGIC_VECTOR(7 downto 0);

 -- x, x, @, >, x, b, x, :, (Radical), x, _
constant Golfball_UC_Tilt0: GolfballTilt :=
 (X"60", X"60", X"40", X"3E", X"60", X"62", X"60", X"3A", X"7D", X"60", X"5F");

-- x, x, %, \, x, (alt blk), x, (word separator), (segment Mark), x, x
constant Golfball_UC_Tilt1: GolfballTilt :=
 (X"60", X"60", X"25", X"5C", X"60", X"63", X"60", X"5E", X"7E", X"60", X"60"); -- 'b' is console alt. blk, word sep, Segment mk

-- x, x, *, ;, x, -, x, ], (delta), x, x
constant Golfball_UC_Tilt2: GolfballTilt :=
 (X"60", X"60", X"2A", X"3B", X"60", X"2D", X"60", X"5D", X"64", X"60", X"60"); -- delta

-- x, x, (lozenge), <, x, ampersand, x, [, (group mark), x, (word mark - for printing)
constant Golfball_UC_Tilt3: GolfballTilt :=
 (X"60", X"60", X"65", X"3C", X"60", X"26", X"60", X"5B", X"7B", X"60", X"76"); -- lozenge, group mark, word mark
 
-- 1, 3, 5, 7, 8, 0, 2, 4, 6, 9, #
constant Golfball_LC_Tilt0: GolfballTilt :=
 (X"31", X"33", X"35", X"37", X"38", X"30", X"32", X"34", X"36", X"39", X"23");
 
-- /, T, V, X, Y, (record mark), S, U, W, Z, ,
constant Golfball_LC_Tilt1: GolfballTilt :=
 (X"2F", X"54", X"56", X"58", X"59", X"7C", X"53", X"55", X"57", X"5A", X"2C");

-- J, L, N, P, Q, !, K, M, O, R, $
constant Golfball_LC_Tilt2: GolfballTilt :=
 (X"4A", X"4C", X"4E", X"50", X"51", X"21", X"4B", X"4D", X"4F", X"52", X"24");
 
-- A, C, E, G, H, ?, B, D, F, I, .
constant Golfball_LC_Tilt3: GolfballTilt :=
 (X"41", X"43", X"45", X"47", X"48", X"3F", X"42", X"44", X"46", X"49", X"2E");


signal CAM1, CAM2, CAM3_OR_4, CAM5, CR_INTERLOCK: std_logic := '0';

begin

output_process: process(FPGA_CLK, 
   outputState,
   outputCounter, 
   CONSOLE_PRINTER_CONTACT_R1, 
   CONSOLE_PRINTER_CONTACT_R2, CONSOLE_PRINTER_CONTACT_R2A, 
   CONSOLE_PRINTER_CONTACT_R5, CONSOLE_PRINTER_CONTACT_T1,
   CONSOLE_PRINTER_CONTACT_T2, CONSOLE_PRINTER_CONTACT_CHK,
   rotateIndex,tiltIndex,inUpperCase,latchedTiltIndex,latchedRotateIndex,SLOW_TYPING
   )
   begin
   
   if FPGA_CLK'event and FPGA_CLK = '1' then 
      
      case outputState is
      when output_idle =>
         
         if CONSOLE_PRINTER_CONTACT_R1 = '1' or
            CONSOLE_PRINTER_CONTACT_R2 = '1' or
            CONSOLE_PRINTER_CONTACT_R2A = '1' or
            CONSOLE_PRINTER_CONTACT_R5 = '1' or
            CONSOLE_PRINTER_CONTACT_T1 = '1' or
            CONSOLE_PRINTER_CONTACT_T2 = '1' or
            CONSOLE_PRINTER_CONTACT_CHK = '1' then
            if SLOW_TYPING = '1' then            
               outputCounter <= SLOW_OUT_S0_TIME;
            else
               outputCounter <= FAST_OUT_S0_TIME;
            end if;
            outputState <= output_s0;
         else
            outputState <= output_idle;             
         end if;

      when output_s0 =>
         if outputCounter = 0 then
            outputState <= output_s1;
            if SLOW_TYPING = '1' then            
               outputCounter <= SLOW_OUT_S1_TIME;
            else
               outputCounter <= FAST_OUT_S1_TIME;
            end if;
         else
            outputCounter <= outputCounter - 1;
            outputState <= output_s0;
         end if;

      when output_s1 =>
         if outputCounter = 0 then
            outputState <= output_s2;
            if SLOW_TYPING = '1' then            
               outputCounter <= SLOW_OUT_S2_TIME;
            else
               outputCounter <= FAST_OUT_S2_TIME;
            end if;
            -- Time to latch data before solenoids release, including parity
            -- This is equivalent to the Selectric mechanical latches
            latchedRotateIndex <= rotateIndex;
            latchedTiltIndex <= tiltIndex;            
            output_parity <=
               CONSOLE_PRINTER_CONTACT_R1 xor      
               CONSOLE_PRINTER_CONTACT_R2 xor     
               CONSOLE_PRINTER_CONTACT_R2A xor
               CONSOLE_PRINTER_CONTACT_R5 xor
               CONSOLE_PRINTER_CONTACT_T1 xor
               CONSOLE_PRINTER_CONTACT_T2 xor
               CONSOLE_PRINTER_CONTACT_CHK;
         else
            outputCounter <= outputCounter - 1;
            outputState <= output_s1;
         end if;

      when output_s2 =>
         if outputCounter = 0 then
            outputState <= output_s3;
            if SLOW_TYPING = '1' then            
               outputCounter <= SLOW_OUT_S3_TIME;
            else
               outputCounter <= FAST_OUT_S3_TIME;
            end if;
            
            -- Time to determine the character to print
            
            if inUpperCase = '0' then
               case latchedTiltIndex is
                  when 0 => printChar <= Golfball_LC_Tilt0(latchedRotateIndex);
                  when 1 => printChar <= Golfball_LC_Tilt1(latchedRotateIndex);
                  when 2 => printChar <= Golfball_LC_Tilt2(latchedRotateIndex);
                  when 3 => printChar <= Golfball_LC_Tilt3(latchedRotateIndex);
               end case;
            else
               case latchedTiltIndex is
                  when 0 => printChar <= Golfball_UC_Tilt0(latchedRotateIndex);
                  when 1 => printChar <= Golfball_UC_Tilt1(latchedRotateIndex);
                  when 2 => printChar <= Golfball_UC_Tilt2(latchedRotateIndex);
                  when 3 => printChar <= Golfball_UC_Tilt3(latchedRotateIndex);
               end case;
            end if;
                        
         else
            outputCounter <= outputCounter - 1;
            outputState <= output_s2;
         end if;

      when output_s3 =>
         if outputCounter = 0 then
         
            -- Time to print the character
            outputState <= output_strobe;
            outputCounter <= OUT_STROBE_TIME;
         else
            outputCounter <= outputCounter - 1;
            outputState <= output_s3;
         end if;
           
      when output_strobe =>
         if outputCounter = 0 then
            outputState <= output_s4;
            if SLOW_TYPING = '1' then            
               outputCounter <= SLOW_OUT_S4_TIME;
            else
               outputCounter <= FAST_OUT_S4_TIME;
            end if;
         else
            outputCounter <= outputCounter - 1;
            outputState <= output_strobe;
         end if;
                 
      when output_s4 =>
         if outputCounter = 0 then
            outputState <= output_s5;
            if SLOW_TYPING = '1' then            
               outputCounter <= SLOW_OUT_S5_TIME;
            else
               outputCounter <= FAST_OUT_S5_TIME;
            end if;
         else
            outputCounter <= outputCounter - 1;
            outputState <= output_s4;
         end if;

      when output_s5 =>
         if outputCounter = 0 then
            outputState <= output_s6;
            if SLOW_TYPING = '1' then            
               outputCounter <= SLOW_OUT_S6_TIME;
            else
               outputCounter <= FAST_OUT_S6_TIME;
            end if;
            output_parity <= '0';
         else
            outputCounter <= outputCounter - 1;
            outputState <= output_s5;
         end if;

      when output_s6 =>
         if outputCounter = 0 then
            if CONSOLE_PRINTER_CONTACT_R1 = '1' or
               CONSOLE_PRINTER_CONTACT_R2 = '1' or
               CONSOLE_PRINTER_CONTACT_R2A = '1' or
               CONSOLE_PRINTER_CONTACT_R5 = '1' or
               CONSOLE_PRINTER_CONTACT_T1 = '1' or
               CONSOLE_PRINTER_CONTACT_T2 = '1' or
               CONSOLE_PRINTER_CONTACT_CHK = '1' then   
               outputState <= output_s1;
               if SLOW_TYPING = '1' then            
                  outputCounter <= SLOW_OUT_S1_TIME;
               else
                  outputCounter <= FAST_OUT_S1_TIME;
               end if;
            else
               outputState <= output_idle;
            end if;
         else
            outputCounter <= outputCounter - 1;
            outputState <= output_s6;
         end if;

      end case;
      
   end if;
         
   end process;
   
space_process: process(FPGA_CLK, 
   spaceState,
   spaceCounter,
   outputState, 
   PW_SPACE_SOLENOID, 
   PW_BACKSPACE_SOLENOID,
   latchedSpace,
   latchedBackspace,
   SLOW_TYPING)
   begin
   
      if FPGA_CLK'event and FPGA_CLK = '1' then
      
         case spaceState is
         when space_idle =>
         
            if PW_SPACE_SOLENOID = '1' or
               PW_BACKSPACE_SOLENOID = '1' then
               spaceState <= space_s0;
               if SLOW_TYPING = '1' then            
                  spaceCounter <= SLOW_SPACE_S0_TIME;
               else
                  spaceCounter <= FAST_SPACE_S0_TIME;
               end if;
            else
               spaceState <= space_idle; 
               latchedSpace <= '0';
               latchedBackspace <= '0';            
            end if;
     
         when space_s0 =>
            if spaceCounter = 0 then
               spaceState <= space_s1;
               if SLOW_TYPING = '1' then            
                  spaceCounter <= SLOW_SPACE_S1_TIME;
               else
                  spaceCounter <= FAST_SPACE_S1_TIME;
               end if;
            else
               spaceState <= space_s0;
               spaceCounter <= spaceCounter - 1;
            end if;

         when space_s1 =>
            if spaceCounter = 0 then
               spaceState <= space_s2;
               if SLOW_TYPING = '1' then            
                  spaceCounter <= SLOW_SPACE_S2_TIME;
               else
                  spaceCounter <= FAST_SPACE_S2_TIME;
               end if;
               latchedSpace <= PW_SPACE_SOLENOID;
               latchedBackspace <= PW_BACKSPACE_SOLENOID;
            else
               spaceState <= space_s1;
               spaceCounter <= spaceCounter - 1;
            end if;

         when space_s2 =>
            if spaceCounter = 0 then
               spaceState <= space_strobe;
               spaceCounter <= OUT_STROBE_TIME;            
            else
               spaceState <= space_s2;
               spaceCounter <= spaceCounter - 1;
            end if;
                 
         when space_strobe =>
            if spaceCounter = 0 then
               spaceState <= space_s3;
               if SLOW_TYPING = '1' then            
                  spaceCounter <= SLOW_SPACE_S3_TIME;
               else
                  spaceCounter <= FAST_SPACE_S3_TIME;
               end if;
            else
               spaceCounter <= spaceCounter - 1;
               spaceState <= space_strobe;
            end if;

         when space_s3 =>
            if spaceCounter = 0 then         
            -- Time to space or backspace or shift        
               if latchedSpace = '1' then
                  -- report "<space>";
               elsif latchedBackspace = '1' then               
                  -- report "<backspace>";
               end if;
                     
               spaceState <= space_s4;
               if SLOW_TYPING = '1' then            
                  spaceCounter <= SLOW_SPACE_S4_TIME;
               else
                  spaceCounter <= FAST_SPACE_S4_TIME;
               end if;
            else
               spaceState <= space_s3;
               spaceCounter <= spaceCounter - 1;
            end if;

         when space_s4 =>
            if spaceCounter = 0 then
               spaceState <= space_idle;
            else
               spaceState <= space_s4;
               if spaceCounter /= 0 then
                  spaceCounter <= spaceCounter - 1;
               end if;
            end if;

         end case;
      end if;
         
   end process;

-- WM uses the same cam (C5) as a space, so the timing is the same...

wm_process: process(FPGA_CLK, 
   wmState,
   wmCounter,
   outputState,
   CONSOLE_INPUT_CONTROL_KEY_BUFFER(CONSOLE_INPUT_CONTROL_WM),
   SLOW_TYPING)

   begin
   
      if FPGA_CLK'event and FPGA_CLK = '1' then
      
         case wmState is
         when wm_idle =>
         
            if CONSOLE_INPUT_CONTROL_KEY_BUFFER(CONSOLE_INPUT_CONTROL_WM) = '1' then            
               wmState <= wm_s0;
               if SLOW_TYPING = '1' then            
                  wmCounter <= SLOW_SPACE_S0_TIME;
               else
                  wmCounter <= FAST_SPACE_S0_TIME;
               end if;
            else
               wmState <= wm_idle;             
            end if;
     
         when wm_s0 =>
            if wmCounter = 0 then
               wmState <= wm_s1;
               if SLOW_TYPING = '1' then            
                  wmCounter <= SLOW_SPACE_S1_TIME;
               else
                  wmCounter <= FAST_SPACE_S1_TIME;
               end if;
            else
               wmState <= wm_s0;
               wmCounter <= wmCounter - 1;
            end if;

         when wm_s1 =>
            if wmCounter = 0 then
               wmState <= wm_s2;
               if SLOW_TYPING = '1' then            
                  wmCounter <= SLOW_SPACE_S2_TIME;
               else
                  wmCounter <= FAST_SPACE_S2_TIME;
               end if;
            else
               wmState <= wm_s1;
               wmCounter <= wmCounter - 1;
            end if;

         when wm_s2 =>
            if wmCounter = 0 then
               wmState <= wm_strobe;
               wmCounter <= OUT_STROBE_TIME;   -- Use this for timing only - no actual strobe         
            else
               wmState <= wm_s2;
               wmCounter <= wmCounter - 1;
            end if;
                 
         when wm_strobe =>
            if wmCounter = 0 then
               wmState <= wm_s3;
               if SLOW_TYPING = '1' then            
                  wmCounter <= SLOW_SPACE_S3_TIME;
               else
                  wmCounter <= FAST_SPACE_S3_TIME;
               end if;
            else
               wmCounter <= wmCounter - 1;
               wmState <= wm_strobe;
            end if;

         when wm_s3 =>
            if wmCounter = 0 then         
               wmState <= wm_s4;
               if SLOW_TYPING = '1' then            
                  wmCounter <= SLOW_SPACE_S4_TIME;
               else
                  wmCounter <= FAST_SPACE_S4_TIME;
               end if;
            else
               wmState <= wm_s3;
               wmCounter <= wmCounter - 1;
            end if;

         when wm_s4 =>
            if wmCounter = 0 and CONSOLE_INPUT_CONTROL_KEY_BUFFER(CONSOLE_INPUT_CONTROL_WM) = '0' then
               wmState <= wm_idle;
            else
               wmState <= wm_s4;
               if wmCounter /= 0 then
                  wmCounter <= wmCounter - 1;
               end if;
            end if;

         end case;
      end if;

         
   end process;

-- The Space Bar also uses that same timing

sb_process: process(FPGA_CLK, 
   sbState,
   sbCounter,
   outputState,
   CONSOLE_INPUT_CONTROL_KEY_BUFFER(CONSOLE_INPUT_CONTROL_SPACE),
   SLOW_TYPING)

   begin
   
      if FPGA_CLK'event and FPGA_CLK = '1' then
      
         case sbState is
         when sb_idle =>
         
            if CONSOLE_INPUT_CONTROL_KEY_BUFFER(CONSOLE_INPUT_CONTROL_SPACE) = '1' then            
               sbState <= sb_s0;
               if SLOW_TYPING = '1' then            
                  sbCounter <= SLOW_SPACE_S0_TIME;
               else
                  sbCounter <= FAST_SPACE_S0_TIME;
               end if;
            else
               sbState <= sb_idle;             
            end if;
     
         when sb_s0 =>
            if sbCounter = 0 then
               sbState <= sb_s1;
               if SLOW_TYPING = '1' then            
                  sbCounter <= SLOW_SPACE_S1_TIME;
               else
                  sbCounter <= FAST_SPACE_S1_TIME;
               end if;
            else
               sbState <= sb_s0;
               sbCounter <= sbCounter - 1;
            end if;

         when sb_s1 =>
            if sbCounter = 0 then
               sbState <= sb_s2;
               if SLOW_TYPING = '1' then            
                  sbCounter <= SLOW_SPACE_S2_TIME;
               else
                  sbCounter <= FAST_SPACE_S2_TIME;
               end if;
            else
               sbState <= sb_s1;
               sbCounter <= sbCounter - 1;
            end if;

         when sb_s2 =>
            if sbCounter = 0 then
               sbState <= sb_strobe;
               -- Space bar DOES generate output character to the host
               sbCounter <= OUT_STROBE_TIME;            
            else
               sbState <= sb_s2;
               sbCounter <= sbCounter - 1;
            end if;
                 
         when sb_strobe =>
            if sbCounter = 0 then
               sbState <= sb_s3;
               if SLOW_TYPING = '1' then            
                  sbCounter <= SLOW_SPACE_S3_TIME;
               else
                  sbCounter <= FAST_SPACE_S3_TIME;
               end if;
            else
               sbCounter <= sbCounter - 1;
               sbState <= sb_strobe;
            end if;

         when sb_s3 =>
            if sbCounter = 0 then         
               sbState <= sb_s4;
               if SLOW_TYPING = '1' then            
                  sbCounter <= SLOW_SPACE_S4_TIME;
               else
                  sbCounter <= FAST_SPACE_S4_TIME;
               end if;
            else
               sbState <= sb_s3;
               sbCounter <= sbCounter - 1;
            end if;

         when sb_s4 =>
            if sbCounter = 0 and CONSOLE_INPUT_CONTROL_KEY_BUFFER(CONSOLE_INPUT_CONTROL_SPACE) = '0' then
               sbState <= sb_idle;
            else
               sbState <= sb_s4;
               if sbCounter /= 0 then
                  sbCounter <= sbCounter - 1;
               end if;
            end if;

         end case;
      end if;
         
   end process;


shift_process: process(FPGA_CLK,
   shiftState, 
   outputState,
   CONSOLE_PRINTER_CONTACT_UPPER_CASE_SHIFT, 
   CONSOLE_PRINTER_CONTACT_LOWER_CASE_SHIFT,
   latchedCaseChange,
   inUpperCase,
   SLOW_TYPING)
   begin
   
   if FPGA_CLK'event and FPGA_CLK = '1' then
   
      case shiftState is
      when shift_idle =>
                  
         -- I had an issue with the shift solenoid activating very briefly
         -- during print cycle, so I added a check to make sure that no
         -- print cycle was active - the CE instructional manual says that
         -- isn't supposed to happen.  I'm not sure if this is prevented in
         -- the real hardware by the solenoid not activating on short pulses, or
         -- because an RC network on a card prevents this (in the generated VHDL,
         -- most RC networks became just resistors, or if the logic has an issue.
                 
         if outputState = output_idle and 
            (CONSOLE_PRINTER_CONTACT_UPPER_CASE_SHIFT = '1' or
            CONSOLE_PRINTER_CONTACT_LOWER_CASE_SHIFT = '1') then            
            shiftState <= shift_s0;
            if SLOW_TYPING = '1' then            
               shiftCounter <= SLOW_SHIFT_S0_TIME;
            else
               shiftCounter <= FAST_SHIFT_S0_TIME;
            end if;
            -- Remember the case to change to now, because if
            -- we try to do it in state S1, the CPU drops the
            -- shift solenoid at the same time, and that causes
            -- us to lose the case change.
            latchedCaseChange <= CONSOLE_PRINTER_CONTACT_UPPER_CASE_SHIFT;
         else
            shiftState <= shift_idle;             
         end if;

      when shift_s0 =>
         if shiftCounter = 0 then
            shiftState <= shift_s1;
            if SLOW_TYPING = '1' then            
               shiftCounter <= SLOW_SHIFT_S1_TIME;
            else
               shiftCounter <= FAST_SHIFT_S1_TIME;
            end if;
         else
            shiftState <= shift_s0;
            shiftCounter <= shiftCounter - 1;
         end if;

      when shift_s1 =>
         if shiftCounter = 0 then
            -- Time to latch data before solenoids release
            inUpperCase <= latchedCaseChange;
            shiftState <= shift_s2;
            if SLOW_TYPING = '1' then            
               shiftCounter <= SLOW_SHIFT_S2_TIME;
            else
               shiftCounter <= FAST_SHIFT_S2_TIME;
            end if;
         else
            shiftState <= shift_s1;
            shiftCounter <= shiftCounter - 1;
         end if;

      when shift_s2 =>
         if shiftCounter = 0 then
            shiftState <= shift_s3;
            if SLOW_TYPING = '1' then            
               shiftCounter <= SLOW_SHIFT_S3_TIME;
            else
               shiftCounter <= FAST_SHIFT_S3_TIME;
            end if;
         else
            shiftState <= shift_s2;
            shiftCounter <= shiftCounter - 1;
         end if;

      when shift_s3 =>
         if shiftCounter = 0 then
            -- Time to space or backspace or shift
            if inUpperCase = '1' then
               -- report "Shifted to Upper Case";
            else
               -- report "Shifted to Lower Case";
            end if; 
            
            shiftState <= shift_idle;
         else
            shiftState <= shift_s3;
            shiftCounter <= shiftCounter - 1;
         end if;
         
      end case;

   end if;

      
   end process;

cr_process: process(FPGA_CLK, 
   crState,
   PW_CARRIAGE_RETURN_SOLENOID,
   SLOW_TYPING)
   begin
   
   if FPGA_CLK'event and FPGA_CLK = '1' then
      
      case crState is
      when cr_idle =>
         
         if PW_CARRIAGE_RETURN_SOLENOID = '1' then            
            crState <= cr_s0;
            if SLOW_TYPING = '1' then            
               crCounter <= SLOW_CR_S0_TIME;
            else
               crCounter <= FAST_CR_S0_TIME;
            end if;
         else
            crState <= cr_idle;             
         end if;

      when cr_s0 =>
         if crCounter = 0 then
            crState <= cr_s1;
            if SLOW_TYPING = '1' then            
               crCounter <= SLOW_CR_S1_TIME;
            else
               crCounter <= FAST_CR_S1_TIME;
            end if;
         else
            crState <= cr_s0;
            crCounter <= crCounter - 1;
         end if;

      when cr_s1 =>
         if crCounter = 0 then
            crState <= cr_strobe;
            crCounter <= OUT_STROBE_TIME;
         else
            crState <= cr_s1;
            crCounter <= crCounter - 1;
         end if;

      when cr_strobe =>
         if crCounter = 0 then
            crState <= cr_s2;
            if SLOW_TYPING = '1' then            
               crCounter <= SLOW_CR_S2_TIME;
            else
               crCounter <= FAST_CR_S2_TIME;
            end if;
         else
            crState <= cr_strobe;
            crCounter <= crCounter - 1;
         end if;

      when cr_s2 =>
         if crCounter = 0 then
            crState <= cr_idle;
         else
            crState <= cr_s2;
            crCounter <= crCounter - 1;
         end if;

      end case;
        
   end if;
         
   end process;
   
column_process: process(FPGA_CLK,currentColumnUp,currentColumnDown,currentColumnReset)
   begin
   if FPGA_CLK'event and FPGA_CLK = '1' then
      if currentColumnInProcess = '0' then
         if currentColumnUp = '1' then
            if currentColumn = MAX_COLUMN then
               -- Leave at 80
            else
               currentColumn <= currentColumn + 1;
            end if;
         end if;
         if currentColumnDown = '1' then
            if currentColumn = 1 then
               -- Leave at 1
            else
               currentColumn <= currentColumn - 1;
            end if;
         end if;
         if currentColumnReset = '1' then
            currentColumn <= 1;
         end if;
         currentColumnInProcess <=
            currentColumnUp or currentColumnDown or
            currentColumnReset;    
      elsif currentColumnInProcess = '1' and
         currentColumnUp = '0' and
         currentColumnDown = '0' and
         currentColumnReset = '0' then
         currentColumnInProcess <= '0';
      end if;
   end if;
   end process;

-- Process to let the host support program know when the keyboard lock changes
   
consoleLock_process: process(FPGA_CLK,MW_KEYBOARD_LOCK_SOLENOID)
   begin
   
   if FPGA_CLK'event and FPGA_CLK = '1' then
   
      case consoleLockState is    
        
      when consoleLock_idle =>
         if UART_RESET = '1' or (consoleLockStatus = MW_KEYBOARD_LOCK_SOLENOID) then
            consoleLockState <= consoleLock_idle;
         else
            consoleLockState <= consoleLock_wait;
            consoleLockStatus <= MW_KEYBOARD_LOCK_SOLENOID;
            consoleLockCounter <= 5;
         end if;
         
      when consoleLock_wait =>
         if consoleLockCounter = 0 then
            consoleLockState <= consoleLock_update;
         else
            consoleLockCounter <= consoleLockCounter - 1;
            consoleLockState <= consoleLock_wait;
         end if;
         
      when consoleLock_update =>
         consoleLockState <= consoleLock_idle;
         
      end case;
   
   end if;
   end process;
   
   
console_input_process: process(FPGA_CLK, UART_RESET, CONSOLE_INPUT_PRINTER_BUSY,
   outputState, IBM1410_CONSOLE_INPUT_FIFO_WRITE_ENABLE, IBM1410_CONSOLE_INPUT_FIFO_WRITE_DATA,
   FIFO_READ_DATA_VALID, FIFO_EMPTY, FIFO_EMPTY_NEXT, consoleREceiverState)
   
   begin
   
   if UART_RESET = '1' then
      consoleReceiverState <= consoleReceiver_reset;
      CONSOLE_INPUT_ACTIVE <= '0';
      
   elsif FPGA_CLK'event and FPGA_CLK = '1' then
   case consoleReceiverState is
   
      when consoleReceiver_reset =>
         CONSOLE_INPUT_ACTIVE <= '0';
         consoleReceiverState <= consoleReceiver_waitForChar;
         
      when consoleReceiver_waitForChar =>
         if FIFO_EMPTY = '0' then
            FIFO_READ_ENABLE <= '1';
            consoleReceiverState <= consoleReceiver_getChar;
         else
            consoleReceiverState <= consoleReceiver_waitForChar;
         end if;
         
      when consoleReceiver_getChar =>
         if FIFO_READ_DATA_VALID = '1' then
            -- High bit from support HOST means not a BCD character, but instead special control keys
            if FIFO_READ_DATA(6) = '1' then
               if FIFO_READ_DATA = "01111111" then
                  -- All 1 bits means the index (force last column) has been pushed.  It isn't really a key.
                  CONSOLE_INPUT_LAST_COLUMN_SET <= '1';
                  CONSOLE_INPUT_CONTROL_KEY_BUFFER <= "000000";
                  consoleReceiverState <= consoleReceiver_waitDone;
               elsif (FIFO_READ_DATA and "01111110") /= "01000000" then
                  -- Above tests masks out shift change, looking for any other
                  -- control bits (WM, inquiry keys)
                  CONSOLE_INPUT_CONTROL_KEY_BUFFER <= FIFO_READ_DATA(5 downto 0);
                  CONSOLE_INPUT_LAST_COLUMN_SET <= '0';
                  consoleReceiverState <= consoleReceiver_waitDone;
               else  -- Shift control
                  CONSOLE_INPUT_LAST_COLUMN_SET <= '0';
                  CONSOLE_INPUT_CONTROL_KEY_BUFFER <= "000000";
                  -- Start the shift process only if the shift is actually changing.
                  if FIFO_READ_DATA(CONSOLE_INPUT_CONTROL_UPPER_CASE) /= inUpperCase then
                     CONSOLE_INPUT_BAIL_CONTACT_UPPER_CASE_SHIFT <= 
                        FIFO_READ_DATA(CONSOLE_INPUT_CONTROL_UPPER_CASE);
                     CONSOLE_INPUT_BAIL_CONTACT_LOWER_CASE_SHIFT <= 
                        not FIFO_READ_DATA(CONSOLE_INPUT_CONTROL_UPPER_CASE);
                     consoleReceiverState <= consoleReceiver_waitShift;
                  else
                     -- Request is for shift to shift mode we are already in.
                     consoleReceiverState <= consoleReceiver_waitDone;                  
                  end if;
                     
               end if;
            else
               CONSOLE_INPUT_BUFFER <= FIFO_READ_DATA(5 downto 0);
               CONSOLE_INPUT_PARITY <= FIFO_READ_DATA(0) xor FIFO_READ_DATA(1) xor
                  FIFO_READ_DATA(2) xor FIFO_READ_DATA(3) xor FIFO_READ_DATA(4) xor
                  FIFO_READ_DATA(5);   
               CONSOLE_INPUT_LAST_COLUMN_SET <= '0';                  
               consoleReceiverState <= consoleReceiver_waitForPrinter;
            end if;
         else
            consoleReceiverState <= consoleReceiver_getChar;  -- Should never actually get here
         end if;
         
      when consoleReceiver_waitForPrinter =>
         if CONSOLE_INPUT_PRINTER_BUSY = '0' then
            consoleReceiverState <= consoleReceiver_sendChar;
         else
            consoleReceiverState <= consoleReceiver_waitForPrinter;
         end if;
         
         
      when consoleReceiver_sendChar =>
         CONSOLE_INPUT_BAIL_CONTACT_R1 <= not CONSOLE_INPUT_BUFFER(BCD_2_BIT);
         CONSOLE_INPUT_BAIL_CONTACT_R2 <= 
            not CONSOLE_INPUT_BUFFER(BCD_8_BIT) and not CONSOLE_INPUT_BUFFER(BCD_4_BIT);
         CONSOLE_INPUT_BAIL_CONTACT_R2A <=
            not CONSOLE_INPUT_BUFFER(BCD_8_BIT) or CONSOLE_INPUT_BUFFER(BCD_4_BIT);
         CONSOLE_INPUT_BAIL_CONTACT_R5 <=
            (CONSOLE_INPUT_BUFFER(BCD_8_BIT) and not CONSOLE_INPUT_BUFFER(BCD_1_BIT)) or
            (not CONSOLE_INPUT_BUFFER(BCD_8_BIT) and CONSOLE_INPUT_BUFFER(BCD_1_BIT));
         CONSOLE_INPUT_BAIL_CONTACT_T1 <= not CONSOLE_INPUT_BUFFER(BCD_A_BIT);
         CONSOLE_INPUT_BAIL_CONTACT_T2 <= not CONSOLE_INPUT_BUFFER(BCD_B_BIT);
         CONSOLE_INPUT_BAIL_CONTACT_CHK <= CONSOLE_INPUT_PARITY;
         consoleReceiverState <= consoleReceiver_waitOutput;
         
      -- Release the bails so we don't end up with endless pring cycles...
         
      when consoleReceiver_waitOutput =>
         if outputState = output_s4 then
            CONSOLE_INPUT_BAIL_CONTACT_R1 <= '0';
            CONSOLE_INPUT_BAIL_CONTACT_R2 <= '0';
            CONSOLE_INPUT_BAIL_CONTACT_R2A <= '0';
            CONSOLE_INPUT_BAIL_CONTACT_R5 <= '0';
            CONSOLE_INPUT_BAIL_CONTACT_T1 <= '0';
            CONSOLE_INPUT_BAIL_CONTACT_T2 <= '0';
            CONSOLE_INPUT_BAIL_CONTACT_CHK <= '0';
            consoleReceiverState <= consoleReceiver_waitDone;
         else
            consoleReceiverState <= consoleReceiver_waitOutput;
         end if;
         
      --  Release bails once shift cycle starts.  That shift cycle also gives
      --  1410 time to latch the various special control keys.
         
      when consoleReceiver_waitShift =>
         if shiftState = shift_s0 then
            consoleReceiverState <= consoleReceiver_waitDone;
            CONSOLE_INPUT_BAIL_CONTACT_LOWER_CASE_SHIFT <= '0';
            CONSOLE_INPUT_BAIL_CONTACT_UPPER_CASE_SHIFT <= '0';                     
         else
            consoleReceiverState <= consoleReceiver_waitShift;
         end if;
                     
      when consoleReceiver_waitDone =>
         if CONSOLE_INPUT_PRINTER_BUSY = '1' or shiftState /= shift_idle or 
            spaceState /= space_idle or crState /= cr_idle or sbState /= sb_idle then
            consoleReceiverState <= consoleReceiver_waitDone;
         else
            consoleReceiverState <= consoleReceiver_waitForChar;
            CONSOLE_INPUT_BUFFER <= "000000"; 
         end if;
                     
      end case;
         
   end if;
   
   end process;
   
      -- Instantiate the FIFO ring buffer
   
   FIFO : ring_buffer
      generic map (
         RAM_WIDTH => CONSOLE_INPUT_FIFO_WIDTH,
         RAM_DEPTH => CONSOLE_INPUT_FIFO_SIZE
      )
      port map (
         clk => FPGA_CLK,
         rst => UART_RESET,
         wr_en => IBM1410_CONSOLE_INPUT_FIFO_WRITE_ENABLE,
         wr_data => IBM1410_CONSOLE_INPUT_FIFO_WRITE_DATA,
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

CONSOLE_PRINTER_CONTACT_R1 <= PW_CONS_PRINTER_R1_SOLENOID or CONSOLE_INPUT_BAIL_CONTACT_R1;
CONSOLE_PRINTER_CONTACT_R2 <= PW_CONS_PRINTER_R2_SOLENOID or CONSOLE_INPUT_BAIL_CONTACT_R2;
CONSOLE_PRINTER_CONTACT_R2A <= PW_CONS_PRINTER_R2A_SOLENOID or CONSOLE_INPUT_BAIL_CONTACT_R2A;
CONSOLE_PRINTER_CONTACT_R5 <= PW_CONS_PRINTER_R5_SOLENOID or CONSOLE_INPUT_BAIL_CONTACT_R5;
CONSOLE_PRINTER_CONTACT_T1 <= PW_CONS_PRINTER_T1_SOLENOID or CONSOLE_INPUT_BAIL_CONTACT_T1;
CONSOLE_PRINTER_CONTACT_T2 <= PW_CONS_PRINTER_T2_SOLENOID or CONSOLE_INPUT_BAIL_CONTACT_T2;
CONSOLE_PRINTER_CONTACT_CHK <= PW_CONS_PRINTER_CHK_SOLENOID or CONSOLE_INPUT_BAIL_CONTACT_CHK;

CONSOLE_PRINTER_CONTACT_UPPER_CASE_SHIFT <= PW_UPPER_CASE_SHIFT_SOLENOID or CONSOLE_INPUT_BAIL_CONTACT_UPPER_CASE_SHIFT;
CONSOLE_PRINTER_CONTACT_LOWER_CASE_SHIFT <= PW_LOWER_CASE_SHIFT_SOLENOID or CONSOLE_INPUT_BAIL_CONTACT_LOWER_CASE_SHIFT;

-- A lot of state machine examples uses "if" statements to generate
-- combinatorial values, but I don't think that is the best way, so

CAM1 <= '1' when
   outputState = output_s3 or
   outputState = output_strobe or
   outputState = output_s4 or
   outputState = output_s5
   else '0';

CAM2 <= '1' when
   outputState = output_s2 or 
   outputState = output_s3 or
   outputState = output_strobe or 
   outputState = output_s4
   else '0';

CAM5 <= '1' when
   spaceState = space_s3 or
   wmState = wm_s3 or
   sbState = sb_s3
   else '0';

CAM3_OR_4 <= '1' when
   shiftState = shift_s2
   else '0';

CR_INTERLOCK <= '1' when
   crState = cr_s1 or
   crState = cr_strobe or
   crState = cr_s2
   else '0';
      
MV_CONS_PRINTER_LAST_COLUMN_SET <= '0' when currentColumn = MAX_COLUMN or CONSOLE_INPUT_LAST_COLUMN_SET = '1'
   else '1';      

currentColumnUp <= '1' when outputState = output_s3 or
      (spaceState = space_s3 and latchedSpace = '1')
   else '0'; 

currentColumnDown <= '1' when spaceState = space_s3 and 
   latchedBackspace = '1'
   else '0';

currentColumnReset <= '1' when crState = cr_s0
   else '0';
      
R1Motion <= 1 when CONSOLE_PRINTER_CONTACT_R1 = '0' else 0;
R2Motion <= 2 when CONSOLE_PRINTER_CONTACT_R2 = '0' else 0; 
R2AMotion <= 2 when CONSOLE_PRINTER_CONTACT_R2A = '0' else 0;
-- Note that R5Motion is "biased" by +5
R5Motion <= 5 when CONSOLE_PRINTER_CONTACT_R5 = '0' else 0;
T1Motion <= 1 when CONSOLE_PRINTER_CONTACT_T1 = '0' else 0;
T2Motion <= 2 when CONSOLE_PRINTER_CONTACT_T2 = '0' else 0;

CONSOLE_INPUT_PRINTER_BUSY <= CAM1 or CAM2  or
   CAM5 or CAM3_OR_4 or CR_INTERLOCK; -- or not consoleLockStatus;
   
rotateIndex <= R1Motion + R2Motion + R2AMotion + R5Motion;
tiltIndex <= T1Motion + T2Motion;

-- On the following signals, NC / NO refer to the state when the
-- console selectric is IDLE.  Also, note that these are MV (-V)
-- signals, so a NC will be a logic 0 (-V) when IDLE, and NO
-- will be logic 1 (+V) when IDLE.  The CAM signals are active
-- HIGH when a CAM is activated (typically while the console is
-- BUSY.

-- So, for example, CAM1 is '0' when idle, and '1' when mid cycle
-- And the the MV C1_CAM NC is '0' (-V) when idle and '1' (open) when
-- the CAM is active.

MV_CONS_PRINTER_C1_CAM_NC <= CAM1;
MV_CONS_PRINTER_C1_CAM_NO <= not CAM1;

MV_CONS_PRINTER_C2_CAM_NC <= CAM2 or CAM5 or CR_INTERLOCK;
MV_CONS_PRINTER_C2_CAM_NO <= not CAM2 and not CAM5 and not CR_INTERLOCK;

MV_CONS_PRINTER_C3_OR_C4_NO <= not CAM3_OR_4;

-- In the names below, the NC/NO are misleading. 
-- MV_CONS_PRINTER_UPPER_CASE_STAR_S1NC is 0 when in upper case, and
-- MV_CONS_PRINTER_LOWER_CASE_STAR_S1NO is 0 when in lower case.

MV_CONS_PRINTER_UPPER_CASE_STAR_S1NC <= not inUpperCase;
MV_CONS_PRINTER_LOWER_CASE_STAR_S1NO <= inUpperCase;

-- ODD parity - but MB/MV signals are active LOW

MV_CONS_PRINTER_ODD_BIT_CHECK <= not output_parity;
MB_CONS_PRINTER_EVEN_BIT_CHECK <= output_parity;

-- Console spacing confused me for  a while, thinking that the signal
-- MV_CONS_PRINTER_SPACE_NO was only used when the space bar was 
-- pressed.  It turns out it is a function cam driven output.  This
-- was causing problems during ordinary output of a space.

-- MV_CONS_PRINTER_SPACE_NO <= not CONSOLE_INPUT_CONTROL_KEY_BUFFER(CONSOLE_INPUT_CONTROL_SPACE);
MV_CONS_PRINTER_SPACE_NO <= '0' when
   (spaceState /= space_idle and PW_BACKSPACE_SOLENOID = '0' and latchedBackspace = '0') or 
   sbState /= sb_idle
   else '1';

-- Page 45.50.07.1 shows the signal -W KEYBOARD_LOCK_SOLENOID
-- shows this as -W, but the console sheet 40.30.01.1 shows this as
-- +W   The console sheet and signal names for the locks show the
-- -V lock mode signal as Normally Open

-- The I/O Printers Fundamentals manual indicates that the lock
-- solenoid is energized to UNLOCK the keyboard. (this is correct)

-- Looking at the schematic, it is clear that a positive voltage will
-- activate the lock solenoid.  Also looking at the schematic the NC
-- "unlock" contact is the lower (energized) contact.

-- Looking at a waveform during simulation, when +S Keyboard Unlock is
-- normally 0 (not active) -W Keyboard Lock Solenoid is 0 (active).
-- BUT, if we suppose this means that +W on this line UNLOCKS the 
-- keyboard, that makes sense.

-- In the end, when looking at the 1410 CPU side, it turns out that
-- MV_KEYBOARD_UNLOCK_MODE is 0 when the keyboard is unlocked and
-- MV_KEYBOARD_LOCK_MODE_STAR_NO is 0 when the keyboard is locked
-- (Which makes the "NO" part of that name somewhat misleading)

MV_KEYBOARD_LOCK_MODE_STAR_NO <= MW_KEYBOARD_LOCK_SOLENOID;
MV_KEYBOARD_UNLOCK_MODE <= not MW_KEYBOARD_LOCK_SOLENOID;

-- Console Output UART Support

IBM1410_CONSOLE_XMT_CHAR <= 
   printChar when outputState = output_s3 or
      outputState = output_strobe or  
      outputState = output_s4 else
   X"20" when ((spaceState = space_s1 or spaceState = space_strobe or spaceState = space_s2) and latchedSpace = '1') or
              (sbState = sb_s1 or sbState = sb_strobe or sbState = sb_s2) else
   X"08" when (spaceState = space_s1 or spaceState = space_strobe or spaceState = space_s2) and latchedBackSpace = '1' else
   X"0D" when crState = cr_s1 or crState = cr_strobe or crState = cr_s2 else
   X"00";

IBM1410_CONSOLE_XMT_STROBE <= '1' when 
   outputState = output_strobe or
   spaceState = space_strobe or
   sbState = sb_strobe or
   crState = cr_strobe 
   else '0';

IBM1410_CONSOLE_LOCK_XMT_CHAR <= "0000000" &  consoleLockStatus;
IBM1410_CONSOLE_LOCK_XMT_STROBE <= '1' when consoleLockState = consoleLock_update else '0';

-- Console Input Signals

MV_CONS_INQUIRY_REQUEST_KEY_STAR_NO <= not CONSOLE_INPUT_CONTROL_KEY_BUFFER(CONSOLE_INPUT_CONTROL_INQUIRY_REQUEST);
MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO <= not CONSOLE_INPUT_CONTROL_KEY_BUFFER(CONSOLE_INPUT_CONTROL_INQUIRY_RELEASE);
PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC <= CONSOLE_INPUT_CONTROL_KEY_BUFFER(CONSOLE_INPUT_CONTROL_INQUIRY_CANCEL);
MB_CONS_PRTR_WM_INPUT_STAR_WM_T_NO <= not CONSOLE_INPUT_CONTROL_KEY_BUFFER(CONSOLE_INPUT_CONTROL_WM);
-- NOTE: CONSOLE_INPUT_PARITY is calculated as *even* parity, then not-ed for odd, not-ed again for MV
MV_CONSOLE_C_INPUT_STAR_CHK_OP <= '0' when
   CONSOLE_INPUT_PARITY = '0' or
   sbState /= sb_idle
   else '1';
MV_CONS_PRTR_TO_CPU_BUS <= not CONSOLE_INPUT_BUFFER;
  
end Behavioral;
