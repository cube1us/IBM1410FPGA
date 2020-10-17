-- Test Bench VHDL for IBM SMS ALD page 35.10.02.1
-- Title: CHAR REGEN OR LOAD SEL FEAT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/17/2020 11:33:42 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_35_10_02_1_CHAR_REGEN_OR_LOAD_SEL_FEAT_ACC_tb is
end ALD_35_10_02_1_CHAR_REGEN_OR_LOAD_SEL_FEAT_ACC_tb;

architecture behavioral of ALD_35_10_02_1_CHAR_REGEN_OR_LOAD_SEL_FEAT_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_35_10_02_1_CHAR_REGEN_OR_LOAD_SEL_FEAT_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MY_RO_CHR_0:	 in STD_LOGIC;
		MY_RO_CHR_1:	 in STD_LOGIC;
		MY_LOAD_MEMORY:	 in STD_LOGIC;
		MY_REGEN_MEMORY:	 in STD_LOGIC;
		MY_RO_CHR_2:	 in STD_LOGIC;
		MY_RO_CHR_3:	 in STD_LOGIC;
		PY_LD_CHR_0:	 out STD_LOGIC;
		MY_LD_CHR_0:	 out STD_LOGIC;
		MY_REGEN_CHR_0:	 out STD_LOGIC;
		PY_SEL_CHR_0:	 out STD_LOGIC;
		PY_LD_CHR_1:	 out STD_LOGIC;
		MY_LD_CHR_1:	 out STD_LOGIC;
		MY_REGEN_CHR_1:	 out STD_LOGIC;
		PY_SEL_CHR_1:	 out STD_LOGIC;
		PY_LD_CHR_2:	 out STD_LOGIC;
		MY_LD_CHR_2:	 out STD_LOGIC;
		MY_REGEN_CHR_2:	 out STD_LOGIC;
		PY_SEL_CHR_2:	 out STD_LOGIC;
		PY_LD_CHR_3:	 out STD_LOGIC;
		MY_LD_CHR_3:	 out STD_LOGIC;
		MY_REGEN_CHR_3:	 out STD_LOGIC;
		PY_SEL_CHR_3:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MY_RO_CHR_0: STD_LOGIC := '1';
	signal MY_RO_CHR_1: STD_LOGIC := '1';
	signal MY_LOAD_MEMORY: STD_LOGIC := '1';
	signal MY_REGEN_MEMORY: STD_LOGIC := '1';
	signal MY_RO_CHR_2: STD_LOGIC := '1';
	signal MY_RO_CHR_3: STD_LOGIC := '1';

	-- Outputs

	signal PY_LD_CHR_0: STD_LOGIC;
	signal MY_LD_CHR_0: STD_LOGIC;
	signal MY_REGEN_CHR_0: STD_LOGIC;
	signal PY_SEL_CHR_0: STD_LOGIC;
	signal PY_LD_CHR_1: STD_LOGIC;
	signal MY_LD_CHR_1: STD_LOGIC;
	signal MY_REGEN_CHR_1: STD_LOGIC;
	signal PY_SEL_CHR_1: STD_LOGIC;
	signal PY_LD_CHR_2: STD_LOGIC;
	signal MY_LD_CHR_2: STD_LOGIC;
	signal MY_REGEN_CHR_2: STD_LOGIC;
	signal PY_SEL_CHR_2: STD_LOGIC;
	signal PY_LD_CHR_3: STD_LOGIC;
	signal MY_LD_CHR_3: STD_LOGIC;
	signal MY_REGEN_CHR_3: STD_LOGIC;
	signal PY_SEL_CHR_3: STD_LOGIC;

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

	UUT: ALD_35_10_02_1_CHAR_REGEN_OR_LOAD_SEL_FEAT_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MY_RO_CHR_0 => MY_RO_CHR_0,
		MY_RO_CHR_1 => MY_RO_CHR_1,
		MY_LOAD_MEMORY => MY_LOAD_MEMORY,
		MY_REGEN_MEMORY => MY_REGEN_MEMORY,
		MY_RO_CHR_2 => MY_RO_CHR_2,
		MY_RO_CHR_3 => MY_RO_CHR_3,
		PY_LD_CHR_0 => PY_LD_CHR_0,
		MY_LD_CHR_0 => MY_LD_CHR_0,
		MY_REGEN_CHR_0 => MY_REGEN_CHR_0,
		PY_SEL_CHR_0 => PY_SEL_CHR_0,
		PY_LD_CHR_1 => PY_LD_CHR_1,
		MY_LD_CHR_1 => MY_LD_CHR_1,
		MY_REGEN_CHR_1 => MY_REGEN_CHR_1,
		PY_SEL_CHR_1 => PY_SEL_CHR_1,
		PY_LD_CHR_2 => PY_LD_CHR_2,
		MY_LD_CHR_2 => MY_LD_CHR_2,
		MY_REGEN_CHR_2 => MY_REGEN_CHR_2,
		PY_SEL_CHR_2 => PY_SEL_CHR_2,
		PY_LD_CHR_3 => PY_LD_CHR_3,
		MY_LD_CHR_3 => MY_LD_CHR_3,
		MY_REGEN_CHR_3 => MY_REGEN_CHR_3,
		PY_SEL_CHR_3 => PY_SEL_CHR_3);

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

   testName := "35.10.02.1        ";

   for tt in 0 to 2**6 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);

		MY_RO_CHR_0 <= not a;
		MY_RO_CHR_1 <= not b;
		MY_LOAD_MEMORY <= not c;
		MY_REGEN_MEMORY <= not d;
		MY_RO_CHR_2 <= not e;
		MY_RO_CHR_3 <= not f;

      wait for 30 ns;

      check1(PY_LD_CHR_0,c and a,testName,"+Y LD Char 0");
      check1(MY_LD_CHR_0,not PY_LD_CHR_0,testName,"-Y LD Char 0");
      check1(MY_REGEN_CHR_0,c and a,testName,"-Y Regen Char 0");
      check1(PY_SEL_CHR_0,a and d,testName,"+Y Sel Char 0");

      check1(PY_LD_CHR_1,c and b,testName,"+Y LD Char 1");
      check1(MY_LD_CHR_1,not PY_LD_CHR_1,testName,"-Y LD Char 1");
      check1(MY_REGEN_CHR_1,c and b,testName,"-Y Regen Char 1");
      check1(PY_SEL_CHR_1,b and d,testName,"+Y Sel Char 1");

      check1(PY_LD_CHR_2,c and e,testName,"+Y LD Char 2");
      check1(MY_LD_CHR_2,not PY_LD_CHR_2,testName,"-Y LD Char 2");
      check1(MY_REGEN_CHR_2,c and e,testName,"-Y Regen Char 2");
      check1(PY_SEL_CHR_2,e and d,testName,"+Y Sel Char 2");
            
      check1(PY_LD_CHR_3,c and f,testName,"+Y LD Char 3");
      check1(MY_LD_CHR_3,not PY_LD_CHR_3,testName,"-Y LD Char 3");
      check1(MY_REGEN_CHR_3,c and f,testName,"-Y Regen Char 3");
      check1(PY_SEL_CHR_3,f and d,testName,"+Y Sel Char 3");
      
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