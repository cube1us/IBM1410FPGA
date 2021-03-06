-- Test Bench VHDL for IBM SMS ALD page 15.50.09.1
-- Title: ASSEMBLY NUMERIC C BIT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/16/2020 3:37:25 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_50_09_1_ASSEMBLY_NUMERIC_C_BIT_ACC_tb is
end ALD_15_50_09_1_ASSEMBLY_NUMERIC_C_BIT_ACC_tb;

architecture behavioral of ALD_15_50_09_1_ASSEMBLY_NUMERIC_C_BIT_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_15_50_09_1_ASSEMBLY_NUMERIC_C_BIT_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MB_ASSEMBLY_CH_NU_ONE_INSERT:	 in STD_LOGIC;
		PB_ADDER_OUT_NOT_C_BIT:	 in STD_LOGIC;
		PB_USE_ADDER_NU_1:	 in STD_LOGIC;
		PS_B_CH_VC_NOT_NU_C_BIT:	 in STD_LOGIC;
		PB_USE_B_CH_NU:	 in STD_LOGIC;
		PS_A_CH_VC_NOT_NU_C_BIT:	 in STD_LOGIC;
		PS_USE_A_CH_NU:	 in STD_LOGIC;
		MS_SET_DOLLAR_SIGN:	 in STD_LOGIC;
		PB_ADDER_OUT_C_BIT:	 in STD_LOGIC;
		PS_B_CH_VC_NU_C_BIT:	 in STD_LOGIC;
		PS_A_CH_VC_NU_C_BIT:	 in STD_LOGIC;
		MB_ASSEMBLY_CH_NU_ZERO_INSERT:	 in STD_LOGIC;
		MS_SET_GROUP_MARK:	 in STD_LOGIC;
		MS_SET_ASTERISK:	 in STD_LOGIC;
		MB_USE_NO_NUMERICS:	 in STD_LOGIC;
		PS_ASSEMBLY_CH_NOT_NU_C_BIT:	 out STD_LOGIC;
		MB_ASSEMBLY_CH_NOT_NU_C_BIT:	 out STD_LOGIC;
		MB_ASSEMBLY_CH_NU_C_BIT:	 out STD_LOGIC;
		PS_ASSEMBLY_CH_NU_C_BIT:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MB_ASSEMBLY_CH_NU_ONE_INSERT: STD_LOGIC := '1';
	signal PB_ADDER_OUT_NOT_C_BIT: STD_LOGIC := '0';
	signal PB_USE_ADDER_NU_1: STD_LOGIC := '0';
	signal PS_B_CH_VC_NOT_NU_C_BIT: STD_LOGIC := '0';
	signal PB_USE_B_CH_NU: STD_LOGIC := '0';
	signal PS_A_CH_VC_NOT_NU_C_BIT: STD_LOGIC := '0';
	signal PS_USE_A_CH_NU: STD_LOGIC := '0';
	signal MS_SET_DOLLAR_SIGN: STD_LOGIC := '1';
	signal PB_ADDER_OUT_C_BIT: STD_LOGIC := '0';
	signal PS_B_CH_VC_NU_C_BIT: STD_LOGIC := '0';
	signal PS_A_CH_VC_NU_C_BIT: STD_LOGIC := '0';
	signal MB_ASSEMBLY_CH_NU_ZERO_INSERT: STD_LOGIC := '1';
	signal MS_SET_GROUP_MARK: STD_LOGIC := '1';
	signal MS_SET_ASTERISK: STD_LOGIC := '1';
	signal MB_USE_NO_NUMERICS: STD_LOGIC := '1';

	-- Outputs

	signal PS_ASSEMBLY_CH_NOT_NU_C_BIT: STD_LOGIC;
	signal MB_ASSEMBLY_CH_NOT_NU_C_BIT: STD_LOGIC;
	signal MB_ASSEMBLY_CH_NU_C_BIT: STD_LOGIC;
	signal PS_ASSEMBLY_CH_NU_C_BIT: STD_LOGIC;

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

	UUT: ALD_15_50_09_1_ASSEMBLY_NUMERIC_C_BIT_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MB_ASSEMBLY_CH_NU_ONE_INSERT => MB_ASSEMBLY_CH_NU_ONE_INSERT,
		PB_ADDER_OUT_NOT_C_BIT => PB_ADDER_OUT_NOT_C_BIT,
		PB_USE_ADDER_NU_1 => PB_USE_ADDER_NU_1,
		PS_B_CH_VC_NOT_NU_C_BIT => PS_B_CH_VC_NOT_NU_C_BIT,
		PB_USE_B_CH_NU => PB_USE_B_CH_NU,
		PS_A_CH_VC_NOT_NU_C_BIT => PS_A_CH_VC_NOT_NU_C_BIT,
		PS_USE_A_CH_NU => PS_USE_A_CH_NU,
		MS_SET_DOLLAR_SIGN => MS_SET_DOLLAR_SIGN,
		PB_ADDER_OUT_C_BIT => PB_ADDER_OUT_C_BIT,
		PS_B_CH_VC_NU_C_BIT => PS_B_CH_VC_NU_C_BIT,
		PS_A_CH_VC_NU_C_BIT => PS_A_CH_VC_NU_C_BIT,
		MB_ASSEMBLY_CH_NU_ZERO_INSERT => MB_ASSEMBLY_CH_NU_ZERO_INSERT,
		MS_SET_GROUP_MARK => MS_SET_GROUP_MARK,
		MS_SET_ASTERISK => MS_SET_ASTERISK,
		MB_USE_NO_NUMERICS => MB_USE_NO_NUMERICS,
		PS_ASSEMBLY_CH_NOT_NU_C_BIT => PS_ASSEMBLY_CH_NOT_NU_C_BIT,
		MB_ASSEMBLY_CH_NOT_NU_C_BIT => MB_ASSEMBLY_CH_NOT_NU_C_BIT,
		MB_ASSEMBLY_CH_NU_C_BIT => MB_ASSEMBLY_CH_NU_C_BIT,
		PS_ASSEMBLY_CH_NU_C_BIT => PS_ASSEMBLY_CH_NU_C_BIT);

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

   testName := "15.50.09.1        ";

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
      i := tv(8);
      j := tv(9);
      k := tv(10);
      l := tv(11);
      m := tv(12);
      n := tv(13);
      o := tv(14);

      g1 := b and c;
      g2 := d and e;
      g3 := f and g;
      g4 := i and c;
      g5 := j and e;
      g6 := k and g;
      
		MB_ASSEMBLY_CH_NU_ONE_INSERT <= not a;
      PB_ADDER_OUT_NOT_C_BIT <= b;
      PB_USE_ADDER_NU_1 <= c;
      PS_B_CH_VC_NOT_NU_C_BIT <= d;
      PB_USE_B_CH_NU <= e;
      PS_A_CH_VC_NOT_NU_C_BIT <= f;
      PS_USE_A_CH_NU <= g; 
      MS_SET_DOLLAR_SIGN <= not h;
      PB_ADDER_OUT_C_BIT <= i;
      PS_B_CH_VC_NU_C_BIT <= j;
      PS_A_CH_VC_NU_C_BIT <= k;
      MB_ASSEMBLY_CH_NU_ZERO_INSERT <= not l;
      MS_SET_GROUP_MARK <= not m;
      MS_SET_ASTERISK <= not n;
      MB_USE_NO_NUMERICS <= not o;
      
      wait for 30 ns;
      
      check1(PS_ASSEMBLY_CH_NOT_NU_C_BIT,h or a or g1 or g2 or g3,testName,"+S Assm Ch Not NU C");
      check1(MB_ASSEMBLY_CH_NOT_NU_C_BIT,not PS_ASSEMBLY_CH_NOT_NU_C_BIT,testName,"-B Assm Ch Not NU C");
      check1(PS_ASSEMBLY_CH_NU_C_BIT,g4 or g5 or g6 or l or o or m or n,testName,"+S Assm Ch NU C");
      check1(MB_ASSEMBLY_CH_NU_C_BIT,not PS_ASSEMBLY_CH_NU_C_BIT,testName,"-B Assm Ch Nu C");
      
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
