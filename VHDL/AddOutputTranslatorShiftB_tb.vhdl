-- Test BenchVHDL for IBM SMS ALD group AddOutputTranslatorShiftB
-- Title: AddOutputTranslatorShiftB
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/29/2020 1:25:24 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AddOutputTranslatorShiftB_tb is
end AddOutputTranslatorShiftB_tb;

architecture behavioral of AddOutputTranslatorShiftB_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component AddOutputTranslatorShiftB
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PB_AB0_DOT_BB0_DOT_NC: in STD_LOGIC;
		PB_AB0_DOT_BB1_DOT_C: in STD_LOGIC;
		PB_AB1_DOT_BB0_DOT_C: in STD_LOGIC;
		PB_AB1_DOT_BB1_DOT_NC: in STD_LOGIC;
		PB_AB0_DOT_BB1_DOT_NC: in STD_LOGIC;
		PB_AB1_DOT_BB0_DOT_NC: in STD_LOGIC;
		PB_AB0_DOT_BB0_DOT_C: in STD_LOGIC;
		PB_AB1_DOT_BB1_DOT_C: in STD_LOGIC;
		MB_B0_SHIFT: out STD_LOGIC;
		PS_B3_SHIFT: out STD_LOGIC;
		MB_B3_SHIFT: out STD_LOGIC;
		PS_B1_SHIFT: out STD_LOGIC;
		MB_B1_SHIFT: out STD_LOGIC;
		PS_B2_SHIFT: out STD_LOGIC;
		MB_B2_SHIFT: out STD_LOGIC;
		PB_ADDER_OUT_NOT_1_BIT: out STD_LOGIC;
		PB_ADDER_OUT_1_BIT: out STD_LOGIC;
		MB_ADDER_OUT_NOT_1_BIT: out STD_LOGIC;
		MB_B2_OR_B3_SHIFT: out STD_LOGIC;
		MB_ADDER_OUT_1_BIT: out STD_LOGIC;
		MB_B0_OR_B1_SHIFT: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PB_AB0_DOT_BB0_DOT_NC: STD_LOGIC := '0';
	signal PB_AB0_DOT_BB1_DOT_C: STD_LOGIC := '0';
	signal PB_AB1_DOT_BB0_DOT_C: STD_LOGIC := '0';
	signal PB_AB1_DOT_BB1_DOT_NC: STD_LOGIC := '0';
	signal PB_AB0_DOT_BB1_DOT_NC: STD_LOGIC := '0';
	signal PB_AB1_DOT_BB0_DOT_NC: STD_LOGIC := '0';
	signal PB_AB0_DOT_BB0_DOT_C: STD_LOGIC := '0';
	signal PB_AB1_DOT_BB1_DOT_C: STD_LOGIC := '0';

	-- Outputs

	signal MB_B0_SHIFT: STD_LOGIC;
	signal PS_B3_SHIFT: STD_LOGIC;
	signal MB_B3_SHIFT: STD_LOGIC;
	signal PS_B1_SHIFT: STD_LOGIC;
	signal MB_B1_SHIFT: STD_LOGIC;
	signal PS_B2_SHIFT: STD_LOGIC;
	signal MB_B2_SHIFT: STD_LOGIC;
	signal PB_ADDER_OUT_NOT_1_BIT: STD_LOGIC;
	signal PB_ADDER_OUT_1_BIT: STD_LOGIC;
	signal MB_ADDER_OUT_NOT_1_BIT: STD_LOGIC;
	signal MB_B2_OR_B3_SHIFT: STD_LOGIC;
	signal MB_ADDER_OUT_1_BIT: STD_LOGIC;
	signal MB_B0_OR_B1_SHIFT: STD_LOGIC;

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

	UUT: AddOutputTranslatorShiftB port map(
		FPGA_CLK => FPGA_CLK,
		PB_AB0_DOT_BB0_DOT_NC => PB_AB0_DOT_BB0_DOT_NC,
		PB_AB0_DOT_BB1_DOT_C => PB_AB0_DOT_BB1_DOT_C,
		PB_AB1_DOT_BB0_DOT_C => PB_AB1_DOT_BB0_DOT_C,
		PB_AB1_DOT_BB1_DOT_NC => PB_AB1_DOT_BB1_DOT_NC,
		PB_AB0_DOT_BB1_DOT_NC => PB_AB0_DOT_BB1_DOT_NC,
		PB_AB1_DOT_BB0_DOT_NC => PB_AB1_DOT_BB0_DOT_NC,
		PB_AB0_DOT_BB0_DOT_C => PB_AB0_DOT_BB0_DOT_C,
		PB_AB1_DOT_BB1_DOT_C => PB_AB1_DOT_BB1_DOT_C,
		MB_B0_SHIFT => MB_B0_SHIFT,
		PS_B3_SHIFT => PS_B3_SHIFT,
		MB_B3_SHIFT => MB_B3_SHIFT,
		PS_B1_SHIFT => PS_B1_SHIFT,
		MB_B1_SHIFT => MB_B1_SHIFT,
		PS_B2_SHIFT => PS_B2_SHIFT,
		MB_B2_SHIFT => MB_B2_SHIFT,
		PB_ADDER_OUT_NOT_1_BIT => PB_ADDER_OUT_NOT_1_BIT,
		PB_ADDER_OUT_1_BIT => PB_ADDER_OUT_1_BIT,
		MB_ADDER_OUT_NOT_1_BIT => MB_ADDER_OUT_NOT_1_BIT,
		MB_B2_OR_B3_SHIFT => MB_B2_OR_B3_SHIFT,
		MB_ADDER_OUT_1_BIT => MB_ADDER_OUT_1_BIT,
		MB_B0_OR_B1_SHIFT => MB_B0_OR_B1_SHIFT);

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
   variable carry, ab0, bb0, ab1, bb1: std_logic;

   begin

   -- Your test bench code

   testName := "16.14.01.1 - 02.1 ";

   for tt in 0 to 2**5 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      carry := tv(0);
      ab0 := tv(1);
      ab1 := tv(2);
      bb0 := tv(3);
      bb1 := tv(4);

   	PB_AB0_DOT_BB0_DOT_NC <= not carry and ab0 and bb0;
   	PB_AB0_DOT_BB1_DOT_C <= carry and ab0 and bb1;
   	PB_AB1_DOT_BB0_DOT_C <= carry and ab1 and bb0;
   	PB_AB1_DOT_BB1_DOT_NC <= not carry and ab1 and bb1;
   	PB_AB0_DOT_BB1_DOT_NC <= not carry and ab0 and bb1;
   	PB_AB1_DOT_BB0_DOT_NC <= not carry and ab1 and bb0;
   	PB_AB0_DOT_BB0_DOT_C <= carry and ab0 and bb0;
   	PB_AB1_DOT_BB1_DOT_C <= carry and ab1 and bb1;

      a := ab0 and bb0 and not carry;
      b := ab1 and bb1 and carry;
      c := ab0 and bb0 and carry;
      d := ab0 and bb1 and not carry;
      e := ab1 and bb0 and not carry;
      f := ab0 and bb1 and carry;
      g := ab1 and bb1 and not carry;
      h := ab1 and bb0 and carry;
      
      wait for 30 ns;
      
      check1(MB_B0_SHIFT,not a,testName,"B0 Shift");
      check1(PS_B3_SHIFT,b,testName,"+S B3 Shift");
      check1(MB_B3_SHIFT,not b,testName,"-B B3 Shift");
      check1(PS_B1_SHIFT,d or e or c,testName,"+S B1 Shift");
      check1(MB_B1_SHIFT,not(d or e or c),testName,"-B B1 Shift");
      check1(PS_B2_SHIFT,f or h or g,testName,"+S B2 Shift");
      check1(MB_B2_SHIFT,not(f or h or g),testName,"-B B2 Shift");
      check1(PB_ADDER_OUT_NOT_1_BIT,a or f or h or g,testName,"+B Not 1 Bit");
      check1(MB_ADDER_OUT_NOT_1_BIT,NOT(PB_ADDER_OUT_NOT_1_BIT),testName,"-B Not 1 Bit");
      check1(MB_B2_OR_B3_SHIFT,not(f or g or h or b),testName,"-B B2+B3 Shift");
      check1(PB_ADDER_OUT_1_BIT,b or c or d or e,testName,"+B Adder Out 1 Bit");
      check1(MB_ADDER_OUT_1_BIT,NOT PB_ADDER_OUT_1_BIT,testName,"+B Adder Out 1 Bit");
      check1(MB_B0_OR_B1_SHIFT,not(a or c or e or d),testName,"-B B0+B1 Shift");
      
                  
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
