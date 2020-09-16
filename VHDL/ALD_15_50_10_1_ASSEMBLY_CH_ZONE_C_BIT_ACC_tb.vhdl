-- Test Bench VHDL for IBM SMS ALD page 15.50.10.1
-- Title: ASSEMBLY CH ZONE C BIT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/16/2020 4:05:45 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_50_10_1_ASSEMBLY_CH_ZONE_C_BIT_ACC_tb is
end ALD_15_50_10_1_ASSEMBLY_CH_ZONE_C_BIT_ACC_tb;

architecture behavioral of ALD_15_50_10_1_ASSEMBLY_CH_ZONE_C_BIT_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_15_50_10_1_ASSEMBLY_CH_ZONE_C_BIT_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MB_ASSEMBLY_CH_A_BIT_INSERT:	 in STD_LOGIC;
		PS_B_CH_VC_NOT_ZONE_C_BIT:	 in STD_LOGIC;
		PB_USE_B_CH_ZONES:	 in STD_LOGIC;
		MB_B_CH_MIN_OR_INV_PLUS_SIGN_GATED:	 in STD_LOGIC;
		PS_A_CH_VC_NOT_ZONE_C_BIT:	 in STD_LOGIC;
		PS_USE_A_CH_ZONES:	 in STD_LOGIC;
		PS_ASM_CH_NOT_ZN_C_BIT_STAR_ADD_ZN:	 in STD_LOGIC;
		MS_SET_DOLLAR_SIGN:	 in STD_LOGIC;
		MS_SET_ASTERISK:	 in STD_LOGIC;
		PB_B_CH_PL_OR_INV_MIN_SIGN_GATED:	 in STD_LOGIC;
		PS_B_CH_VC_ZONE_C_BIT:	 in STD_LOGIC;
		MB_USE_NO_ZONES:	 in STD_LOGIC;
		PS_A_CH_VC_ZONE_C_BIT:	 in STD_LOGIC;
		PS_ASM_CH_ZONE_C_BIT_STAR_ADDER_ZN:	 in STD_LOGIC;
		MS_SET_GROUP_MARK:	 in STD_LOGIC;
		MB_ASSEMBLY_CH_NOT_ZONE_C_BIT:	 out STD_LOGIC;
		PS_ASSEMBLY_CH_NOT_ZONE_C_BIT:	 out STD_LOGIC;
		MB_ASSEMBLY_CH_ZONE_C_BIT:	 out STD_LOGIC;
		PS_ASSEMBLY_CH_ZONE_C_BIT:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MB_ASSEMBLY_CH_A_BIT_INSERT: STD_LOGIC := '1';
	signal PS_B_CH_VC_NOT_ZONE_C_BIT: STD_LOGIC := '0';
	signal PB_USE_B_CH_ZONES: STD_LOGIC := '0';
	signal MB_B_CH_MIN_OR_INV_PLUS_SIGN_GATED: STD_LOGIC := '1';
	signal PS_A_CH_VC_NOT_ZONE_C_BIT: STD_LOGIC := '0';
	signal PS_USE_A_CH_ZONES: STD_LOGIC := '0';
	signal PS_ASM_CH_NOT_ZN_C_BIT_STAR_ADD_ZN: STD_LOGIC := '0';
	signal MS_SET_DOLLAR_SIGN: STD_LOGIC := '1';
	signal MS_SET_ASTERISK: STD_LOGIC := '1';
	signal PB_B_CH_PL_OR_INV_MIN_SIGN_GATED: STD_LOGIC := '0';
	signal PS_B_CH_VC_ZONE_C_BIT: STD_LOGIC := '0';
	signal MB_USE_NO_ZONES: STD_LOGIC := '1';
	signal PS_A_CH_VC_ZONE_C_BIT: STD_LOGIC := '0';
	signal PS_ASM_CH_ZONE_C_BIT_STAR_ADDER_ZN: STD_LOGIC := '0';
	signal MS_SET_GROUP_MARK: STD_LOGIC := '1';

	-- Outputs

	signal MB_ASSEMBLY_CH_NOT_ZONE_C_BIT: STD_LOGIC;
	signal PS_ASSEMBLY_CH_NOT_ZONE_C_BIT: STD_LOGIC;
	signal MB_ASSEMBLY_CH_ZONE_C_BIT: STD_LOGIC;
	signal PS_ASSEMBLY_CH_ZONE_C_BIT: STD_LOGIC;

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

	UUT: ALD_15_50_10_1_ASSEMBLY_CH_ZONE_C_BIT_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MB_ASSEMBLY_CH_A_BIT_INSERT => MB_ASSEMBLY_CH_A_BIT_INSERT,
		PS_B_CH_VC_NOT_ZONE_C_BIT => PS_B_CH_VC_NOT_ZONE_C_BIT,
		PB_USE_B_CH_ZONES => PB_USE_B_CH_ZONES,
		MB_B_CH_MIN_OR_INV_PLUS_SIGN_GATED => MB_B_CH_MIN_OR_INV_PLUS_SIGN_GATED,
		PS_A_CH_VC_NOT_ZONE_C_BIT => PS_A_CH_VC_NOT_ZONE_C_BIT,
		PS_USE_A_CH_ZONES => PS_USE_A_CH_ZONES,
		PS_ASM_CH_NOT_ZN_C_BIT_STAR_ADD_ZN => PS_ASM_CH_NOT_ZN_C_BIT_STAR_ADD_ZN,
		MS_SET_DOLLAR_SIGN => MS_SET_DOLLAR_SIGN,
		MS_SET_ASTERISK => MS_SET_ASTERISK,
		PB_B_CH_PL_OR_INV_MIN_SIGN_GATED => PB_B_CH_PL_OR_INV_MIN_SIGN_GATED,
		PS_B_CH_VC_ZONE_C_BIT => PS_B_CH_VC_ZONE_C_BIT,
		MB_USE_NO_ZONES => MB_USE_NO_ZONES,
		PS_A_CH_VC_ZONE_C_BIT => PS_A_CH_VC_ZONE_C_BIT,
		PS_ASM_CH_ZONE_C_BIT_STAR_ADDER_ZN => PS_ASM_CH_ZONE_C_BIT_STAR_ADDER_ZN,
		MS_SET_GROUP_MARK => MS_SET_GROUP_MARK,
		MB_ASSEMBLY_CH_NOT_ZONE_C_BIT => MB_ASSEMBLY_CH_NOT_ZONE_C_BIT,
		PS_ASSEMBLY_CH_NOT_ZONE_C_BIT => PS_ASSEMBLY_CH_NOT_ZONE_C_BIT,
		MB_ASSEMBLY_CH_ZONE_C_BIT => MB_ASSEMBLY_CH_ZONE_C_BIT,
		PS_ASSEMBLY_CH_ZONE_C_BIT => PS_ASSEMBLY_CH_ZONE_C_BIT);

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
   

end;
