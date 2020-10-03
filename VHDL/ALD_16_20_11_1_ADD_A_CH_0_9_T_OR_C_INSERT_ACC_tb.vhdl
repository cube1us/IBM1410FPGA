-- Test Bench VHDL for IBM SMS ALD page 16.20.11.1
-- Title: ADD A CH 0-9 T OR C INSERT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/3/2020 8:53:14 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_20_11_1_ADD_A_CH_0_9_T_OR_C_INSERT_ACC_tb is
end ALD_16_20_11_1_ADD_A_CH_0_9_T_OR_C_INSERT_ACC_tb;

architecture behavioral of ALD_16_20_11_1_ADD_A_CH_0_9_T_OR_C_INSERT_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_16_20_11_1_ADD_A_CH_0_9_T_OR_C_INSERT_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_T_DOT_X:	 in STD_LOGIC;
		MS_A_OR_S_DOT_B_DOT_3:	 in STD_LOGIC;
		PS_EXTENSION_LATCH:	 in STD_LOGIC;
		PS_COMPLEMENT_LATCH:	 in STD_LOGIC;
		PS_TRUE_LATCH:	 in STD_LOGIC;
		PS_MPLY_OR_DIV_OP_CODES:	 in STD_LOGIC;
		PS_MQ_LATCH:	 in STD_LOGIC;
		MS_A_OR_S_DOT_B_DOT_1_DOT_S_DOT_X:	 in STD_LOGIC;
		MS_MPLY_DOT_U_OR_Y_DOT_B:	 in STD_LOGIC;
		MS_DIV_DOT_U_OR_Y_DOT_B:	 in STD_LOGIC;
		MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_U_OR_Y:	 in STD_LOGIC;
		MS_A_CH_INSERT_PLUS_ZERO:	 out STD_LOGIC;
		MS_A_CH_INSERT_PLUS_NINE:	 out STD_LOGIC;
		PS_ADDER_A_CH_USE_T_OR_C:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_T_DOT_X: STD_LOGIC := '1';
	signal MS_A_OR_S_DOT_B_DOT_3: STD_LOGIC := '1';
	signal PS_EXTENSION_LATCH: STD_LOGIC := '0';
	signal PS_COMPLEMENT_LATCH: STD_LOGIC := '0';
	signal PS_TRUE_LATCH: STD_LOGIC := '0';
	signal PS_MPLY_OR_DIV_OP_CODES: STD_LOGIC := '0';
	signal PS_MQ_LATCH: STD_LOGIC := '0';
	signal MS_A_OR_S_DOT_B_DOT_1_DOT_S_DOT_X: STD_LOGIC := '1';
	signal MS_MPLY_DOT_U_OR_Y_DOT_B: STD_LOGIC := '1';
	signal MS_DIV_DOT_U_OR_Y_DOT_B: STD_LOGIC := '1';
	signal MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_U_OR_Y: STD_LOGIC := '1';

	-- Outputs

	signal MS_A_CH_INSERT_PLUS_ZERO: STD_LOGIC;
	signal MS_A_CH_INSERT_PLUS_NINE: STD_LOGIC;
	signal PS_ADDER_A_CH_USE_T_OR_C: STD_LOGIC;

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

	UUT: ALD_16_20_11_1_ADD_A_CH_0_9_T_OR_C_INSERT_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_T_DOT_X => MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_T_DOT_X,
		MS_A_OR_S_DOT_B_DOT_3 => MS_A_OR_S_DOT_B_DOT_3,
		PS_EXTENSION_LATCH => PS_EXTENSION_LATCH,
		PS_COMPLEMENT_LATCH => PS_COMPLEMENT_LATCH,
		PS_TRUE_LATCH => PS_TRUE_LATCH,
		PS_MPLY_OR_DIV_OP_CODES => PS_MPLY_OR_DIV_OP_CODES,
		PS_MQ_LATCH => PS_MQ_LATCH,
		MS_A_OR_S_DOT_B_DOT_1_DOT_S_DOT_X => MS_A_OR_S_DOT_B_DOT_1_DOT_S_DOT_X,
		MS_MPLY_DOT_U_OR_Y_DOT_B => MS_MPLY_DOT_U_OR_Y_DOT_B,
		MS_DIV_DOT_U_OR_Y_DOT_B => MS_DIV_DOT_U_OR_Y_DOT_B,
		MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_U_OR_Y => MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_U_OR_Y,
		MS_A_CH_INSERT_PLUS_ZERO => MS_A_CH_INSERT_PLUS_ZERO,
		MS_A_CH_INSERT_PLUS_NINE => MS_A_CH_INSERT_PLUS_NINE,
		PS_ADDER_A_CH_USE_T_OR_C => PS_ADDER_A_CH_USE_T_OR_C);

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

   testName := "16.20.11.1        ";

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
      j := tv(8);
      k := tv(9);
      l := tv(10);
      
      g1 := e and c and f;
      g2 := f and d and g;
      g3 := f and d and c;
      g4 := f and e and g;

		MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_T_DOT_X <= not a;
		MS_A_OR_S_DOT_B_DOT_3 <= not b;
		PS_EXTENSION_LATCH <= c;
		PS_COMPLEMENT_LATCH <= d;
		PS_TRUE_LATCH <= e;
		PS_MPLY_OR_DIV_OP_CODES <= f;
		PS_MQ_LATCH <= g;
		MS_A_OR_S_DOT_B_DOT_1_DOT_S_DOT_X <= not h;
		MS_MPLY_DOT_U_OR_Y_DOT_B <= not j;
		MS_DIV_DOT_U_OR_Y_DOT_B <= not k;
		MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_U_OR_Y <= not l;
      
      wait for 30 ns;
      
      check1(MS_A_CH_INSERT_PLUS_ZERO,not(g1 or g2 or a or b),testName,"Insert +0");
      check1(MS_A_CH_INSERT_PLUS_NINE,not(g3 or g4 or h),testName,"Insert +9");
      check1(PS_ADDER_A_CH_USE_T_OR_C,j or k or l,testName,"Use T or C");
      
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