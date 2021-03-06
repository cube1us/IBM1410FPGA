-- Test BenchVHDL for IBM SMS ALD group AddOutputTranslatorBits2to8
-- Title: AddOutputTranslatorBits2to8
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/29/2020 7:46:16 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AddOutputTranslatorBits2to8_tb is
end AddOutputTranslatorBits2to8_tb;

architecture behavioral of AddOutputTranslatorBits2to8_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component AddOutputTranslatorBits2to8
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PB_Q0_DOT_B0_SHIFT: in STD_LOGIC;
		PB_Q0_DOT_B1_SHIFT: in STD_LOGIC;
		PB_Q0_DOT_B2_SHIFT: in STD_LOGIC;
		PB_Q0_DOT_B3_SHIFT: in STD_LOGIC;
		PB_Q2_DOT_B0_OR_B1_SHIFT: in STD_LOGIC;
		PB_Q2_DOT_B2_OR_B3_SHIFT: in STD_LOGIC;
		PB_Q4_DOT_B0_SHIFT: in STD_LOGIC;
		PB_Q4_DOT_B1_SHIFT: in STD_LOGIC;
		PB_Q4_DOT_B2_SHIFT: in STD_LOGIC;
		PB_Q4_DOT_B3_SHIFT: in STD_LOGIC;
		PB_Q6_DOT_B0_OR_B1_SHIFT: in STD_LOGIC;
		PB_Q6_DOT_B2_OR_B3_SHIFT: in STD_LOGIC;
		PB_Q8_DOT_B2_SHIFT: in STD_LOGIC;
		PB_Q8_DOT_B3_SHIFT: in STD_LOGIC;
		PB_Q8_DOT_B0_OR_B1_SHIFT: in STD_LOGIC;
		PB_Q0_DOT_ANY_SHIFT: in STD_LOGIC;
		PB_Q4_DOT_ANY_SHIFT: in STD_LOGIC;
		PB_Q8_DOT_B0_SHIFT: in STD_LOGIC;
		PB_Q8_DOT_B1_SHIFT: in STD_LOGIC;
		PB_Q8_DOT_B2_OR_B3_SHIFT: in STD_LOGIC;
		PB_ADDER_OUT_NOT_2_BIT: out STD_LOGIC;
		PB_ADDER_OUT_2_BIT: out STD_LOGIC;
		PB_ADDER_OUT_NOT_4_BIT: out STD_LOGIC;
		PB_ADDER_OUT_4_BIT: out STD_LOGIC;
		PB_ADDER_OUT_NOT_8_BIT: out STD_LOGIC;
		PB_ADDER_OUT_8_BIT: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PB_Q0_DOT_B0_SHIFT: STD_LOGIC := '0';
	signal PB_Q0_DOT_B1_SHIFT: STD_LOGIC := '0';
	signal PB_Q0_DOT_B2_SHIFT: STD_LOGIC := '0';
	signal PB_Q0_DOT_B3_SHIFT: STD_LOGIC := '0';
	signal PB_Q2_DOT_B0_OR_B1_SHIFT: STD_LOGIC := '0';
	signal PB_Q2_DOT_B2_OR_B3_SHIFT: STD_LOGIC := '0';
	signal PB_Q4_DOT_B0_SHIFT: STD_LOGIC := '0';
	signal PB_Q4_DOT_B1_SHIFT: STD_LOGIC := '0';
	signal PB_Q4_DOT_B2_SHIFT: STD_LOGIC := '0';
	signal PB_Q4_DOT_B3_SHIFT: STD_LOGIC := '0';
	signal PB_Q6_DOT_B0_OR_B1_SHIFT: STD_LOGIC := '0';
	signal PB_Q6_DOT_B2_OR_B3_SHIFT: STD_LOGIC := '0';
	signal PB_Q8_DOT_B2_SHIFT: STD_LOGIC := '0';
	signal PB_Q8_DOT_B3_SHIFT: STD_LOGIC := '0';
	signal PB_Q8_DOT_B0_OR_B1_SHIFT: STD_LOGIC := '0';
	signal PB_Q0_DOT_ANY_SHIFT: STD_LOGIC := '0';
	signal PB_Q4_DOT_ANY_SHIFT: STD_LOGIC := '0';
	signal PB_Q8_DOT_B0_SHIFT: STD_LOGIC := '0';
	signal PB_Q8_DOT_B1_SHIFT: STD_LOGIC := '0';
	signal PB_Q8_DOT_B2_OR_B3_SHIFT: STD_LOGIC := '0';

	-- Outputs

	signal PB_ADDER_OUT_NOT_2_BIT: STD_LOGIC;
	signal PB_ADDER_OUT_2_BIT: STD_LOGIC;
	signal PB_ADDER_OUT_NOT_4_BIT: STD_LOGIC;
	signal PB_ADDER_OUT_4_BIT: STD_LOGIC;
	signal PB_ADDER_OUT_NOT_8_BIT: STD_LOGIC;
	signal PB_ADDER_OUT_8_BIT: STD_LOGIC;

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

	UUT: AddOutputTranslatorBits2to8 port map(
		FPGA_CLK => FPGA_CLK,
		PB_Q0_DOT_B0_SHIFT => PB_Q0_DOT_B0_SHIFT,
		PB_Q0_DOT_B1_SHIFT => PB_Q0_DOT_B1_SHIFT,
		PB_Q0_DOT_B2_SHIFT => PB_Q0_DOT_B2_SHIFT,
		PB_Q0_DOT_B3_SHIFT => PB_Q0_DOT_B3_SHIFT,
		PB_Q2_DOT_B0_OR_B1_SHIFT => PB_Q2_DOT_B0_OR_B1_SHIFT,
		PB_Q2_DOT_B2_OR_B3_SHIFT => PB_Q2_DOT_B2_OR_B3_SHIFT,
		PB_Q4_DOT_B0_SHIFT => PB_Q4_DOT_B0_SHIFT,
		PB_Q4_DOT_B1_SHIFT => PB_Q4_DOT_B1_SHIFT,
		PB_Q4_DOT_B2_SHIFT => PB_Q4_DOT_B2_SHIFT,
		PB_Q4_DOT_B3_SHIFT => PB_Q4_DOT_B3_SHIFT,
		PB_Q6_DOT_B0_OR_B1_SHIFT => PB_Q6_DOT_B0_OR_B1_SHIFT,
		PB_Q6_DOT_B2_OR_B3_SHIFT => PB_Q6_DOT_B2_OR_B3_SHIFT,
		PB_Q8_DOT_B2_SHIFT => PB_Q8_DOT_B2_SHIFT,
		PB_Q8_DOT_B3_SHIFT => PB_Q8_DOT_B3_SHIFT,
		PB_Q8_DOT_B0_OR_B1_SHIFT => PB_Q8_DOT_B0_OR_B1_SHIFT,
		PB_Q0_DOT_ANY_SHIFT => PB_Q0_DOT_ANY_SHIFT,
		PB_Q4_DOT_ANY_SHIFT => PB_Q4_DOT_ANY_SHIFT,
		PB_Q8_DOT_B0_SHIFT => PB_Q8_DOT_B0_SHIFT,
		PB_Q8_DOT_B1_SHIFT => PB_Q8_DOT_B1_SHIFT,
		PB_Q8_DOT_B2_OR_B3_SHIFT => PB_Q8_DOT_B2_OR_B3_SHIFT,
		PB_ADDER_OUT_NOT_2_BIT => PB_ADDER_OUT_NOT_2_BIT,
		PB_ADDER_OUT_2_BIT => PB_ADDER_OUT_2_BIT,
		PB_ADDER_OUT_NOT_4_BIT => PB_ADDER_OUT_NOT_4_BIT,
		PB_ADDER_OUT_4_BIT => PB_ADDER_OUT_4_BIT,
		PB_ADDER_OUT_NOT_8_BIT => PB_ADDER_OUT_NOT_8_BIT,
		PB_ADDER_OUT_8_BIT => PB_ADDER_OUT_8_BIT);

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

   testName := "15.49.07.1 - 09.1 ";

   for tt in 0 to 2**21 loop
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
      s := tv(18);
      t := tv(19);
      u := tv(20);

  	   PB_Q0_DOT_B1_SHIFT <= a;
  	   PB_Q2_DOT_B2_OR_B3_SHIFT <= b;
      PB_Q4_DOT_B0_SHIFT <= c;
      PB_Q4_DOT_B1_SHIFT <= d;
  	   PB_Q6_DOT_B2_OR_B3_SHIFT <= e;
  	   PB_Q8_DOT_B3_SHIFT <= f;
  	   PB_Q8_DOT_B0_OR_B1_SHIFT <= g;
  	   PB_Q0_DOT_B0_SHIFT <= h;
  	   PB_Q0_DOT_B2_SHIFT <= j;
  	   PB_Q0_DOT_B3_SHIFT <= k;
  	   PB_Q2_DOT_B0_OR_B1_SHIFT <= l;
  	   PB_Q4_DOT_B2_SHIFT <= m;
  	   PB_Q4_DOT_B3_SHIFT <= n;
  	   PB_Q6_DOT_B0_OR_B1_SHIFT <= o;
  	   PB_Q8_DOT_B2_SHIFT <= p;
  	   PB_Q0_DOT_ANY_SHIFT <= q;
  	   PB_Q8_DOT_B0_SHIFT <= r;
  	   PB_Q8_DOT_B1_SHIFT <= s;
  	   PB_Q8_DOT_B2_OR_B3_SHIFT <= t;
  	   PB_Q4_DOT_ANY_SHIFT <= u;
      
      wait for 30 ns;
      
      check1(PB_ADDER_OUT_2_BIT,h or j or k or l or m or n or o or p,testName,"Adder Out 2 Bit");
      check1(PB_ADDER_OUT_NOT_2_BIT,a or b or c or d or e or f or g,testName,"Adder Out Not 2 Bit");
      check1(PB_ADDER_OUT_4_BIT,b or o or u,testName,"Adder Out 4 Bit");
      check1(PB_ADDER_OUT_NOT_4_BIT,e or l or q or r or s or t,testName,"Adder Out Not 4 Bit");
      check1(PB_ADDER_OUT_8_BIT,e or g or h or p,testName,"Adder Out 8 Bit");
      check1(PB_ADDER_OUT_NOT_8_BIT,a or b or f or j or k or l or o or u,testName,"Adder Out Not 8 Bit");
      
   end loop;

   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 80 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

END;
