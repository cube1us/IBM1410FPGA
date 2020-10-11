-- Test Bench VHDL for IBM SMS ALD page 18.11.01.1
-- Title: CHANNEL A NUMERICS VALIDITY CHECK
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/11/2020 8:28:08 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_18_11_01_1_CHANNEL_A_NUMERICS_VALIDITY_CHECK_tb is
end ALD_18_11_01_1_CHANNEL_A_NUMERICS_VALIDITY_CHECK_tb;

architecture behavioral of ALD_18_11_01_1_CHANNEL_A_NUMERICS_VALIDITY_CHECK_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_18_11_01_1_CHANNEL_A_NUMERICS_VALIDITY_CHECK
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MV_2ND_CHECK_TEST_SWITCH:	 in STD_LOGIC;
		MV_1ST_CHECK_TEST_SWITCH:	 in STD_LOGIC;
		PS_A_CH_1_BIT:	 in STD_LOGIC;
		PS_A_CH_8_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_1_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_8_BIT:	 in STD_LOGIC;
		PS_A_CH_2_BIT:	 in STD_LOGIC;
		PS_A_CH_4_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_2_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_4_BIT:	 in STD_LOGIC;
		PS_A_CH_VC_NUMERICS_ODD:	 out STD_LOGIC;
		PS_A_CH_VC_NUMERICS_EVEN:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MV_2ND_CHECK_TEST_SWITCH: STD_LOGIC := '1';
	signal MV_1ST_CHECK_TEST_SWITCH: STD_LOGIC := '1';
	signal PS_A_CH_1_BIT: STD_LOGIC := '0';
	signal PS_A_CH_8_BIT: STD_LOGIC := '0';
	signal PS_A_CH_NOT_1_BIT: STD_LOGIC := '0';
	signal PS_A_CH_NOT_8_BIT: STD_LOGIC := '0';
	signal PS_A_CH_2_BIT: STD_LOGIC := '0';
	signal PS_A_CH_4_BIT: STD_LOGIC := '0';
	signal PS_A_CH_NOT_2_BIT: STD_LOGIC := '0';
	signal PS_A_CH_NOT_4_BIT: STD_LOGIC := '0';

	-- Outputs

	signal PS_A_CH_VC_NUMERICS_ODD: STD_LOGIC;
	signal PS_A_CH_VC_NUMERICS_EVEN: STD_LOGIC;

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

	UUT: ALD_18_11_01_1_CHANNEL_A_NUMERICS_VALIDITY_CHECK port map(
		FPGA_CLK => FPGA_CLK,
		MV_2ND_CHECK_TEST_SWITCH => MV_2ND_CHECK_TEST_SWITCH,
		MV_1ST_CHECK_TEST_SWITCH => MV_1ST_CHECK_TEST_SWITCH,
		PS_A_CH_1_BIT => PS_A_CH_1_BIT,
		PS_A_CH_8_BIT => PS_A_CH_8_BIT,
		PS_A_CH_NOT_1_BIT => PS_A_CH_NOT_1_BIT,
		PS_A_CH_NOT_8_BIT => PS_A_CH_NOT_8_BIT,
		PS_A_CH_2_BIT => PS_A_CH_2_BIT,
		PS_A_CH_4_BIT => PS_A_CH_4_BIT,
		PS_A_CH_NOT_2_BIT => PS_A_CH_NOT_2_BIT,
		PS_A_CH_NOT_4_BIT => PS_A_CH_NOT_4_BIT,
		PS_A_CH_VC_NUMERICS_ODD => PS_A_CH_VC_NUMERICS_ODD,
		PS_A_CH_VC_NUMERICS_EVEN => PS_A_CH_VC_NUMERICS_EVEN);

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

   testName := "18.11.01.1        ";

   for tt in 0 to 2**10 loop
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
      
      g1 := ((c and d) nor (e and f)) or b;
      g2 := ((f and c) nor (e and d)) or b;
      g3 := (g and h) nor (j and k);
      g4 := (k and g) nor (j and h);

		MV_2ND_CHECK_TEST_SWITCH <= not a;
		MV_1ST_CHECK_TEST_SWITCH <= not b;
		PS_A_CH_1_BIT <= c;
		PS_A_CH_8_BIT <= d;
		PS_A_CH_NOT_1_BIT <= e;
		PS_A_CH_NOT_8_BIT <= f;
		PS_A_CH_2_BIT <= g;
		PS_A_CH_4_BIT <= h;
		PS_A_CH_NOT_2_BIT <= j;
		PS_A_CH_NOT_4_BIT <= k;
      
      wait for 30 ns;
      
      check1(PS_A_CH_VC_NUMERICS_ODD,
         ((g1 and g3) nor (g2 and g4)) or a,testName,"A Ch VC Numerics Odd");
         
         
      check1(PS_A_CH_VC_NUMERICS_EVEN,
         ((g3 and g2) nor (g4 and g1)) or a,testName,"A Ch VC Numerics Even");
      
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
