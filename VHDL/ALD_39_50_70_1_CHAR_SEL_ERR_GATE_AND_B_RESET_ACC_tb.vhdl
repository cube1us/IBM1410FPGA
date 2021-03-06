-- Test Bench VHDL for IBM SMS ALD page 39.50.70.1
-- Title: CHAR SEL ERR GATE AND B RESET-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/22/2020 1:34:06 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_39_50_70_1_CHAR_SEL_ERR_GATE_AND_B_RESET_ACC_tb is
end ALD_39_50_70_1_CHAR_SEL_ERR_GATE_AND_B_RESET_ACC_tb;

architecture behavioral of ALD_39_50_70_1_CHAR_SEL_ERR_GATE_AND_B_RESET_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_39_50_70_1_CHAR_SEL_ERR_GATE_AND_B_RESET_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PY_CHAR_SEL_ERROR_CHK_1:	 in STD_LOGIC;
		MY_CHAR_SEL_ERROR_CHK_1_STAR_2_STAR:	 in STD_LOGIC;
		PY_CHAR_SEL_ERROR_CHK_2:	 in STD_LOGIC;
		MY_CHAR_SEL_ERROR_CHK_2_STAR_2_STAR:	 in STD_LOGIC;
		MY_MEM_AR_TTHP4B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_TTHP4B:	 in STD_LOGIC;
		PY_B_DATA_REG_RESET_1:	 in STD_LOGIC;
		PS_CHAR_SEL_ERROR_CHK_1:	 out STD_LOGIC;
		PS_CHAR_SEL_ERROR_CHK_2:	 out STD_LOGIC;
		PS_B_DATA_REG_RESET:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PY_CHAR_SEL_ERROR_CHK_1: STD_LOGIC := '0';
	signal MY_CHAR_SEL_ERROR_CHK_1_STAR_2_STAR: STD_LOGIC := '1';
	signal PY_CHAR_SEL_ERROR_CHK_2: STD_LOGIC := '0';
	signal MY_CHAR_SEL_ERROR_CHK_2_STAR_2_STAR: STD_LOGIC := '1';
	signal MY_MEM_AR_TTHP4B: STD_LOGIC := '1';
	signal MY_MEM_AR_NOT_TTHP4B: STD_LOGIC := '1';
	signal PY_B_DATA_REG_RESET_1: STD_LOGIC := '0';

	-- Outputs

	signal PS_CHAR_SEL_ERROR_CHK_1: STD_LOGIC;
	signal PS_CHAR_SEL_ERROR_CHK_2: STD_LOGIC;
	signal PS_B_DATA_REG_RESET: STD_LOGIC;

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

	UUT: ALD_39_50_70_1_CHAR_SEL_ERR_GATE_AND_B_RESET_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PY_CHAR_SEL_ERROR_CHK_1 => PY_CHAR_SEL_ERROR_CHK_1,
		MY_CHAR_SEL_ERROR_CHK_1_STAR_2_STAR => MY_CHAR_SEL_ERROR_CHK_1_STAR_2_STAR,
		PY_CHAR_SEL_ERROR_CHK_2 => PY_CHAR_SEL_ERROR_CHK_2,
		MY_CHAR_SEL_ERROR_CHK_2_STAR_2_STAR => MY_CHAR_SEL_ERROR_CHK_2_STAR_2_STAR,
		MY_MEM_AR_TTHP4B => MY_MEM_AR_TTHP4B,
		MY_MEM_AR_NOT_TTHP4B => MY_MEM_AR_NOT_TTHP4B,
		PY_B_DATA_REG_RESET_1 => PY_B_DATA_REG_RESET_1,
		PS_CHAR_SEL_ERROR_CHK_1 => PS_CHAR_SEL_ERROR_CHK_1,
		PS_CHAR_SEL_ERROR_CHK_2 => PS_CHAR_SEL_ERROR_CHK_2,
		PS_B_DATA_REG_RESET => PS_B_DATA_REG_RESET);

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

   testName := "39.50.70.1        ";

   for tt in 0 to 2**6 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      g := tv(5);
      
		PY_CHAR_SEL_ERROR_CHK_1 <= a;
      MY_CHAR_SEL_ERROR_CHK_1_STAR_2_STAR <= not b;
      PY_CHAR_SEL_ERROR_CHK_2 <= c;
      MY_CHAR_SEL_ERROR_CHK_2_STAR_2_STAR <= not d;
      MY_MEM_AR_TTHP4B <= not e;  -- (e is TTH position 4 bit)
      MY_MEM_AR_NOT_TTHP4B <= not(not e);  -- i.e., "e"
      PY_B_DATA_REG_RESET_1 <= g;
      
      wait for 30 ns;
      
      check1(PS_CHAR_SEL_ERROR_CHK_1,(b and e) or (a and not e),testName,"Char Sel Error Chk 1");
      check1(PS_CHAR_SEL_ERROR_CHK_2,(c and not e) or (d and e),testName,"Char Sel Error Chk 2");
      check1(PS_B_DATA_REG_RESET,PY_B_DATA_REG_RESET_1,testName,"B Data Reg Reset");       
      
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
