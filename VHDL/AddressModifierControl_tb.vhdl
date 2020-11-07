-- Test BenchVHDL for IBM SMS ALD group AddressModifierControl
-- Title: AddressModifierControl
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 11/7/2020 4:20:29 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AddressModifierControl_tb is
end AddressModifierControl_tb;

architecture behavioral of AddressModifierControl_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component AddressModifierControl
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_LOGIC_GATE_D_1: in STD_LOGIC;
		PS_LOGIC_GATE_Z: in STD_LOGIC;
		MS_LOGIC_GATE_B_1: in STD_LOGIC;
		PS_LOGIC_GATE_A_OR_R: in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3: in STD_LOGIC;
		MS_PROGRAM_RESET_5: in STD_LOGIC;
		PS_BORROW_LATCH_ON: in STD_LOGIC;
		PS_ZERO_LATCH_ON: in STD_LOGIC;
		MV_2ND_CHECK_TEST_SWITCH: in STD_LOGIC;
		PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8: in STD_LOGIC;
		PS_C_OR_D_CYCLE_CTRL: in STD_LOGIC;
		PS_I_CYCLE_CTRL: in STD_LOGIC;
		MS_X_CYCLE_CTRL: in STD_LOGIC;
		MS_1401_Q_OP_TRANS: in STD_LOGIC;
		MS_F_CYCLE_CTRL: in STD_LOGIC;
		MS_NO_SCAN_CTRL: in STD_LOGIC;
		PS_1ST_SCAN_CTRL: in STD_LOGIC;
		MS_1ST_SCAN_CTRL: in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES: in STD_LOGIC;
		MS_INTR_BRANCH_DOT_B_CYCLE_CTRL: in STD_LOGIC;
		MV_STORAGE_SCAN_MODE_1: in STD_LOGIC;
		MS_DISPLAY_ROUTINE: in STD_LOGIC;
		PS_STORAGE_SCAN_ROUTINE: in STD_LOGIC;
		MV_CONS_MODE_SW_CE_MODE: in STD_LOGIC;
		MS_2ND_SCAN_CTRL: in STD_LOGIC;
		MS_3RD_SCAN_CTRL: in STD_LOGIC;
		MS_E_CYCLE_CTRL: in STD_LOGIC;
		SWITCH_ROT_STOR_SCAN_DK5: in STD_LOGIC_VECTOR(12 downTo 0);
		PS_NOT_EVEN_HUNDREDS_ADDR: out STD_LOGIC;
		PS_EVEN_HUNDREDS_ADDR: out STD_LOGIC;
		PS_RESET_ADDR_MOD_CTRL_LATCH: out STD_LOGIC;
		PS_ADDR_MOD_SET_TO_PLUS_ONE: out STD_LOGIC;
		PS_ADDR_MOD_SET_TO_MINUS_ONE: out STD_LOGIC;
		PS_ADDR_MOD_SET_TO_ZERO: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_D_1: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_Z: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_B_1: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_A_OR_R: STD_LOGIC := '0';
	signal PS_2ND_CLOCK_PULSE_3: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_5: STD_LOGIC := '1';
	signal PS_BORROW_LATCH_ON: STD_LOGIC := '0';
	signal PS_ZERO_LATCH_ON: STD_LOGIC := '0';
	signal MV_2ND_CHECK_TEST_SWITCH: STD_LOGIC := '1';
	signal PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8: STD_LOGIC := '0';
	signal PS_C_OR_D_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_I_CYCLE_CTRL: STD_LOGIC := '0';
	signal MS_X_CYCLE_CTRL: STD_LOGIC := '1';
	signal MS_1401_Q_OP_TRANS: STD_LOGIC := '1';
	signal MS_F_CYCLE_CTRL: STD_LOGIC := '1';
	signal MS_NO_SCAN_CTRL: STD_LOGIC := '1';
	signal PS_1ST_SCAN_CTRL: STD_LOGIC := '0';
	signal MS_1ST_SCAN_CTRL: STD_LOGIC := '1';
	signal PS_1401_STORE_AR_OP_CODES: STD_LOGIC := '0';
	signal MS_INTR_BRANCH_DOT_B_CYCLE_CTRL: STD_LOGIC := '1';
	signal MV_STORAGE_SCAN_MODE_1: STD_LOGIC := '1';
	signal MS_DISPLAY_ROUTINE: STD_LOGIC := '1';
	signal PS_STORAGE_SCAN_ROUTINE: STD_LOGIC := '0';
	signal MV_CONS_MODE_SW_CE_MODE: STD_LOGIC := '1';
	signal MS_2ND_SCAN_CTRL: STD_LOGIC := '1';
	signal MS_3RD_SCAN_CTRL: STD_LOGIC := '1';
	signal MS_E_CYCLE_CTRL: STD_LOGIC := '1';
	signal SWITCH_ROT_STOR_SCAN_DK5: STD_LOGIC_VECTOR(12 downTo 0) := "0000000000000";

	-- Outputs

	signal PS_NOT_EVEN_HUNDREDS_ADDR: STD_LOGIC;
	signal PS_EVEN_HUNDREDS_ADDR: STD_LOGIC;
	signal PS_RESET_ADDR_MOD_CTRL_LATCH: STD_LOGIC;
	signal PS_ADDR_MOD_SET_TO_PLUS_ONE: STD_LOGIC;
	signal PS_ADDR_MOD_SET_TO_MINUS_ONE: STD_LOGIC;
	signal PS_ADDR_MOD_SET_TO_ZERO: STD_LOGIC;

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

	UUT: AddressModifierControl port map(
		FPGA_CLK => FPGA_CLK,
		PS_LOGIC_GATE_D_1 => PS_LOGIC_GATE_D_1,
		PS_LOGIC_GATE_Z => PS_LOGIC_GATE_Z,
		MS_LOGIC_GATE_B_1 => MS_LOGIC_GATE_B_1,
		PS_LOGIC_GATE_A_OR_R => PS_LOGIC_GATE_A_OR_R,
		PS_2ND_CLOCK_PULSE_3 => PS_2ND_CLOCK_PULSE_3,
		MS_PROGRAM_RESET_5 => MS_PROGRAM_RESET_5,
		PS_BORROW_LATCH_ON => PS_BORROW_LATCH_ON,
		PS_ZERO_LATCH_ON => PS_ZERO_LATCH_ON,
		MV_2ND_CHECK_TEST_SWITCH => MV_2ND_CHECK_TEST_SWITCH,
		PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8 => PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8,
		PS_C_OR_D_CYCLE_CTRL => PS_C_OR_D_CYCLE_CTRL,
		PS_I_CYCLE_CTRL => PS_I_CYCLE_CTRL,
		MS_X_CYCLE_CTRL => MS_X_CYCLE_CTRL,
		MS_1401_Q_OP_TRANS => MS_1401_Q_OP_TRANS,
		MS_F_CYCLE_CTRL => MS_F_CYCLE_CTRL,
		MS_NO_SCAN_CTRL => MS_NO_SCAN_CTRL,
		PS_1ST_SCAN_CTRL => PS_1ST_SCAN_CTRL,
		MS_1ST_SCAN_CTRL => MS_1ST_SCAN_CTRL,
		PS_1401_STORE_AR_OP_CODES => PS_1401_STORE_AR_OP_CODES,
		MS_INTR_BRANCH_DOT_B_CYCLE_CTRL => MS_INTR_BRANCH_DOT_B_CYCLE_CTRL,
		MV_STORAGE_SCAN_MODE_1 => MV_STORAGE_SCAN_MODE_1,
		MS_DISPLAY_ROUTINE => MS_DISPLAY_ROUTINE,
		PS_STORAGE_SCAN_ROUTINE => PS_STORAGE_SCAN_ROUTINE,
		MV_CONS_MODE_SW_CE_MODE => MV_CONS_MODE_SW_CE_MODE,
		MS_2ND_SCAN_CTRL => MS_2ND_SCAN_CTRL,
		MS_3RD_SCAN_CTRL => MS_3RD_SCAN_CTRL,
		MS_E_CYCLE_CTRL => MS_E_CYCLE_CTRL,
		SWITCH_ROT_STOR_SCAN_DK5 => SWITCH_ROT_STOR_SCAN_DK5,
		PS_NOT_EVEN_HUNDREDS_ADDR => PS_NOT_EVEN_HUNDREDS_ADDR,
		PS_EVEN_HUNDREDS_ADDR => PS_EVEN_HUNDREDS_ADDR,
		PS_RESET_ADDR_MOD_CTRL_LATCH => PS_RESET_ADDR_MOD_CTRL_LATCH,
		PS_ADDR_MOD_SET_TO_PLUS_ONE => PS_ADDR_MOD_SET_TO_PLUS_ONE,
		PS_ADDR_MOD_SET_TO_MINUS_ONE => PS_ADDR_MOD_SET_TO_MINUS_ONE,
		PS_ADDR_MOD_SET_TO_ZERO => PS_ADDR_MOD_SET_TO_ZERO);

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
   variable tv: std_logic_vector(17 downto 0);
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s: std_logic;
   variable g1, g2, g3, g4, g5, g6: std_logic;
   variable sv: std_logic_vector(5 downto 0);

   begin

   -- Your test bench code

   testName := "14.71.40.1        ";
   
   MS_PROGRAM_RESET_5 <= '0';
   wait for 30 ns;
   MS_PROGRAM_RESET_5 <= '1';
   wait for 30 ns;
   
   check1(PS_EVEN_HUNDREDS_ADDR,'0',testName,"SA");
   check1(PS_NOT_EVEN_HUNDREDS_ADDR,'0',testName,"SB");
   check1(PS_RESET_ADDR_MOD_CTRL_LATCH,'1',testName,"SC");
   
   PS_BORROW_LATCH_ON <= '0';
   PS_LOGIC_GATE_D_1 <= '1';
   PS_2ND_CLOCK_PULSE_3 <= '1';
   wait for 30 ns;
   check1(PS_EVEN_HUNDREDS_ADDR,'0',testName,"1A");
   PS_BORROW_LATCH_ON <= '1';
   PS_LOGIC_GATE_D_1 <= '0';
   PS_2ND_CLOCK_PULSE_3 <= '1';
   wait for 30 ns;
   check1(PS_EVEN_HUNDREDS_ADDR,'0',testName,"1B");
   PS_BORROW_LATCH_ON <= '1';
   PS_LOGIC_GATE_D_1 <= '1';
   PS_2ND_CLOCK_PULSE_3 <= '0';
   wait for 30 ns;
   check1(PS_EVEN_HUNDREDS_ADDR,'0',testName,"1C");
   PS_BORROW_LATCH_ON <= '1';
   PS_LOGIC_GATE_D_1 <= '1';
   PS_2ND_CLOCK_PULSE_3 <= '1';
   wait for 30 ns; -- Sets Latch
   PS_BORROW_LATCH_ON <= '0';
   PS_LOGIC_GATE_D_1 <= '0';
   PS_2ND_CLOCK_PULSE_3 <= '0';
   wait for 30 ns; -- Latch stays set   
   check1(PS_EVEN_HUNDREDS_ADDR,'1',testName,"1D");
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns; -- resets latch
   MS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns; -- resets latch
   check1(PS_EVEN_HUNDREDS_ADDR,'0',testName,"1E");
   
   PS_ZERO_LATCH_ON <= '0';
   PS_LOGIC_GATE_D_1 <= '1';
   PS_2ND_CLOCK_PULSE_3 <= '1';
   wait for 30 ns;
   check1(PS_NOT_EVEN_HUNDREDS_ADDR,'0',testName,"2A");
   PS_ZERO_LATCH_ON <= '1';
   PS_LOGIC_GATE_D_1 <= '0';
   PS_2ND_CLOCK_PULSE_3 <= '1';
   wait for 30 ns;
   check1(PS_NOT_EVEN_HUNDREDS_ADDR,'0',testName,"2B");
   PS_ZERO_LATCH_ON <= '1';
   PS_LOGIC_GATE_D_1 <= '1';
   PS_2ND_CLOCK_PULSE_3 <= '0';
   wait for 30 ns;
   check1(PS_NOT_EVEN_HUNDREDS_ADDR,'0',testName,"2C");
   PS_ZERO_LATCH_ON <= '1';
   PS_LOGIC_GATE_D_1 <= '1';
   PS_2ND_CLOCK_PULSE_3 <= '1';
   wait for 30 ns; -- Sets Latch
   PS_ZERO_LATCH_ON <= '0';
   PS_LOGIC_GATE_D_1 <= '0';
   PS_2ND_CLOCK_PULSE_3 <= '0';
   wait for 30 ns; -- Latch stays set   
   check1(PS_NOT_EVEN_HUNDREDS_ADDR,'1',testName,"2D");
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns; -- resets latch
   MS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns; -- resets latch
   check1(PS_NOT_EVEN_HUNDREDS_ADDR,'0',testName,"2E");
   
   PS_LOGIC_GATE_A_OR_R <= '0';
   PS_2ND_CLOCK_PULSE_3 <= '1';
   wait for 30 ns;
   check1(PS_RESET_ADDR_MOD_CTRL_LATCH,'1',testName,"3A");
   PS_LOGIC_GATE_A_OR_R <= '1';
   PS_2ND_CLOCK_PULSE_3 <= '0';
   wait for 30 ns;
   check1(PS_RESET_ADDR_MOD_CTRL_LATCH,'1',testName,"3B");
   PS_LOGIC_GATE_A_OR_R <= '1';
   PS_2ND_CLOCK_PULSE_3 <= '1';
   wait for 30 ns; -- Resets Latch
   PS_LOGIC_GATE_A_OR_R <= '0';
   PS_2ND_CLOCK_PULSE_3 <= '0';
   wait for 30 ns; -- Latch stays reset
   check1(PS_RESET_ADDR_MOD_CTRL_LATCH,'0',testName,"3C");
   PS_LOGIC_GATE_Z <= '0';
   PS_2ND_CLOCK_PULSE_3 <= '1';
   wait for 30 ns;
   check1(PS_RESET_ADDR_MOD_CTRL_LATCH,'0',testName,"3D");
   PS_LOGIC_GATE_Z <= '1';
   PS_2ND_CLOCK_PULSE_3 <= '0';
   wait for 30 ns;
   check1(PS_RESET_ADDR_MOD_CTRL_LATCH,'0',testName,"3E");
   PS_LOGIC_GATE_Z <= '1';
   PS_2ND_CLOCK_PULSE_3 <= '1';
   wait for 30 ns; -- Latch set
   PS_LOGIC_GATE_Z <= '0';
   PS_2ND_CLOCK_PULSE_3 <= '0';
   wait for 30 ns; -- Latch stays set
   check1(PS_RESET_ADDR_MOD_CTRL_LATCH,'1',testName,"3F");
   PS_LOGIC_GATE_A_OR_R <= '1';
   PS_2ND_CLOCK_PULSE_3 <= '1';
   wait for 30 ns; -- Resets Latch
   PS_LOGIC_GATE_A_OR_R <= '0';
   PS_2ND_CLOCK_PULSE_3 <= '0';
   wait for 30 ns; -- Latch stays reset
   check1(PS_RESET_ADDR_MOD_CTRL_LATCH,'0',testName,"3G");
   MV_2ND_CHECK_TEST_SWITCH <= '0';
   wait for 30 ns; -- Sets latch   
   MV_2ND_CHECK_TEST_SWITCH <= '1';
   wait for 30 ns; -- Latch stays set
   check1(PS_RESET_ADDR_MOD_CTRL_LATCH,'1',testName,"3H");   

   testName := "14.71.41.1        ";
   
   for tt in 0 to 4*65536 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0); 
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      i := tv(8);
      j := tv(9);
      k := tv(10);
      l := tv(11);
      m := tv(12);
      n := tv(13);
      o := tv(14);
      p := tv(15);
      q := tv(16);
      r := tv(17);

	   PS_I_CYCLE_CTRL <= a;
      MV_STORAGE_SCAN_MODE_1 <= not b;
      MS_2ND_SCAN_CTRL <= not c;
      MS_E_CYCLE_CTRL <= not d;
      MS_F_CYCLE_CTRL <= not e;
      MS_NO_SCAN_CTRL <= not f;
      PS_C_OR_D_CYCLE_CTRL <= g;
      PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8 <= h;
      MS_DISPLAY_ROUTINE <= not i;
      PS_STORAGE_SCAN_ROUTINE <= j;
      PS_1401_STORE_AR_OP_CODES <= k;
      PS_1ST_SCAN_CTRL <= l;
      MS_1401_Q_OP_TRANS <= not m;
      MV_CONS_MODE_SW_CE_MODE <= not n;
      MS_INTR_BRANCH_DOT_B_CYCLE_CTRL <= not o;
      MS_1ST_SCAN_CTRL <= not p;  -- OK - does NOT track PS (l) - not used togther
      MS_3RD_SCAN_CTRL <= not q;            
      MS_X_CYCLE_CTRL <= not r;

      -- Because switching of -V signals is nto working right, we fake it here
      -- If the console mode is not CE, then the outputs from the mode switch
      -- are all 1's.  Otherwise, the particular entry is 0.
      
      -- Note that even though the output from this rotary switch is active low,
      -- switches are implemented such that a "1" is indicative of the active
      -- position.  The HDL generator then complements that.

      for s in 1 to 5 loop
         sv := "000000"; -- Start assuming open, with pull up to ground
         sv(s) := n;     -- Value of CE MODE Switch (again, complemented)
         SWITCH_ROT_STOR_SCAN_DK5(5 downto 0) <= sv;
         wait for 30 ns;

         -- Below, the ILD shows "not k AND not l" but the ALD implements not k OR not l
         check1(PS_ADDR_MOD_SET_TO_ZERO,
            m or f or ((not k or not l) and g and not i and h) or (a and j and 
               (SWITCH_ROT_STOR_SCAN_DK5(2) or SWITCH_ROT_STOR_SCAN_DK5(4))),testName,
               "ADDR MOD ZERO");     
               
         check1(PS_ADDR_MOD_SET_TO_PLUS_ONE,
            d or e or c or (a and not b) or (a and j and
               (SWITCH_ROT_STOR_SCAN_DK5(1) or SWITCH_ROT_STOR_SCAN_DK5(5))),testName,
               "ADDR MOD +1");
               
         check1(PS_ADDR_MOD_SET_TO_MINUS_ONE,
            o or p or q or r,testName,"ADDR MOD -1");
                                                
      end loop;
      
   end loop;
   
   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 1000 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS

END;
