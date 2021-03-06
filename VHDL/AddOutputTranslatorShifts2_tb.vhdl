-- Test BenchVHDL for IBM SMS ALD group AddOutputTranslatorShifts2
-- Title: AddOutputTranslatorShifts2
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/29/2020 5:08:30 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AddOutputTranslatorShifts2_tb is
end AddOutputTranslatorShifts2_tb;

architecture behavioral of AddOutputTranslatorShifts2_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component AddOutputTranslatorShifts2
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MB_ADDER_MX_Q0: in STD_LOGIC;
		MB_ADDER_MX_Q2: in STD_LOGIC;
		MB_B0_SHIFT: in STD_LOGIC;
		MB_B3_SHIFT: in STD_LOGIC;
		MB_B1_SHIFT: in STD_LOGIC;
		MB_B2_SHIFT: in STD_LOGIC;
		MB_ADDER_OUT_NOT_1_BIT: in STD_LOGIC;
		MB_B2_OR_B3_SHIFT: in STD_LOGIC;
		MB_ADDER_OUT_1_BIT: in STD_LOGIC;
		MB_B0_OR_B1_SHIFT: in STD_LOGIC;
		MB_ADDER_MX_Q4: in STD_LOGIC;
		MB_ADDER_MX_Q6: in STD_LOGIC;
		MB_ADDER_MX_Q8: in STD_LOGIC;
		MB_ADDER_MX_NO_CARRY_OUT: in STD_LOGIC;
		MB_ADDER_MX_CARRY_OUT: in STD_LOGIC;
		PB_Q0_DOT_ANY_SHIFT: out STD_LOGIC;
		PB_Q0_DOT_B0_SHIFT: out STD_LOGIC;
		PB_Q0_DOT_B1_SHIFT: out STD_LOGIC;
		PB_Q0_DOT_B2_SHIFT: out STD_LOGIC;
		PB_Q0_DOT_B3_SHIFT: out STD_LOGIC;
		PB_Q2_DOT_B0_OR_B2_SHIFT: out STD_LOGIC;
		PB_Q2_DOT_B1_OR_B3_SHIFT: out STD_LOGIC;
		PB_Q2_DOT_B0_OR_B1_SHIFT: out STD_LOGIC;
		PB_Q2_DOT_B2_OR_B3_SHIFT: out STD_LOGIC;
		PB_Q4_DOT_ANY_SHIFT: out STD_LOGIC;
		PB_Q4_DOT_B0_SHIFT: out STD_LOGIC;
		PB_Q4_DOT_B1_SHIFT: out STD_LOGIC;
		PB_Q4_DOT_B2_SHIFT: out STD_LOGIC;
		PB_Q4_DOT_B3_SHIFT: out STD_LOGIC;
		PB_Q6_DOT_B0_SHIFT: out STD_LOGIC;
		PB_Q6_DOT_B1_SHIFT: out STD_LOGIC;
		PB_Q6_DOT_B2_SHIFT: out STD_LOGIC;
		PB_Q6_DOT_B3_SHIFT: out STD_LOGIC;
		PB_Q6_DOT_B0_OR_B1_SHIFT: out STD_LOGIC;
		PB_Q6_DOT_B2_OR_B3_SHIFT: out STD_LOGIC;
		PS_ADDER_CARRY: out STD_LOGIC;
		PS_ADDER_NO_CARRY: out STD_LOGIC;
		PB_Q8_DOT_B0_SHIFT: out STD_LOGIC;
		PB_Q8_DOT_B1_SHIFT: out STD_LOGIC;
		PB_Q8_DOT_B2_SHIFT: out STD_LOGIC;
		PB_Q8_DOT_B3_SHIFT: out STD_LOGIC;
		PB_ADDER_NO_CARRY: out STD_LOGIC;
		PB_Q8_DOT_B0_OR_B1_SHIFT: out STD_LOGIC;
		PB_ADDER_CARRY: out STD_LOGIC;
		PB_Q8_DOT_B2_OR_B3_SHIFT: out STD_LOGIC;
		LAMP_15A1C11: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MB_ADDER_MX_Q0: STD_LOGIC := '1';
	signal MB_ADDER_MX_Q2: STD_LOGIC := '1';
	signal MB_B0_SHIFT: STD_LOGIC := '1';
	signal MB_B3_SHIFT: STD_LOGIC := '1';
	signal MB_B1_SHIFT: STD_LOGIC := '1';
	signal MB_B2_SHIFT: STD_LOGIC := '1';
	signal MB_ADDER_OUT_NOT_1_BIT: STD_LOGIC := '1';
	signal MB_B2_OR_B3_SHIFT: STD_LOGIC := '1';
	signal MB_ADDER_OUT_1_BIT: STD_LOGIC := '1';
	signal MB_B0_OR_B1_SHIFT: STD_LOGIC := '1';
	signal MB_ADDER_MX_Q4: STD_LOGIC := '1';
	signal MB_ADDER_MX_Q6: STD_LOGIC := '1';
	signal MB_ADDER_MX_Q8: STD_LOGIC := '1';
	signal MB_ADDER_MX_NO_CARRY_OUT: STD_LOGIC := '1';
	signal MB_ADDER_MX_CARRY_OUT: STD_LOGIC := '1';

	-- Outputs

	signal PB_Q0_DOT_ANY_SHIFT: STD_LOGIC;
	signal PB_Q0_DOT_B0_SHIFT: STD_LOGIC;
	signal PB_Q0_DOT_B1_SHIFT: STD_LOGIC;
	signal PB_Q0_DOT_B2_SHIFT: STD_LOGIC;
	signal PB_Q0_DOT_B3_SHIFT: STD_LOGIC;
	signal PB_Q2_DOT_B0_OR_B2_SHIFT: STD_LOGIC;
	signal PB_Q2_DOT_B1_OR_B3_SHIFT: STD_LOGIC;
	signal PB_Q2_DOT_B0_OR_B1_SHIFT: STD_LOGIC;
	signal PB_Q2_DOT_B2_OR_B3_SHIFT: STD_LOGIC;
	signal PB_Q4_DOT_ANY_SHIFT: STD_LOGIC;
	signal PB_Q4_DOT_B0_SHIFT: STD_LOGIC;
	signal PB_Q4_DOT_B1_SHIFT: STD_LOGIC;
	signal PB_Q4_DOT_B2_SHIFT: STD_LOGIC;
	signal PB_Q4_DOT_B3_SHIFT: STD_LOGIC;
	signal PB_Q6_DOT_B0_SHIFT: STD_LOGIC;
	signal PB_Q6_DOT_B1_SHIFT: STD_LOGIC;
	signal PB_Q6_DOT_B2_SHIFT: STD_LOGIC;
	signal PB_Q6_DOT_B3_SHIFT: STD_LOGIC;
	signal PB_Q6_DOT_B0_OR_B1_SHIFT: STD_LOGIC;
	signal PB_Q6_DOT_B2_OR_B3_SHIFT: STD_LOGIC;
	signal PS_ADDER_CARRY: STD_LOGIC;
	signal PS_ADDER_NO_CARRY: STD_LOGIC;
	signal PB_Q8_DOT_B0_SHIFT: STD_LOGIC;
	signal PB_Q8_DOT_B1_SHIFT: STD_LOGIC;
	signal PB_Q8_DOT_B2_SHIFT: STD_LOGIC;
	signal PB_Q8_DOT_B3_SHIFT: STD_LOGIC;
	signal PB_ADDER_NO_CARRY: STD_LOGIC;
	signal PB_Q8_DOT_B0_OR_B1_SHIFT: STD_LOGIC;
	signal PB_ADDER_CARRY: STD_LOGIC;
	signal PB_Q8_DOT_B2_OR_B3_SHIFT: STD_LOGIC;
	signal LAMP_15A1C11: STD_LOGIC;

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

	UUT: AddOutputTranslatorShifts2 port map(
		FPGA_CLK => FPGA_CLK,
		MB_ADDER_MX_Q0 => MB_ADDER_MX_Q0,
		MB_ADDER_MX_Q2 => MB_ADDER_MX_Q2,
		MB_B0_SHIFT => MB_B0_SHIFT,
		MB_B3_SHIFT => MB_B3_SHIFT,
		MB_B1_SHIFT => MB_B1_SHIFT,
		MB_B2_SHIFT => MB_B2_SHIFT,
		MB_ADDER_OUT_NOT_1_BIT => MB_ADDER_OUT_NOT_1_BIT,
		MB_B2_OR_B3_SHIFT => MB_B2_OR_B3_SHIFT,
		MB_ADDER_OUT_1_BIT => MB_ADDER_OUT_1_BIT,
		MB_B0_OR_B1_SHIFT => MB_B0_OR_B1_SHIFT,
		MB_ADDER_MX_Q4 => MB_ADDER_MX_Q4,
		MB_ADDER_MX_Q6 => MB_ADDER_MX_Q6,
		MB_ADDER_MX_Q8 => MB_ADDER_MX_Q8,
		MB_ADDER_MX_NO_CARRY_OUT => MB_ADDER_MX_NO_CARRY_OUT,
		MB_ADDER_MX_CARRY_OUT => MB_ADDER_MX_CARRY_OUT,
		PB_Q0_DOT_ANY_SHIFT => PB_Q0_DOT_ANY_SHIFT,
		PB_Q0_DOT_B0_SHIFT => PB_Q0_DOT_B0_SHIFT,
		PB_Q0_DOT_B1_SHIFT => PB_Q0_DOT_B1_SHIFT,
		PB_Q0_DOT_B2_SHIFT => PB_Q0_DOT_B2_SHIFT,
		PB_Q0_DOT_B3_SHIFT => PB_Q0_DOT_B3_SHIFT,
		PB_Q2_DOT_B0_OR_B2_SHIFT => PB_Q2_DOT_B0_OR_B2_SHIFT,
		PB_Q2_DOT_B1_OR_B3_SHIFT => PB_Q2_DOT_B1_OR_B3_SHIFT,
		PB_Q2_DOT_B0_OR_B1_SHIFT => PB_Q2_DOT_B0_OR_B1_SHIFT,
		PB_Q2_DOT_B2_OR_B3_SHIFT => PB_Q2_DOT_B2_OR_B3_SHIFT,
		PB_Q4_DOT_ANY_SHIFT => PB_Q4_DOT_ANY_SHIFT,
		PB_Q4_DOT_B0_SHIFT => PB_Q4_DOT_B0_SHIFT,
		PB_Q4_DOT_B1_SHIFT => PB_Q4_DOT_B1_SHIFT,
		PB_Q4_DOT_B2_SHIFT => PB_Q4_DOT_B2_SHIFT,
		PB_Q4_DOT_B3_SHIFT => PB_Q4_DOT_B3_SHIFT,
		PB_Q6_DOT_B0_SHIFT => PB_Q6_DOT_B0_SHIFT,
		PB_Q6_DOT_B1_SHIFT => PB_Q6_DOT_B1_SHIFT,
		PB_Q6_DOT_B2_SHIFT => PB_Q6_DOT_B2_SHIFT,
		PB_Q6_DOT_B3_SHIFT => PB_Q6_DOT_B3_SHIFT,
		PB_Q6_DOT_B0_OR_B1_SHIFT => PB_Q6_DOT_B0_OR_B1_SHIFT,
		PB_Q6_DOT_B2_OR_B3_SHIFT => PB_Q6_DOT_B2_OR_B3_SHIFT,
		PS_ADDER_CARRY => PS_ADDER_CARRY,
		PS_ADDER_NO_CARRY => PS_ADDER_NO_CARRY,
		PB_Q8_DOT_B0_SHIFT => PB_Q8_DOT_B0_SHIFT,
		PB_Q8_DOT_B1_SHIFT => PB_Q8_DOT_B1_SHIFT,
		PB_Q8_DOT_B2_SHIFT => PB_Q8_DOT_B2_SHIFT,
		PB_Q8_DOT_B3_SHIFT => PB_Q8_DOT_B3_SHIFT,
		PB_ADDER_NO_CARRY => PB_ADDER_NO_CARRY,
		PB_Q8_DOT_B0_OR_B1_SHIFT => PB_Q8_DOT_B0_OR_B1_SHIFT,
		PB_ADDER_CARRY => PB_ADDER_CARRY,
		PB_Q8_DOT_B2_OR_B3_SHIFT => PB_Q8_DOT_B2_OR_B3_SHIFT,
		LAMP_15A1C11 => LAMP_15A1C11);

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

   testName := "16.14.03.1 - 06.1 ";

   for tt in 0 to 2**15 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      -- i := tv(8);
      j := tv(8);
      k := tv(9);
      l := tv(10);
      m := tv(11);
      n := tv(12);
      o := tv(13);
      p := tv(14);

   	MB_ADDER_MX_Q0 <= not a;
   	MB_B0_SHIFT <= not b;
   	MB_B1_SHIFT <= not c;
   	MB_B2_SHIFT <= not d;
   	MB_B3_SHIFT <= not e;
   	MB_ADDER_OUT_NOT_1_BIT <= not f;
   	MB_ADDER_MX_Q2 <= not g;
   	MB_ADDER_OUT_1_BIT <= not h;
   	MB_B0_OR_B1_SHIFT <= not j;
   	MB_B2_OR_B3_SHIFT <= not k;
   	MB_ADDER_MX_Q6 <= not l;
   	MB_ADDER_MX_Q8 <= not m;
   	MB_ADDER_MX_NO_CARRY_OUT <= not n;
   	MB_ADDER_MX_CARRY_OUT <= not o;
   	MB_ADDER_MX_Q4 <= not p;
      
      wait for 30 ns;
      
      check1(PB_Q0_DOT_ANY_SHIFT,a,testName,"Q0 Any Shift");
      check1(PB_Q0_DOT_B0_SHIFT,a and b,testName,"Q0.B0 Shift");
      check1(PB_Q0_DOT_B1_SHIFT,a and c,testName,"Q0.B1 Shift");
      check1(PB_Q0_DOT_B2_SHIFT,a and d,testName,"Q0.B2 Shift");
      check1(PB_Q0_DOT_B3_SHIFT,a and e,testName,"Q0.B3 Shift");
      check1(PB_Q2_DOT_B0_OR_B2_SHIFT,g and f,testName,"Q2.B0+B2 Shift");
      check1(PB_Q2_DOT_B1_OR_B3_SHIFT,g and h,testName,"Q2.B1+B3 Shift");
      check1(PB_Q2_DOT_B0_OR_B1_SHIFT,g and j,testName,"Q2.B0+B1 Shift");
      check1(PB_Q2_DOT_B2_OR_B3_SHIFT,g and k,testName,"Q2.B2+B3 Shift");
      
      check1(PB_Q4_DOT_ANY_SHIFT,p,testName,"Q4 Any Shift");
      check1(PB_Q4_DOT_B0_SHIFT,p and b,testName,"Q4.B0 Shift");
      check1(PB_Q4_DOT_B1_SHIFT,p and c,testName,"Q4.B1 Shift");
      check1(PB_Q4_DOT_B2_SHIFT,p and d,testName,"Q4.B2 Shift");
      check1(PB_Q4_DOT_B3_SHIFT,p and e,testName,"Q4.B3 Shift");
      
      check1(PB_Q6_DOT_B0_SHIFT,l and b,testName,"Q6.B0 Shift");
      check1(PB_Q6_DOT_B1_SHIFT,l and c,testName,"Q6.B0 Shift");
      check1(PB_Q6_DOT_B2_SHIFT,l and d,testName,"Q6.B0 Shift");
      check1(PB_Q6_DOT_B3_SHIFT,l and e,testName,"Q6.B0 Shift");
      check1(PB_Q6_DOT_B0_OR_B1_SHIFT,l and j,testName,"Q6.B0+B1 Shift");
      check1(PB_Q6_DOT_B2_OR_B3_SHIFT,l and k,testName,"Q6.B2+B3 Shift");
      
      check1(PB_Q8_DOT_B0_SHIFT,m and b,testName,"Q8.B0 Shift");
      check1(PB_Q8_DOT_B1_SHIFT,m and c,testName,"Q8.B0 Shift");
      check1(PB_Q8_DOT_B2_SHIFT,m and d,testName,"Q8.B0 Shift");
      check1(PB_Q8_DOT_B3_SHIFT,m and e,testName,"Q8.B0 Shift");
      
      check1(PS_ADDER_NO_CARRY,n or (j and m),testName,"+S Adder No Carry");
      check1(PB_ADDER_NO_CARRY,n or (j and m),testName,"+B Adder No Carry");
      check1(PB_Q8_DOT_B0_OR_B1_SHIFT,m and j,testName,"Q8.B0+B1 Shift");
      
      check1(PS_ADDER_CARRY,o or (k and m),testName,"+S Adder Carry"); 
      check1(PB_ADDER_CARRY,o or (k and m),testName,"+B Adder Carry"); 
      check1(LAMP_15A1C11,o or (k and m),testName,"+B Adder Carry"); 
      check1(PB_Q8_DOT_B2_OR_B3_SHIFT,k and m,testName,"Q8.B2+B3 Shift");                  
      
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
   

END;
