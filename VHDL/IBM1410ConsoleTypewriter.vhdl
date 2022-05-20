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
-- Revision 0.05 - Fixed up a couple of characters, got rid of commented code from 0.04
-- Revision 0.06 - Added console keyboard lock support

-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- TODOs

-- Output inquiry request key (based on character input)
-- Output Inquiry release key ( " )
-- Output Inquiry cancel key ( " )
-- Output Wordmark (tab) key ( " )
-- Output Space bar key ( " )
-- Output bits to CPU: BA8421
-- There are still some latches in the various state machines - see if they can become
--   combinatorial signals instead.

-- What is -V CONS INPUT*CHK OP


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
   GENERIC(MULTIPLIER: integer := 10000);
  
   PORT (
      FPGA_CLK: in STD_LOGIC;
        
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
       IBM1410_CONSOLE_LOCK_XMT_STROBE: out STD_LOGIC
   );

end IBM1410ConsoleTypewriter;

architecture Behavioral of IBM1410ConsoleTypewriter is

constant MAX_COLUMN: integer := 80;

constant CLOCKPERIOD: integer := 10;   -- 100 Mhz, 10 ns

constant OUT_S0_TIME: integer := (1500 * MULTIPLIER) / CLOCKPERIOD;
constant OUT_S1_TIME: integer := (1250 * MULTIPLIER) / CLOCKPERIOD;
constant OUT_S2_TIME: integer := (1970 * MULTIPLIER) / CLOCKPERIOD;
constant OUT_S3_TIME: integer := (360 * MULTIPLIER) / CLOCKPERIOD;
constant OUT_S4_TIME: integer := (900 * MULTIPLIER) / CLOCKPERIOD;
constant OUT_S5_TIME: integer := (360 * MULTIPLIER) / CLOCKPERIOD;
constant OUT_S6_TIME: integer := (1610 * MULTIPLIER) / CLOCKPERIOD;
constant SPACE_S0_TIME: integer := (700 * MULTIPLIER) / CLOCKPERIOD;
constant SPACE_S1_TIME: integer := (1790 * MULTIPLIER) / CLOCKPERIOD;
constant SPACE_S2_TIME: integer := (180 * MULTIPLIER) / CLOCKPERIOD;
constant SPACE_S3_TIME: integer := (2690 * MULTIPLIER) / CLOCKPERIOD;
constant SPACE_S4_TIME: integer := (1790 * MULTIPLIER) / CLOCKPERIOD;
constant SHIFT_S0_TIME: integer := (700 * MULTIPLIER) / CLOCKPERIOD;
constant SHIFT_S1_TIME: integer := (1250 * MULTIPLIER) / CLOCKPERIOD;
constant SHIFT_S2_TIME: integer := (3950 * MULTIPLIER) / CLOCKPERIOD;
constant SHIFT_S3_TIME: integer := (1250 * MULTIPLIER) / CLOCKPERIOD;
constant CR_S0_TIME: integer := (5890 * MULTIPLIER) / CLOCKPERIOD;
constant CR_S1_TIME: integer := (10000 * MULTIPLIER) / CLOCKPERIOD;
constant CR_S2_TIME: integer := (3950 * MULTIPLIER) / CLOCKPERIOD;

constant OUT_STROBE_TIME: integer := 10;   -- 100 ns uart strobe time

constant CONSOLE_LOCK_UNLOCK_WAIT_TIME: integer := 5; -- wait to send updates because we may be in reset.


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
   
type consoleLockState_type is(consoleLock_idle, consoleLock_wait, consoleLock_update);

signal outputCounter: INTEGER RANGE 0 to (2000 * MULTIPLIER) / CLOCKPERIOD;   -- Max delay for any state
signal spaceCounter:  INTEGER RANGE 0 to (3000 * MULTIPLIER) / CLOCKPERIOD;
signal shiftCounter:  INTEGER RANGE 0 to (4000 * MULTIPLIER) / CLOCKPERIOD;
signal crCounter:     INTEGER RANGE 0 to (10000 * MULTIPLIER) / CLOCKPERIOD;
signal consoleLockCounter: INTEGER RANGE 0 to CONSOLE_LOCK_UNLOCK_WAIT_TIME := 0;

signal outputState: outputState_type := output_idle;  -- , nextOutputState
signal spaceState: spaceState_type := space_idle; -- , nextSpaceState
signal shiftState: shiftState_type := shift_idle; -- , nextShiftState
signal crState: crState_type := cr_idle;  -- , nextCrState
signal consoleLockState: consoleLockState_type := consoleLock_idle;

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
   PW_CONS_PRINTER_R1_SOLENOID, 
   PW_CONS_PRINTER_R2_SOLENOID, PW_CONS_PRINTER_R2A_SOLENOID, 
   PW_CONS_PRINTER_R5_SOLENOID, PW_CONS_PRINTER_T1_SOLENOID,
   PW_CONS_PRINTER_T2_SOLENOID, PW_CONS_PRINTER_CHK_SOLENOID,
   rotateIndex,tiltIndex,inUpperCase,latchedTiltIndex,latchedRotateIndex
   )
   begin
   
   if FPGA_CLK'event and FPGA_CLK = '1' then 
      
      case outputState is
      when output_idle =>
         
         if PW_CONS_PRINTER_R1_SOLENOID = '1' or
            PW_CONS_PRINTER_R2_SOLENOID = '1' or
            PW_CONS_PRINTER_R2A_SOLENOID = '1' or
            PW_CONS_PRINTER_R5_SOLENOID = '1' or
            PW_CONS_PRINTER_T1_SOLENOID = '1' or
            PW_CONS_PRINTER_T2_SOLENOID = '1' or
            PW_CONS_PRINTER_CHK_SOLENOID = '1' then            
            outputCounter <= OUT_S0_TIME;
            outputState <= output_s0;
         else
            outputState <= output_idle;             
         end if;

      when output_s0 =>
         if outputCounter = 0 then
            outputState <= output_s1;
            outputCounter <= OUT_S1_TIME;
         else
            outputCounter <= outputCounter - 1;
            outputState <= output_s0;
         end if;

      when output_s1 =>
         if outputCounter = 0 then
            outputState <= output_s2;
            outputCounter <= OUT_S2_TIME;
            -- Time to latch data before solenoids release, including parity
            -- This is equivalent to the Selectric mechanical latches
            latchedRotateIndex <= rotateIndex;
            latchedTiltIndex <= tiltIndex;            
            output_parity <=
               PW_CONS_PRINTER_R1_SOLENOID xor      
               PW_CONS_PRINTER_R2_SOLENOID xor     
               PW_CONS_PRINTER_R2A_SOLENOID xor
               PW_CONS_PRINTER_R5_SOLENOID xor
               PW_CONS_PRINTER_T1_SOLENOID xor
               PW_CONS_PRINTER_T2_SOLENOID xor
               PW_CONS_PRINTER_CHK_SOLENOID;
         else
            outputCounter <= outputCounter - 1;
            outputState <= output_s1;
         end if;

      when output_s2 =>
         if outputCounter = 0 then
            outputState <= output_s3;
            outputCounter <= OUT_S3_TIME;
            
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
            outputCounter <= OUT_S4_TIME;
         else
            outputCounter <= outputCounter - 1;
            outputState <= output_strobe;
         end if;
                 
      when output_s4 =>
         if outputCounter = 0 then
            outputState <= output_s5;
            outputCounter <= OUT_S5_TIME;
         else
            outputCounter <= outputCounter - 1;
            outputState <= output_s4;
         end if;

      when output_s5 =>
         if outputCounter = 0 then
            outputState <= output_s6;
            outputCounter <= OUT_S6_TIME;
            output_parity <= '0';
         else
            outputCounter <= outputCounter - 1;
            outputState <= output_s5;
         end if;

      when output_s6 =>
         if outputCounter = 0 then
            if PW_CONS_PRINTER_R1_SOLENOID = '1' or
               PW_CONS_PRINTER_R2_SOLENOID = '1' or
               PW_CONS_PRINTER_R2A_SOLENOID = '1' or
               PW_CONS_PRINTER_R5_SOLENOID = '1' or
               PW_CONS_PRINTER_T1_SOLENOID = '1' or
               PW_CONS_PRINTER_T2_SOLENOID = '1' or
               PW_CONS_PRINTER_CHK_SOLENOID = '1' then   
               outputState <= output_s1;
               outputCounter <= OUT_S1_TIME;            
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
   PW_SPACE_SOLENOID, 
   PW_BACKSPACE_SOLENOID,
   latchedSpace,
   latchedBackspace)
   begin
   
      if FPGA_CLK'event and FPGA_CLK = '1' then
      
         case spaceState is
         when space_idle =>
         
            if PW_SPACE_SOLENOID = '1' or
               PW_BACKSPACE_SOLENOID = '1' then            
               spaceState <= space_s0;
               spaceCounter <= SPACE_S0_TIME;
            else
               spaceState <= space_idle;             
            end if;
     
         when space_s0 =>
            if spaceCounter = 0 then
               spaceState <= space_s1;
               spaceCounter <= SPACE_S1_TIME;
            else
               spaceState <= space_s0;
               spaceCounter <= spaceCounter - 1;
            end if;

         when space_s1 =>
            if spaceCounter = 0 then
               spaceState <= space_s2;
               spaceCounter <= SPACE_S2_TIME;
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
               spaceCounter <= SPACE_S3_TIME;
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
               spaceCounter <= SPACE_S4_TIME;
            else
               spaceState <= space_s3;
               spaceCounter <= spaceCounter - 1;
            end if;

         when space_s4 =>
            if spaceCounter = 0 then
               spaceState <= space_idle;
            else
               spaceState <= space_s4;
               spaceCounter <= spaceCounter - 1;
            end if;

         end case;
      end if;
         
   end process;

shift_process: process(FPGA_CLK,
   shiftState, 
   PW_UPPER_CASE_SHIFT_SOLENOID, 
   PW_LOWER_CASE_SHIFT_SOLENOID,
   latchedCaseChange,
   inUpperCase)
   begin
   
   if FPGA_CLK'event and FPGA_CLK = '1' then
   
      case shiftState is
      when shift_idle =>
         
         if PW_UPPER_CASE_SHIFT_SOLENOID = '1' or
            PW_LOWER_CASE_SHIFT_SOLENOID = '1' then            
            shiftState <= shift_s0;
            shiftCounter <= SHIFT_S0_TIME;
            -- Remember the case to change to now, because if
            -- we try to do it in state S1, the CPU drops the
            -- shift solenoid at the same time, and that causes
            -- us to lose the case change.
            latchedCaseChange <= PW_UPPER_CASE_SHIFT_SOLENOID;
         else
            shiftState <= shift_idle;             
         end if;

      when shift_s0 =>
         if shiftCounter = 0 then
            shiftState <= shift_s1;
            shiftCounter <= SHIFT_S1_TIME;
         else
            shiftState <= shift_s0;
            shiftCounter <= shiftCounter - 1;
         end if;

      when shift_s1 =>
         if shiftCounter = 0 then
            -- Time to latch data before solenoids release
            inUpperCase <= latchedCaseChange;
            shiftState <= shift_s2;
            shiftCounter <= SHIFT_S2_TIME;
         else
            shiftState <= shift_s1;
            shiftCounter <= shiftCounter - 1;
         end if;

      when shift_s2 =>
         if shiftCounter = 0 then
            shiftState <= shift_s3;
            shiftCounter <= SHIFT_S3_TIME;            
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
   PW_CARRIAGE_RETURN_SOLENOID)
   begin
   
   if FPGA_CLK'event and FPGA_CLK = '1' then
      
      case crState is
      when cr_idle =>
         
         if PW_CARRIAGE_RETURN_SOLENOID = '1' then            
            crState <= cr_s0;
            crCounter <= CR_S0_TIME;
         else
            crState <= cr_idle;             
         end if;

      when cr_s0 =>
         if crCounter = 0 then
            crState <= cr_s1;
            crCounter <= CR_S1_TIME;                        
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
            crCounter <= CR_S2_TIME;
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
         if consoleLockStatus = MW_KEYBOARD_LOCK_SOLENOID then
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
   
   
-- Combinatorial code
   
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
   spaceState = space_s3
   else '0';

CAM3_OR_4 <= '1' when
   shiftState = shift_s2
   else '0';

CR_INTERLOCK <= '1' when
   crState = cr_s1 or
   crState = cr_strobe or
   crState = cr_s2
   else '0';
      
MV_CONS_PRINTER_LAST_COLUMN_SET <= '0' when currentColumn = MAX_COLUMN
   else '1';      

currentColumnUp <= '1' when outputState = output_s3 or
      (spaceState = space_s3 and latchedSpace = '1')
   else '0'; 

currentColumnDown <= '1' when spaceState = space_s3 and 
   latchedBackspace = '1'
   else '0';

currentColumnReset <= '1' when crState = cr_s0
   else '0';
      
R1Motion <= 1 when PW_CONS_PRINTER_R1_SOLENOID = '0' else 0;
R2Motion <= 2 when PW_CONS_PRINTER_R2_SOLENOID = '0' else 0; 
R2AMotion <= 2 when PW_CONS_PRINTER_R2A_SOLENOID = '0' else 0;
-- Note that R5Motion is "biased" by +5
R5Motion <= 5 when PW_CONS_PRINTER_R5_SOLENOID = '0' else 0;
T1Motion <= 1 when PW_CONS_PRINTER_T1_SOLENOID = '0' else 0;
T2Motion <= 2 when PW_CONS_PRINTER_T2_SOLENOID = '0' else 0;
   
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
   X"20" when (spaceState = space_s1 or spaceState = space_strobe or spaceState = space_s2) and latchedSpace = '1' else
   X"08" when (spaceState = space_s1 or spaceState = space_strobe or spaceState = space_s2) and latchedBackSpace = '1' else
   X"0D" when crState = cr_s1 or crState = cr_strobe or crState = cr_s2 else
   X"00";

IBM1410_CONSOLE_XMT_STROBE <= '1' when 
   outputState = output_strobe or
   spaceState = space_strobe or
   crState = cr_strobe 
   else '0';

IBM1410_CONSOLE_LOCK_XMT_CHAR <= "0000000" &  consoleLockStatus;
IBM1410_CONSOLE_LOCK_XMT_STROBE <= '1' when consoleLockState = consoleLock_update else '0';

-- Placeholders to avoid undefined signals

MV_CONS_PRINTER_SPACE_NO <= '1';
MV_CONS_INQUIRY_REQUEST_KEY_STAR_NO <= '1';
MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO <= '1';
PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC <= '0';
MB_CONS_PRTR_WM_INPUT_STAR_WM_T_NO <= '1';
MV_CONSOLE_C_INPUT_STAR_CHK_OP <= '1';
MV_CONS_PRTR_TO_CPU_BUS <= "111111";

  
end Behavioral;
