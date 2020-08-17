-- Test Bench VHDL for IBM SMS ALD page 13.72.07.1
-- Title: F CH FAST FILE CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/16/2020 7:54:50 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_72_07_1_F_CH_FAST_FILE_CONTROLS_tb is
end ALD_13_72_07_1_F_CH_FAST_FILE_CONTROLS_tb;

architecture behavioral of ALD_13_72_07_1_F_CH_FAST_FILE_CONTROLS_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_13_72_07_1_F_CH_FAST_FILE_CONTROLS
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MC_ADDR_COMP_TRUE_F_CH:	 in STD_LOGIC;
		MC_FAST_FILE_ON_LINE_F_CH:	 in STD_LOGIC;
		PS_PERCENT_OR_COML_AT:	 in STD_LOGIC;
		PS_E_CH_IN_PROCESS:	 in STD_LOGIC;
		PS_LOGIC_GATE_E_OR_V:	 in STD_LOGIC;
		PS_F_CH_SEL_UNIT_F_LATCHED:	 in STD_LOGIC;
		PS_F_CH_DISCON_LATCH:	 in STD_LOGIC;
		MS_PROGRAM_RESET:	 in STD_LOGIC;
		MS_BLOCK_F_CH_FILE_START_GT:	 out STD_LOGIC;
		MS_COMP_DSBLE_F_CH:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MC_ADDR_COMP_TRUE_F_CH: STD_LOGIC := '1';
	signal MC_FAST_FILE_ON_LINE_F_CH: STD_LOGIC := '1';
	signal PS_PERCENT_OR_COML_AT: STD_LOGIC := '0';
	signal PS_E_CH_IN_PROCESS: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_E_OR_V: STD_LOGIC := '0';
	signal PS_F_CH_SEL_UNIT_F_LATCHED: STD_LOGIC := '0';
	signal PS_F_CH_DISCON_LATCH: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET: STD_LOGIC := '1';

	-- Outputs

	signal MS_BLOCK_F_CH_FILE_START_GT: STD_LOGIC;
	signal MS_COMP_DSBLE_F_CH: STD_LOGIC;

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

	UUT: ALD_13_72_07_1_F_CH_FAST_FILE_CONTROLS port map(
		FPGA_CLK => FPGA_CLK,
		MC_ADDR_COMP_TRUE_F_CH => MC_ADDR_COMP_TRUE_F_CH,
		MC_FAST_FILE_ON_LINE_F_CH => MC_FAST_FILE_ON_LINE_F_CH,
		PS_PERCENT_OR_COML_AT => PS_PERCENT_OR_COML_AT,
		PS_E_CH_IN_PROCESS => PS_E_CH_IN_PROCESS,
		PS_LOGIC_GATE_E_OR_V => PS_LOGIC_GATE_E_OR_V,
		PS_F_CH_SEL_UNIT_F_LATCHED => PS_F_CH_SEL_UNIT_F_LATCHED,
		PS_F_CH_DISCON_LATCH => PS_F_CH_DISCON_LATCH,
		MS_PROGRAM_RESET => MS_PROGRAM_RESET,
		MS_BLOCK_F_CH_FILE_START_GT => MS_BLOCK_F_CH_FILE_START_GT,
		MS_COMP_DSBLE_F_CH => MS_COMP_DSBLE_F_CH);

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

   begin

   -- Your test bench code
   
   testName := "13.72.07.1        ";
   
   MS_PROGRAM_RESET <= '0';
   wait for 30 ns;
   MS_PROGRAM_RESET <= '1';
   wait for 30 ns;
   
   PS_E_CH_IN_PROCESS <= '0';
   MC_FAST_FILE_ON_LINE_F_CH <= '0';
   wait for 30 ns;
   check1(MS_BLOCK_F_CH_FILE_START_GT,'1',testName,"1A");
   PS_E_CH_IN_PROCESS <= '1';
   MC_FAST_FILE_ON_LINE_F_CH <= '1';
   wait for 30 ns;
   check1(MS_BLOCK_F_CH_FILE_START_GT,'1',testName,"1G");
   MC_FAST_FILE_ON_LINE_F_CH <= '0';
   wait for 30 ns;
   check1(MS_BLOCK_F_CH_FILE_START_GT,'0',testName,"1H");
   PS_E_CH_IN_PROCESS <= '0';
   MC_FAST_FILE_ON_LINE_F_CH <= '1';
   
   PS_F_CH_SEL_UNIT_F_LATCHED <= '1';

   PS_LOGIC_GATE_E_OR_V <= '0';
   MC_FAST_FILE_ON_LINE_F_CH <= '0';
   MC_ADDR_COMP_TRUE_F_CH <= '0';   
   wait for 30 ns;
   check1(MS_COMP_DSBLE_F_CH,'1',testName,"2A");
   PS_LOGIC_GATE_E_OR_V <= '1';
   MC_FAST_FILE_ON_LINE_F_CH <= '1';
   wait for 30 ns;
   check1(MS_COMP_DSBLE_F_CH,'1',testName,"2B");
   MC_FAST_FILE_ON_LINE_F_CH <= '0';
   MC_ADDR_COMP_TRUE_F_CH <= '1';   
   wait for 30 ns;
   check1(MS_COMP_DSBLE_F_CH,'1',testName,"2C");
   MC_ADDR_COMP_TRUE_F_CH <= '0';   
   wait for 30 ns; -- Latch should set
   PS_LOGIC_GATE_E_OR_V <= '0';
   MC_FAST_FILE_ON_LINE_F_CH <= '1';
   MC_ADDR_COMP_TRUE_F_CH <= '1';   
   wait for 30 ns; -- Latch should stay set
   check1(MS_COMP_DSBLE_F_CH,'0',testName,"2D");
   PS_F_CH_SEL_UNIT_F_LATCHED <= '0';
   wait for 30 ns; -- Reset
   PS_F_CH_SEL_UNIT_F_LATCHED <= '1';
   wait for 30 ns; -- Should stay reset
   check1(MS_COMP_DSBLE_F_CH,'1',testName,"2E");
   
   PS_LOGIC_GATE_E_OR_V <= '0';
   MC_FAST_FILE_ON_LINE_F_CH <= '0';
   PS_PERCENT_OR_COML_AT <= '1';   
   wait for 30 ns;
   check1(MS_COMP_DSBLE_F_CH,'1',testName,"3A");
   PS_LOGIC_GATE_E_OR_V <= '1';
   MC_FAST_FILE_ON_LINE_F_CH <= '1';
   wait for 30 ns;
   check1(MS_COMP_DSBLE_F_CH,'1',testName,"3B");
   MC_FAST_FILE_ON_LINE_F_CH <= '0';
   PS_PERCENT_OR_COML_AT <= '0';   
   wait for 30 ns;
   check1(MS_COMP_DSBLE_F_CH,'1',testName,"3C");
   PS_PERCENT_OR_COML_AT <= '1';   
   wait for 30 ns; -- Latch should set
   PS_LOGIC_GATE_E_OR_V <= '0';
   MC_FAST_FILE_ON_LINE_F_CH <= '1';
   PS_PERCENT_OR_COML_AT <= '0';   
   wait for 30 ns; -- Latch should stay set
   check1(MS_COMP_DSBLE_F_CH,'0',testName,"3D");
   PS_F_CH_DISCON_LATCH <= '1';
   wait for 30 ns; -- Reset
   PS_F_CH_DISCON_LATCH <= '0';
   wait for 30 ns; -- Should stay reset
   check1(MS_COMP_DSBLE_F_CH,'1',testName,"2E");

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 100 us;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

end;