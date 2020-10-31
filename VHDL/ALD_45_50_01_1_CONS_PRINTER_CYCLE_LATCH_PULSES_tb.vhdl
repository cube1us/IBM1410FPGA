-- Test Bench VHDL for IBM SMS ALD page 45.50.01.1
-- Title: CONS PRINTER CYCLE LATCH PULSES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/31/2020 11:00:36 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_50_01_1_CONS_PRINTER_CYCLE_LATCH_PULSES_tb is
end ALD_45_50_01_1_CONS_PRINTER_CYCLE_LATCH_PULSES_tb;

architecture behavioral of ALD_45_50_01_1_CONS_PRINTER_CYCLE_LATCH_PULSES_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_45_50_01_1_CONS_PRINTER_CYCLE_LATCH_PULSES
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_CONS_CLOCK_4_POS:	 in STD_LOGIC;
		PS_CONS_CLOCK_2_POS:	 in STD_LOGIC;
		PS_CONS_CLOCK_1_POS:	 in STD_LOGIC;
		MV_CONS_PRINTER_C2_CAM_NC:	 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		MV_CONS_PRINTER_C2_CAM_NO:	 in STD_LOGIC;
		PS_CONS_CLOCK_3_POS:	 in STD_LOGIC;
		PS_CONS_CYCLE_LATCH_SET:	 out STD_LOGIC;
		MS_CONS_CYCLE_LATCH_SET:	 out STD_LOGIC;
		PS_CONS_CYCLE_LATCH_RESET:	 out STD_LOGIC;
		PS_CND_RES_CONS_PRTR_NOT_BUSY:	 out STD_LOGIC;
		PS_CONS_PRINTER_C2_CAM_NO:	 out STD_LOGIC;
		PS_CONS_CHECK_STROBE:	 out STD_LOGIC;
		MS_CONSOLE_CHECK_STROBE:	 out STD_LOGIC;
		MS_CONSOLE_CHECK_STROBE_1:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_CONS_CLOCK_4_POS: STD_LOGIC := '0';
	signal PS_CONS_CLOCK_2_POS: STD_LOGIC := '0';
	signal PS_CONS_CLOCK_1_POS: STD_LOGIC := '0';
	signal MV_CONS_PRINTER_C2_CAM_NC: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_4: STD_LOGIC := '1';
	signal MV_CONS_PRINTER_C2_CAM_NO: STD_LOGIC := '1';
	signal PS_CONS_CLOCK_3_POS: STD_LOGIC := '0';

	-- Outputs

	signal PS_CONS_CYCLE_LATCH_SET: STD_LOGIC;
	signal MS_CONS_CYCLE_LATCH_SET: STD_LOGIC;
	signal PS_CONS_CYCLE_LATCH_RESET: STD_LOGIC;
	signal PS_CND_RES_CONS_PRTR_NOT_BUSY: STD_LOGIC;
	signal PS_CONS_PRINTER_C2_CAM_NO: STD_LOGIC;
	signal PS_CONS_CHECK_STROBE: STD_LOGIC;
	signal MS_CONSOLE_CHECK_STROBE: STD_LOGIC;
	signal MS_CONSOLE_CHECK_STROBE_1: STD_LOGIC;

-- START USER TEST BENCH DECLARATIONS

-- The user test bench declarations, if any, must be
-- placed AFTER the line starts with the first line of text 
-- with -- START USER TEST BENCH DECLARATIONS and ends
-- with the line containing -- END (and the rest of the line) below.
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

   constant HDL_C_BIT: integer := 7;
   constant HDL_WM_BIT: integer := 6;
   constant HDL_B_BIT: integer := 5;
   constant HDL_A_BIT: integer := 4;
   constant HDL_8_BIT: integer := 3;
   constant HDL_4_BIT: integer := 2;
   constant HDL_2_BIT: integer := 1;
   constant HDL_1_BIT: integer := 0;

   constant MX_X1A_POS: integer := 7;
   constant MX_X6A_POS: integer := 8;

procedure check1(
    checked: in STD_LOGIC;
    val: in STD_LOGIC;
    testname: in string;
    test: in string) is
    begin    
    assert checked = val report testname & " (" & test & ") failed." severity failure;
    end procedure;
      


   -- Your test bench declarations go here

