----------------------------------------------------------------------------------
-- Company: The Computer Collection
-- Engineer: Jay Jaeger
-- 
-- Create Date: 01/12/2021 05:22:47 PM
-- Design Name: IBM1410
-- Module Name: IBM1410ConsoleTypewriter_tb - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Test Bench for Console Typewriter
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
use IEEE.NUMERIC_STD.ALL;
use WORK.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IBM1410ConsoleTypewriter_tb is
   PORT (
      CLK: in  STD_LOGIC;
      SW:  in  STD_LOGIC_VECTOR(15 downto 0);
      LED: out STD_LOGIC_VECTOR(15 downto 0) 
);

end IBM1410ConsoleTypewriter_tb;

architecture Behavioral of IBM1410ConsoleTypewriter_tb is

component IBM1410ConsoleTypewriter is
   GENERIC(MULTIPLIER: integer := 10000);
   PORT (
      FPGA_CLK: in STD_LOGIC;
      PS_CONS_CLOCK_1_POS: in STD_LOGIC;

      PW_CONS_PRINTER_R1_SOLENOID: in STD_LOGIC;      
      PW_CONS_PRINTER_R2_SOLENOID: in STD_LOGIC;
      PW_CONS_PRINTER_R2A_SOLENOID: in STD_LOGIC;
      PW_CONS_PRINTER_R5_SOLENOID: in STD_LOGIC;
      PW_CONS_PRINTER_T1_SOLENOID: in STD_LOGIC;
      PW_CONS_PRINTER_T2_SOLENOID: in STD_LOGIC;

      PW_UPPER_CASE_SHIFT_SOLENOID: in STD_LOGIC;
      PW_LOWER_CASE_SHIFT_SOLENOID: in STD_LOGIC;
      PW_BACKSPACE_SOLENOID: in STD_LOGIC;
      PW_SPACE_SOLENOID: in STD_LOGIC;
      PW_CARRIAGE_RETURN_SOLENOID: in STD_LOGIC;      

      MW_KEYBOARD_LOCK_SOLENOID: in STD_LOGIC;
      PW_CONS_PRINTER_CHK_SOLENOID: in STD_LOGIC;
      
      MV_CONS_PRINTER_C1_CAM_NO: out STD_LOGIC;
      MV_CONS_PRINTER_C1_CAM_NC: out STD_LOGIC;
      MV_CONS_PRINTER_C2_CAM_NC: out STD_LOGIC;
      MV_CONS_PRINTER_C2_CAM_NO: out STD_LOGIC;
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
      MV_CONSOLE_C_INPUT_STAR_CHK_OP: out STD_LOGIC  );
end component;

