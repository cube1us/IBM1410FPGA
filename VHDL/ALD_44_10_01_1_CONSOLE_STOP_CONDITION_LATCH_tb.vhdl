-- Test Bench VHDL for IBM SMS ALD page 44.10.01.1
-- Title: CONSOLE STOP CONDITION LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/26/2020 2:32:41 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_44_10_01_1_CONSOLE_STOP_CONDITION_LATCH_tb is
end ALD_44_10_01_1_CONSOLE_STOP_CONDITION_LATCH_tb;

architecture behavioral of ALD_44_10_01_1_CONSOLE_STOP_CONDITION_LATCH_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_44_10_01_1_CONSOLE_STOP_CONDITION_LATCH
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_CONSOLE_HOME_POSITION:	 in STD_LOGIC;
		MS_CONS_START_STOP_PRINT_OUT:	 in STD_LOGIC;
		PS_CLOCK_STOPPED:	 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		CONS_36V:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		MS_DISPLAY_ROUTINE:	 in STD_LOGIC;
		MV_CONS_MODE_SW_ALTER_MODE:	 in STD_LOGIC;
		MS_CONS_STOP_PRINT_LATCH:	 in STD_LOGIC;
		GROUND:	 in STD_LOGIC;
		SWITCH_TOG_INHIBIT_PO_PL2:	 in STD_LOGIC;
		SWITCH_MOM_STARTPRINT:	 in STD_LOGIC;
		SWITCH_ROT_CYCLE_CTRL_DK2:	 in STD_LOGIC_VECTOR(5 downTo 0);
		MS_CONSOLE_STOPPED:	 out STD_LOGIC;
		MS_CONS_STOP_PRINT_OUT_COND:	 out STD_LOGIC;
		PS_CONSOLE_STOP_CONDITION_LATCH:	 out STD_LOGIC;
		PS_CONS_STOP_PRINT_COMP_COND:	 out STD_LOGIC;
		MV_START_PRINT_SWITCH:	 out STD_LOGIC;
		MV_CONS_CYCLE_CTRL_LOGIC_STEP:	 out STD_LOGIC;
		MV_CONS_CYCLE_CTRL_STOR_SCAN:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_CONSOLE_HOME_POSITION: STD_LOGIC := '0';
	signal MS_CONS_START_STOP_PRINT_OUT: STD_LOGIC := '1';
	signal PS_CLOCK_STOPPED: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_4: STD_LOGIC := '1';
	signal CONS_36V: STD_LOGIC := '0';
	signal PS_2ND_CLOCK_PULSE_2: STD_LOGIC := '0';
	signal MS_DISPLAY_ROUTINE: STD_LOGIC := '1';
	signal MV_CONS_MODE_SW_ALTER_MODE: STD_LOGIC := '1';
	signal MS_CONS_STOP_PRINT_LATCH: STD_LOGIC := '1';
	signal GROUND: STD_LOGIC := '0';
	signal SWITCH_TOG_INHIBIT_PO_PL2: STD_LOGIC := '0';
	signal SWITCH_MOM_STARTPRINT: STD_LOGIC := '0';
	signal SWITCH_ROT_CYCLE_CTRL_DK2: STD_LOGIC_VECTOR(5 downTo 0) := "000000";

	-- Outputs

	signal MS_CONSOLE_STOPPED: STD_LOGIC;
	signal MS_CONS_STOP_PRINT_OUT_COND: STD_LOGIC;
	signal PS_CONSOLE_STOP_CONDITION_LATCH: STD_LOGIC;
	signal PS_CONS_STOP_PRINT_COMP_COND: STD_LOGIC;
	signal MV_START_PRINT_SWITCH: STD_LOGIC;
	signal MV_CONS_CYCLE_CTRL_LOGIC_STEP: STD_LOGIC;
	signal MV_CONS_CYCLE_CTRL_STOR_SCAN: STD_LOGIC;

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

	UUT: ALD_44_10_01_1_CONSOLE_STOP_CONDITION_LATCH port map(
		FPGA_CLK => FPGA_CLK,
		PS_CONSOLE_HOME_POSITION => PS_CONSOLE_HOME_POSITION,
		MS_CONS_START_STOP_PRINT_OUT => MS_CONS_START_STOP_PRINT_OUT,
		PS_CLOCK_STOPPED => PS_CLOCK_STOPPED,
		MS_PROGRAM_RESET_4 => MS_PROGRAM_RESET_4,
		CONS_36V => CONS_36V,
		PS_2ND_CLOCK_PULSE_2 => PS_2ND_CLOCK_PULSE_2,
		MS_DISPLAY_ROUTINE => MS_DISPLAY_ROUTINE,
		MV_CONS_MODE_SW_ALTER_MODE => MV_CONS_MODE_SW_ALTER_MODE,
		MS_CONS_STOP_PRINT_LATCH => MS_CONS_STOP_PRINT_LATCH,
		GROUND => GROUND,
		SWITCH_TOG_INHIBIT_PO_PL2 => SWITCH_TOG_INHIBIT_PO_PL2,
		SWITCH_MOM_STARTPRINT => SWITCH_MOM_STARTPRINT,
		SWITCH_ROT_CYCLE_CTRL_DK2 => SWITCH_ROT_CYCLE_CTRL_DK2,
		MS_CONSOLE_STOPPED => MS_CONSOLE_STOPPED,
		MS_CONS_STOP_PRINT_OUT_COND => MS_CONS_STOP_PRINT_OUT_COND,
		PS_CONSOLE_STOP_CONDITION_LATCH => PS_CONSOLE_STOP_CONDITION_LATCH,
		PS_CONS_STOP_PRINT_COMP_COND => PS_CONS_STOP_PRINT_COMP_COND,
		MV_START_PRINT_SWITCH => MV_START_PRINT_SWITCH,
		MV_CONS_CYCLE_CTRL_LOGIC_STEP => MV_CONS_CYCLE_CTRL_LOGIC_STEP,
		MV_CONS_CYCLE_CTRL_STOR_SCAN => MV_CONS_CYCLE_CTRL_STOR_SCAN);

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

   testName := "15.49.04.1        X";  -- NOTE:  Remove X when editing to set correct length!

   for tt in 0 to 2**25 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      j := tv(8);
      k := tv(9);
      l := tv(10);
      m := tv(11);
      n := tv(12);
      o := tv(13);
      p := tv(14);
      q := tv(15);
      r := tv(16);
      s := tv(17);
      t := tv(18);
      u := tv(19);
      v := tv(20);
      w := tv(21);
      x := tv(22);
      y := tv(23);
      z := tv(24);

      
      wait for 30 ns;
      
      
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
