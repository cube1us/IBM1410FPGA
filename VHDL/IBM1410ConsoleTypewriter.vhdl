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


-- TODO: Input parity check
-- TODO: Space
-- TODO: Backspace
-- TODO: Carriage Return
-- TODO: Wordmark

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

       PW_UPPER_CASE_SHIFT_SOLENOID: in STD_LOGIC;
       PW_LOWER_CASE_SHIFT_SOLENOID: in STD_LOGIC;
       PW_BACKSPACE_SOLENOID: in STD_LOGIC;
       PW_SPACE_SOLENOID: in STD_LOGIC;
       PW_CARRIAGE_RETURN_SOLENOID: in STD_LOGIC;      

       MW_KEYBOARD_LOCK_SOLENOID: in STD_LOGIC;
       PW_CONS_PRINTER_CHK_SOLENOID: in STD_LOGIC; --
      
       MV_CONS_PRINTER_C1_CAM_NO: out STD_LOGIC; --
       MV_CONS_PRINTER_C1_CAM_NC: out STD_LOGIC; --
       MV_CONS_PRINTER_C2_CAM_NC: out STD_LOGIC; --
       MV_CONS_PRINTER_C2_CAM_NO: out STD_LOGIC; --
       MV_CONS_PRINTER_C3_OR_C4_NO: out STD_LOGIC;

       MV_CONS_PRINTER_SPACE_NO: out STD_LOGIC;
      
       MV_CONS_PRINTER_UPPER_CASE_STAR_S1NC: out STD_LOGIC;
       MV_CONS_PRINTER_LOWER_CASE_STAR_S1NO: out STD_LOGIC;
       MB_CONS_PRINTER_EVEN_BIT_CHECK: out STD_LOGIC;
       MV_CONS_PRINTER_ODD_BIT_CHECK: out STD_LOGIC; 
       MV_KEYBOARD_LOCK_MODE_STAR_NO: out STD_LOGIC;
       MV_KEYBOARD_UNLOCK_MODE: out STD_LOGIC;
      
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

type outputState_type is (output_idle, output_s0, output_s0a, output_s1, 
   output_s1a, output_s2, output_s2a, output_s3, output_s3a, output_s4, 
   output_s4a, output_s5, output_s5a, output_s6, output_s6a); 
   
type spaceState_type is (space_idle, space_s0, space_s0a, space_s1,
   space_s1a, space_s2, space_s2a, space_s3, space_s3a, space_s4,
   space_s4a);
   
type shiftState_type is (shift_idle, shift_s0, shift_s0a, shift_s1,
   shift_s1a, shift_s2, shift_s2a, shift_s3, shift_s3a);

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

signal outputState, nextOutputState: outputState_type := output_idle;
signal spaceState, nextSpaceState: spaceState_type := space_idle;
signal shiftState, nextShiftState: shiftState_type := shift_idle;

 -- For rotateIndex, 0 is 5 units CW (-5), 10 is 5 units CCW (+5)
signal rotateIndex, latchedRotateIndex: integer range 0 to 10 := 5;
signal tiltIndex, latchedTiltIndex:  integer range 0 to 3;

signal latchedSpace: std_logic := '0';
signal latchedBackspace: std_logic := '0';
signal latchedCarriageReturn: std_logic := '0';
signal inUpperCase: std_logic := '0';  -- Default is upper case.

signal R1Motion: integer range 0 to 1;
signal R2Motion: integer range 0 to 2;
signal R2AMotion: integer range 0 to 2;
signal R5Motion: integer range 0 to 5;
signal T1Motion: integer range 0 to 1;
signal T2Motion: integer range 0 to 2;
signal printChar: character;


type GolfballTilt is array (0 to 10) of character;

constant Golfball_UC_Tilt0: GolfballTilt :=
 ('s', 's', '@', '>', 's', 'b', 's', ':', 'q', 's', '_');
 
