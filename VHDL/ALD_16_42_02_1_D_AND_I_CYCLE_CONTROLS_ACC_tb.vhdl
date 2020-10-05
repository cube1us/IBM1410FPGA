-- Test Bench VHDL for IBM SMS ALD page 16.42.02.1
-- Title: D AND I CYCLE CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/5/2020 2:02:18 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_42_02_1_D_AND_I_CYCLE_CONTROLS_ACC_tb is
end ALD_16_42_02_1_D_AND_I_CYCLE_CONTROLS_ACC_tb;

architecture behavioral of ALD_16_42_02_1_D_AND_I_CYCLE_CONTROLS_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_16_42_02_1_D_AND_I_CYCLE_CONTROLS_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B0_DOT_NOT_BW:	 in STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9:	 in STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_NOT_BW:	 in STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_BW:	 in STD_LOGIC;
		MS_DIV_DOT_X_DOT_B_DOT_T_DOT_NOT_MDL:	 in STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_1_DOT_B0_DOT_BW:	 in STD_LOGIC;
		MS_MPLY_DOT_X_DOT_B_DOT_MDL:	 in STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_3_DOT_T_DOT_B0_DOT_BW:	 in STD_LOGIC;
		MB_DIV_DOT_MQ_DOT_B_DOT_S_DOT_RC:	 in STD_LOGIC;
		MS_DIV_DOT_MQ_DOT_B_DOT_T:	 in STD_LOGIC;
		MB_RA_OR_RS_DOT_1_DOT_B_DOT_BW:	 in STD_LOGIC;
		MB_A_OR_S_DOT_B_DOT_1_DOT_T_DOT_BW_DOT_NOT_RC:	 in STD_LOGIC;
		MB_A_OR_S_DOT_B_DOT_1_DOT_T_DOT_BW_DOT_RC:	 in STD_LOGIC;
		MB_A_OR_S_DOT_B_DOT_1_DOT_S_DOT_BW_DOT_RC:	 in STD_LOGIC;
		MB_A_OR_S_DOT_B_DOT_3_DOT_BW:	 in STD_LOGIC;
		MS_LB_DOT_B_CYCLE_DOT_EXT_DOT_NO_ZONE_CAR:	 in STD_LOGIC;
		MS_LB_DOT_B_CYCLE_DOT_3RD_SCAN_DOT_UNITS:	 in STD_LOGIC;
		MS_MPLY_DOT_2_DOT_D:	 in STD_LOGIC;
		PS_SET_D_CYCLE_CTRL_STAR_ARITH:	 out STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_ARITH:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B0_DOT_NOT_BW: STD_LOGIC := '1';
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9: STD_LOGIC := '1';
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_NOT_BW: STD_LOGIC := '1';
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_BW: STD_LOGIC := '1';
	signal MS_DIV_DOT_X_DOT_B_DOT_T_DOT_NOT_MDL: STD_LOGIC := '1';
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_1_DOT_B0_DOT_BW: STD_LOGIC := '1';
	signal MS_MPLY_DOT_X_DOT_B_DOT_MDL: STD_LOGIC := '1';
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_3_DOT_T_DOT_B0_DOT_BW: STD_LOGIC := '1';
	signal MB_DIV_DOT_MQ_DOT_B_DOT_S_DOT_RC: STD_LOGIC := '1';
	signal MS_DIV_DOT_MQ_DOT_B_DOT_T: STD_LOGIC := '1';
	signal MB_RA_OR_RS_DOT_1_DOT_B_DOT_BW: STD_LOGIC := '1';
	signal MB_A_OR_S_DOT_B_DOT_1_DOT_T_DOT_BW_DOT_NOT_RC: STD_LOGIC := '1';
	signal MB_A_OR_S_DOT_B_DOT_1_DOT_T_DOT_BW_DOT_RC: STD_LOGIC := '1';
	signal MB_A_OR_S_DOT_B_DOT_1_DOT_S_DOT_BW_DOT_RC: STD_LOGIC := '1';
	signal MB_A_OR_S_DOT_B_DOT_3_DOT_BW: STD_LOGIC := '1';
	signal MS_LB_DOT_B_CYCLE_DOT_EXT_DOT_NO_ZONE_CAR: STD_LOGIC := '1';
	signal MS_LB_DOT_B_CYCLE_DOT_3RD_SCAN_DOT_UNITS: STD_LOGIC := '1';
	signal MS_MPLY_DOT_2_DOT_D: STD_LOGIC := '1';

	-- Outputs

	signal PS_SET_D_CYCLE_CTRL_STAR_ARITH: STD_LOGIC;
	signal PS_LAST_EXECUTE_CYCLE_STAR_ARITH: STD_LOGIC;

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

	UUT: ALD_16_42_02_1_D_AND_I_CYCLE_CONTROLS_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B0_DOT_NOT_BW => MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_B0_DOT_NOT_BW,
		MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9 => MB_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9,
		MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_NOT_BW => MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_NOT_BW,
		MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_BW => MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_BW,
		MS_DIV_DOT_X_DOT_B_DOT_T_DOT_NOT_MDL => MS_DIV_DOT_X_DOT_B_DOT_T_DOT_NOT_MDL,
		MB_MPLY_DOT_MQ_DOT_B_DOT_1_DOT_B0_DOT_BW => MB_MPLY_DOT_MQ_DOT_B_DOT_1_DOT_B0_DOT_BW,
		MS_MPLY_DOT_X_DOT_B_DOT_MDL => MS_MPLY_DOT_X_DOT_B_DOT_MDL,
		MB_MPLY_DOT_MQ_DOT_B_DOT_3_DOT_T_DOT_B0_DOT_BW => MB_MPLY_DOT_MQ_DOT_B_DOT_3_DOT_T_DOT_B0_DOT_BW,
		MB_DIV_DOT_MQ_DOT_B_DOT_S_DOT_RC => MB_DIV_DOT_MQ_DOT_B_DOT_S_DOT_RC,
		MS_DIV_DOT_MQ_DOT_B_DOT_T => MS_DIV_DOT_MQ_DOT_B_DOT_T,
		MB_RA_OR_RS_DOT_1_DOT_B_DOT_BW => MB_RA_OR_RS_DOT_1_DOT_B_DOT_BW,
		MB_A_OR_S_DOT_B_DOT_1_DOT_T_DOT_BW_DOT_NOT_RC => MB_A_OR_S_DOT_B_DOT_1_DOT_T_DOT_BW_DOT_NOT_RC,
		MB_A_OR_S_DOT_B_DOT_1_DOT_T_DOT_BW_DOT_RC => MB_A_OR_S_DOT_B_DOT_1_DOT_T_DOT_BW_DOT_RC,
		MB_A_OR_S_DOT_B_DOT_1_DOT_S_DOT_BW_DOT_RC => MB_A_OR_S_DOT_B_DOT_1_DOT_S_DOT_BW_DOT_RC,
		MB_A_OR_S_DOT_B_DOT_3_DOT_BW => MB_A_OR_S_DOT_B_DOT_3_DOT_BW,
		MS_LB_DOT_B_CYCLE_DOT_EXT_DOT_NO_ZONE_CAR => MS_LB_DOT_B_CYCLE_DOT_EXT_DOT_NO_ZONE_CAR,
		MS_LB_DOT_B_CYCLE_DOT_3RD_SCAN_DOT_UNITS => MS_LB_DOT_B_CYCLE_DOT_3RD_SCAN_DOT_UNITS,
		MS_MPLY_DOT_2_DOT_D => MS_MPLY_DOT_2_DOT_D,
		PS_SET_D_CYCLE_CTRL_STAR_ARITH => PS_SET_D_CYCLE_CTRL_STAR_ARITH,
		PS_LAST_EXECUTE_CYCLE_STAR_ARITH => PS_LAST_EXECUTE_CYCLE_STAR_ARITH);

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

   testName := "15.49.04.1        X";  -- NOTE:  Remove X when editing to set correct length!

   for tt in 0 to 2**25 loop
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
      o := tv(13);
      p := tv(14);
      q := tv(15);
      r := tv(16);
      s := tv(17);
      t := tv(18);
      u := tv(19);
      v := tv(20);
      w := tv(21);
      x := tv(22);
      y := tv(23);
      z := tv(24);

      
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
