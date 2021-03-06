-- Test Bench VHDL for IBM SMS ALD page 41.20.01.1
-- Title: CONSOLE ALTER CONTROL
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/24/2020 1:13:21 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_41_20_01_1_CONSOLE_ALTER_CONTROL_tb is
end ALD_41_20_01_1_CONSOLE_ALTER_CONTROL_tb;

architecture behavioral of ALD_41_20_01_1_CONSOLE_ALTER_CONTROL_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_41_20_01_1_CONSOLE_ALTER_CONTROL
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_CONS_PRINTER_END_OF_LINE:	 in STD_LOGIC;
		PS_CLOCK_STOPPED:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_1:	 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		MS_CONSOLE_SET_START_CND:	 in STD_LOGIC;
		PS_START_KEY_2:	 in STD_LOGIC;
		PS_CONS_MX_32_OR_33_POS:	 in STD_LOGIC;
		PS_MASTER_ERROR:	 in STD_LOGIC;
		MV_CONS_MODE_SW_ALTER_MODE:	 in STD_LOGIC;
		PS_CONSOLE_HOME_POSITION:	 in STD_LOGIC;
		PS_CONS_MX_33_POS:	 in STD_LOGIC;
		MS_CONS_RESET_START_CONDITION:	 in STD_LOGIC;
		MS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		MS_STOP_KEY_LATCH:	 in STD_LOGIC;
		PS_CONS_PRINTER_END_OF_LINE:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		PS_DISPLAY_ROUTINE_2:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		PS_WRAP_AROUND_CONDITIONS:	 in STD_LOGIC;
		MS_UNGATED_ALTER_ROUTINE:	 out STD_LOGIC;
		MS_ALTER_ROUTINE:	 out STD_LOGIC;
		PS_ALTER_ROUTINE:	 out STD_LOGIC;
		MS_CONS_ALTER_MX_GATE:	 out STD_LOGIC;
		MS_DISPLAY_END_OF_MEMORY:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_CONS_PRINTER_END_OF_LINE: STD_LOGIC := '1';
	signal PS_CLOCK_STOPPED: STD_LOGIC := '0';
	signal PS_B_CH_WM_BIT_1: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_4: STD_LOGIC := '1';
	signal MS_CONSOLE_SET_START_CND: STD_LOGIC := '1';
	signal PS_START_KEY_2: STD_LOGIC := '0';
	signal PS_CONS_MX_32_OR_33_POS: STD_LOGIC := '0';
	signal PS_MASTER_ERROR: STD_LOGIC := '0';
	signal MV_CONS_MODE_SW_ALTER_MODE: STD_LOGIC := '1';
	signal PS_CONSOLE_HOME_POSITION: STD_LOGIC := '0';
	signal PS_CONS_MX_33_POS: STD_LOGIC := '0';
	signal MS_CONS_RESET_START_CONDITION: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_D_1: STD_LOGIC := '1';
	signal MS_STOP_KEY_LATCH: STD_LOGIC := '1';
	signal PS_CONS_PRINTER_END_OF_LINE: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_C_1: STD_LOGIC := '0';
	signal PS_2ND_CLOCK_PULSE_2: STD_LOGIC := '0';
	signal PS_DISPLAY_ROUTINE_2: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_F_1: STD_LOGIC := '0';
	signal PS_WRAP_AROUND_CONDITIONS: STD_LOGIC := '0';

	-- Outputs

	signal MS_UNGATED_ALTER_ROUTINE: STD_LOGIC;
	signal MS_ALTER_ROUTINE: STD_LOGIC;
	signal PS_ALTER_ROUTINE: STD_LOGIC;
	signal MS_CONS_ALTER_MX_GATE: STD_LOGIC;
	signal MS_DISPLAY_END_OF_MEMORY: STD_LOGIC;

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

	UUT: ALD_41_20_01_1_CONSOLE_ALTER_CONTROL port map(
		FPGA_CLK => FPGA_CLK,
		MS_CONS_PRINTER_END_OF_LINE => MS_CONS_PRINTER_END_OF_LINE,
		PS_CLOCK_STOPPED => PS_CLOCK_STOPPED,
		PS_B_CH_WM_BIT_1 => PS_B_CH_WM_BIT_1,
		MS_PROGRAM_RESET_4 => MS_PROGRAM_RESET_4,
		MS_CONSOLE_SET_START_CND => MS_CONSOLE_SET_START_CND,
		PS_START_KEY_2 => PS_START_KEY_2,
		PS_CONS_MX_32_OR_33_POS => PS_CONS_MX_32_OR_33_POS,
		PS_MASTER_ERROR => PS_MASTER_ERROR,
		MV_CONS_MODE_SW_ALTER_MODE => MV_CONS_MODE_SW_ALTER_MODE,
		PS_CONSOLE_HOME_POSITION => PS_CONSOLE_HOME_POSITION,
		PS_CONS_MX_33_POS => PS_CONS_MX_33_POS,
		MS_CONS_RESET_START_CONDITION => MS_CONS_RESET_START_CONDITION,
		MS_LOGIC_GATE_D_1 => MS_LOGIC_GATE_D_1,
		MS_STOP_KEY_LATCH => MS_STOP_KEY_LATCH,
		PS_CONS_PRINTER_END_OF_LINE => PS_CONS_PRINTER_END_OF_LINE,
		PS_LOGIC_GATE_C_1 => PS_LOGIC_GATE_C_1,
		PS_2ND_CLOCK_PULSE_2 => PS_2ND_CLOCK_PULSE_2,
		PS_DISPLAY_ROUTINE_2 => PS_DISPLAY_ROUTINE_2,
		PS_LOGIC_GATE_F_1 => PS_LOGIC_GATE_F_1,
		PS_WRAP_AROUND_CONDITIONS => PS_WRAP_AROUND_CONDITIONS,
		MS_UNGATED_ALTER_ROUTINE => MS_UNGATED_ALTER_ROUTINE,
		MS_ALTER_ROUTINE => MS_ALTER_ROUTINE,
		PS_ALTER_ROUTINE => PS_ALTER_ROUTINE,
		MS_CONS_ALTER_MX_GATE => MS_CONS_ALTER_MX_GATE,
		MS_DISPLAY_END_OF_MEMORY => MS_DISPLAY_END_OF_MEMORY);

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

   testName := "41.20.01.1        ";
   
   -- First just test the wrap around latch and Display End of Memory

   for tt in 0 to 2**6 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      n := tv(0);
      q := tv(1);
      r := tv(2);
      s := tv(3);
      t := tv(4);
      u := tv(5);

      -- Reset one of two ways...

		MS_LOGIC_GATE_D_1 <= not n;
		MS_STOP_KEY_LATCH <= n;
      wait for 30 ns;
		MS_LOGIC_GATE_D_1 <= '1';
      MS_STOP_KEY_LATCH <= '1';
      wait for 30 ns;  -- Reset the latch
      
      -- Enable output gate so we can test what the latch did 

		PS_LOGIC_GATE_C_1 <= '1';
      PS_DISPLAY_ROUTINE_2 <= '1';
      wait for 30 ns;
   
      check1(MS_DISPLAY_END_OF_MEMORY,'1',testName,"Reset Display end of Memory");
      
      -- Then maybe set the latch, and maybe not enable the output gate
      
		PS_LOGIC_GATE_C_1 <= q;
      PS_DISPLAY_ROUTINE_2 <= s;
		PS_2ND_CLOCK_PULSE_2 <= r;
		PS_LOGIC_GATE_F_1 <= t;
		PS_WRAP_AROUND_CONDITIONS <= u;      
      wait for 30 ns;
      
      check1(MS_DISPLAY_END_OF_MEMORY,not(q and s and t and u and r),testName,"Display end of Memory");            
      
      -- Reset the variables to enable subsequent reset in the next iteration

		PS_LOGIC_GATE_C_1 <= '0';
      PS_DISPLAY_ROUTINE_2 <= '0';
		PS_2ND_CLOCK_PULSE_2 <= '0';
		PS_LOGIC_GATE_F_1 <= '0';
		PS_WRAP_AROUND_CONDITIONS <= '0';      
      
   end loop;
   
   -- Next, test the WM CND Alter latch
   
   for tt in 0 to 2**8 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      e := tv(3);
      j := tv(4);
      l := tv(5);
      m := tv(6);
      s := tv(7);
      
      -- Initial reset one of two ways
      
      MS_CONS_PRINTER_END_OF_LINE <= not a;
      MS_PROGRAM_RESET_4 <= a;
      wait for 30 ns;
      MS_CONS_PRINTER_END_OF_LINE <= '1';
      MS_PROGRAM_RESET_4 <= '1';
      wait for 30 ns;
      
      check1(MS_UNGATED_ALTER_ROUTINE,'1',testName,"WM Cnd Alter Loop Reset");
      
      -- Reset signals should be 0 at this point, no issues
      
      PS_B_CH_WM_BIT_1 <= c;
      PS_CONS_MX_33_POS <= l;
      PS_DISPLAY_ROUTINE_2 <= s;
      wait for 30 ns; -- Maybe set the latch
      
      check1(MS_UNGATED_ALTER_ROUTINE,not(c and l and s),testName,"WM Cnd Alter Set");
      
      -- Make sure we don't continue to set it, and test reset.  Latch should stay put.
      
      PS_DISPLAY_ROUTINE_2 <= '0';
      wait for 30 ns; -- Latch should stay set.
      
      check1(MS_UNGATED_ALTER_ROUTINE,not(c and l and s),testName,"WM Cnd Alter Verify Set");
      
      PS_CLOCK_STOPPED <= b;
      PS_B_CH_WM_BIT_1 <= c;
      MS_CONSOLE_SET_START_CND <= not e;
      MV_CONS_MODE_SW_ALTER_MODE <= not j;
      PS_CONS_MX_33_POS <= l;
      MS_CONS_RESET_START_CONDITION <= not m;
      wait for 30 ns;
      
      check1(MS_UNGATED_ALTER_ROUTINE,
         not(c and l and s and not((b and c and l and j) or m or e)),
         testName,"WM Cnd Alter Reset");
         
      -- Reset the signals for the next iteration
      
      PS_CLOCK_STOPPED <= '0';
      PS_B_CH_WM_BIT_1 <= '0';
      MS_CONSOLE_SET_START_CND <= '1';
      MV_CONS_MODE_SW_ALTER_MODE <= '1';
      PS_CONS_MX_33_POS <= '0';
      MS_CONS_RESET_START_CONDITION <= '1';
      PS_DISPLAY_ROUTINE_2 <= '0';
      
   end loop;   

   -- Onward to the Full Line Cnd Latch
   
   for tt in 0 to 2**9 loop
         tv := std_logic_vector(to_unsigned(tt,tv'Length));
         b := tv(0);
         e := tv(1);
         j := tv(2);
         l := tv(3);
         m := tv(4);
         p := tv(5);
         q := tv(6);
         s := tv(7);
         x := tv(8);  -- Controls setting Wrap Around
   
         -- Reset both the wraparound latch and the latch under test
         
         MS_PROGRAM_RESET_4 <= '0';
         MS_LOGIC_GATE_D_1 <= '0';
         wait for 30 ns;
         MS_PROGRAM_RESET_4 <= '1';
         MS_LOGIC_GATE_D_1 <= '1';
         wait for 30 ns;
         
         check1(MS_UNGATED_ALTER_ROUTINE,'1',testName,"Full Line Cnd Alter Loop Reset");
         
         -- Then maybe set the Wrap around latch
         
         PS_LOGIC_GATE_F_1 <= x;
         PS_WRAP_AROUND_CONDITIONS <= x;
         PS_2ND_CLOCK_PULSE_2 <= x;
         wait for 30 ns;
         
         -- Maybe set latch under test (make sure the reset signals won't interfere - reset at end)
         
         PS_CONS_PRINTER_END_OF_LINE <= p;
         PS_LOGIC_GATE_C_1 <= q;
         PS_DISPLAY_ROUTINE_2 <= s;         
         wait for 30 ns;
         
         -- The following check won't always be run.
         check1(MS_DISPLAY_END_OF_MEMORY,not (x and q and s),testName,"Check Set Wrap Around Latch");
         
         check1(MS_UNGATED_ALTER_ROUTINE,
            not((p and s) or (x and s and q)),testName,"Set Full Line Cnd Alter");
            
         -- Now remove the setting signals - latch should not change

         PS_CONS_PRINTER_END_OF_LINE <= '0';
         PS_LOGIC_GATE_C_1 <= '0';
         PS_DISPLAY_ROUTINE_2 <= '0';
         wait for 30 ns;

         check1(MS_UNGATED_ALTER_ROUTINE,
            not((p and s) or (x and s and q)),testName,"Verify Set Full Line Cnd Alter");
            
         -- Now, maybe reset the latch                           

         PS_CLOCK_STOPPED <= b;
         MS_CONSOLE_SET_START_CND <= not e;
         MV_CONS_MODE_SW_ALTER_MODE <= not j;
         PS_CONS_MX_33_POS <= l;
         MS_CONS_RESET_START_CONDITION <= not m;
         PS_CONS_PRINTER_END_OF_LINE <= p;
         wait for 30 ns;

         check1(MS_UNGATED_ALTER_ROUTINE,
            not(((p and s) or (x and s and q)) and 
               not(e or m or (j and l and p and b) or (b and j and x)) ),
               testName,"Reset Full Line Cnd Alter");
            
         -- Reset the variables for the next iteration

         PS_CLOCK_STOPPED <= '0';
         MS_CONSOLE_SET_START_CND <= '1';
         MV_CONS_MODE_SW_ALTER_MODE <= '1';
         PS_CONS_MX_33_POS <= '0';
         MS_CONS_RESET_START_CONDITION <= '1';
         PS_CONS_PRINTER_END_OF_LINE <= '0';

   end loop;      
   
   for tt in 0 to 2**8 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      f := tv(0);
      g := tv(1);
      h := tv(2);
      j := tv(3);
      k := tv(4);
      o := tv(5);
      x := tv(6);  -- Controls setting WM CND Alter
      y := tv(7);  -- Controls setting Full Line Cnd Alter
      
      -- Reset latches
      
      MS_PROGRAM_RESET_4 <= '0';
      wait for 30 ns;
      MS_PROGRAM_RESET_4 <= '1';
      wait for 30 ns;
      
      check1(MS_UNGATED_ALTER_ROUTINE,'1',testName,"Loop Reset Alter Routine input latches");
      check1(PS_ALTER_ROUTINE,'0',testName,"Loop Reset +S Alter Routine");
      check1(MS_ALTER_ROUTINE,'1',testName,"Loop Reset -S Alter Routine");
      
      -- Maybe set one or both of the incoming latches
      
      PS_B_CH_WM_BIT_1 <= x;
      PS_CONS_MX_33_POS <= x;
      PS_DISPLAY_ROUTINE_2 <= x or y;
      PS_CONS_PRINTER_END_OF_LINE <= y;
      wait for 30 ns;
      
      check1(MS_UNGATED_ALTER_ROUTINE,not(x or y),testName,"Verify WM or Full Line Cnd Latch Set");                   
      
		
		PS_START_KEY_2 <= f;
		PS_CONS_MX_32_OR_33_POS <= g;
      PS_MASTER_ERROR <= h;
      MV_CONS_MODE_SW_ALTER_MODE <= not j;
      PS_CONSOLE_HOME_POSITION <= k;
      MS_STOP_KEY_LATCH <= not o;
      wait for 30 ns;
      
      check1(PS_ALTER_ROUTINE,j and not o and not(g and h) and (x or y),testName,"+S Alter Routine");
      check1(MS_ALTER_ROUTINE,NOT PS_ALTER_ROUTINE,testName,"-S Alter Routine");
      check1(MS_CONS_ALTER_MX_GATE,not(PS_ALTER_ROUTINE and k and f),testName,"Cons Alter MX Gate");
      
      -- Reset the signals for the next iteration
      
      PS_B_CH_WM_BIT_1 <= '0';
      PS_CONS_MX_33_POS <= '0';
      PS_DISPLAY_ROUTINE_2 <= '0';
      PS_CONS_PRINTER_END_OF_LINE <= '0';
      
		PS_START_KEY_2 <= '0';
      PS_CONS_MX_32_OR_33_POS <= '0';
      PS_MASTER_ERROR <= '0';
      MV_CONS_MODE_SW_ALTER_MODE <= '1';
      PS_CONSOLE_HOME_POSITION <= '0';
      MS_STOP_KEY_LATCH <= '1';            

   end loop;

   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 2 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

end;