constant Golfball_UC_Tilt1: GolfballTilt :=
 ('s', 's', '%', '\', 's', 'a', 's', '~', 'h', 's', 's');

constant Golfball_UC_Tilt2: GolfballTilt :=
 ('s', 's', '*', ';', 's', '-', 's', ']', '^', 's', 's');

constant Golfball_UC_Tilt3: GolfballTilt :=
 ('s', 's', 'l', '<', 's', '&', 's', '[', 'g', 's', 'w');
 
constant Golfball_LC_Tilt0: GolfballTilt :=
 ('1', '3', '5', '7', '8', '0', '2', '4', '6', '9', '#');
 
constant Golfball_LC_Tilt1: GolfballTilt :=
 ('/', 'T', 'V', 'X', 'Y', 'r', 'S', 'U', 'W', 'Z', ',');

constant Golfball_LC_Tilt2: GolfballTilt :=
 ('J', 'L', 'N', 'P', 'Q', '!', 'K', 'M', 'O', 'R', '$');
 
constant Golfball_LC_Tilt3: GolfballTilt :=
 ('A', 'C', 'E', 'G', 'H', '?', 'B', 'D', 'F', 'I', '.');


signal CAM1, CAM2, CAM3_OR_4, CAM5: std_logic := '0';

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
   generic map(PULSETIME => 1790 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => shift_ssin1,
   OUT1 => shift_ssout1
);

SHIFTSS2: entity SingleShot 
   generic map(PULSETIME => 180 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => shift_ssin2,
   OUT1 => shift_ssout2
);

SHIFTSS3: entity SingleShot 
   generic map(PULSETIME => 2690 * MULTIPLIER, CLOCKPERIOD => 10)
   port map(   
   FPGA_CLK => FPGA_CLK,
   IN1 => shift_ssin3,
   OUT1 => shift_ssout3
);


output_states: process(FPGA_CLK)
   begin
      if FPGA_CLK'event and FPGA_CLK = '1' then
         outputState <= nextOutputState;
      end if;      
   end process;
   

output_process: process(outputState, rotateIndex, tiltIndex,
   output_ssout0, output_ssout1, output_ssout2, output_ssout3, output_ssout4, 
   output_ssout5, output_ssout6)
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
            -- Time to latch data before solenoids release
            latchedRotateIndex <= rotateIndex;
            latchedTiltIndex <= tiltIndex;
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
            report "Rotate Index: " & integer'image(latchedRotateIndex) & 
               ", Tilt Index: " & integer'image(latchedTiltIndex);
                     
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
         else
            nextOutputState <= output_s4a;
         end if;

      when output_s4 =>
         -- output_ssin4 <= '1';
         if output_ssout4 = '1' then
            report "Entering State output_s5";         
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
            report "Entering State output_s6a";         
            nextOutputState <= output_s6a;
         else
            nextOutputState <= output_s5;
         end if;

      when output_s6a =>
         -- wait for single shot to trigger
         output_ssin6 <= '0';
         if(output_ssout6 = '0') then
            report "Entering State output_s6";
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
            report "Entering State space_s0a";
         else
            nextSpaceState <= space_idle;             
         end if;

      when space_s0a =>
         -- wait for single shot to trigger
         space_ssin0 <= '0';
         if(space_ssout0 = '0') then
            report "Entering State space_s0";
            nextSpaceState <= space_s0;
         else
            nextSpaceState <= space_s0a;
         end if;
      
      when space_s0 =>
         -- space_ssin0 <= '1';
         if space_ssout0 = '1' then
            report "Entering State space_s1";         
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
            report "Entering State space_s2";         
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
            report "Entering State space_s3";         
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
            elsif latchedBackspace = '1' then
               report "<backspace>";
            end if;
                     
            report "Entering State space_s4";         
            nextSpaceState <= space_s4a;
         else
            nextSpaceState <= space_s3;
         end if;

      when space_s4a =>
         -- wait for single shot to trigger
         space_ssin4 <= '0';
         if(space_ssout4 = '0') then
            nextSpaceState <= space_s4;
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
            report "Entering State shift_s0a";
         else
            nextShiftState <= shift_idle;             
         end if;

      when shift_s0a =>
         -- wait for single shot to trigger
         shift_ssin0 <= '0';
         if(shift_ssout0 = '0') then
            report "Entering State shift_s0";
            nextShiftState <= shift_s0;
         else
            nextShiftState <= shift_s0a;
         end if;
      
      when shift_s0 =>
         -- shift_ssin0 <= '1';
         if shift_ssout0 = '1' then
            report "Entering State shift_s1";         
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
            report "Entering State shift_s2";         
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
            report "Entering State shift_s3";         
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
            
            if latchedSpace = '1' then
               report "<space>";
            elsif latchedBackspace = '1' then
               report "<backspace>";
            end if;
                     
            report "Entering State shift_idle";         
            nextShiftState <= shift_idle;
         else
            nextShiftState <= shift_s3;
         end if;

      end case;
         
   end process;

   
Output_CAM_process: process(FPGA_CLK, outputState)
   begin
   
   if FPGA_CLK'event and FPGA_CLK = '1' then
      if outputState = output_s3a or
         outputState = output_s3 or
         outputState = output_s4a or
         outputState = output_s4 or
         outputState = output_s5a or
         outputState = output_s5 then
         CAM1 <= '1';
      else
         CAM1 <= '0';
      end if;
          
      if outputState = output_s2a or
         outputState = output_s2 or 
         outputState = output_s3a or
         outputState = output_s3 or
         outputState = output_s4a or
         outputState = output_s4 then
         CAM2 <= '1';
      else
         CAM2 <= '0';
      end if;    
      
      if spaceState = space_s3a or
         spaceState = space_s3 then
         CAM5 <= '1';
      else
         CAM5 <= '0';
      end if;
      
      if shiftState = shift_s2a or
         shiftState = shift_s2 then
         CAM3_OR_4 <= '1';
      else
         CAM3_OR_4 <= '0';
      end if;
      
   end if;

end process;

with PW_CONS_PRINTER_R1_SOLENOID select R1Motion <=
   -- 0 when '1',
   1 when '0',
   0 when others;

with PW_CONS_PRINTER_R2_SOLENOID select R2Motion <=
   -- 0 when '1',
   2 when '0',
   0 when others;

with PW_CONS_PRINTER_R2A_SOLENOID select R2AMotion <=
   -- 0 when '1',
   2 when '0',
   0 when others;
   
with PW_CONS_PRINTER_R5_SOLENOID select R5Motion <=
   -- 0 when '1',
   5 when '0',
   0 when others;
   
with PW_CONS_PRINTER_T1_SOLENOID select T1Motion <=
   -- 0 when '1',
   1 when '0',
   0 when others;

with PW_CONS_PRINTER_T2_SOLENOID select T2Motion <=
   -- 0 when '1',
   2 when '0',
   0 when others;
   
rotateIndex <= R1Motion + R2Motion + R2AMotion + R5Motion;
tiltIndex <= T1Motion + T2Motion;

MV_CONS_PRINTER_C1_CAM_NC <= not CAM1;
MV_CONS_PRINTER_C1_CAM_NO <= CAM1;

MV_CONS_PRINTER_C2_CAM_NC <= not CAM2 and not CAM5;
MV_CONS_PRINTER_C2_CAM_NO <= CAM2 or CAM5;

MV_CONS_PRINTER_C3_OR_C4_NO <= CAM3_OR_4;

end Behavioral;
