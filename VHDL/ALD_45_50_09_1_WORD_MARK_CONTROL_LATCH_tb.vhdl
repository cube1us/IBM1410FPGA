-- Test Bench VHDL for IBM SMS ALD page 45.50.09.1
-- Title: WORD MARK CONTROL LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/3/2020 7:44:44 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_50_09_1_WORD_MARK_CONTROL_LATCH_tb is
end ALD_45_50_09_1_WORD_MARK_CONTROL_LATCH_tb;

architecture behavioral of ALD_45_50_09_1_WORD_MARK_CONTROL_LATCH_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_45_50_09_1_WORD_MARK_CONTROL_LATCH
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		PS_CONS_BACK_SPACE_CONTROL:	 in STD_LOGIC;
		PS_CONS_CYCLE_LATCH_RESET:	 in STD_LOGIC;
		MS_CONS_MOVE_READ_OP:	 in STD_LOGIC;
		MB_CONS_PRTR_WM_INPUT_STAR_WM_T_NO:	 in STD_LOGIC;
		PS_CONS_CYCLE_LATCH_SET:	 in STD_LOGIC;
		PS_CONS_OUTPUT_WM_BIT:	 in STD_LOGIC;
		PS_CONS_CLOCK_3_POS_1:	 in STD_LOGIC;
		PS_TAKE_CONSOLE_PRINTER_CYCLE:	 in STD_LOGIC;
		MS_CONSOLE_SPACE_FUNCTION:	 in STD_LOGIC;
		MS_CONSOLE_CARRIAGE_RETURN:	 in STD_LOGIC;
		MS_CONS_WM_CONTROL:	 out STD_LOGIC;
		PS_CONS_WM_CONTROL:	 out STD_LOGIC;
		MS_CONS_WM_INPUT_SET:	 out STD_LOGIC;
		MS_WM_INPUT:	 out STD_LOGIC;
		MS_CONS_WM_OUTPUT_SET:	 out STD_LOGIC;
		PS_SET_FIRST_CYCLE_LATCH:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_4: STD_LOGIC := '1';
	signal PS_CONS_BACK_SPACE_CONTROL: STD_LOGIC := '0';
	signal PS_CONS_CYCLE_LATCH_RESET: STD_LOGIC := '0';
	signal MS_CONS_MOVE_READ_OP: STD_LOGIC := '1';
	signal MB_CONS_PRTR_WM_INPUT_STAR_WM_T_NO: STD_LOGIC := '1';
	signal PS_CONS_CYCLE_LATCH_SET: STD_LOGIC := '0';
	signal PS_CONS_OUTPUT_WM_BIT: STD_LOGIC := '0';
	signal PS_CONS_CLOCK_3_POS_1: STD_LOGIC := '0';
	signal PS_TAKE_CONSOLE_PRINTER_CYCLE: STD_LOGIC := '0';
	signal MS_CONSOLE_SPACE_FUNCTION: STD_LOGIC := '1';
	signal MS_CONSOLE_CARRIAGE_RETURN: STD_LOGIC := '1';

	-- Outputs

	signal MS_CONS_WM_CONTROL: STD_LOGIC;
	signal PS_CONS_WM_CONTROL: STD_LOGIC;
	signal MS_CONS_WM_INPUT_SET: STD_LOGIC;
	signal MS_WM_INPUT: STD_LOGIC;
	signal MS_CONS_WM_OUTPUT_SET: STD_LOGIC;
	signal PS_SET_FIRST_CYCLE_LATCH: STD_LOGIC;

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

	UUT: ALD_45_50_09_1_WORD_MARK_CONTROL_LATCH port map(
		FPGA_CLK => FPGA_CLK,
		MS_PROGRAM_RESET_4 => MS_PROGRAM_RESET_4,
		PS_CONS_BACK_SPACE_CONTROL => PS_CONS_BACK_SPACE_CONTROL,
		PS_CONS_CYCLE_LATCH_RESET => PS_CONS_CYCLE_LATCH_RESET,
		MS_CONS_MOVE_READ_OP => MS_CONS_MOVE_READ_OP,
		MB_CONS_PRTR_WM_INPUT_STAR_WM_T_NO => MB_CONS_PRTR_WM_INPUT_STAR_WM_T_NO,
		PS_CONS_CYCLE_LATCH_SET => PS_CONS_CYCLE_LATCH_SET,
		PS_CONS_OUTPUT_WM_BIT => PS_CONS_OUTPUT_WM_BIT,
		PS_CONS_CLOCK_3_POS_1 => PS_CONS_CLOCK_3_POS_1,
		PS_TAKE_CONSOLE_PRINTER_CYCLE => PS_TAKE_CONSOLE_PRINTER_CYCLE,
		MS_CONSOLE_SPACE_FUNCTION => MS_CONSOLE_SPACE_FUNCTION,
		MS_CONSOLE_CARRIAGE_RETURN => MS_CONSOLE_CARRIAGE_RETURN,
		MS_CONS_WM_CONTROL => MS_CONS_WM_CONTROL,
		PS_CONS_WM_CONTROL => PS_CONS_WM_CONTROL,
		MS_CONS_WM_INPUT_SET => MS_CONS_WM_INPUT_SET,
		MS_WM_INPUT => MS_WM_INPUT,
		MS_CONS_WM_OUTPUT_SET => MS_CONS_WM_OUTPUT_SET,
		PS_SET_FIRST_CYCLE_LATCH => PS_SET_FIRST_CYCLE_LATCH);

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

   testName := "45.50.09.1        ";

   for tt in 0 to 2**8 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      d := tv(0);
      e := tv(1);
      f := tv(2);
      g := tv(3);
      h := tv(4);
      j := tv(5);
      k := tv(6);
      l := tv(7);

      g1 := h and not k and not l and j;
      g2 := e and not d and f;
      g3 := g2 or (g and g1);
      
      -- Reset
      
      MS_PROGRAM_RESET_4 <= '0';
      wait for 30 ns;
      MS_PROGRAM_RESET_4 <= '1';
      wait for 30 ns;
      
      check1(PS_CONS_WM_CONTROL,'0',testName,"Init +S WM Control");
      check1(MS_CONS_WM_CONTROL,'1',testName,"Init -S WM Control");
      
      -- Maybe set the latch

		MS_CONS_MOVE_READ_OP <= not d;
		MB_CONS_PRTR_WM_INPUT_STAR_WM_T_NO <= not e;
		PS_CONS_CYCLE_LATCH_SET <= f;
		PS_CONS_OUTPUT_WM_BIT <= g;
		PS_CONS_CLOCK_3_POS_1 <= h;
		PS_TAKE_CONSOLE_PRINTER_CYCLE <= j;
		MS_CONSOLE_SPACE_FUNCTION <= not k;
		MS_CONSOLE_CARRIAGE_RETURN <= not l;
      
      wait for 30 ns;
      
      check1(MS_CONS_WM_INPUT_SET,not(g2),testName,"Cons Input Set");
      check1(MS_WM_INPUT,not e,testName,"-S WM Input");
      check1(MS_CONS_WM_OUTPUT_SET,not(g1 and g),testName,"Cons Out Set");
      check1(PS_SET_FIRST_CYCLE_LATCH,g1,testName,"Set First Cycle Latch");
      check1(PS_CONS_WM_CONTROL,g3,testName,"Set +S Cons Wm Control");
      check1(MS_CONS_WM_CONTROL,not PS_CONS_WM_CONTROL,testName,"Set -S Cons Wm Control");
      
      -- Reset some inputs - the latch should not be affected
            
      MB_CONS_PRTR_WM_INPUT_STAR_WM_T_NO <= '1';
      PS_CONS_OUTPUT_WM_BIT <= '0';
      wait for 30 ns;
      
      check1(PS_CONS_WM_CONTROL,g3,testName,"Check Set +S Cons Wm Control");
      check1(MS_CONS_WM_CONTROL,not PS_CONS_WM_CONTROL,testName,"Check Set +S Cons Wm Control");
      
      -- Perhaps reset the latch.  Rather then use new variables, I just
      -- "borrowed" some used to reset other signals
      
      PS_CONS_BACK_SPACE_CONTROL <= d;
      PS_CONS_CYCLE_LATCH_RESET <= e;
      wait for 30 ns;
      PS_CONS_BACK_SPACE_CONTROL <= '0';
      PS_CONS_CYCLE_LATCH_RESET <= '0';
      wait for 30 ns;

      check1(PS_CONS_WM_CONTROL,g3 and not(d and e),testName,"Reset +S Cons Wm Control");
      check1(MS_CONS_WM_CONTROL,not PS_CONS_WM_CONTROL,testName,"Reset +S Cons Wm Control");
      
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
