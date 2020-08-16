-- Test Bench VHDL for IBM SMS ALD page 13.73.02.1
-- Title: F CH FILE CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/16/2020 9:19:54 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_73_02_1_F_CH_FILE_CONTROLS_tb is
end ALD_13_73_02_1_F_CH_FILE_CONTROLS_tb;

architecture behavioral of ALD_13_73_02_1_F_CH_FILE_CONTROLS_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_13_73_02_1_F_CH_FILE_CONTROLS
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_FILE_OP:	 in STD_LOGIC;
		PS_Q_OR_V_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_I_RING_12_TIME:	 in STD_LOGIC;
		PS_B_TO_LAST_LOGIC_GATE:	 in STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_C_OR_T:	 in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK:	 in STD_LOGIC;
		MS_F_CH_RESET_1:	 in STD_LOGIC;
		PS_BODY_LATCH:	 in STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN:	 in STD_LOGIC;
		PS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		MS_F_CH_STATUS_SAMPLE_A_DELAY:	 in STD_LOGIC;
		MC_SEEK_TEST_OP_STAR_F_CH_TO_1405:	 out STD_LOGIC;
		MC_SEEK_TEST_OP_STAR_F_CH_TO_1301:	 out STD_LOGIC;
		MC_FILE_STROBE_1ST_ADDR_STAR_F_CH:	 out STD_LOGIC;
		MC_FILE_STROBE_2ND_ADDR_STAR_F_CH:	 out STD_LOGIC;
		MC_FILE_DIGIT_ADVANCE_STAR_F_CH:	 out STD_LOGIC;
		MC_FILE_ADDR_TRF_GATE_STAR_F_CH:	 out STD_LOGIC;
		MS_F_CH_1ST_ADDR_TRANSFER:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_FILE_OP: STD_LOGIC := '0';
	signal PS_Q_OR_V_SYMBOL_OP_MODIFIER: STD_LOGIC := '0';
	signal PS_I_RING_12_TIME: STD_LOGIC := '0';
	signal PS_B_TO_LAST_LOGIC_GATE: STD_LOGIC := '0';
	signal PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_F_1: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_C_OR_T: STD_LOGIC := '1';
	signal PS_LOZENGE_OR_ASTERISK: STD_LOGIC := '0';
	signal MS_F_CH_RESET_1: STD_LOGIC := '1';
	signal PS_BODY_LATCH: STD_LOGIC := '0';
	signal PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_D_1: STD_LOGIC := '0';
	signal MS_F_CH_STATUS_SAMPLE_A_DELAY: STD_LOGIC := '1';

	-- Outputs

	signal MC_SEEK_TEST_OP_STAR_F_CH_TO_1405: STD_LOGIC;
	signal MC_SEEK_TEST_OP_STAR_F_CH_TO_1301: STD_LOGIC;
	signal MC_FILE_STROBE_1ST_ADDR_STAR_F_CH: STD_LOGIC;
	signal MC_FILE_STROBE_2ND_ADDR_STAR_F_CH: STD_LOGIC;
	signal MC_FILE_DIGIT_ADVANCE_STAR_F_CH: STD_LOGIC;
	signal MC_FILE_ADDR_TRF_GATE_STAR_F_CH: STD_LOGIC;
	signal MS_F_CH_1ST_ADDR_TRANSFER: STD_LOGIC;

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

	UUT: ALD_13_73_02_1_F_CH_FILE_CONTROLS port map(
		FPGA_CLK => FPGA_CLK,
		PS_FILE_OP => PS_FILE_OP,
		PS_Q_OR_V_SYMBOL_OP_MODIFIER => PS_Q_OR_V_SYMBOL_OP_MODIFIER,
		PS_I_RING_12_TIME => PS_I_RING_12_TIME,
		PS_B_TO_LAST_LOGIC_GATE => PS_B_TO_LAST_LOGIC_GATE,
		PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN => PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN,
		PS_LOGIC_GATE_F_1 => PS_LOGIC_GATE_F_1,
		MS_LOGIC_GATE_C_OR_T => MS_LOGIC_GATE_C_OR_T,
		PS_LOZENGE_OR_ASTERISK => PS_LOZENGE_OR_ASTERISK,
		MS_F_CH_RESET_1 => MS_F_CH_RESET_1,
		PS_BODY_LATCH => PS_BODY_LATCH,
		PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN => PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN,
		PS_LOGIC_GATE_D_1 => PS_LOGIC_GATE_D_1,
		MS_F_CH_STATUS_SAMPLE_A_DELAY => MS_F_CH_STATUS_SAMPLE_A_DELAY,
		MC_SEEK_TEST_OP_STAR_F_CH_TO_1405 => MC_SEEK_TEST_OP_STAR_F_CH_TO_1405,
		MC_SEEK_TEST_OP_STAR_F_CH_TO_1301 => MC_SEEK_TEST_OP_STAR_F_CH_TO_1301,
		MC_FILE_STROBE_1ST_ADDR_STAR_F_CH => MC_FILE_STROBE_1ST_ADDR_STAR_F_CH,
		MC_FILE_STROBE_2ND_ADDR_STAR_F_CH => MC_FILE_STROBE_2ND_ADDR_STAR_F_CH,
		MC_FILE_DIGIT_ADVANCE_STAR_F_CH => MC_FILE_DIGIT_ADVANCE_STAR_F_CH,
		MC_FILE_ADDR_TRF_GATE_STAR_F_CH => MC_FILE_ADDR_TRF_GATE_STAR_F_CH,
		MS_F_CH_1ST_ADDR_TRANSFER => MS_F_CH_1ST_ADDR_TRANSFER);

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
   
   testName := "13.73.02.1        ";

   MS_F_CH_RESET_1 <= '0';
   wait for 30 ns;
   MS_F_CH_RESET_1 <= '1';
   wait for 30 ns;
      
   check1(MC_SEEK_TEST_OP_STAR_F_CH_TO_1405,'1',testName,"1A");
   check1(MC_SEEK_TEST_OP_STAR_F_CH_TO_1301,'1',testName,"1B");   
   PS_FILE_OP <= '0';
   PS_Q_OR_V_SYMBOL_OP_MODIFIER <= '1';
   PS_LOZENGE_OR_ASTERISK <= '1';
   PS_I_RING_12_TIME <= '1';
   wait for 30 ns;
   check1(MC_SEEK_TEST_OP_STAR_F_CH_TO_1405,'1',testName,"1C");
   PS_FILE_OP <= '1';
   PS_Q_OR_V_SYMBOL_OP_MODIFIER <= '0';
   wait for 30 ns;
   check1(MC_SEEK_TEST_OP_STAR_F_CH_TO_1405,'1',testName,"1D");
   PS_Q_OR_V_SYMBOL_OP_MODIFIER <= '1';
   PS_LOZENGE_OR_ASTERISK <= '0';
   wait for 30 ns;
   check1(MC_SEEK_TEST_OP_STAR_F_CH_TO_1405,'1',testName,"1E");
   PS_LOZENGE_OR_ASTERISK <= '1';
   PS_I_RING_12_TIME <= '0';
   wait for 30 ns;
   check1(MC_SEEK_TEST_OP_STAR_F_CH_TO_1405,'1',testName,"1F");
   PS_I_RING_12_TIME <= '1';
   wait for 30 ns;
   check1(MC_SEEK_TEST_OP_STAR_F_CH_TO_1405,'0',testName,"1G");
   check1(MC_SEEK_TEST_OP_STAR_F_CH_TO_1301,'0',testName,"1H");   
   PS_FILE_OP <= '0';
   PS_Q_OR_V_SYMBOL_OP_MODIFIER <= '0';
   PS_LOZENGE_OR_ASTERISK <= '0';
   PS_I_RING_12_TIME <= '0';
   
   PS_B_TO_LAST_LOGIC_GATE <= '0';
   PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= '1';
   PS_LOZENGE_OR_ASTERISK <= '1';
   wait for 30 ns;
   check1(MC_FILE_STROBE_1ST_ADDR_STAR_F_CH,'1',testName,"2A");
   PS_B_TO_LAST_LOGIC_GATE <= '1';
   PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= '0';
   wait for 30 ns;
   check1(MC_FILE_STROBE_1ST_ADDR_STAR_F_CH,'1',testName,"2B");
   PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= '1';
   PS_LOZENGE_OR_ASTERISK <= '0';
   wait for 30 ns;
   check1(MC_FILE_STROBE_1ST_ADDR_STAR_F_CH,'1',testName,"2C");
   PS_LOZENGE_OR_ASTERISK <= '1';
   wait for 30 ns;
   check1(MC_FILE_STROBE_1ST_ADDR_STAR_F_CH,'0',testName,"2D");
   PS_B_TO_LAST_LOGIC_GATE <= '0';
   PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= '0';
   PS_LOZENGE_OR_ASTERISK <= '0';
   
   PS_LOZENGE_OR_ASTERISK <= '0';
   PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= '1';
   PS_LOGIC_GATE_F_1 <= '1';
   wait for 30 ns;   
   check1(MC_FILE_STROBE_2ND_ADDR_STAR_F_CH,'1',testName,"3A");
   PS_LOZENGE_OR_ASTERISK <= '1';
   PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= '0';
   wait for 30 ns;   
   check1(MC_FILE_STROBE_2ND_ADDR_STAR_F_CH,'1',testName,"3B");
   PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= '1';
   PS_LOGIC_GATE_F_1 <= '0';
   wait for 30 ns;   
   check1(MC_FILE_STROBE_2ND_ADDR_STAR_F_CH,'1',testName,"3C");
   PS_LOGIC_GATE_F_1 <= '1';
   wait for 30 ns; -- Latch should set
   PS_LOZENGE_OR_ASTERISK <= '0';
   PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= '0';
   PS_LOGIC_GATE_F_1 <= '0';
   wait for 30 ns; -- Latch should stay set   
   check1(MC_FILE_STROBE_2ND_ADDR_STAR_F_CH,'0',testName,"3D");
   MS_LOGIC_GATE_C_OR_T <= '0';
   wait for 30 ns; -- Latch Reset
   MS_LOGIC_GATE_C_OR_T <= '1';
   wait for 30 ns; -- Latch Should stay Reset
   check1(MC_FILE_STROBE_2ND_ADDR_STAR_F_CH,'1',testName,"3E");

   PS_LOZENGE_OR_ASTERISK <= '0';
   PS_BODY_LATCH <= '1';
   PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN <= '1';
   wait for 30 ns;
   check1(MC_FILE_DIGIT_ADVANCE_STAR_F_CH,'1',testName,"4A");
   PS_LOZENGE_OR_ASTERISK <= '1';
   PS_BODY_LATCH <= '0';
   wait for 30 ns;
   check1(MC_FILE_DIGIT_ADVANCE_STAR_F_CH,'1',testName,"4B");
   PS_BODY_LATCH <= '1';
   PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN <= '0';
   wait for 30 ns;
   check1(MC_FILE_DIGIT_ADVANCE_STAR_F_CH,'1',testName,"4C");
   PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN <= '1';
   wait for 30 ns;
   check1(MC_FILE_DIGIT_ADVANCE_STAR_F_CH,'0',testName,"4D");
   PS_LOZENGE_OR_ASTERISK <= '0';
   PS_BODY_LATCH <= '0';
   PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN <= '0';
   
   PS_LOZENGE_OR_ASTERISK <= '0';
   PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN <= '1';
   PS_LOGIC_GATE_D_1 <= '1';
   wait for 30 ns;
   check1(MC_FILE_ADDR_TRF_GATE_STAR_F_CH,'1',testName,"5A");
   check1(MS_F_CH_1ST_ADDR_TRANSFER,'1',testName,"5B");
   PS_LOZENGE_OR_ASTERISK <= '1';
   PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN <= '0';
   wait for 30 ns;
   check1(MC_FILE_ADDR_TRF_GATE_STAR_F_CH,'1',testName,"5C");
   PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN <= '1';
   PS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MC_FILE_ADDR_TRF_GATE_STAR_F_CH,'1',testName,"5D");
   PS_LOGIC_GATE_D_1 <= '1';
   wait for 30 ns;  -- Set Latch
   PS_LOZENGE_OR_ASTERISK <= '0';
   PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN <= '0';
   PS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;  -- Latch should stay set
   check1(MC_FILE_ADDR_TRF_GATE_STAR_F_CH,'0',testName,"5E");
   MS_F_CH_STATUS_SAMPLE_A_DELAY <= '0';
   wait for 30 ns; -- Reset latch
   MS_F_CH_STATUS_SAMPLE_A_DELAY <= '1';
   wait for 30 ns; -- Latch should stay reset
   check1(MC_FILE_ADDR_TRF_GATE_STAR_F_CH,'1',testName,"5G");


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
