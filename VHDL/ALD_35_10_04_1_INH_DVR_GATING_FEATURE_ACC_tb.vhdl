-- Test Bench VHDL for IBM SMS ALD page 35.10.04.1
-- Title: INH DVR GATING FEATURE-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/17/2020 3:31:54 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_35_10_04_1_INH_DVR_GATING_FEATURE_ACC_tb is
end ALD_35_10_04_1_INH_DVR_GATING_FEATURE_ACC_tb;

architecture behavioral of ALD_35_10_04_1_INH_DVR_GATING_FEATURE_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_35_10_04_1_INH_DVR_GATING_FEATURE_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MY_MEM_AR_THP8B:	 in STD_LOGIC;
		MY_MEM_AR_THP2B:	 in STD_LOGIC;
		MY_MEM_AR_THP4B:	 in STD_LOGIC;
		MY_MEM_AR_THP0B:	 in STD_LOGIC;
		MY_Z_PULSE:	 in STD_LOGIC;
		MY_MEM_AR_NOT_THP4B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_THP8B:	 in STD_LOGIC;
		PY_Z_GATE_FOR_5_9TH_A:	 out STD_LOGIC;
		PY_Z_GATE_FOR_5_9TH_B:	 out STD_LOGIC;
		PY_Z_GATE_FOR_0_4TH_A:	 out STD_LOGIC;
		PY_Z_GATE_FOR_0_4TH_B:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MY_MEM_AR_THP8B: STD_LOGIC := '1';
	signal MY_MEM_AR_THP2B: STD_LOGIC := '1';
	signal MY_MEM_AR_THP4B: STD_LOGIC := '1';
	signal MY_MEM_AR_THP0B: STD_LOGIC := '1';
	signal MY_Z_PULSE: STD_LOGIC := '1';
	signal MY_MEM_AR_NOT_THP4B: STD_LOGIC := '1';
	signal MY_MEM_AR_NOT_THP8B: STD_LOGIC := '1';

	-- Outputs

	signal PY_Z_GATE_FOR_5_9TH_A: STD_LOGIC;
	signal PY_Z_GATE_FOR_5_9TH_B: STD_LOGIC;
	signal PY_Z_GATE_FOR_0_4TH_A: STD_LOGIC;
	signal PY_Z_GATE_FOR_0_4TH_B: STD_LOGIC;

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

	UUT: ALD_35_10_04_1_INH_DVR_GATING_FEATURE_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MY_MEM_AR_THP8B => MY_MEM_AR_THP8B,
		MY_MEM_AR_THP2B => MY_MEM_AR_THP2B,
		MY_MEM_AR_THP4B => MY_MEM_AR_THP4B,
		MY_MEM_AR_THP0B => MY_MEM_AR_THP0B,
		MY_Z_PULSE => MY_Z_PULSE,
		MY_MEM_AR_NOT_THP4B => MY_MEM_AR_NOT_THP4B,
		MY_MEM_AR_NOT_THP8B => MY_MEM_AR_NOT_THP8B,
		PY_Z_GATE_FOR_5_9TH_A => PY_Z_GATE_FOR_5_9TH_A,
		PY_Z_GATE_FOR_5_9TH_B => PY_Z_GATE_FOR_5_9TH_B,
		PY_Z_GATE_FOR_0_4TH_A => PY_Z_GATE_FOR_0_4TH_A,
		PY_Z_GATE_FOR_0_4TH_B => PY_Z_GATE_FOR_0_4TH_B);

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

   testName := "35.10.04.1        ";

   for tt in 0 to 2**5 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);

      g1 := not(a and b) and not(c and d) and not(not c and not a);
      
		MY_MEM_AR_THP8B <= not a;
		MY_MEM_AR_THP2B <= not b;
		MY_MEM_AR_THP4B <= not c;
		MY_MEM_AR_THP0B <= not d;
		MY_Z_PULSE <= not e;
		MY_MEM_AR_NOT_THP4B <= c;
		MY_MEM_AR_NOT_THP8B <= a;
     
      wait for 30 ns;
      
      check1(PY_Z_GATE_FOR_5_9TH_A,g1 and e,testName,"+Y 5-9th A");
      check1(PY_Z_GATE_FOR_5_9TH_B,g1 and e,testName,"+Y 5-9th B");
      check1(PY_Z_GATE_FOR_0_4TH_A,not g1 and e,testName,"+Y 0-4th A");
      check1(PY_Z_GATE_FOR_0_4TH_B,not g1 and e,testName,"+Y 0-4th B");
      
      
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
