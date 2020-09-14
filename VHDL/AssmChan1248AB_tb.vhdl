-- Test BenchVHDL for IBM SMS ALD group AssmChan1248AB
-- Title: AssmChan1248AB
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/14/2020 8:05:31 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AssmChan1248AB_tb is
end AssmChan1248AB_tb;

architecture behavioral of AssmChan1248AB_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component AssmChan1248AB
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_USE_A_CH_NU: in STD_LOGIC;
		MS_SET_ASTERISK: in STD_LOGIC;
		MS_SET_GROUP_MARK: in STD_LOGIC;
		PB_USE_ADDER_NU_1: in STD_LOGIC;
		MB_ASSEMBLY_CH_NU_ZERO_INSERT: in STD_LOGIC;
		MS_SET_DOLLAR_SIGN: in STD_LOGIC;
		MB_USE_NO_NUMERICS: in STD_LOGIC;
		PB_USE_B_CH_NU: in STD_LOGIC;
		MB_ASSEMBLY_CH_NU_ONE_INSERT: in STD_LOGIC;
		MB_USE_NO_ZONES: in STD_LOGIC;
		PS_USE_A_CH_ZONES: in STD_LOGIC;
		PB_USE_B_CH_ZONES: in STD_LOGIC;
		MB_ASSEMBLY_CH_A_BIT_INSERT: in STD_LOGIC;
		PS_ASM_CH_NOT_A_BIT_STAR_ADDER_ZONES: in STD_LOGIC;
		MS_PLUS_SIGN_LATCH_GATED: in STD_LOGIC;
		PS_ASM_CH_A_BIT_STAR_STERLING: in STD_LOGIC;
		MS_A_CH_INV_MINUS_SIGN_GTD: in STD_LOGIC;
		MB_B_CH_MIN_OR_INV_PLUS_SIGN_GATED: in STD_LOGIC;
		MB_B_CH_PLU_OR_INV_MIN_SIGN_GATED: in STD_LOGIC;
		PS_ASM_CH_A_BIT_STAR_ADDER_ZONES: in STD_LOGIC;
		MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_1: in STD_LOGIC;
		MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_2: in STD_LOGIC;
		PS_ADDER_ZONES_NOT_B_BIT: in STD_LOGIC;
		PS_ASM_CH_B_BIT_STAR_ADDER_ZONES: in STD_LOGIC;
		MB_B_MN_OR_IN_PL_OR_PL_OR_INV_MN_GATED: in STD_LOGIC;
		PS_B_CH_NOT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_CH_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_A_CH_NOT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_A_CH_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PB_ADDER_OUT_NOT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PB_ADDER_OUT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_ASSEMBLY_CH_1_BIT: out STD_LOGIC;
		MS_ASSEMBLY_CH_1_BIT: out STD_LOGIC;
		MS_ASSEMBLY_CH_NOT_1_BIT: out STD_LOGIC;
		MY_ASSEMBLY_CH_1_BIT: out STD_LOGIC;
		MS_ASSEMBLY_CH_2_BIT: out STD_LOGIC;
		PS_ASSEMBLY_CH_2_BIT: out STD_LOGIC;
		MS_ASSEMBLY_CH_NOT_2_BIT: out STD_LOGIC;
		MY_ASSEMBLY_CH_2_BIT: out STD_LOGIC;
		MS_ASSEMBLY_CH_4_BIT: out STD_LOGIC;
		PS_ASSEMBLY_CH_4_BIT: out STD_LOGIC;
		MS_ASSEMBLY_CH_NOT_4_BIT: out STD_LOGIC;
		MY_ASSEMBLY_CH_4_BIT: out STD_LOGIC;
		MS_ASSEMBLY_CH_8_BIT: out STD_LOGIC;
		PS_ASSEMBLY_CH_8_BIT: out STD_LOGIC;
		MS_ASSEMBLY_CH_NOT_8_BIT: out STD_LOGIC;
		MY_ASSEMBLY_CH_8_BIT: out STD_LOGIC;
		MS_ASSEMBLY_CH_A_BIT: out STD_LOGIC;
		PS_ASSEMBLY_CH_A_BIT: out STD_LOGIC;
		MS_ASSEMBLY_CH_NOT_A_BIT: out STD_LOGIC;
		MY_ASSEMBLY_CH_A_BIT: out STD_LOGIC;
		PS_ASSEMBLY_CH_A_OR_B_BITS: out STD_LOGIC;
		PB_B_CH_PL_OR_INV_MIN_SIGN_GATED: out STD_LOGIC;
		PS_ASSEMBLY_CH_B_BIT: out STD_LOGIC;
		MS_ASSEMBLY_CH_B_BIT: out STD_LOGIC;
		MS_ASSEMBLY_CH_NOT_B_BIT: out STD_LOGIC;
		MY_ASSEMBLY_CH_B_BIT: out STD_LOGIC;
		LAMP_11C8K10: out STD_LOGIC;
		LAMP_11C8K11: out STD_LOGIC;
		LAMP_11C8J10: out STD_LOGIC;
		LAMP_11C8J11: out STD_LOGIC;
		LAMP_11C8H10: out STD_LOGIC;
		LAMP_11C8H11: out STD_LOGIC;
		LAMP_11C8G10: out STD_LOGIC;
		LAMP_11C8G11: out STD_LOGIC;
		LAMP_11C8F10: out STD_LOGIC;
		LAMP_11C8F11: out STD_LOGIC;
		LAMP_11C8E10: out STD_LOGIC;
		LAMP_11C8E11: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_USE_A_CH_NU: STD_LOGIC := '0';
	signal MS_SET_ASTERISK: STD_LOGIC := '1';
	signal MS_SET_GROUP_MARK: STD_LOGIC := '1';
	signal PB_USE_ADDER_NU_1: STD_LOGIC := '0';
	signal MB_ASSEMBLY_CH_NU_ZERO_INSERT: STD_LOGIC := '1';
	signal MS_SET_DOLLAR_SIGN: STD_LOGIC := '1';
	signal MB_USE_NO_NUMERICS: STD_LOGIC := '1';
	signal PB_USE_B_CH_NU: STD_LOGIC := '0';
	signal MB_ASSEMBLY_CH_NU_ONE_INSERT: STD_LOGIC := '1';
	signal MB_USE_NO_ZONES: STD_LOGIC := '1';
	signal PS_USE_A_CH_ZONES: STD_LOGIC := '0';
	signal PB_USE_B_CH_ZONES: STD_LOGIC := '0';
	signal MB_ASSEMBLY_CH_A_BIT_INSERT: STD_LOGIC := '1';
	signal PS_ASM_CH_NOT_A_BIT_STAR_ADDER_ZONES: STD_LOGIC := '0';
	signal MS_PLUS_SIGN_LATCH_GATED: STD_LOGIC := '1';
	signal PS_ASM_CH_A_BIT_STAR_STERLING: STD_LOGIC := '0';
	signal MS_A_CH_INV_MINUS_SIGN_GTD: STD_LOGIC := '1';
	signal MB_B_CH_MIN_OR_INV_PLUS_SIGN_GATED: STD_LOGIC := '1';
	signal MB_B_CH_PLU_OR_INV_MIN_SIGN_GATED: STD_LOGIC := '1';
	signal PS_ASM_CH_A_BIT_STAR_ADDER_ZONES: STD_LOGIC := '0';
	signal MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_1: STD_LOGIC := '1';
	signal MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_2: STD_LOGIC := '1';
	signal PS_ADDER_ZONES_NOT_B_BIT: STD_LOGIC := '0';
	signal PS_ASM_CH_B_BIT_STAR_ADDER_ZONES: STD_LOGIC := '0';
	signal MB_B_MN_OR_IN_PL_OR_PL_OR_INV_MN_GATED: STD_LOGIC := '1';
	signal PS_B_CH_NOT_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_B_CH_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_A_CH_NOT_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_A_CH_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PB_ADDER_OUT_NOT_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PB_ADDER_OUT_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";

	-- Outputs

	signal PS_ASSEMBLY_CH_1_BIT: STD_LOGIC;
	signal MS_ASSEMBLY_CH_1_BIT: STD_LOGIC;
	signal MS_ASSEMBLY_CH_NOT_1_BIT: STD_LOGIC;
	signal MY_ASSEMBLY_CH_1_BIT: STD_LOGIC;
	signal MS_ASSEMBLY_CH_2_BIT: STD_LOGIC;
	signal PS_ASSEMBLY_CH_2_BIT: STD_LOGIC;
	signal MS_ASSEMBLY_CH_NOT_2_BIT: STD_LOGIC;
	signal MY_ASSEMBLY_CH_2_BIT: STD_LOGIC;
	signal MS_ASSEMBLY_CH_4_BIT: STD_LOGIC;
	signal PS_ASSEMBLY_CH_4_BIT: STD_LOGIC;
	signal MS_ASSEMBLY_CH_NOT_4_BIT: STD_LOGIC;
	signal MY_ASSEMBLY_CH_4_BIT: STD_LOGIC;
	signal MS_ASSEMBLY_CH_8_BIT: STD_LOGIC;
	signal PS_ASSEMBLY_CH_8_BIT: STD_LOGIC;
	signal MS_ASSEMBLY_CH_NOT_8_BIT: STD_LOGIC;
	signal MY_ASSEMBLY_CH_8_BIT: STD_LOGIC;
	signal MS_ASSEMBLY_CH_A_BIT: STD_LOGIC;
	signal PS_ASSEMBLY_CH_A_BIT: STD_LOGIC;
	signal MS_ASSEMBLY_CH_NOT_A_BIT: STD_LOGIC;
	signal MY_ASSEMBLY_CH_A_BIT: STD_LOGIC;
	signal PS_ASSEMBLY_CH_A_OR_B_BITS: STD_LOGIC;
	signal PB_B_CH_PL_OR_INV_MIN_SIGN_GATED: STD_LOGIC;
	signal PS_ASSEMBLY_CH_B_BIT: STD_LOGIC;
	signal MS_ASSEMBLY_CH_B_BIT: STD_LOGIC;
	signal MS_ASSEMBLY_CH_NOT_B_BIT: STD_LOGIC;
	signal MY_ASSEMBLY_CH_B_BIT: STD_LOGIC;
	signal LAMP_11C8K10: STD_LOGIC;
	signal LAMP_11C8K11: STD_LOGIC;
	signal LAMP_11C8J10: STD_LOGIC;
	signal LAMP_11C8J11: STD_LOGIC;
	signal LAMP_11C8H10: STD_LOGIC;
	signal LAMP_11C8H11: STD_LOGIC;
	signal LAMP_11C8G10: STD_LOGIC;
	signal LAMP_11C8G11: STD_LOGIC;
	signal LAMP_11C8F10: STD_LOGIC;
	signal LAMP_11C8F11: STD_LOGIC;
	signal LAMP_11C8E10: STD_LOGIC;
	signal LAMP_11C8E11: STD_LOGIC;

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

	UUT: AssmChan1248AB port map(
		FPGA_CLK => FPGA_CLK,
		PS_USE_A_CH_NU => PS_USE_A_CH_NU,
		MS_SET_ASTERISK => MS_SET_ASTERISK,
		MS_SET_GROUP_MARK => MS_SET_GROUP_MARK,
		PB_USE_ADDER_NU_1 => PB_USE_ADDER_NU_1,
		MB_ASSEMBLY_CH_NU_ZERO_INSERT => MB_ASSEMBLY_CH_NU_ZERO_INSERT,
		MS_SET_DOLLAR_SIGN => MS_SET_DOLLAR_SIGN,
		MB_USE_NO_NUMERICS => MB_USE_NO_NUMERICS,
		PB_USE_B_CH_NU => PB_USE_B_CH_NU,
		MB_ASSEMBLY_CH_NU_ONE_INSERT => MB_ASSEMBLY_CH_NU_ONE_INSERT,
		MB_USE_NO_ZONES => MB_USE_NO_ZONES,
		PS_USE_A_CH_ZONES => PS_USE_A_CH_ZONES,
		PB_USE_B_CH_ZONES => PB_USE_B_CH_ZONES,
		MB_ASSEMBLY_CH_A_BIT_INSERT => MB_ASSEMBLY_CH_A_BIT_INSERT,
		PS_ASM_CH_NOT_A_BIT_STAR_ADDER_ZONES => PS_ASM_CH_NOT_A_BIT_STAR_ADDER_ZONES,
		MS_PLUS_SIGN_LATCH_GATED => MS_PLUS_SIGN_LATCH_GATED,
		PS_ASM_CH_A_BIT_STAR_STERLING => PS_ASM_CH_A_BIT_STAR_STERLING,
		MS_A_CH_INV_MINUS_SIGN_GTD => MS_A_CH_INV_MINUS_SIGN_GTD,
		MB_B_CH_MIN_OR_INV_PLUS_SIGN_GATED => MB_B_CH_MIN_OR_INV_PLUS_SIGN_GATED,
		MB_B_CH_PLU_OR_INV_MIN_SIGN_GATED => MB_B_CH_PLU_OR_INV_MIN_SIGN_GATED,
		PS_ASM_CH_A_BIT_STAR_ADDER_ZONES => PS_ASM_CH_A_BIT_STAR_ADDER_ZONES,
		MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_1 => MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_1,
		MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_2 => MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_2,
		PS_ADDER_ZONES_NOT_B_BIT => PS_ADDER_ZONES_NOT_B_BIT,
		PS_ASM_CH_B_BIT_STAR_ADDER_ZONES => PS_ASM_CH_B_BIT_STAR_ADDER_ZONES,
		MB_B_MN_OR_IN_PL_OR_PL_OR_INV_MN_GATED => MB_B_MN_OR_IN_PL_OR_PL_OR_INV_MN_GATED,
		PS_B_CH_NOT_BUS => PS_B_CH_NOT_BUS,
		PS_B_CH_BUS => PS_B_CH_BUS,
		PS_A_CH_NOT_BUS => PS_A_CH_NOT_BUS,
		PS_A_CH_BUS => PS_A_CH_BUS,
		PB_ADDER_OUT_NOT_BUS => PB_ADDER_OUT_NOT_BUS,
		PB_ADDER_OUT_BUS => PB_ADDER_OUT_BUS,
		PS_ASSEMBLY_CH_1_BIT => PS_ASSEMBLY_CH_1_BIT,
		MS_ASSEMBLY_CH_1_BIT => MS_ASSEMBLY_CH_1_BIT,
		MS_ASSEMBLY_CH_NOT_1_BIT => MS_ASSEMBLY_CH_NOT_1_BIT,
		MY_ASSEMBLY_CH_1_BIT => MY_ASSEMBLY_CH_1_BIT,
		MS_ASSEMBLY_CH_2_BIT => MS_ASSEMBLY_CH_2_BIT,
		PS_ASSEMBLY_CH_2_BIT => PS_ASSEMBLY_CH_2_BIT,
		MS_ASSEMBLY_CH_NOT_2_BIT => MS_ASSEMBLY_CH_NOT_2_BIT,
		MY_ASSEMBLY_CH_2_BIT => MY_ASSEMBLY_CH_2_BIT,
		MS_ASSEMBLY_CH_4_BIT => MS_ASSEMBLY_CH_4_BIT,
		PS_ASSEMBLY_CH_4_BIT => PS_ASSEMBLY_CH_4_BIT,
		MS_ASSEMBLY_CH_NOT_4_BIT => MS_ASSEMBLY_CH_NOT_4_BIT,
		MY_ASSEMBLY_CH_4_BIT => MY_ASSEMBLY_CH_4_BIT,
		MS_ASSEMBLY_CH_8_BIT => MS_ASSEMBLY_CH_8_BIT,
		PS_ASSEMBLY_CH_8_BIT => PS_ASSEMBLY_CH_8_BIT,
		MS_ASSEMBLY_CH_NOT_8_BIT => MS_ASSEMBLY_CH_NOT_8_BIT,
		MY_ASSEMBLY_CH_8_BIT => MY_ASSEMBLY_CH_8_BIT,
		MS_ASSEMBLY_CH_A_BIT => MS_ASSEMBLY_CH_A_BIT,
		PS_ASSEMBLY_CH_A_BIT => PS_ASSEMBLY_CH_A_BIT,
		MS_ASSEMBLY_CH_NOT_A_BIT => MS_ASSEMBLY_CH_NOT_A_BIT,
		MY_ASSEMBLY_CH_A_BIT => MY_ASSEMBLY_CH_A_BIT,
		PS_ASSEMBLY_CH_A_OR_B_BITS => PS_ASSEMBLY_CH_A_OR_B_BITS,
		PB_B_CH_PL_OR_INV_MIN_SIGN_GATED => PB_B_CH_PL_OR_INV_MIN_SIGN_GATED,
		PS_ASSEMBLY_CH_B_BIT => PS_ASSEMBLY_CH_B_BIT,
		MS_ASSEMBLY_CH_B_BIT => MS_ASSEMBLY_CH_B_BIT,
		MS_ASSEMBLY_CH_NOT_B_BIT => MS_ASSEMBLY_CH_NOT_B_BIT,
		MY_ASSEMBLY_CH_B_BIT => MY_ASSEMBLY_CH_B_BIT,
		LAMP_11C8K10 => LAMP_11C8K10,
		LAMP_11C8K11 => LAMP_11C8K11,
		LAMP_11C8J10 => LAMP_11C8J10,
		LAMP_11C8J11 => LAMP_11C8J11,
		LAMP_11C8H10 => LAMP_11C8H10,
		LAMP_11C8H11 => LAMP_11C8H11,
		LAMP_11C8G10 => LAMP_11C8G10,
		LAMP_11C8G11 => LAMP_11C8G11,
		LAMP_11C8F10 => LAMP_11C8F10,
		LAMP_11C8F11 => LAMP_11C8F11,
		LAMP_11C8E10 => LAMP_11C8E10,
		LAMP_11C8E11 => LAMP_11C8E11);

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

   testName := "15.49.04.1        ";

   for tt in 0 to 2**23 loop
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
      v := tv(21);
      w := tv(22);
      x := tv(23);
      y := tv(24);
      z := tv(25);

      
      wait for 30 ns;
      
      
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