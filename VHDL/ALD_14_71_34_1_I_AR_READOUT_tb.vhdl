-- Test Bench VHDL for IBM SMS ALD page 14.71.34.1
-- Title: I AR READOUT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/7/2020 8:12:08 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_71_34_1_I_AR_READOUT_tb is
end ALD_14_71_34_1_I_AR_READOUT_tb;

architecture behavioral of ALD_14_71_34_1_I_AR_READOUT_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_71_34_1_I_AR_READOUT
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_INTERRUPT_BRANCH:	 in STD_LOGIC;
		MV_CE_RO_I_AR:	 in STD_LOGIC;
		MS_CONSOLE_RO_IAR:	 in STD_LOGIC;
		PS_I_CYCLE_CTRL:	 in STD_LOGIC;
		PS_NO_BRANCH_LATCH:	 in STD_LOGIC;
		MS_CONSOLE_INHIBIT_AR_RO:	 in STD_LOGIC;
		PS_LOGIC_GATE_SPECIAL_A:	 in STD_LOGIC;
		MS_I_RING_CTRL:	 in STD_LOGIC;
		MS_STORAGE_SCAN_ROUTINE:	 in STD_LOGIC;
		PS_NO_SCAN_CTRL:	 in STD_LOGIC;
		PS_B_CYCLE_CTRL:	 in STD_LOGIC;
		PS_I_RING_CTRL:	 in STD_LOGIC;
		PS_1401_MODE_1:	 in STD_LOGIC;
		MS_1401_BRANCH_LATCH:	 in STD_LOGIC;
		MS_BRANCH_TO_00001:	 in STD_LOGIC;
		MS_INTR_BRANCH_DOT_B_CYCLE_CTRL:	 out STD_LOGIC;
		PS_RO_I_AR:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_INTERRUPT_BRANCH: STD_LOGIC := '0';
	signal MV_CE_RO_I_AR: STD_LOGIC := '1';
	signal MS_CONSOLE_RO_IAR: STD_LOGIC := '1';
	signal PS_I_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_NO_BRANCH_LATCH: STD_LOGIC := '0';
	signal MS_CONSOLE_INHIBIT_AR_RO: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_SPECIAL_A: STD_LOGIC := '0';
	signal MS_I_RING_CTRL: STD_LOGIC := '1';
	signal MS_STORAGE_SCAN_ROUTINE: STD_LOGIC := '1';
	signal PS_NO_SCAN_CTRL: STD_LOGIC := '0';
	signal PS_B_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_I_RING_CTRL: STD_LOGIC := '0';
	signal PS_1401_MODE_1: STD_LOGIC := '0';
	signal MS_1401_BRANCH_LATCH: STD_LOGIC := '1';
	signal MS_BRANCH_TO_00001: STD_LOGIC := '1';

	-- Outputs

	signal MS_INTR_BRANCH_DOT_B_CYCLE_CTRL: STD_LOGIC;
	signal PS_RO_I_AR: STD_LOGIC;

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

	UUT: ALD_14_71_34_1_I_AR_READOUT port map(
		FPGA_CLK => FPGA_CLK,
		PS_INTERRUPT_BRANCH => PS_INTERRUPT_BRANCH,
		MV_CE_RO_I_AR => MV_CE_RO_I_AR,
		MS_CONSOLE_RO_IAR => MS_CONSOLE_RO_IAR,
		PS_I_CYCLE_CTRL => PS_I_CYCLE_CTRL,
		PS_NO_BRANCH_LATCH => PS_NO_BRANCH_LATCH,
		MS_CONSOLE_INHIBIT_AR_RO => MS_CONSOLE_INHIBIT_AR_RO,
		PS_LOGIC_GATE_SPECIAL_A => PS_LOGIC_GATE_SPECIAL_A,
		MS_I_RING_CTRL => MS_I_RING_CTRL,
		MS_STORAGE_SCAN_ROUTINE => MS_STORAGE_SCAN_ROUTINE,
		PS_NO_SCAN_CTRL => PS_NO_SCAN_CTRL,
		PS_B_CYCLE_CTRL => PS_B_CYCLE_CTRL,
		PS_I_RING_CTRL => PS_I_RING_CTRL,
		PS_1401_MODE_1 => PS_1401_MODE_1,
		MS_1401_BRANCH_LATCH => MS_1401_BRANCH_LATCH,
		MS_BRANCH_TO_00001 => MS_BRANCH_TO_00001,
		MS_INTR_BRANCH_DOT_B_CYCLE_CTRL => MS_INTR_BRANCH_DOT_B_CYCLE_CTRL,
		PS_RO_I_AR => PS_RO_I_AR);

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

--fpga_clk_process: process

--   constant clk_period : time := 10 ns;

--   begin
--      fpga_clk <= '0';
--      wait for clk_period / 2;
--      fpga_clk <= '1';
--      wait for clk_period / 2;
--   end process;

--
-- End of TestBenchFPGAClock.vhdl
--   

-- Place your test bench code in the uut_process

uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;
   variable tv: std_logic_vector(15 downto 0);
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p: std_logic;
   variable g1, g2, g3, g4, g5, g6: std_logic;

   begin

   -- Your test bench code

   testName := "14.71.33.1        ";
   
   FPGA_CLK <= '1';  -- Not needed for this combinatorial test.
  
   for tt in 0 to 32768 loop  
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
      
      g1 := m and not n and not o and d and l;
      g2 := d and l and e;
      g3 := i or (not h and d) or (a and k) or (k and j) or g2 or g1;
      g4 := not f and g and g3;

	   PS_INTERRUPT_BRANCH <= a;
      MV_CE_RO_I_AR <= not b;
      MS_CONSOLE_RO_IAR <= not c;
      PS_I_CYCLE_CTRL <= d;
      PS_NO_BRANCH_LATCH <= e;
      MS_CONSOLE_INHIBIT_AR_RO <= not f;
      PS_LOGIC_GATE_SPECIAL_A <= g;
      MS_I_RING_CTRL <= not h;
      MS_STORAGE_SCAN_ROUTINE <= not i;
      PS_NO_SCAN_CTRL <= j;
      PS_B_CYCLE_CTRL <= k;
      PS_I_RING_CTRL <= l;
      PS_1401_MODE_1 <= m;
      MS_1401_BRANCH_LATCH <= not n;
      MS_BRANCH_TO_00001 <= not o;

      wait for 30 ns;
   
      check1(PS_RO_I_AR,c or b or g4,testName,"RO I AR");
      check1(MS_INTR_BRANCH_DOT_B_CYCLE_CTRL,NOT(a and k),testName,"INTR BRANCH . B Cycle Ctrl");         
               
   end loop;


   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 100 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

end;
