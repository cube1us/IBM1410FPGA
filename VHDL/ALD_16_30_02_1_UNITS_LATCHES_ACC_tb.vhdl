-- Test Bench VHDL for IBM SMS ALD page 16.30.02.1
-- Title: UNITS LATCHES-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/4/2020 10:23:10 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_30_02_1_UNITS_LATCHES_ACC_tb is
end ALD_16_30_02_1_UNITS_LATCHES_ACC_tb;

architecture behavioral of ALD_16_30_02_1_UNITS_LATCHES_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_16_30_02_1_UNITS_LATCHES_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_NEXT_TO_LAST_LOGIC_GATE:	 in STD_LOGIC;
		PS_SET_UNITS_CTRL_LATCH:	 in STD_LOGIC;
		PS_RGEN_UNITS_DOT_BODY_CTRL:	 in STD_LOGIC;
		MS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		MS_PROGRAM_RESET_5:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		MS_UNITS_CTRL_LATCH:	 out STD_LOGIC;
		PS_UNITS_CTRL_LATCH:	 out STD_LOGIC;
		MS_UNITS_LATCH:	 out STD_LOGIC;
		PS_UNITS_LATCH:	 out STD_LOGIC;
		LAMP_15A1G08:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_NEXT_TO_LAST_LOGIC_GATE: STD_LOGIC := '0';
	signal PS_SET_UNITS_CTRL_LATCH: STD_LOGIC := '0';
	signal PS_RGEN_UNITS_DOT_BODY_CTRL: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_D_1: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_5: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_C_1: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_B_1: STD_LOGIC := '1';

	-- Outputs

	signal MS_UNITS_CTRL_LATCH: STD_LOGIC;
	signal PS_UNITS_CTRL_LATCH: STD_LOGIC;
	signal MS_UNITS_LATCH: STD_LOGIC;
	signal PS_UNITS_LATCH: STD_LOGIC;
	signal LAMP_15A1G08: STD_LOGIC;

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

	UUT: ALD_16_30_02_1_UNITS_LATCHES_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_NEXT_TO_LAST_LOGIC_GATE => PS_NEXT_TO_LAST_LOGIC_GATE,
		PS_SET_UNITS_CTRL_LATCH => PS_SET_UNITS_CTRL_LATCH,
		PS_RGEN_UNITS_DOT_BODY_CTRL => PS_RGEN_UNITS_DOT_BODY_CTRL,
		MS_LOGIC_GATE_D_1 => MS_LOGIC_GATE_D_1,
		MS_PROGRAM_RESET_5 => MS_PROGRAM_RESET_5,
		PS_LOGIC_GATE_C_1 => PS_LOGIC_GATE_C_1,
		MS_LOGIC_GATE_B_1 => MS_LOGIC_GATE_B_1,
		MS_UNITS_CTRL_LATCH => MS_UNITS_CTRL_LATCH,
		PS_UNITS_CTRL_LATCH => PS_UNITS_CTRL_LATCH,
		MS_UNITS_LATCH => MS_UNITS_LATCH,
		PS_UNITS_LATCH => PS_UNITS_LATCH,
		LAMP_15A1G08 => LAMP_15A1G08);

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

   testName := "16.30.02.1        ";

   -- Test reset
   
   MS_PROGRAM_RESET_5 <= '0';
   wait for 30 ns;
   MS_PROGRAM_RESET_5 <= '1';
   wait for 30 ns;

   check1(PS_UNITS_LATCH,'0',testName,"+S Reset Units Latch");
   check1(MS_UNITS_LATCH,'1',testName,"+S Reset Units Latch");
   check1(PS_UNITS_CTRL_LATCH,'0',testName,"+S Reset Units Ctrl Latch");
   check1(MS_UNITS_CTRL_LATCH,'1',testName,"-S Reset Units Ctrl Latch");
   check1(LAMP_15A1G08,'0',testName,"Reset Units Lamp");
   
     
   -- Test Units Ctrl   
   
   for tt in 0 to 2**2 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      MS_PROGRAM_RESET_5 <= '0';
      wait for 30 ns;
      MS_PROGRAM_RESET_5 <= '1';
      wait for 30 ns;
      check1(PS_UNITS_CTRL_LATCH,'0',testName,"1A");
      check1(MS_UNITS_CTRL_LATCH,'1',testName,"1B");
      PS_SET_UNITS_CTRL_LATCH <= tv(0);
      PS_NEXT_TO_LAST_LOGIC_GATE <= tv(1);
      wait for 60 ns; -- perhaps set units ctrl latch
      PS_SET_UNITS_CTRL_LATCH <= '0';
      PS_NEXT_TO_LAST_LOGIC_GATE <= '0';
      check1(PS_UNITS_CTRL_LATCH,tv(0) and tv(1),testName,"1C");
      check1(MS_UNITS_CTRL_LATCH,not PS_UNITS_CTRL_LATCH,testName,"1D");
      check1(PS_UNITS_LATCH,'0',testName,"1E");
      check1(MS_UNITS_LATCH,not PS_UNITS_LATCH,testName,"1F");
      check1(LAMP_15A1G08,PS_UNITS_LATCH,testName,"1G");
      PS_LOGIC_GATE_C_1 <= '1';
      wait for 30 ns; -- perhaps set Units Latch
      PS_LOGIC_GATE_C_1 <= '0';
      wait for 30 ns; -- should stay set
      check1(PS_UNITS_LATCH,tv(0) and tv(1),testName,"1H");
      check1(MS_UNITS_LATCH,not PS_UNITS_LATCH,testName,"1I");
      check1(LAMP_15A1G08,PS_UNITS_LATCH,testName,"1J");      
      -- Reset Units Ctrl and then Units Latch      
      MS_LOGIC_GATE_D_1 <= '0';
      wait for 30 ns;
      MS_LOGIC_GATE_D_1 <= '1';
      wait for 60 ns; -- Resetting Units Ctrl won't reset Units Latch
      check1(PS_UNITS_CTRL_LATCH,'0',testName,"1K");
      check1(MS_UNITS_CTRL_LATCH,not PS_UNITS_CTRL_LATCH,testName,"1L");
      check1(PS_UNITS_LATCH,tv(0) and tv(1),testName,"1M");
      check1(MS_UNITS_LATCH,not PS_UNITS_LATCH,testName,"1N");
      check1(LAMP_15A1G08,PS_UNITS_LATCH,testName,"1O");
      -- But then resetting Units Latch should work
      MS_LOGIC_GATE_B_1 <= '0';
      wait for 30 ns;
      MS_LOGIC_GATE_B_1 <= '1';
      wait for 30 ns;
      check1(PS_UNITS_LATCH,'0',testName,"1P");
      check1(MS_UNITS_LATCH,'1',testName,"1Q");
      check1(LAMP_15A1G08,PS_UNITS_LATCH,testName,"1R");
   end loop;
      
   -- Test Regen
   
   MS_PROGRAM_RESET_5 <= '0';
   wait for 30 ns;
   MS_PROGRAM_RESET_5 <= '1';
   wait for 30 ns;
   
   PS_SET_UNITS_CTRL_LATCH <= '1';
   PS_NEXT_TO_LAST_LOGIC_GATE <= '1';
   wait for 30 ns; -- Sets Units Ctrl Latch
   PS_SET_UNITS_CTRL_LATCH <= '0';
   PS_NEXT_TO_LAST_LOGIC_GATE <= '0';
   wait for 30 ns; -- Should stay set   
   check1(PS_UNITS_CTRL_LATCH,'1',testName,"3A");
   check1(PS_UNITS_LATCH,'0',testName,"3AA");
   -- Set Units Latch   
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns;
   PS_LOGIC_GATE_C_1 <= '0';
   wait for 30 ns;
   check1(PS_UNITS_LATCH,'1',testName,"3B");
   -- Reset Units Ctrl Latch.  Units latch should stay set
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_D_1 <= '1';
   wait for 30 ns;
   check1(PS_UNITS_CTRL_LATCH,'0',testName,"3C");
   check1(PS_UNITS_LATCH,'1',testName,"3D");   
   -- Set Units Ctrl latch from Units Latch regen      
   PS_RGEN_UNITS_DOT_BODY_CTRL <= '1';
   PS_NEXT_TO_LAST_LOGIC_GATE <= '1';
   wait for 30 ns;
   PS_RGEN_UNITS_DOT_BODY_CTRL <= '0'; 
   PS_NEXT_TO_LAST_LOGIC_GATE <= '0';
   wait for 30 ns;
   -- Reset Units Latch (and reset inputs to Units Ctrl Latch - which should stay set)
   MS_LOGIC_GATE_B_1 <= '0';
   PS_SET_UNITS_CTRL_LATCH <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   check1(PS_UNITS_LATCH,'0',testName,"3E");
   check1(PS_UNITS_CTRL_LATCH,'1',testName,"3F");
   -- Now set Units Latch via Units Ctrl (again?)
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns; -- Should set Units Latch
   PS_LOGIC_GATE_C_1 <= '0';
   wait for 30 ns;
   check1(PS_UNITS_LATCH,'1',testName,"3G");
   check1(PS_UNITS_CTRL_LATCH,'1',testName,"3H");
   -- Reset Units Ctrl
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_D_1 <= '1';
   wait for 30 ns;
   check1(PS_UNITS_CTRL_LATCH,'0',testName,"3I");
   check1(PS_UNITS_LATCH,'1',testName,"3J");
   -- Reset Units Latch (so now, both are reset)
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   check1(PS_UNITS_LATCH,'0',testName,"3K");
   -- Since Units Ctrl is NOT set any more, this should NOT set Units Latch either
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns;
   PS_LOGIC_GATE_C_1 <= '0';
   wait for 30 ns;
   check1(PS_UNITS_LATCH,'0',testName,"3L");

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
