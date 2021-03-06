-- Test Bench VHDL for IBM SMS ALD page 17.13.08.1
-- Title: EDIT CONTROL LINES-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/8/2020 8:23:59 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_13_08_1_EDIT_CONTROL_LINES_ACC_tb is
end ALD_17_13_08_1_EDIT_CONTROL_LINES_ACC_tb;

architecture behavioral of ALD_17_13_08_1_EDIT_CONTROL_LINES_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_17_13_08_1_EDIT_CONTROL_LINES_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_NOT_CTRL_0:	 in STD_LOGIC;
		PS_NOT_0_SUPPRESS:	 in STD_LOGIC;
		PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION:	 in STD_LOGIC;
		PS_LAST_EXECUTE_CONDITIONS:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_1:	 in STD_LOGIC;
		PS_E_OP_DOT_B_CY_DOT_1ST_SCAN:	 in STD_LOGIC;
		PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION:	 in STD_LOGIC;
		PS_DECIMAL:	 in STD_LOGIC;
		PS_DECIMAL_CONTROL:	 in STD_LOGIC;
		MS_0_SUPPRESS:	 in STD_LOGIC;
		MS_CONTROL_ZERO:	 in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_EDIT:	 out STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_B:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_NOT_CTRL_0: STD_LOGIC := '0';
	signal PS_NOT_0_SUPPRESS: STD_LOGIC := '0';
	signal PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION: STD_LOGIC := '0';
	signal PS_LAST_EXECUTE_CONDITIONS: STD_LOGIC := '0';
	signal PS_B_CH_WM_BIT_1: STD_LOGIC := '0';
	signal PS_E_OP_DOT_B_CY_DOT_1ST_SCAN: STD_LOGIC := '0';
	signal PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION: STD_LOGIC := '0';
	signal PS_DECIMAL: STD_LOGIC := '0';
	signal PS_DECIMAL_CONTROL: STD_LOGIC := '0';
	signal MS_0_SUPPRESS: STD_LOGIC := '1';
	signal MS_CONTROL_ZERO: STD_LOGIC := '1';

	-- Outputs

	signal PS_LAST_EXECUTE_CYCLE_STAR_EDIT: STD_LOGIC;
	signal MS_EDIT_SET_B_CYCLE_CTRL_B: STD_LOGIC;

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

	UUT: ALD_17_13_08_1_EDIT_CONTROL_LINES_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_NOT_CTRL_0 => PS_NOT_CTRL_0,
		PS_NOT_0_SUPPRESS => PS_NOT_0_SUPPRESS,
		PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION => PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION,
		PS_LAST_EXECUTE_CONDITIONS => PS_LAST_EXECUTE_CONDITIONS,
		PS_B_CH_WM_BIT_1 => PS_B_CH_WM_BIT_1,
		PS_E_OP_DOT_B_CY_DOT_1ST_SCAN => PS_E_OP_DOT_B_CY_DOT_1ST_SCAN,
		PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION => PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION,
		PS_DECIMAL => PS_DECIMAL,
		PS_DECIMAL_CONTROL => PS_DECIMAL_CONTROL,
		MS_0_SUPPRESS => MS_0_SUPPRESS,
		MS_CONTROL_ZERO => MS_CONTROL_ZERO,
		PS_LAST_EXECUTE_CYCLE_STAR_EDIT => PS_LAST_EXECUTE_CYCLE_STAR_EDIT,
		MS_EDIT_SET_B_CYCLE_CTRL_B => MS_EDIT_SET_B_CYCLE_CTRL_B);

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

   testName := "17.13.08.1        ";

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
      
      g1 := f and b and a and e;
      g2 := c and d and e;
      g3 := g and h and j;

		PS_NOT_CTRL_0 <= a;
		PS_NOT_0_SUPPRESS <= b;
		PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION <= c;
		PS_LAST_EXECUTE_CONDITIONS <= d;
		PS_B_CH_WM_BIT_1 <= e;
		PS_E_OP_DOT_B_CY_DOT_1ST_SCAN <= f;
		PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION <= g;
		PS_DECIMAL <= h;
		PS_DECIMAL_CONTROL <= j;
		MS_0_SUPPRESS <= not k;
		MS_CONTROL_ZERO <= not l;
      
      wait for 30 ns;
      
      check1(MS_EDIT_SET_B_CYCLE_CTRL_B,not(f and e and (k or l)),testName,"Edit Set B Cycle Ctrl B");
      check1(PS_LAST_EXECUTE_CYCLE_STAR_EDIT,g1 or g2 or g3,testName,"Last Execute Cycle *Edit");
      
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