-- Inputs

   signal FPGA_CLK: STD_LOGIC := '0';
   signal PS_CONS_CLOCK_1_POS: STD_LOGIC := '0';

   signal PW_CONS_PRINTER_R1_SOLENOID: STD_LOGIC := '0'; 
   signal PW_CONS_PRINTER_R2_SOLENOID: STD_LOGIC := '0';
   signal PW_CONS_PRINTER_R2A_SOLENOID: STD_LOGIC := '0';
   signal PW_CONS_PRINTER_R5_SOLENOID: STD_LOGIC := '0';
   signal PW_CONS_PRINTER_T1_SOLENOID: STD_LOGIC := '0';
   signal PW_CONS_PRINTER_T2_SOLENOID: STD_LOGIC := '0';

   signal PW_UPPER_CASE_SHIFT_SOLENOID: STD_LOGIC := '0';
   signal PW_LOWER_CASE_SHIFT_SOLENOID: STD_LOGIC := '0';
   signal PW_BACKSPACE_SOLENOID: STD_LOGIC := '0';
   signal PW_SPACE_SOLENOID: STD_LOGIC := '0';
   signal PW_CARRIAGE_RETURN_SOLENOID: STD_LOGIC := '0'; 

   signal MW_KEYBOARD_LOCK_SOLENOID: STD_LOGIC := '0';
   signal PW_CONS_PRINTER_CHK_SOLENOID: STD_LOGIC := '0';
      
   -- outputs

   signal MV_CONS_PRINTER_C1_CAM_NO: STD_LOGIC; 
   signal MV_CONS_PRINTER_C1_CAM_NC: STD_LOGIC;
   signal MV_CONS_PRINTER_C2_CAM_NC: STD_LOGIC;
   signal MV_CONS_PRINTER_C2_CAM_NO: STD_LOGIC;
   signal MV_CONS_PRINTER_C3_OR_C4_NO: STD_LOGIC;

   signal MV_CONS_PRINTER_SPACE_NO: STD_LOGIC;
   signal MV_CONS_PRINTER_UPPER_CASE_STAR_S1NC: STD_LOGIC;
   signal MV_CONS_PRINTER_LOWER_CASE_STAR_S1NO: STD_LOGIC;
   signal MB_CONS_PRINTER_EVEN_BIT_CHECK: STD_LOGIC;
   signal MV_CONS_PRINTER_ODD_BIT_CHECK: STD_LOGIC; 
   signal MV_KEYBOARD_LOCK_MODE_STAR_NO: STD_LOGIC;
   signal MV_KEYBOARD_UNLOCK_MODE: STD_LOGIC;

   signal MV_CONS_INQUIRY_REQUEST_KEY_STAR_NO: STD_LOGIC;
   signal MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO: STD_LOGIC;
   signal PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC: STD_LOGIC;
   signal MV_CONS_PRINTER_LAST_COLUMN_SET: STD_LOGIC;

   signal MV_CONS_PRTR_TO_CPU_BUS: STD_LOGIC_VECTOR(5 downto 0);
   signal MB_CONS_PRTR_WM_INPUT_STAR_WM_T_NO: STD_LOGIC;
   signal MV_CONSOLE_C_INPUT_STAR_CHK_OP: STD_LOGIC;   

begin

   UUT: IBM1410ConsoleTypewriter
   generic map(MULTIPLIER => 100) -- 100x speed, so 10us == 1ms
   port map(
      FPGA_CLK => FPGA_CLK,
      PS_CONS_CLOCK_1_POS => PS_CONS_CLOCK_1_POS,

      PW_CONS_PRINTER_R1_SOLENOID => PW_CONS_PRINTER_R1_SOLENOID,      
      PW_CONS_PRINTER_R2_SOLENOID => PW_CONS_PRINTER_R2_SOLENOID,
      PW_CONS_PRINTER_R2A_SOLENOID => PW_CONS_PRINTER_R2A_SOLENOID,
      PW_CONS_PRINTER_R5_SOLENOID => PW_CONS_PRINTER_R5_SOLENOID,
      PW_CONS_PRINTER_T1_SOLENOID => PW_CONS_PRINTER_T1_SOLENOID,
      PW_CONS_PRINTER_T2_SOLENOID => PW_CONS_PRINTER_T2_SOLENOID,

      PW_UPPER_CASE_SHIFT_SOLENOID => PW_UPPER_CASE_SHIFT_SOLENOID,
      PW_LOWER_CASE_SHIFT_SOLENOID => PW_LOWER_CASE_SHIFT_SOLENOID,
      PW_BACKSPACE_SOLENOID => PW_BACKSPACE_SOLENOID,
      PW_SPACE_SOLENOID => PW_SPACE_SOLENOID,
      PW_CARRIAGE_RETURN_SOLENOID => PW_CARRIAGE_RETURN_SOLENOID,      

      MW_KEYBOARD_LOCK_SOLENOID => MW_KEYBOARD_LOCK_SOLENOID,
      PW_CONS_PRINTER_CHK_SOLENOID => PW_CONS_PRINTER_CHK_SOLENOID,
      
      MV_CONS_PRINTER_C1_CAM_NO => MV_CONS_PRINTER_C1_CAM_NO,
      MV_CONS_PRINTER_C1_CAM_NC => MV_CONS_PRINTER_C1_CAM_NC,
      MV_CONS_PRINTER_C2_CAM_NC => MV_CONS_PRINTER_C2_CAM_NC,
      MV_CONS_PRINTER_C2_CAM_NO => MV_CONS_PRINTER_C2_CAM_NO,
      MV_CONS_PRINTER_C3_OR_C4_NO => MV_CONS_PRINTER_C3_OR_C4_NO,

      MV_CONS_PRINTER_SPACE_NO => MV_CONS_PRINTER_SPACE_NO,
      
      MV_CONS_PRINTER_UPPER_CASE_STAR_S1NC => MV_CONS_PRINTER_UPPER_CASE_STAR_S1NC,
      MV_CONS_PRINTER_LOWER_CASE_STAR_S1NO => MV_CONS_PRINTER_LOWER_CASE_STAR_S1NO,
      MB_CONS_PRINTER_EVEN_BIT_CHECK => MB_CONS_PRINTER_EVEN_BIT_CHECK,
      MV_CONS_PRINTER_ODD_BIT_CHECK => MV_CONS_PRINTER_ODD_BIT_CHECK, 
      MV_KEYBOARD_LOCK_MODE_STAR_NO => MV_KEYBOARD_LOCK_MODE_STAR_NO, 
      MV_KEYBOARD_UNLOCK_MODE => MV_KEYBOARD_UNLOCK_MODE,
      
      MV_CONS_INQUIRY_REQUEST_KEY_STAR_NO => MV_CONS_INQUIRY_REQUEST_KEY_STAR_NO,
      MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO => MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO,
      PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC => PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC,
      MV_CONS_PRINTER_LAST_COLUMN_SET => MV_CONS_PRINTER_LAST_COLUMN_SET,
      
      MV_CONS_PRTR_TO_CPU_BUS => MV_CONS_PRTR_TO_CPU_BUS,
      MB_CONS_PRTR_WM_INPUT_STAR_WM_T_NO => MB_CONS_PRTR_WM_INPUT_STAR_WM_T_NO,
      MV_CONSOLE_C_INPUT_STAR_CHK_OP => MV_CONSOLE_C_INPUT_STAR_CHK_OP);

