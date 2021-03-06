-- Test Bench VHDL for IBM SMS ALD page 16.50.04.1
-- Title: MPLY CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/6/2020 9:37:10 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_50_04_1_MPLY_CONTROLS_ACC_tb is
end ALD_16_50_04_1_MPLY_CONTROLS_ACC_tb;

architecture behavioral of ALD_16_50_04_1_MPLY_CONTROLS_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_16_50_04_1_MPLY_CONTROLS_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_MPLY_OP_CODE:	 in STD_LOGIC;
		PS_MQ_LATCH:	 in STD_LOGIC;
		PS_B_CYCLE:	 in STD_LOGIC;
		PS_TRUE_LATCH_1:	 in STD_LOGIC;
		PB_B_CH_9:	 in STD_LOGIC;
		PB_B_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PB_B_CH_0:	 in STD_LOGIC;
		PB_B_CH_WM_BIT:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		PB_B_CH_1_4:	 in STD_LOGIC;
		PB_B_CH_5_8:	 in STD_LOGIC;
		PB_B_CH_1_9:	 in STD_LOGIC;
		PS_3RD_SCAN:	 in STD_LOGIC;
		MS_MPLY_DOT_MQ_DOT_B:	 out STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B1_CYCLE:	 out STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_B0:	 out STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B9:	 out STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_B0_DOT_STAR:	 out STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B9_DOT_STAR:	 out STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B0_DOT_NOT_BW:	 out STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_3_DOT_T_DOT_B0_DOT_BW:	 out STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B1_4:	 out STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_1_DOT_B0_DOT_BW:	 out STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B5_8:	 out STD_LOGIC;
		PB_1ST_SCAN:	 out STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9:	 out STD_LOGIC;
		PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9:	 out STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_3_DOT_B1_9:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_MPLY_OP_CODE: STD_LOGIC := '0';
	signal PS_MQ_LATCH: STD_LOGIC := '0';
	signal PS_B_CYCLE: STD_LOGIC := '0';
	signal PS_TRUE_LATCH_1: STD_LOGIC := '0';
	signal PB_B_CH_9: STD_LOGIC := '0';
	signal PB_B_CH_NOT_WM_BIT: STD_LOGIC := '0';
	signal PB_B_CH_0: STD_LOGIC := '0';
	signal PB_B_CH_WM_BIT: STD_LOGIC := '0';
	signal PS_1ST_SCAN: STD_LOGIC := '0';
	signal PB_B_CH_1_4: STD_LOGIC := '0';
	signal PB_B_CH_5_8: STD_LOGIC := '0';
	signal PB_B_CH_1_9: STD_LOGIC := '0';
	signal PS_3RD_SCAN: STD_LOGIC := '0';

	-- Outputs

	signal MS_MPLY_DOT_MQ_DOT_B: STD_LOGIC;
	signal MB_MPLY_DOT_MQ_DOT_B1_CYCLE: STD_LOGIC;
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_B0: STD_LOGIC;
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B9: STD_LOGIC;
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_B0_DOT_STAR: STD_LOGIC;
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B9_DOT_STAR: STD_LOGIC;
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B0_DOT_NOT_BW: STD_LOGIC;
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_3_DOT_T_DOT_B0_DOT_BW: STD_LOGIC;
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B1_4: STD_LOGIC;
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_1_DOT_B0_DOT_BW: STD_LOGIC;
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B5_8: STD_LOGIC;
	signal PB_1ST_SCAN: STD_LOGIC;
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9: STD_LOGIC;
	signal PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9: STD_LOGIC;
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_3_DOT_B1_9: STD_LOGIC;

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

	UUT: ALD_16_50_04_1_MPLY_CONTROLS_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_MPLY_OP_CODE => PS_MPLY_OP_CODE,
		PS_MQ_LATCH => PS_MQ_LATCH,
		PS_B_CYCLE => PS_B_CYCLE,
		PS_TRUE_LATCH_1 => PS_TRUE_LATCH_1,
		PB_B_CH_9 => PB_B_CH_9,
		PB_B_CH_NOT_WM_BIT => PB_B_CH_NOT_WM_BIT,
		PB_B_CH_0 => PB_B_CH_0,
		PB_B_CH_WM_BIT => PB_B_CH_WM_BIT,
		PS_1ST_SCAN => PS_1ST_SCAN,
		PB_B_CH_1_4 => PB_B_CH_1_4,
		PB_B_CH_5_8 => PB_B_CH_5_8,
		PB_B_CH_1_9 => PB_B_CH_1_9,
		PS_3RD_SCAN => PS_3RD_SCAN,
		MS_MPLY_DOT_MQ_DOT_B => MS_MPLY_DOT_MQ_DOT_B,
		MB_MPLY_DOT_MQ_DOT_B1_CYCLE => MB_MPLY_DOT_MQ_DOT_B1_CYCLE,
		MB_MPLY_DOT_MQ_DOT_B_DOT_B0 => MB_MPLY_DOT_MQ_DOT_B_DOT_B0,
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B9 => MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B9,
		MB_MPLY_DOT_MQ_DOT_B_DOT_B0_DOT_STAR => MB_MPLY_DOT_MQ_DOT_B_DOT_B0_DOT_STAR,
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B9_DOT_STAR => MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B9_DOT_STAR,
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B0_DOT_NOT_BW => MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B0_DOT_NOT_BW,
		MB_MPLY_DOT_MQ_DOT_B_DOT_3_DOT_T_DOT_B0_DOT_BW => MB_MPLY_DOT_MQ_DOT_B_DOT_3_DOT_T_DOT_B0_DOT_BW,
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B1_4 => MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B1_4,
		MB_MPLY_DOT_MQ_DOT_B_DOT_1_DOT_B0_DOT_BW => MB_MPLY_DOT_MQ_DOT_B_DOT_1_DOT_B0_DOT_BW,
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B5_8 => MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B5_8,
		PB_1ST_SCAN => PB_1ST_SCAN,
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9 => MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9,
		PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9 => PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9,
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_3_DOT_B1_9 => MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_3_DOT_B1_9);

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

   testName := "16.50.04.1        ";  -- NOTE:  Remove X when editing to set correct length!

   for tt in 0 to 2**13 loop
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

		PS_MPLY_OP_CODE <= a;
		PS_MQ_LATCH <= b;
		PS_B_CYCLE <= c;
		PS_TRUE_LATCH_1 <= d;
		PB_B_CH_9 <= e;
		PB_B_CH_NOT_WM_BIT <= f;
		PB_B_CH_0 <= g;
		PB_B_CH_WM_BIT <= h;
		PS_1ST_SCAN <= j;
		PB_B_CH_1_4 <= k;
		PB_B_CH_5_8 <= l;
		PB_B_CH_1_9 <= m;
		PS_3RD_SCAN <= n;
      
      g1 := a and b and c;
      g2 := g1 and d;
      
      wait for 30 ns;
      
		check1(MS_MPLY_DOT_MQ_DOT_B,not(g1),testName,"1A");
      check1(MB_MPLY_DOT_MQ_DOT_B1_CYCLE,not(g1),testName,"1B");
      check1(MB_MPLY_DOT_MQ_DOT_B_DOT_B0,not(g1 and g),testName,"1C");
      check1(MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B9,not(g2 and e),testName,"1D");
      check1(MB_MPLY_DOT_MQ_DOT_B_DOT_B0_DOT_STAR,not(g1 and g),testName,"1E");
      check1(MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B9_DOT_STAR,not(g2 and e),testName,"1F");
      check1(MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B0_DOT_NOT_BW,not(g2 and f and g),testName,"1G");
      check1(MB_MPLY_DOT_MQ_DOT_B_DOT_3_DOT_T_DOT_B0_DOT_BW,not(g2 and n and g and h),testName,"1H");
      check1(MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B1_4,not(g2 and k),testName,"1I");
      check1(MB_MPLY_DOT_MQ_DOT_B_DOT_1_DOT_B0_DOT_BW,not(g2 and j and g and h),testName,"1J");
      check1(MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B5_8,not(g2 and l),testName,"1K");
      check1(PB_1ST_SCAN,j,testName,"1L");
      check1(MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9,not(g2 and j and m),testName,"1M");
      check1(PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9,g2 and j and m,testName,"1N");
      check1(MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_3_DOT_B1_9,not(g2 and n and m),testName,"1O");
      
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
