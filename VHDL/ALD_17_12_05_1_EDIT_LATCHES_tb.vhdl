-- Test Bench VHDL for IBM SMS ALD page 17.12.05.1
-- Title: EDIT LATCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/8/2020 1:53:37 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_12_05_1_EDIT_LATCHES_tb is
end ALD_17_12_05_1_EDIT_LATCHES_tb;

architecture behavioral of ALD_17_12_05_1_EDIT_LATCHES_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_17_12_05_1_EDIT_LATCHES
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ASTERISK:	 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1:	 in STD_LOGIC;
		PS_0_SUPPRESS:	 in STD_LOGIC;
		PS_BODY_LATCH:	 in STD_LOGIC;
		PS_NOT_ASTERISK_FILL_OR_FL_DOL:	 in STD_LOGIC;
		MS_I_RING_OP_TIME:	 in STD_LOGIC;
		PS_DOLLAR_SIGN:	 in STD_LOGIC;
		PS_E_OP_DOT_B_CYCLE_2:	 in STD_LOGIC;
		MS_ASTERISK_FILL:	 out STD_LOGIC;
		PS_ASTERISK_FILL:	 out STD_LOGIC;
		PS_FLOAT_DOLLAR_SIGN:	 out STD_LOGIC;
		MS_FLOAT_DOLLAR_SIGN:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_ASTERISK: STD_LOGIC := '0';
	signal PS_LAST_LOGIC_GATE_1: STD_LOGIC := '0';
	signal PS_0_SUPPRESS: STD_LOGIC := '0';
	signal PS_BODY_LATCH: STD_LOGIC := '0';
	signal PS_NOT_ASTERISK_FILL_OR_FL_DOL: STD_LOGIC := '0';
	signal MS_I_RING_OP_TIME: STD_LOGIC := '1';
	signal PS_DOLLAR_SIGN: STD_LOGIC := '0';
	signal PS_E_OP_DOT_B_CYCLE_2: STD_LOGIC := '0';

	-- Outputs

	signal MS_ASTERISK_FILL: STD_LOGIC;
	signal PS_ASTERISK_FILL: STD_LOGIC;
	signal PS_FLOAT_DOLLAR_SIGN: STD_LOGIC;
	signal MS_FLOAT_DOLLAR_SIGN: STD_LOGIC;

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

	UUT: ALD_17_12_05_1_EDIT_LATCHES port map(
		FPGA_CLK => FPGA_CLK,
		PS_ASTERISK => PS_ASTERISK,
		PS_LAST_LOGIC_GATE_1 => PS_LAST_LOGIC_GATE_1,
		PS_0_SUPPRESS => PS_0_SUPPRESS,
		PS_BODY_LATCH => PS_BODY_LATCH,
		PS_NOT_ASTERISK_FILL_OR_FL_DOL => PS_NOT_ASTERISK_FILL_OR_FL_DOL,
		MS_I_RING_OP_TIME => MS_I_RING_OP_TIME,
		PS_DOLLAR_SIGN => PS_DOLLAR_SIGN,
		PS_E_OP_DOT_B_CYCLE_2 => PS_E_OP_DOT_B_CYCLE_2,
		MS_ASTERISK_FILL => MS_ASTERISK_FILL,
		PS_ASTERISK_FILL => PS_ASTERISK_FILL,
		PS_FLOAT_DOLLAR_SIGN => PS_FLOAT_DOLLAR_SIGN,
		MS_FLOAT_DOLLAR_SIGN => MS_FLOAT_DOLLAR_SIGN);

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

   testName := "17.12.05.1        ";

   for tt in 0 to 2**7 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      g := tv(5);
      h := tv(6);
      
      -- Reset
      
      MS_I_RING_OP_TIME <= '0';
      wait for 30 ns;
      MS_I_RING_OP_TIME <= '1';
      wait for 30 ns;
      
      check1(PS_ASTERISK_FILL,'0',testName,"Reset +S * Fill");
      check1(MS_ASTERISK_FILL,NOT PS_ASTERISK_FILL,testName,"Reset -S * Fill");
      check1(PS_FLOAT_DOLLAR_SIGN,'0',testName,"Reset +S Float $");
      check1(MS_FLOAT_DOLLAR_SIGN,NOT PS_FLOAT_DOLLAR_SIGN,testName,"Reset -S Float $");

		PS_ASTERISK <= a;
		PS_LAST_LOGIC_GATE_1 <= b;
		PS_0_SUPPRESS <= c;
		PS_BODY_LATCH <= d;
		PS_NOT_ASTERISK_FILL_OR_FL_DOL <= e;
		PS_DOLLAR_SIGN <= g;
		PS_E_OP_DOT_B_CYCLE_2 <= h;		     
      wait for 30 ns;
      
      -- Reset variables for next iteration - latch should stay in same state
      
		PS_ASTERISK <= '0';
      PS_LAST_LOGIC_GATE_1 <= '0';
      PS_0_SUPPRESS <= '0';
      PS_BODY_LATCH <= '0';
      PS_NOT_ASTERISK_FILL_OR_FL_DOL <= '0';
      PS_DOLLAR_SIGN <= '0';
      PS_E_OP_DOT_B_CYCLE_2 <= '0';
      wait for 30 ns;
      
      check1(PS_ASTERISK_FILL,a and b and e and h and c and d,testName,"Set +S * Fill");
      check1(MS_ASTERISK_FILL,NOT PS_ASTERISK_FILL,testName,"Set -S * Fill");
      check1(PS_FLOAT_DOLLAR_SIGN,b and e and h and c and d and g,testName,"Set +S Float $");
      check1(MS_FLOAT_DOLLAR_SIGN,NOT PS_FLOAT_DOLLAR_SIGN,testName,"Set -S Float $");
            
      
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