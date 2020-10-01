-- Test Bench VHDL for IBM SMS ALD page 16.16.07.1
-- Title: SIGN CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/1/2020 2:00:42 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_16_07_1_SIGN_CONTROL_ACC_tb is
end ALD_16_16_07_1_SIGN_CONTROL_ACC_tb;

architecture behavioral of ALD_16_16_07_1_SIGN_CONTROL_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_16_16_07_1_SIGN_CONTROL_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PB_B_CH_PLUS:	 in STD_LOGIC;
		PB_USE_B_CH_SIGN:	 in STD_LOGIC;
		PB_B_CH_MINUS:	 in STD_LOGIC;
		PB_USE_INV_B_CH_SIGN:	 in STD_LOGIC;
		PS_A_CH_PLUS:	 in STD_LOGIC;
		PS_USE_A_CH_SIGN:	 in STD_LOGIC;
		PS_A_CH_MINUS:	 in STD_LOGIC;
		PS_USE_INV_A_CH_SIGN:	 in STD_LOGIC;
		PS_PLUS_SIGN_LATCH:	 in STD_LOGIC;
		PS_USE_SIGN_LATCH:	 in STD_LOGIC;
		MB_B_CH_PLU_OR_INV_MIN_SIGN_GATED:	 out STD_LOGIC;
		MS_A_CH_PLUS_SIGN_GATED:	 out STD_LOGIC;
		MS_A_CH_INV_MINUS_SIGN_GTD:	 out STD_LOGIC;
		MS_PLUS_SIGN_LATCH_GATED:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PB_B_CH_PLUS: STD_LOGIC := '0';
	signal PB_USE_B_CH_SIGN: STD_LOGIC := '0';
	signal PB_B_CH_MINUS: STD_LOGIC := '0';
	signal PB_USE_INV_B_CH_SIGN: STD_LOGIC := '0';
	signal PS_A_CH_PLUS: STD_LOGIC := '0';
	signal PS_USE_A_CH_SIGN: STD_LOGIC := '0';
	signal PS_A_CH_MINUS: STD_LOGIC := '0';
	signal PS_USE_INV_A_CH_SIGN: STD_LOGIC := '0';
	signal PS_PLUS_SIGN_LATCH: STD_LOGIC := '0';
	signal PS_USE_SIGN_LATCH: STD_LOGIC := '0';

	-- Outputs

	signal MB_B_CH_PLU_OR_INV_MIN_SIGN_GATED: STD_LOGIC;
	signal MS_A_CH_PLUS_SIGN_GATED: STD_LOGIC;
	signal MS_A_CH_INV_MINUS_SIGN_GTD: STD_LOGIC;
	signal MS_PLUS_SIGN_LATCH_GATED: STD_LOGIC;

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

	UUT: ALD_16_16_07_1_SIGN_CONTROL_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PB_B_CH_PLUS => PB_B_CH_PLUS,
		PB_USE_B_CH_SIGN => PB_USE_B_CH_SIGN,
		PB_B_CH_MINUS => PB_B_CH_MINUS,
		PB_USE_INV_B_CH_SIGN => PB_USE_INV_B_CH_SIGN,
		PS_A_CH_PLUS => PS_A_CH_PLUS,
		PS_USE_A_CH_SIGN => PS_USE_A_CH_SIGN,
		PS_A_CH_MINUS => PS_A_CH_MINUS,
		PS_USE_INV_A_CH_SIGN => PS_USE_INV_A_CH_SIGN,
		PS_PLUS_SIGN_LATCH => PS_PLUS_SIGN_LATCH,
		PS_USE_SIGN_LATCH => PS_USE_SIGN_LATCH,
		MB_B_CH_PLU_OR_INV_MIN_SIGN_GATED => MB_B_CH_PLU_OR_INV_MIN_SIGN_GATED,
		MS_A_CH_PLUS_SIGN_GATED => MS_A_CH_PLUS_SIGN_GATED,
		MS_A_CH_INV_MINUS_SIGN_GTD => MS_A_CH_INV_MINUS_SIGN_GTD,
		MS_PLUS_SIGN_LATCH_GATED => MS_PLUS_SIGN_LATCH_GATED);

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
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;

   begin

   -- Your test bench code

   testName := "16.16.07.1        ";

   for tt in 0 to 2**11 loop
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

	   PB_B_CH_PLUS <= a;
	   PB_USE_B_CH_SIGN <= b;
	   PB_B_CH_MINUS <= c;
	   PB_USE_INV_B_CH_SIGN <= d;
	   PS_A_CH_PLUS <= e;
	   PS_USE_A_CH_SIGN <= f;
	   PS_A_CH_MINUS <= g;
	   PS_USE_INV_A_CH_SIGN <= h;
	   PS_PLUS_SIGN_LATCH <= j;
	   PS_USE_SIGN_LATCH <= k;
	   
      wait for 30 ns;
      
	   check1(MB_B_CH_PLU_OR_INV_MIN_SIGN_GATED,not((a and b) or (c and d)),testName,"-B B CH + or INV -");
	   check1(MS_A_CH_PLUS_SIGN_GATED,not(e and f),testName,"-S A CH +");
	   check1(MS_A_CH_INV_MINUS_SIGN_GTD,not(g and h),testName,"-S A CH INV -");
	   check1(MS_PLUS_SIGN_LATCH_GATED,not(j and k),testName,"-S +");
            
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
