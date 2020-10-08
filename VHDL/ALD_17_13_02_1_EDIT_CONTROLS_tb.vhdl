-- Test Bench VHDL for IBM SMS ALD page 17.13.02.1
-- Title: EDIT CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/8/2020 4:22:31 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_13_02_1_EDIT_CONTROLS_tb is
end ALD_17_13_02_1_EDIT_CONTROLS_tb;

architecture behavioral of ALD_17_13_02_1_EDIT_CONTROLS_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_17_13_02_1_EDIT_CONTROLS
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_PLUS_SIGN_LATCH:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		PS_C_OR_R_OR_MINUS:	 in STD_LOGIC;
		MS_UNITS_LATCH:	 in STD_LOGIC;
		MS_EXTENSION_LATCH:	 in STD_LOGIC;
		PS_MINUS_SIGN_LATCH:	 in STD_LOGIC;
		PS_UNITS_LATCH:	 in STD_LOGIC;
		PS_NOT_BLANK:	 in STD_LOGIC;
		PS_NOT_CTRL_0:	 in STD_LOGIC;
		PS_E_OP_DOT_B_CYCLE_1:	 in STD_LOGIC;
		PS_NOT_C_CHAR:	 in STD_LOGIC;
		PS_NOT_R_CHAR:	 in STD_LOGIC;
		PS_NOT_MINUS_SYMBOL:	 in STD_LOGIC;
		PS_NOT_SPACE:	 in STD_LOGIC;
		MS_BLANKED_CREDIT_SYMBOL:	 out STD_LOGIC;
		PS_CREDIT_OR_NOT_U_CTRL_CHAR:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_PLUS_SIGN_LATCH: STD_LOGIC := '0';
	signal PS_1ST_SCAN: STD_LOGIC := '0';
	signal PS_C_OR_R_OR_MINUS: STD_LOGIC := '0';
	signal MS_UNITS_LATCH: STD_LOGIC := '1';
	signal MS_EXTENSION_LATCH: STD_LOGIC := '1';
	signal PS_MINUS_SIGN_LATCH: STD_LOGIC := '0';
	signal PS_UNITS_LATCH: STD_LOGIC := '0';
	signal PS_NOT_BLANK: STD_LOGIC := '0';
	signal PS_NOT_CTRL_0: STD_LOGIC := '0';
	signal PS_E_OP_DOT_B_CYCLE_1: STD_LOGIC := '0';
	signal PS_NOT_C_CHAR: STD_LOGIC := '0';
	signal PS_NOT_R_CHAR: STD_LOGIC := '0';
	signal PS_NOT_MINUS_SYMBOL: STD_LOGIC := '0';
	signal PS_NOT_SPACE: STD_LOGIC := '0';

	-- Outputs

	signal MS_BLANKED_CREDIT_SYMBOL: STD_LOGIC;
	signal PS_CREDIT_OR_NOT_U_CTRL_CHAR: STD_LOGIC;

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

	UUT: ALD_17_13_02_1_EDIT_CONTROLS port map(
		FPGA_CLK => FPGA_CLK,
		PS_PLUS_SIGN_LATCH => PS_PLUS_SIGN_LATCH,
		PS_1ST_SCAN => PS_1ST_SCAN,
		PS_C_OR_R_OR_MINUS => PS_C_OR_R_OR_MINUS,
		MS_UNITS_LATCH => MS_UNITS_LATCH,
		MS_EXTENSION_LATCH => MS_EXTENSION_LATCH,
		PS_MINUS_SIGN_LATCH => PS_MINUS_SIGN_LATCH,
		PS_UNITS_LATCH => PS_UNITS_LATCH,
		PS_NOT_BLANK => PS_NOT_BLANK,
		PS_NOT_CTRL_0 => PS_NOT_CTRL_0,
		PS_E_OP_DOT_B_CYCLE_1 => PS_E_OP_DOT_B_CYCLE_1,
		PS_NOT_C_CHAR => PS_NOT_C_CHAR,
		PS_NOT_R_CHAR => PS_NOT_R_CHAR,
		PS_NOT_MINUS_SYMBOL => PS_NOT_MINUS_SYMBOL,
		PS_NOT_SPACE => PS_NOT_SPACE,
		MS_BLANKED_CREDIT_SYMBOL => MS_BLANKED_CREDIT_SYMBOL,
		PS_CREDIT_OR_NOT_U_CTRL_CHAR => PS_CREDIT_OR_NOT_U_CTRL_CHAR);

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

   testName := "17.13.02.1        ";

   for tt in 0 to 2**14 loop
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
      
      g1 := d or e;
      g2 := g1 and k and b and c and f;
      g3 := g and h and j and l and m and n and o and k;

		PS_PLUS_SIGN_LATCH <= a;
		PS_1ST_SCAN <= b;
		PS_C_OR_R_OR_MINUS <= c;
		MS_UNITS_LATCH <= not d;
		MS_EXTENSION_LATCH <= not e;
		PS_MINUS_SIGN_LATCH <= f;
		PS_UNITS_LATCH <= g;
		PS_NOT_BLANK <= h;
		PS_NOT_CTRL_0 <= j;
		PS_E_OP_DOT_B_CYCLE_1 <= k;
		PS_NOT_C_CHAR <= l;
		PS_NOT_R_CHAR <= m;
		PS_NOT_MINUS_SYMBOL <= n;
		PS_NOT_SPACE <= o;
      
      wait for 30 ns;
      
      check1(MS_BLANKED_CREDIT_SYMBOL,not(c and a and b and k and g1),testName,"-S Blanked CR Symbol");
      check1(PS_CREDIT_OR_NOT_U_CTRL_CHAR,g2 or g3,testName,"+S Credit or not Unit Ctrl Char");
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