-- END USER TEST BENCH DECLARATIONS
   

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ALD_45_50_01_1_CONS_PRINTER_CYCLE_LATCH_PULSES port map(
		FPGA_CLK => FPGA_CLK,
		PS_CONS_CLOCK_4_POS => PS_CONS_CLOCK_4_POS,
		PS_CONS_CLOCK_2_POS => PS_CONS_CLOCK_2_POS,
		PS_CONS_CLOCK_1_POS => PS_CONS_CLOCK_1_POS,
		MV_CONS_PRINTER_C2_CAM_NC => MV_CONS_PRINTER_C2_CAM_NC,
		MS_PROGRAM_RESET_4 => MS_PROGRAM_RESET_4,
		MV_CONS_PRINTER_C2_CAM_NO => MV_CONS_PRINTER_C2_CAM_NO,
		PS_CONS_CLOCK_3_POS => PS_CONS_CLOCK_3_POS,
		PS_CONS_CYCLE_LATCH_SET => PS_CONS_CYCLE_LATCH_SET,
		MS_CONS_CYCLE_LATCH_SET => MS_CONS_CYCLE_LATCH_SET,
		PS_CONS_CYCLE_LATCH_RESET => PS_CONS_CYCLE_LATCH_RESET,
		PS_CND_RES_CONS_PRTR_NOT_BUSY => PS_CND_RES_CONS_PRTR_NOT_BUSY,
		PS_CONS_PRINTER_C2_CAM_NO => PS_CONS_PRINTER_C2_CAM_NO,
		PS_CONS_CHECK_STROBE => PS_CONS_CHECK_STROBE,
		MS_CONSOLE_CHECK_STROBE => MS_CONSOLE_CHECK_STROBE,
		MS_CONSOLE_CHECK_STROBE_1 => MS_CONSOLE_CHECK_STROBE_1);

-- START USER TEST BENCH PROCESS

-- The user test bench code MUST be placed between the
-- line that starts with the first line of text that
-- begins with "-- START USERS TEST BENCH PROCESS" 
-- and ends with "-- END"
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

-- 
-- TestBenchFPGAClock.vhdl
--
-- Process to simulate the FPGA clock for a VHDL test bench
--

fpga_clk_process: process

   constant clk_period : time := 10 ns;

   begin
      fpga_clk <= '0';
      wait for clk_period / 2;
      fpga_clk <= '1';
      wait for clk_period / 2;
   end process;

--
-- End of TestBenchFPGAClock.vhdl
--   

-- Place your test bench code in the uut_process

uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;
   variable tv: std_logic_vector(25 downto 0);
   variable a,b,c,d,e,f,g,h,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;

   begin

   -- Your test bench code

   testName := "45.50.01.1        ";

   -- What with a trigger, a latch and feedback, this test is just testing
   -- the sequence of operations for an output cycle as described in the
   -- IBM 1415 CE manual, figure 20, page 21.
   
   -- Start with a reset..
   
   MS_PROGRAM_RESET_4 <= '0';
   wait for 30 ns;
   MS_PROGRAM_RESET_4 <= '1';
   wait for 30 ns;

   check1(PS_CONS_CHECK_STROBE,'0',testName,"Init +S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE,'1',testName,"Init -S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE_1,'1',testName,"Init -S Cons Check Strobe 1");
   check1(PS_CONS_PRINTER_C2_CAM_NO,'0',testName,"Init Cons Printer C2 Cam NO");
   check1(PS_CONS_CYCLE_LATCH_SET,'0',testName,"Init Cons Cycle Latch Set");
   check1(PS_CONS_CYCLE_LATCH_RESET,'0',testName,"Init Cons Cycle Latch Reset");
   check1(PS_CND_RES_CONS_PRTR_NOT_BUSY,'1',testName,"Init Cnd Res Cons Ptrt Not Busy");
   
   -- wait for 30 ms;
   wait for 100 ns;

   -- Run through the console clocks - nothing should change
   
   PS_CONS_CLOCK_1_POS <= '1';
   wait for 30 ns;
   PS_CONS_CLOCK_1_POS <= '0';
   PS_CONS_CLOCK_2_POS <= '1';
   wait for 30 ns;
   PS_CONS_CLOCK_2_POS <= '0';
   PS_CONS_CLOCK_3_POS <= '1';
   wait for 30 ns;
   PS_CONS_CLOCK_3_POS <= '0';
   PS_CONS_CLOCK_4_POS <= '1';
   wait for 30 ns;
   PS_CONS_CLOCK_4_POS <= '0';
   wait for 30 ns;
   
   check1(PS_CONS_CHECK_STROBE,'0',testName,"Init 2 +S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE,'1',testName,"Init 2 -S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE_1,'1',testName,"Init 2 -S Cons Check Strobe 1");
   check1(PS_CONS_PRINTER_C2_CAM_NO,'0',testName,"Init 2 Cons Printer C2 Cam NO");
   check1(PS_CONS_CYCLE_LATCH_SET,'0',testName,"Init 2 Cons Cycle Latch Set");
   check1(PS_CONS_CYCLE_LATCH_RESET,'0',testName,"Init 2 Cons Cycle Latch Reset");
   check1(PS_CND_RES_CONS_PRTR_NOT_BUSY,'1',testName,"Init 2 Cnd Res Cons Ptrt Not Busy");
     
   -- wait for 30 ms;
   wait for 100 ns;
   
   -- Trigger the beginning of the cycle
   
   MV_CONS_PRINTER_C2_CAM_NO <= '0';
   MV_CONS_PRINTER_C2_CAM_NC <= '1';
   PS_CONS_CLOCK_1_POS <= '1';
   wait for 30 ns;
   PS_CONS_CLOCK_1_POS <= '0';
   PS_CONS_CLOCK_2_POS <= '1';
   wait for 30 ns;
   PS_CONS_CLOCK_2_POS <= '0';
   PS_CONS_CLOCK_3_POS <= '1';
   wait for 90 ns; -- trigger setup time
   
   check1(PS_CONS_CHECK_STROBE,'1',testName,"C2NO CC3 +S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE,'0',testName,"C2NO CC3 -S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE_1,'0',testName,"C2NO CC3 -S Cons Check Strobe 1");
   check1(PS_CONS_PRINTER_C2_CAM_NO,'1',testName,"C2NO CC3 Cons Printer C2 Cam NO");
   check1(PS_CONS_CYCLE_LATCH_SET,'0',testName,"C2NO CC3 Cons Cycle Latch Set");
   check1(PS_CONS_CYCLE_LATCH_RESET,'0',testName,"C2NO CC3 Cons Cycle Latch Reset");
   check1(PS_CND_RES_CONS_PRTR_NOT_BUSY,'1',testName,"C2NO CC3 Cnd Res Cons Prtr Not Busy");        
   
   PS_CONS_CLOCK_3_POS <= '0';
   PS_CONS_CLOCK_4_POS <= '1';
   wait for 30 ns;

   -- CC1 should then turn off Type Start Ctrl (turn OFF +S CND RES CONS PRTR NOT BUSY)
   
   PS_CONS_CLOCK_4_POS <= '0';
   PS_CONS_CLOCK_1_POS <= '1';
   wait for 30 ns;

   check1(PS_CONS_CHECK_STROBE,'1',testName,"C2NO CC1 +S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE,'0',testName,"C2NO CC1 -S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE_1,'0',testName,"C2NO CC1 -S Cons Check Strobe 1");
   check1(PS_CONS_PRINTER_C2_CAM_NO,'1',testName,"C2NO CC1 Cons Printer C2 Cam NO");
   check1(PS_CONS_CYCLE_LATCH_SET,'0',testName,"C2NO CC1 Cons Cycle Latch Set");
   check1(PS_CONS_CYCLE_LATCH_RESET,'0',testName,"C2NO CC1 Cons Cycle Latch Reset");
   check1(PS_CND_RES_CONS_PRTR_NOT_BUSY,'0',testName,"C2NO CC1 Cnd Res Cons Ptrt Not Busy");                 
   
   PS_CONS_CLOCK_1_POS <= '0';
   PS_CONS_CLOCK_2_POS <= '1';
   wait for 30 ns;
   PS_CONS_CLOCK_2_POS <= '0';
   PS_CONS_CLOCK_3_POS <= '1';
   wait for 30 ns;
   PS_CONS_CLOCK_3_POS <= '0';
   PS_CONS_CLOCK_4_POS <= '1';
   wait for 30 ns;
   PS_CONS_CLOCK_4_POS <= '0';

   -- Now we wait for the shaft to rotate (the S/S to time out -- debounce?)
   
   wait for 21 ms;
   
   -- Now CAM 2 has rotated to 135 degrees
   
   MV_CONS_PRINTER_C2_CAM_NO <= '1';
   MV_CONS_PRINTER_C2_CAM_NC <= '0';
   PS_CONS_CLOCK_1_POS <= '1';
   wait for 30 ns;
   PS_CONS_CLOCK_1_POS <= '0';
   PS_CONS_CLOCK_2_POS <= '1';
   wait for 30 ns;
   PS_CONS_CLOCK_2_POS <= '0';
   PS_CONS_CLOCK_3_POS <= '1';
   wait for 30 ns; -- trigger setup time
   
   -- At this point the check strobe becomes inactive

   check1(PS_CONS_CHECK_STROBE,'0',testName,"C2NC CC3 +S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE,'1',testName,"C2NC CC3 -S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE_1,'1',testName,"C2NC CC3 -S Cons Check Strobe 1");
   check1(PS_CONS_PRINTER_C2_CAM_NO,'0',testName,"C2NC CC3 Cons Printer C2 Cam NO");
   check1(PS_CONS_CYCLE_LATCH_SET,'0',testName,"C2NC CC3 Cons Cycle Latch Set");
   check1(PS_CONS_CYCLE_LATCH_RESET,'0',testName,"C2NC CC3 Cons Cycle Latch Reset");
   check1(PS_CND_RES_CONS_PRTR_NOT_BUSY,'0',testName,"C2NC CC3 Cnd Res Cons Prtr Not Busy");                 
   
   -- At CC4, the Cycle Latch Set should activate
   
   PS_CONS_CLOCK_3_POS <= '0';
   PS_CONS_CLOCK_4_POS <= '1';
   wait for 30 ns;

   check1(PS_CONS_CHECK_STROBE,'0',testName,"C2NC CC4 +S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE,'1',testName,"C2NC CC4 -S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE_1,'1',testName,"C2NC CC4 -S Cons Check Strobe 1");
   check1(PS_CONS_PRINTER_C2_CAM_NO,'0',testName,"C2NC CC4 Cons Printer C2 Cam NO");
   check1(PS_CONS_CYCLE_LATCH_SET,'1',testName,"C2NC CC4 Cons Cycle Latch Set");
   check1(PS_CONS_CYCLE_LATCH_RESET,'0',testName,"C2NC CC4 Cons Cycle Latch Reset");
   check1(PS_CND_RES_CONS_PRTR_NOT_BUSY,'0',testName,"C2NC C34 Cnd Res Cons Prtr Not Busy"); -- ???
   
   -- At the next CC1, Cycle latch set goes away, and cycle latch reset activates               

   PS_CONS_CLOCK_4_POS <= '0';
   PS_CONS_CLOCK_1_POS <= '1';
   wait for 30 ns;

   check1(PS_CONS_CHECK_STROBE,'0',testName,"C2NC CC4+1 +S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE,'1',testName,"C2NC CC4+1 -S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE_1,'1',testName,"C2NC CC4+1 -S Cons Check Strobe 1");
   check1(PS_CONS_PRINTER_C2_CAM_NO,'0',testName,"C2NC CC4+1 Cons Printer C2 Cam NO");
   check1(PS_CONS_CYCLE_LATCH_SET,'0',testName,"C2NC CC4+1 Cons Cycle Latch Set");
   check1(PS_CONS_CYCLE_LATCH_RESET,'1',testName,"C2NC CC4+1 Cons Cycle Latch Reset");
   check1(PS_CND_RES_CONS_PRTR_NOT_BUSY,'0',testName,"C2NC CC4+1 Cnd Res Cons Prtr Not Busy"); -- ???
   
   -- Then at CC2, the cycle latch reset goes away, the console goes not busy,
   -- and we are back at the beginning.

   PS_CONS_CLOCK_1_POS <= '0';
   PS_CONS_CLOCK_2_POS <= '1';
   wait for 30 ns;

   check1(PS_CONS_CHECK_STROBE,'0',testName,"C2NC CC4+2 +S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE,'1',testName,"C2NC CC4+2 -S Cons Check Strobe");
   check1(MS_CONSOLE_CHECK_STROBE_1,'1',testName,"C2NC CC4+2 -S Cons Check Strobe 1");
   check1(PS_CONS_PRINTER_C2_CAM_NO,'0',testName,"C2NC CC4+2 Cons Printer C2 Cam NO");
   check1(PS_CONS_CYCLE_LATCH_SET,'0',testName,"C2NC CC4+2 Cons Cycle Latch Set");
   check1(PS_CONS_CYCLE_LATCH_RESET,'0',testName,"C2NC CC4+2 Cons Cycle Latch Reset");
   check1(PS_CND_RES_CONS_PRTR_NOT_BUSY,'1',testName,"C2NC CC4+2 Cnd Res Cons Prtr Not Busy"); -- ???
   

   
   assert false report "Simulation Ended NORMALLY" severity failure;      

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 200 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

end;
