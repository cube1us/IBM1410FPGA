----------------------------------------------------------------------------------
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
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- TODOs
-- Input character strobe (from uart) / character available (internal)
-- Input character (from uart)

-- Output max column signal (last column set)
-- Output character strobe (for uart)
-- Output character (for uart)

-- Output inquiry request key (based on character input)
-- Output Inquiry release key ( " )
-- Output Inquiry cancel key ( " )
-- Output Wordmark (tab) key ( " )
-- Output Space bar key ( " )
-- Output bits to CPU: BA8421
-- Output Keyboard lock mode

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
      PS_CONS_CLOCK_1_POS: in STD_LOGIC;

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
      
       MV_CONS_INQUIRY_REQUEST_KEY_STAR_NO: out STD_LOGIC;
       MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO: out STD_LOGIC;
       PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC: out STD_LOGIC;
       MV_CONS_PRINTER_LAST_COLUMN_SET: out STD_LOGIC;
      
       MV_CONS_PRTR_TO_CPU_BUS: out STD_LOGIC_VECTOR(5 downto 0);
       MB_CONS_PRTR_WM_INPUT_STAR_WM_T_NO: out STD_LOGIC;
       MV_CONSOLE_C_INPUT_STAR_CHK_OP: out STD_LOGIC
      
   );

end IBM1410ConsoleTypewriter;

architecture Behavioral of IBM1410ConsoleTypewriter is

--component SingleShot is
--   PORT(
--      FPGA_CLK: in STD_LOGIC;
--      IN1: in STD_LOGIC;
--      IN2: in STD_LOGIC := '1';
--      IN3: in STD_LOGIC := '1';
--      OUT1: out STD_LOGIC
--   );
--end component;

constant MAX_COLUMN: integer := 80;

type outputState_type is (output_idle, output_s0, output_s0a, output_s1, 
   output_s1a, output_s2, output_s2a, output_s3, output_s3a, output_s4, 
   output_s4a, output_s5, output_s5a, output_s6, output_s6a); 
   
type spaceState_type is (space_idle, space_s0, space_s0a, space_s1,
   space_s1a, space_s2, space_s2a, space_s3, space_s3a, space_s4,
   space_s4a);
   
type shiftState_type is (shift_idle, shift_s0, shift_s0a, shift_s1,
   shift_s1a, shift_s2, shift_s2a, shift_s3, shift_s3a);
   
type crState_type is (cr_idle, cr_s0, cr_s0a, cr_s1, cr_s1a,
   cr_s2, cr_s2a);

signal output_ssin0, output_ssin1, output_ssin2, output_ssin3, output_ssin4, 
   output_ssin5, output_ssin6: std_logic := '1';
signal output_ssout0, output_ssout1, output_ssout2, output_ssout3, 
   output_ssout4, output_ssout5, output_ssout6: std_logic;

signal space_ssin0, space_ssin1, space_ssin2, space_ssin3, space_ssin4:
   std_logic := '1';
signal space_ssout0, space_ssout1, space_ssout2, space_ssout3, 
   space_ssout4: std_logic;
   
signal shift_ssin0, shift_ssin1, shift_ssin2, shift_ssin3: std_logic := '1';
signal shift_ssout0, shift_ssout1, shift_ssout2, shift_ssout3: std_logic;   

signal cr_ssin0, cr_ssin1, cr_ssin2: std_logic := '1';
signal cr_ssout0, cr_ssout1, cr_ssout2: std_logic;

signal outputState, nextOutputState: outputState_type := output_idle;
signal spaceState, nextSpaceState: spaceState_type := space_idle;
signal shiftState, nextShiftState: shiftState_type := shift_idle;
signal crState, nextCrState: crState_type := cr_idle;

 -- For rotateIndex, 0 is 5 units CW (-5), 10 is 5 units CCW (+5)
signal rotateIndex, latchedRotateIndex: integer range 0 to 10 := 5;
signal tiltIndex, latchedTiltIndex:  integer range 0 to 3;

signal latchedSpace: std_logic := '0';
signal latchedBackspace: std_logic := '0';
signal latchedCarriageReturn: std_logic := '0';
signal inUpperCase: std_logic := '0';  -- Default is upper case.

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
signal printChar: character;

signal output_parity: std_logic := '0';

type GolfballTilt is array (0 to 10) of character;

constant Golfball_UC_Tilt0: GolfballTilt :=
 ('?', '?', '@', '>', '?', 'c', '?', ':', '?', '?', '_'); -- b blank, radical
 
constant Golfball_UC_Tilt1: GolfballTilt :=
 ('?', '?', '%', '\', '?', 'b', '?', '~', '?', '?', '?'); -- Segment mk

constant Golfball_UC_Tilt2: GolfballTilt :=
 ('?', '?', '*', ';', '?', '-', '?', ']', 'd', '?', '?'); -- delta (0177 in 1410 font)

constant Golfball_UC_Tilt3: GolfballTilt :=
 ('?', '?', 'l', '<', '?', '&', '?', '[', '?', '?', 'v'); -- group mark, word mark
 
constant Golfball_LC_Tilt0: GolfballTilt :=
 ('1', '3', '5', '7', '8', '0', '2', '4', '6', '9', '#');
 
constant Golfball_LC_Tilt1: GolfballTilt :=
 ('/', 'T', 'V', 'X', 'Y', '|', 'S', 'U', 'W', 'Z', ','); -- record mark

constant Golfball_LC_Tilt2: GolfballTilt :=
 ('J', 'L', 'N', 'P', 'Q', '!', 'K', 'M', 'O', 'R', '$');
 
constant Golfball_LC_Tilt3: GolfballTilt :=
 ('A', 'C', 'E', 'G', 'H', '?', 'B', 'D', 'F', 'I', '.');


signal CAM1, CAM2, CAM3_OR_4, CAM5, CR_INTERLOCK: std_logic := '0';

begin

OUTSS0: entity SingleShot 
   generic map(PULSETIME => 1500 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => output_ssin0,
   OUT1 => output_ssout0
);

OUTSS1: entity SingleShot 
   generic map(PULSETIME => 1250 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => output_ssin1,
   OUT1 => output_ssout1
);

OUTSS2: entity SingleShot 
   generic map(PULSETIME => 1970 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => output_ssin2,
   OUT1 => output_ssout2
);

OUTSS3: entity SingleShot 
   generic map(PULSETIME => 360 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => output_ssin3,
   OUT1 => output_ssout3
);

OUTSS4: entity SingleShot 
   generic map(PULSETIME => 900 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => output_ssin4,
   OUT1 => output_ssout4
);

OUTSS5: entity SingleShot 
   generic map(PULSETIME => 360 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => output_ssin5,
   OUT1 => output_ssout5
);

OUTSS6: entity SingleShot 
   generic map(PULSETIME => 1610 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => output_ssin6,
   OUT1 => output_ssout6
);

SPACESS0: entity SingleShot 
   generic map(PULSETIME => 700 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => space_ssin0,
   OUT1 => space_ssout0
);
 
SPACESS1: entity SingleShot 
   generic map(PULSETIME => 1790 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => space_ssin1,
   OUT1 => space_ssout1
);

SPACESS2: entity SingleShot 
   generic map(PULSETIME => 180 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => space_ssin2,
   OUT1 => space_ssout2
);

SPACESS3: entity SingleShot 
   generic map(PULSETIME => 2690 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => space_ssin3,
   OUT1 => space_ssout3
);

SPACESS4: entity SingleShot 
   generic map(PULSETIME => 1790 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => space_ssin4,
   OUT1 => space_ssout4
);

SHIFTSS0: entity SingleShot 
   generic map(PULSETIME => 700 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => shift_ssin0,
   OUT1 => shift_ssout0
);
 
SHIFTSS1: entity SingleShot 
   generic map(PULSETIME => 1250 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => shift_ssin1,
   OUT1 => shift_ssout1
);

SHIFTSS2: entity SingleShot 
   generic map(PULSETIME => 3950 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => shift_ssin2,
   OUT1 => shift_ssout2
);

SHIFTSS3: entity SingleShot 
   generic map(PULSETIME => 1250 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => shift_ssin3,
   OUT1 => shift_ssout3
);

CRSS0: entity SingleShot 
   -- 7ms initial + 51.9ms
   generic map(PULSETIME => 5890 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => cr_ssin0,
   OUT1 => cr_ssout0
);
 
CRSS1: entity SingleShot 
   generic map(PULSETIME => 10000 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => cr_ssin1,
   OUT1 => cr_ssout1
);

CRSS2: entity SingleShot 
   generic map(PULSETIME => 3950 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => cr_ssin2,
   OUT1 => cr_ssout2
);

output_states: process(FPGA_CLK)
   begin
      if FPGA_CLK'event and FPGA_CLK = '1' then
         outputState <= nextOutputState;
      end if;      
   end process;
   

output_process: process(outputState, -- rotateIndex, tiltIndex,
   output_ssout0, output_ssout1, output_ssout2, output_ssout3, output_ssout4, 
   output_ssout5, output_ssout6, PW_CONS_PRINTER_R1_SOLENOID, 
   PW_CONS_PRINTER_R2_SOLENOID, PW_CONS_PRINTER_R2A_SOLENOID, 
   PW_CONS_PRINTER_R5_SOLENOID, PW_CONS_PRINTER_T1_SOLENOID,
   PW_CONS_PRINTER_T2_SOLENOID, PW_CONS_PRINTER_CHK_SOLENOID)
   begin
   
      -- "default" values for single shot inputs.  This apparently avoids latches

      output_ssin0 <= '1';
      output_ssin1 <= '1';
      output_ssin2 <= '1';
      output_ssin3 <= '1';
      output_ssin4 <= '1';
      output_ssin5 <= '1';
      output_ssin6 <= '1';
      
      case outputState is
      when output_idle =>
         
         if PW_CONS_PRINTER_R1_SOLENOID = '1' or
            PW_CONS_PRINTER_R2_SOLENOID = '1' or
            PW_CONS_PRINTER_R2A_SOLENOID = '1' or
            PW_CONS_PRINTER_R5_SOLENOID = '1' or
            PW_CONS_PRINTER_T1_SOLENOID = '1' or
            PW_CONS_PRINTER_T2_SOLENOID = '1' or
            PW_CONS_PRINTER_CHK_SOLENOID = '1' then            
            nextOutputState <= output_s0a;
            -- report "Entering State output_s0a";
         else
            nextOutputState <= output_idle;             
         end if;

      when output_s0a =>
         -- wait for single shot to trigger
         output_ssin0 <= '0';
         if(output_ssout0 = '0') then
            nextOutputState <= output_s0;
         else
            nextOutputState <= output_s0a;
         end if;
      
      when output_s0 =>
         -- output_ssin0 <= '1';
         if output_ssout0 = '1' then
            -- report "Entering State output_s1";         
            nextOutputState <= output_s1a;
         else
            nextOutputState <= output_s0;
         end if;

      when output_s1a =>
         -- wait for single shot to trigger
         output_ssin1 <= '0';
         if(output_ssout1 = '0') then
            nextOutputState <= output_s1;
         else
            nextOutputState <= output_s1a;
         end if;

      when output_s1 =>
         -- output_ssin1 <= '1';
         if output_ssout1 = '1' then
            -- report "Entering State output_s2";         
            nextOutputState <= output_s2a;
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
            nextOutputState <= output_s1;
         end if;

      when output_s2a =>
         -- wait for single shot to trigger
         output_ssin2 <= '0';
         if(output_ssout2 = '0') then
            nextOutputState <= output_s2;
         else
            nextOutputState <= output_s2a;
         end if;

      when output_s2 =>
         -- output_ssin2 <= '1';
         if output_ssout2 = '1' then
            -- report "Entering State output_s3";         
            nextOutputState <= output_s3a;
            
            -- Time to determine the character to print
            
            if not inUpperCase = '1' then
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
            nextOutputState <= output_s2;
         end if;

      when output_s3a =>
         -- wait for single shot to trigger
         output_ssin3 <= '0';
         if(output_ssout3 = '0') then
            nextOutputState <= output_s3;
         else
            nextOutputState <= output_s3a;
         end if;

      when output_s3 =>
         -- output_ssin3 <= '1';
         if output_ssout3 = '1' then
         
            -- Time to print the character
            
            report "Print char: /" & character'image(printChar) & "/";
            -- report "Rotate Index: " & integer'image(latchedRotateIndex) & 
               -- ", Tilt Index: " & integer'image(latchedTiltIndex);
               
            -- currentColumnUp <= '1';
                     
            -- report "Entering State output_s4";         
            nextOutputState <= output_s4a;
         else
            nextOutputState <= output_s3;
         end if;

      when output_s4a =>
         -- wait for single shot to trigger
         output_ssin4 <= '0';
         if(output_ssout4 = '0') then
            nextOutputState <= output_s4;
            -- currentColumnUp <= '0';
         else
            nextOutputState <= output_s4a;
         end if;

      when output_s4 =>
         -- output_ssin4 <= '1';
         if output_ssout4 = '1' then
            -- report "Entering State output_s5";         
            nextOutputState <= output_s5a;
         else
            nextOutputState <= output_s4;
         end if;

      when output_s5a =>
         -- wait for single shot to trigger
         output_ssin5 <= '0';
         if(output_ssout5 = '0') then
            nextOutputState <= output_s5;
         else
            nextOutputState <= output_s5a;
         end if;

      when output_s5 =>
         -- output_ssin5 <= '1';
         if output_ssout5 = '1' then
            -- report "Entering State output_s6a";         
            nextOutputState <= output_s6a;
            output_parity <= '0';
         else
            nextOutputState <= output_s5;
         end if;

      when output_s6a =>
         -- wait for single shot to trigger
         output_ssin6 <= '0';
         if(output_ssout6 = '0') then
            -- report "Entering State output_s6";
            nextOutputState <= output_s6;
         else
            nextOutputState <= output_s6a;
         end if;


      when output_s6 =>
         -- output_ssin6 <= '1';
         if output_ssout6 = '1' then -- If more input, go right into state 1.
            if PW_CONS_PRINTER_R1_SOLENOID = '1' or
               PW_CONS_PRINTER_R2_SOLENOID = '1' or
               PW_CONS_PRINTER_R2A_SOLENOID = '1' or
               PW_CONS_PRINTER_R5_SOLENOID = '1' or
               PW_CONS_PRINTER_T1_SOLENOID = '1' or
               PW_CONS_PRINTER_T2_SOLENOID = '1' or
               PW_CONS_PRINTER_CHK_SOLENOID = '1' then   
               report "Returning to State output_s1(a)";     
               -- output_ssin1 <= '0';           
               nextOutputState <= output_s1a;            
            else
               report "Returning to state State output_idle";            
               nextOutputState <= output_idle;
            end if;
         else
            nextOutputState <= output_s6;
         end if;

      end case;
         
   end process;
   
space_states: process(FPGA_CLK)
   begin
      if FPGA_CLK'event and FPGA_CLK = '1' then
         spaceState <= nextSpaceState;
      end if;      
   end process;
   

space_process: process(spaceState, space_ssout0, space_ssout1, space_ssout2,
   space_ssout3, space_ssout4, PW_SPACE_SOLENOID, PW_BACKSPACE_SOLENOID)
   begin
   
      -- "default" values for single shot inputs.  This apparently avoids latches

      space_ssin0 <= '1';
      space_ssin1 <= '1';
      space_ssin2 <= '1';
      space_ssin3 <= '1';
      space_ssin4 <= '1';
      
      case spaceState is
      when space_idle =>
         
         if PW_SPACE_SOLENOID = '1' or
            PW_BACKSPACE_SOLENOID = '1' then            
            nextSpaceState <= space_s0a;
            -- report "Entering State space_s0a";
         else
            nextSpaceState <= space_idle;             
         end if;

      when space_s0a =>
         -- wait for single shot to trigger
         space_ssin0 <= '0';
         if(space_ssout0 = '0') then
            -- report "Entering State space_s0";
            nextSpaceState <= space_s0;
         else
            nextSpaceState <= space_s0a;
         end if;
      
      when space_s0 =>
         -- space_ssin0 <= '1';
         if space_ssout0 = '1' then
            -- report "Entering State space_s1";         
            nextSpaceState <= space_s1a;
         else
            nextSpaceState <= space_s0;
         end if;

      when space_s1a =>
         -- wait for single shot to trigger
         space_ssin1 <= '0';
         if(space_ssout1 = '0') then
            nextSpaceState <= space_s1;
         else
            nextSpaceState <= space_s1a;
         end if;

      when space_s1 =>
         -- space_ssin1 <= '1';
         if space_ssout1 = '1' then
            -- report "Entering State space_s2";         
            nextSpaceState <= space_s2a;
            -- Time to latch data before solenoids release
            latchedSpace <= PW_SPACE_SOLENOID;
            latchedBackspace <= PW_BACKSPACE_SOLENOID;
         else
            nextSpaceState <= space_s1;
         end if;

      when space_s2a =>
         -- wait for single shot to trigger
         space_ssin2 <= '0';
         if(space_ssout2 = '0') then
            nextSpaceState <= space_s2;
         else
            nextSpaceState <= space_s2a;
         end if;

      when space_s2 =>
         -- space_ssin2 <= '1';
         if space_ssout2 = '1' then
            -- report "Entering State space_s3";         
            nextSpaceState <= space_s3a;            
         else
            nextSpaceState <= space_s2;
         end if;

      when space_s3a =>
         -- wait for single shot to trigger
         space_ssin3 <= '0';
         if(space_ssout3 = '0') then
            nextSpaceState <= space_s3;
         else
            nextSpaceState <= space_s3a;
         end if;

      when space_s3 =>
         -- space_ssin3 <= '1';
         if space_ssout3 = '1' then
         
            -- Time to space or backspace or shift
            
            if latchedSpace = '1' then
               report "<space>";
               -- currentColumnUp <= '1';
            elsif latchedBackspace = '1' then               
               report "<backspace>";
               -- currentColumnDown <= '1';
            end if;
                     
            -- report "Entering State space_s4";         
            nextSpaceState <= space_s4a;
         else
            nextSpaceState <= space_s3;
         end if;

      when space_s4a =>
         -- wait for single shot to trigger
         space_ssin4 <= '0';
         if(space_ssout4 = '0') then
            nextSpaceState <= space_s4;
            -- currentColumnUp <= '0';
            -- currentColumnDown <= '0';
         else
            nextSpaceState <= space_s4a;
         end if;

      when space_s4 =>
         -- space_ssin4 <= '1';
         if space_ssout4 = '1' then
            report "Entering State space_idle";         
            nextSpaceState <= space_idle;
         else
            nextSpaceState <= space_s4;
         end if;

      end case;
         
   end process;


shift_states: process(FPGA_CLK)
   begin
      if FPGA_CLK'event and FPGA_CLK = '1' then
         shiftState <= nextShiftState;
      end if;      
   end process;
   

shift_process: process(shiftState, shift_ssout0, shift_ssout1, shift_ssout2,
   shift_ssout3, PW_UPPER_CASE_SHIFT_SOLENOID, PW_LOWER_CASE_SHIFT_SOLENOID )
   begin
   
      -- "default" values for single shot inputs.  This apparently avoids latches

      shift_ssin0 <= '1';
      shift_ssin1 <= '1';
      shift_ssin2 <= '1';
      shift_ssin3 <= '1';
      
      case shiftState is
      when shift_idle =>
         
         if PW_UPPER_CASE_SHIFT_SOLENOID = '1' or
            PW_LOWER_CASE_SHIFT_SOLENOID = '1' then            
            nextShiftState <= shift_s0a;
            -- report "Entering State shift_s0a";
         else
            nextShiftState <= shift_idle;             
         end if;

      when shift_s0a =>
         -- wait for single shot to trigger
         shift_ssin0 <= '0';
         if(shift_ssout0 = '0') then
            -- report "Entering State shift_s0";
            nextShiftState <= shift_s0;
         else
            nextShiftState <= shift_s0a;
         end if;
      
      when shift_s0 =>
         -- shift_ssin0 <= '1';
         if shift_ssout0 = '1' then
            -- report "Entering State shift_s1";         
            nextShiftState <= shift_s1a;
         else
            nextShiftState <= shift_s0;
         end if;

      when shift_s1a =>
         -- wait for single shot to trigger
         shift_ssin1 <= '0';
         if(shift_ssout1 = '0') then
            nextShiftState <= shift_s1;
         else
            nextShiftState <= shift_s1a;
         end if;

      when shift_s1 =>
         -- shift_ssin1 <= '1';
         if shift_ssout1 = '1' then
            -- report "Entering State shift_s2";         
            nextShiftState <= shift_s2a;
            -- Time to latch data before solenoids release
            inUpperCase <= PW_UPPER_CASE_SHIFT_SOLENOID;
         else
            nextShiftState <= shift_s1;
         end if;

      when shift_s2a =>
         -- wait for single shot to trigger
         shift_ssin2 <= '0';
         if(shift_ssout2 = '0') then
            nextShiftState <= shift_s2;
         else
            nextShiftState <= shift_s2a;
         end if;

      when shift_s2 =>
         -- shift_ssin2 <= '1';
         if shift_ssout2 = '1' then
            -- report "Entering State shift_s3";         
            nextShiftState <= shift_s3a;            
         else
            nextShiftState <= shift_s2;
         end if;

      when shift_s3a =>
         -- wait for single shot to trigger
         shift_ssin3 <= '0';
         if(shift_ssout3 = '0') then
            nextShiftState <= shift_s3;
         else
            nextShiftState <= shift_s3a;
         end if;

      when shift_s3 =>
         -- shift_ssin3 <= '1';
         if shift_ssout3 = '1' then
         
            -- Time to space or backspace or shift
            if inUpperCase = '1' then
               report "Shifted to Upper Case";
            else
               report "Shifted to Lower Case";
            end if; 
            
            report "Entering State shift_idle";         
            nextShiftState <= shift_idle;
         else
            nextShiftState <= shift_s3;
         end if;

      end case;
         
   end process;

cr_states: process(FPGA_CLK)
   begin
      if FPGA_CLK'event and FPGA_CLK = '1' then
         crState <= nextCrState;
      end if;      
   end process;
   

cr_process: process(crState, cr_ssout0, cr_ssout1, cr_ssout2,
   PW_CARRIAGE_RETURN_SOLENOID)
   begin
   
      -- "default" values for single shot inputs.  This apparently avoids latches

      cr_ssin0 <= '1';
      cr_ssin1 <= '1';
      cr_ssin2 <= '1';
      
      case crState is
      when cr_idle =>
         
         if PW_CARRIAGE_RETURN_SOLENOID = '1' then            
            nextCrState <= cr_s0a;
            -- report "Entering State cr_s0a";
         else
            nextCrState <= cr_idle;             
         end if;

      when cr_s0a =>
         -- wait for single shot to trigger
         cr_ssin0 <= '0';
         if(cr_ssout0 = '0') then
            -- report "Entering State cr_s0";
            nextCrState <= cr_s0;
         else
            nextCrState <= cr_s0a;
         end if;
      
      when cr_s0 =>
         -- cr_ssin0 <= '1';
         if cr_ssout0 = '1' then
            -- report "Entering State cr_s1";         
            nextCrState <= cr_s1a;
            report "<Carriage Return>";
            -- currentColumnReset <= '1';                        
         else
            nextCrState <= cr_s0;
         end if;

      when cr_s1a =>
         -- wait for single shot to trigger
         cr_ssin1 <= '0';
         if(cr_ssout1 = '0') then
            nextCrState <= cr_s1;
            -- currentColumnReset <= '0';
         else
            nextCrState <= cr_s1a;
         end if;

      when cr_s1 =>
         -- cr_ssin1 <= '1';
         if cr_ssout1 = '1' then
            -- report "Entering State cr_s2";         
            nextCrState <= cr_s2a;
         else
            nextCrState <= cr_s1;
         end if;

      when cr_s2a =>
         -- wait for single shot to trigger
         cr_ssin2 <= '0';
         if(cr_ssout2 = '0') then
            nextCrState <= cr_s2;
         else
            nextCrState <= cr_s2a;
         end if;

      when cr_s2 =>
         -- cr_ssin3 <= '1';
         if cr_ssout2 = '1' then
         
            report "Entering State cr_idle";         
            nextCrState <= cr_idle;
         else
            nextCrState <= cr_s2;
         end if;

      end case;
         
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
   
   
-- Combinatorial code
   
-- A lot of state machine examples uses "if" statements to generate
-- combinatorial values, but I don't think that is the best way, so

CAM1 <= '1' when outputState = output_s3a or
   outputState = output_s3 or
   outputState = output_s4a or
   outputState = output_s4 or
   outputState = output_s5a or
   outputState = output_s5
   else '0';

CAM2 <= '1' when outputState = output_s2a or
   outputState = output_s2 or 
   outputState = output_s3a or
   outputState = output_s3 or
   outputState = output_s4a or
   outputState = output_s4
   else '0';

CAM5 <= '1' when spaceState = space_s3a or
   spaceState = space_s3
   else '0';

CAM3_OR_4 <= '1' when shiftState = shift_s2a or
   shiftState = shift_s2
   else '0';

CR_INTERLOCK <= '1' when crState = cr_s1a or
   crState = cr_s1 or
   crState = cr_s2a or
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
   
end Behavioral;