fpga_clk_process: process

   constant clk_period : time := 10 ns;

   begin
      fpga_clk <= '0';
      wait for clk_period / 2;
      fpga_clk <= '1';
      wait for clk_period / 2;
   end process;
   

uut_process: process

   variable t: time;

   begin
   
      
   wait for 1us;   
   t := now;

   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T0A C1 NC not 0 at start" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NO = '1' report "T0B C1 N0 not 1 at start" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T0C C2 NC not 0 at start" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NO = '1' report "T0D C2 N0 not 1 at start" severity error;

   
   PW_CONS_PRINTER_R1_SOLENOID <= '0';
   PW_CONS_PRINTER_R2_SOLENOID <= '0';
   PW_CONS_PRINTER_R2A_SOLENOID <= '1';
   PW_CONS_PRINTER_R5_SOLENOID <= '1';
   PW_CONS_PRINTER_T1_SOLENOID <= '0';
   PW_CONS_PRINTER_T2_SOLENOID <= '0';
   PW_CONS_PRINTER_CHK_SOLENOID <= '1';
   
   wait until MV_CONS_PRINTER_C2_CAM_NO = '0';
   -- report "C2 closed at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '1' report "T1A C2 NO and NC both 0" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T1B C1 NC open at wrong time" severity error;

   -- At CAM 2 time, we release solenoid drivers.

   PW_CONS_PRINTER_R1_SOLENOID <= '0';
   PW_CONS_PRINTER_R2_SOLENOID <= '0';
   PW_CONS_PRINTER_R2A_SOLENOID <= '0';
   PW_CONS_PRINTER_R5_SOLENOID <= '0';
   PW_CONS_PRINTER_T1_SOLENOID <= '0';
   PW_CONS_PRINTER_T2_SOLENOID <= '0';
   PW_CONS_PRINTER_CHK_SOLENOID <= '0';
   
   wait until MV_CONS_PRINTER_C1_CAM_NO = '0';
   -- report "C1 closed at " &time'image(now - t);
   assert MV_CONS_PRINTER_C1_CAM_NC = '1' report "T1C C1 NO and NC both 0" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NC = '1' report "T1D C2 NC closed at wrong time" severity error;

   wait until MV_CONS_PRINTER_C2_CAM_NO = '1';
   -- report "C2 opened at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T1E C2 NO and NC both 1" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NO = '0' report "T1F C1 NO open at wrong time" severity error;

   wait until MV_CONS_PRINTER_C1_CAM_NO = '1';
   -- report "C1 opened at " &time'image(now - t);
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T1G C1 NO and NC both 1" severity error;
   
   -- wait for 10ms;  -- Wait, but not so long as to make clutch disengage    
   wait for 100us; -- Wait, but not so long as to make clutch disengage
   t := now;       -- Reset base time

   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T2A C1 NC not 0 at 2nd char" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NO = '1' report "T2B C1 N0 not 1 at 2nd char" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T2C C2 NC not 0 at 2nd char" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NO = '1' report "T2D C2 N0 not 1 at 2nd char" severity error;

   PW_CONS_PRINTER_R1_SOLENOID <= '0';
   PW_CONS_PRINTER_R2_SOLENOID <= '0';
   PW_CONS_PRINTER_R2A_SOLENOID <= '1';
   PW_CONS_PRINTER_R5_SOLENOID <= '0';
   PW_CONS_PRINTER_T1_SOLENOID <= '0';
   PW_CONS_PRINTER_T2_SOLENOID <= '0';
   PW_CONS_PRINTER_CHK_SOLENOID <= '0';
   
   wait until MV_CONS_PRINTER_C2_CAM_NO = '0';
   -- report "C2 closed at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '1' report "T2E C2 NO and NC both 0" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T2F C1 NC open at wrong time" severity error;

   -- At CAM 2 time, we release solenoid drivers.

   PW_CONS_PRINTER_R1_SOLENOID <= '0';
   PW_CONS_PRINTER_R2_SOLENOID <= '0';
   PW_CONS_PRINTER_R2A_SOLENOID <= '0';
   PW_CONS_PRINTER_R5_SOLENOID <= '0';
   PW_CONS_PRINTER_T1_SOLENOID <= '0';
   PW_CONS_PRINTER_T2_SOLENOID <= '0';
   PW_CONS_PRINTER_CHK_SOLENOID <= '0';
   
   wait until MV_CONS_PRINTER_C1_CAM_NO = '0';
   -- report "C1 closed at " &time'image(now - t);
   assert MV_CONS_PRINTER_C1_CAM_NC = '1' report "T2G C1 NO and NC both 0" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NC = '1' report "T2H C2 NC open at wrong time" severity error;

   wait until MV_CONS_PRINTER_C2_CAM_NO = '1';
   -- report "C2 opened at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T2I C2 NO and NC both 1" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NO = '0' report "T2J C1 NO open at wrong time" severity error;

   wait until MV_CONS_PRINTER_C1_CAM_NO = '1';
   -- report "C1 opened at " &time'image(now - t);
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T2K C1 NO and NC both 1" severity error;
      
   wait for 100us; -- Wait, but not so long as to make clutch disengage
   t := now;       -- Reset base time

   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T3A C1 NC not 0 at space" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NO = '1' report "T3B C1 N0 not 1 at space" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T3C C2 NC not 0 at space" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NO = '1' report "T3D C2 N0 not 1 at space" severity error;

   PW_SPACE_SOLENOID <= '1';
   
   wait until MV_CONS_PRINTER_C2_CAM_NO = '0';  -- which includes C5 - C1/C2 shaft does not move?
   -- report "C2 (C5) closed at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '1' report "T3E C2 (C5) NO and NC both 0" severity error;
   
   PW_SPACE_SOLENOID <= '0';
   
   wait until MV_CONS_PRINTER_C2_CAM_NO = '1';  -- which includes C5 - C1/C2 shaft does not move?
   -- report "C2 (C5) opened at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T3F C2 (C5) NO and NC both 1" severity error;
   
   wait for 1ms;

   t := now;       -- Reset base time

   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T4A C1 NC not 0 at bspace" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NO = '1' report "T4B C1 N0 not 1 at bspace" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T4C C2 NC not 0 at bspace" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NO = '1' report "T4D C2 N0 not 1 at bspace" severity error;

   PW_BACKSPACE_SOLENOID <= '1';
   
   wait until MV_CONS_PRINTER_C2_CAM_NO = '0';  -- which includes C5 - C1/C2 shaft does not move?
   -- report "C2 (C5) closed at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '1' report "T4E C2 (C5) NO and NC both 1" severity error;
   
   PW_BACKSPACE_SOLENOID <= '0';
   
   wait until MV_CONS_PRINTER_C2_CAM_NO = '1';  -- which includes C5 - C1/C2 shaft does not move?
   -- report "C2 (C5) opened at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T4F C2 (C5) NO and NC both 1" severity error;
   
   -- Shift from lower case to upper case
   
   t := now;       -- Reset base time
   
   assert MV_CONS_PRINTER_C3_OR_C4_NO = '1' report "T5A C3/C4 not 0 at shift start";
   assert MV_CONS_PRINTER_UPPER_CASE_STAR_S1NC = '0' report "Upper Case S1 NC not 0 at shift start";
   assert MV_CONS_PRINTER_LOWER_CASE_STAR_S1NO = '1' report "Lower Case S1 NO not 1 at shift start";
     
   PW_UPPER_CASE_SHIFT_SOLENOID <= '1';

   -- Wait for C3 to close   
   wait until MV_CONS_PRINTER_C3_OR_C4_NO = '0';
   -- report "C3 closed at " &time'image(now - t);
   
   PW_UPPER_CASE_SHIFT_SOLENOID <= '0';

   -- Wait for C3 to open   
   wait until MV_CONS_PRINTER_C3_OR_C4_NO = '1';
   -- report "C3 opened at " &time'image(now - t);

   assert MV_CONS_PRINTER_UPPER_CASE_STAR_S1NC = '1' report "Upper Case S1 NC not 1 on UC";
   assert MV_CONS_PRINTER_LOWER_CASE_STAR_S1NO = '0' report "Lower Case S1 NO not 0 on UC";
   
   -- now print an upper case F (group mark)
   
   t := now;
   
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T6A C1 NC not 0 at GM" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NO = '1' report "T6B C1 N0 not 1 at GM" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T6C C2 NC not 0 at GM" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NO = '1' report "T6D C2 N0 not 1 at GM" severity error;

   PW_CONS_PRINTER_R1_SOLENOID <= '0';
   PW_CONS_PRINTER_R2_SOLENOID <= '0';
   PW_CONS_PRINTER_R2A_SOLENOID <= '1';
   PW_CONS_PRINTER_R5_SOLENOID <= '0';
   PW_CONS_PRINTER_T1_SOLENOID <= '0';
   PW_CONS_PRINTER_T2_SOLENOID <= '0';
   PW_CONS_PRINTER_CHK_SOLENOID <= '0';
   
   wait until MV_CONS_PRINTER_C2_CAM_NO = '0';
   -- report "C2 closed at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '1' report "T6E C2 NO and NC both 0" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T6F C1 NC open at wrong time" severity error;

   -- At CAM 2 time, we release solenoid drivers.

   PW_CONS_PRINTER_R1_SOLENOID <= '0';
   PW_CONS_PRINTER_R2_SOLENOID <= '0';
   PW_CONS_PRINTER_R2A_SOLENOID <= '0';
   PW_CONS_PRINTER_R5_SOLENOID <= '0';
   PW_CONS_PRINTER_T1_SOLENOID <= '0';
   PW_CONS_PRINTER_T2_SOLENOID <= '0';
   PW_CONS_PRINTER_CHK_SOLENOID <= '0';
   
   wait until MV_CONS_PRINTER_C1_CAM_NO = '0';
   -- report "C1 closed at " &time'image(now - t);
   assert MV_CONS_PRINTER_C1_CAM_NC = '1' report "T6G C1 NO and NC both 0" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NC = '1' report "T6H C2 NC open at wrong time" severity error;

   wait until MV_CONS_PRINTER_C2_CAM_NO = '1';
   -- report "C2 opened at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T6I C2 NO and NC both 1" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NO = '0' report "T6J C1 NO open at wrong time" severity error;

   wait until MV_CONS_PRINTER_C1_CAM_NO = '1';
   -- report "C1 opened at " &time'image(now - t);
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T6K C1 NO and NC both 1" severity error;
   
   wait for 100 us;

   -- Print a "b" blank character   

   t := now;
   
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T7A C1 NC not 0 at b" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NO = '1' report "T7B C1 N0 not 1 at b" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T7C C2 NC not 0 at b" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NO = '1' report "T7D C2 N0 not 1 at b" severity error;

   PW_CONS_PRINTER_R1_SOLENOID <= '1';
   PW_CONS_PRINTER_R2_SOLENOID <= '1';
   PW_CONS_PRINTER_R2A_SOLENOID <= '1';
   PW_CONS_PRINTER_R5_SOLENOID <= '0';
   PW_CONS_PRINTER_T1_SOLENOID <= '1';
   PW_CONS_PRINTER_T2_SOLENOID <= '1';
   PW_CONS_PRINTER_CHK_SOLENOID <= '0';
   
   wait until MV_CONS_PRINTER_C2_CAM_NO = '0';
   -- report "C2 closed at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '1' report "T7E C2 NO and NC both 0" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T7F C1 NC open at wrong time" severity error;

   -- At CAM 2 time, we release solenoid drivers.

   PW_CONS_PRINTER_R1_SOLENOID <= '0';
   PW_CONS_PRINTER_R2_SOLENOID <= '0';
   PW_CONS_PRINTER_R2A_SOLENOID <= '0';
   PW_CONS_PRINTER_R5_SOLENOID <= '0';
   PW_CONS_PRINTER_T1_SOLENOID <= '0';
   PW_CONS_PRINTER_T2_SOLENOID <= '0';
   PW_CONS_PRINTER_CHK_SOLENOID <= '0';
   
   wait until MV_CONS_PRINTER_C1_CAM_NO = '0';
   -- report "C1 closed at " &time'image(now - t);
   assert MV_CONS_PRINTER_C1_CAM_NC = '1' report "T7G C1 NO and NC both 0" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NC = '1' report "T7H C2 NC open at wrong time" severity error;

   wait until MV_CONS_PRINTER_C2_CAM_NO = '1';
   -- report "C2 opened at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T7I C2 NO and NC both 1" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NO = '0' report "T7J C1 NO open at wrong time" severity error;

   wait until MV_CONS_PRINTER_C1_CAM_NO = '1';
   -- report "C1 opened at " &time'image(now - t);
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T7K C1 NO and NC both 1" severity error;
   
   wait for 100 us;
   
   
   -- Shift back to lower case
   
   t := now;       -- Reset base time
   
   assert MV_CONS_PRINTER_C3_OR_C4_NO = '1' report "T8A C3/C4 not 0 at shift start";
   assert MV_CONS_PRINTER_UPPER_CASE_STAR_S1NC = '1' report "T8B Upper Case S1 NC not 0 at shift start";
   assert MV_CONS_PRINTER_LOWER_CASE_STAR_S1NO = '0' report "T8C Lower Case S1 NO not 1 at shift start";
     
   PW_LOWER_CASE_SHIFT_SOLENOID <= '1';

   -- Wait for C3 to close   
   wait until MV_CONS_PRINTER_C3_OR_C4_NO = '0';
   -- report "C3 closed at " &time'image(now - t);
   
   PW_LOWER_CASE_SHIFT_SOLENOID <= '0';

   -- Wait for C3 to open   
   wait until MV_CONS_PRINTER_C3_OR_C4_NO = '1';
   -- report "C3 opened at " &time'image(now - t);

   assert MV_CONS_PRINTER_UPPER_CASE_STAR_S1NC = '0' report "T8D Upper Case S1 NC not 1 on UC";
   assert MV_CONS_PRINTER_LOWER_CASE_STAR_S1NO = '1' report "T8E Lower Case S1 NO not 0 on UC";
   
   wait for 100 us;
   
   -- Print a period
   
   t := now;
   
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T9A C1 NC not 0 at ." severity error;
   assert MV_CONS_PRINTER_C1_CAM_NO = '1' report "T9B C1 N0 not 1 at ." severity error;
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T9C C2 NC not 0 at ." severity error;
   assert MV_CONS_PRINTER_C2_CAM_NO = '1' report "T9D C2 N0 not 1 at ." severity error;

   PW_CONS_PRINTER_R1_SOLENOID <= '0';
   PW_CONS_PRINTER_R2_SOLENOID <= '0';
   PW_CONS_PRINTER_R2A_SOLENOID <= '0';
   PW_CONS_PRINTER_R5_SOLENOID <= '0';
   PW_CONS_PRINTER_T1_SOLENOID <= '0';
   PW_CONS_PRINTER_T2_SOLENOID <= '0';
   PW_CONS_PRINTER_CHK_SOLENOID <= '1';
   
   wait until MV_CONS_PRINTER_C2_CAM_NO = '0';
   -- report "C2 closed at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '1' report "T9E C2 NO and NC both 0" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T9F C1 NC open at wrong time" severity error;

   -- At CAM 2 time, we release solenoid drivers.

   PW_CONS_PRINTER_R1_SOLENOID <= '0';
   PW_CONS_PRINTER_R2_SOLENOID <= '0';
   PW_CONS_PRINTER_R2A_SOLENOID <= '0';
   PW_CONS_PRINTER_R5_SOLENOID <= '0';
   PW_CONS_PRINTER_T1_SOLENOID <= '0';
   PW_CONS_PRINTER_T2_SOLENOID <= '0';
   PW_CONS_PRINTER_CHK_SOLENOID <= '0';
   
   wait until MV_CONS_PRINTER_C1_CAM_NO = '0';
   -- report "C1 closed at " &time'image(now - t);
   assert MV_CONS_PRINTER_C1_CAM_NC = '1' report "T10G C1 NO and NC both 0" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NC = '1' report "T10H C2 NC open at wrong time" severity error;

   wait until MV_CONS_PRINTER_C2_CAM_NO = '1';
   -- report "C2 opened at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T10I C2 NO and NC both 1" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NO = '0' report "T10J C1 NO open at wrong time" severity error;

   wait until MV_CONS_PRINTER_C1_CAM_NO = '1';
   -- report "C1 opened at " &time'image(now - t);
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T10K C1 NO and NC both 1" severity error;
   
   wait for 100 us;
   
   -- Carriage Return (CRI == Carriage Return Interlock)
   
   t := now;       -- Reset base time
      
   assert MV_CONS_PRINTER_C1_CAM_NC = '0' report "T10A C1 NC not 0 at CR" severity error;
   assert MV_CONS_PRINTER_C1_CAM_NO = '1' report "T10B C1 N0 not 1 at CR" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T10C C2 NC not 0 at CR" severity error;
   assert MV_CONS_PRINTER_C2_CAM_NO = '1' report "T10D C2 N0 not 1 at CR" severity error;

   PW_CARRIAGE_RETURN_SOLENOID <= '1';
   
   wait until MV_CONS_PRINTER_C2_CAM_NO = '0';  -- which includes CRI - C1/C2 shaft does not move?
   -- report "C2 (C5) closed at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '1' report "T10E C2 (CRI) NO and NC both 0" severity error;
   
   PW_CARRIAGE_RETURN_SOLENOID <= '0';
   
   wait until MV_CONS_PRINTER_C2_CAM_NO = '1';  -- which includes CRI - C1/C2 shaft does not move?
   -- report "C2 (C5) opened at " &time'image(now - t);
   assert MV_CONS_PRINTER_C2_CAM_NC = '0' report "T10F C2 (CRI) NO and NC both 1" severity error;
   
   wait for 1ms;

   wait for 19ms;  
      
   assert false report "NORMAL end of simulation" severity failure;
   

end process;
end Behavioral;
