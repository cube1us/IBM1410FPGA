-- Test Bench VHDL for IBM SMS ALD page 13.74.02.1
-- Title: FILE CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/17/2020 12:26:02 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_74_02_1_FILE_CONTROLS_tb is
end ALD_13_74_02_1_FILE_CONTROLS_tb;

architecture behavioral of ALD_13_74_02_1_FILE_CONTROLS_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_13_74_02_1_FILE_CONTROLS
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ERROR_SAMPLE:	 in STD_LOGIC;
		PS_FILE_OP:	 in STD_LOGIC;
		PS_I_RING_6_TIME:	 in STD_LOGIC;
		MS_E_CH_SELECT_AND_R_B_C_ON:	 in STD_LOGIC;
		MS_F_CH_SELECT_AND_RBC_ON:	 in STD_LOGIC;
		MC_E_CH_FILE_DIGIT_RING_7:	 in STD_LOGIC;
		MS_PERCENT_OR_COML_AT:	 in STD_LOGIC;
		MC_F_CH_FILE_DIGIT_RING_7:	 in STD_LOGIC;
		MS_LOZENGE_OR_ASTERISK:	 in STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_E_CH_STATUS_SAMPLE_A_DELAY:	 in STD_LOGIC;
		MS_F_CH_STATUS_SAMPLE_A_DELAY:	 in STD_LOGIC;
		MS_PROGRAM_RESET_3:	 in STD_LOGIC;
		MS_RBC_INLK_CHECK:	 out STD_LOGIC;
		PS_FILE_RING_7_LATCH:	 out STD_LOGIC;
		MS_FILE_RING_7_LATCH:	 out STD_LOGIC;
		LAMP_15A1E21:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_ERROR_SAMPLE: STD_LOGIC := '0';
	signal PS_FILE_OP: STD_LOGIC := '0';
	signal PS_I_RING_6_TIME: STD_LOGIC := '0';
	signal MS_E_CH_SELECT_AND_R_B_C_ON: STD_LOGIC := '1';
	signal MS_F_CH_SELECT_AND_RBC_ON: STD_LOGIC := '1';
	signal MC_E_CH_FILE_DIGIT_RING_7: STD_LOGIC := '1';
	signal MS_PERCENT_OR_COML_AT: STD_LOGIC := '1';
	signal MC_F_CH_FILE_DIGIT_RING_7: STD_LOGIC := '1';
	signal MS_LOZENGE_OR_ASTERISK: STD_LOGIC := '1';
	signal PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_F_1: STD_LOGIC := '0';
	signal MS_E_CH_STATUS_SAMPLE_A_DELAY: STD_LOGIC := '1';
	signal MS_F_CH_STATUS_SAMPLE_A_DELAY: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_3: STD_LOGIC := '1';

	-- Outputs

	signal MS_RBC_INLK_CHECK: STD_LOGIC;
	signal PS_FILE_RING_7_LATCH: STD_LOGIC;
	signal MS_FILE_RING_7_LATCH: STD_LOGIC;
	signal LAMP_15A1E21: STD_LOGIC;

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

	UUT: ALD_13_74_02_1_FILE_CONTROLS port map(
		FPGA_CLK => FPGA_CLK,
		PS_ERROR_SAMPLE => PS_ERROR_SAMPLE,
		PS_FILE_OP => PS_FILE_OP,
		PS_I_RING_6_TIME => PS_I_RING_6_TIME,
		MS_E_CH_SELECT_AND_R_B_C_ON => MS_E_CH_SELECT_AND_R_B_C_ON,
		MS_F_CH_SELECT_AND_RBC_ON => MS_F_CH_SELECT_AND_RBC_ON,
		MC_E_CH_FILE_DIGIT_RING_7 => MC_E_CH_FILE_DIGIT_RING_7,
		MS_PERCENT_OR_COML_AT => MS_PERCENT_OR_COML_AT,
		MC_F_CH_FILE_DIGIT_RING_7 => MC_F_CH_FILE_DIGIT_RING_7,
		MS_LOZENGE_OR_ASTERISK => MS_LOZENGE_OR_ASTERISK,
		PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN => PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN,
		PS_LOGIC_GATE_F_1 => PS_LOGIC_GATE_F_1,
		MS_E_CH_STATUS_SAMPLE_A_DELAY => MS_E_CH_STATUS_SAMPLE_A_DELAY,
		MS_F_CH_STATUS_SAMPLE_A_DELAY => MS_F_CH_STATUS_SAMPLE_A_DELAY,
		MS_PROGRAM_RESET_3 => MS_PROGRAM_RESET_3,
		MS_RBC_INLK_CHECK => MS_RBC_INLK_CHECK,
		PS_FILE_RING_7_LATCH => PS_FILE_RING_7_LATCH,
		MS_FILE_RING_7_LATCH => MS_FILE_RING_7_LATCH,
		LAMP_15A1E21 => LAMP_15A1E21);

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
   
   testName := "13.74.02.1        ";
   
   wait for 30 ns;
   check1(MS_RBC_INLK_CHECK,'1',testName,"1A");
   check1(LAMP_15A1E21,'0',testName,"1B");
   
   PS_ERROR_SAMPLE <= '0';
   PS_FILE_OP <= '1';
   PS_I_RING_6_TIME <= '1';
   MS_E_CH_SELECT_AND_R_B_C_ON <= '0';
   MS_F_CH_SELECT_AND_RBC_ON <= '0';
   wait for 30 ns;
   check1(MS_RBC_INLK_CHECK,'1',testName,"1C");
   PS_ERROR_SAMPLE <= '1';
   PS_FILE_OP <= '0';
   wait for 30 ns;
   check1(MS_RBC_INLK_CHECK,'1',testName,"1D");
   PS_FILE_OP <= '1';
   PS_I_RING_6_TIME <= '0';
   wait for 30 ns;
   check1(MS_RBC_INLK_CHECK,'1',testName,"1E");
   PS_I_RING_6_TIME <= '1';
   MS_E_CH_SELECT_AND_R_B_C_ON <= '1';
   MS_F_CH_SELECT_AND_RBC_ON <= '1';
   wait for 30 ns;
   check1(MS_RBC_INLK_CHECK,'1',testName,"1F");
   MS_E_CH_SELECT_AND_R_B_C_ON <= '0';
   MS_F_CH_SELECT_AND_RBC_ON <= '1';
   wait for 30 ns;
   check1(MS_RBC_INLK_CHECK,'0',testName,"1G");
   check1(LAMP_15A1E21,'1',testName,"1H");
   MS_E_CH_SELECT_AND_R_B_C_ON <= '1';
   MS_F_CH_SELECT_AND_RBC_ON <= '0';
   wait for 30 ns;
   check1(MS_RBC_INLK_CHECK,'0',testName,"1I");
   PS_ERROR_SAMPLE <= '0';
   PS_FILE_OP <= '0';
   PS_I_RING_6_TIME <= '0';
   MS_E_CH_SELECT_AND_R_B_C_ON <= '1';
   MS_F_CH_SELECT_AND_RBC_ON <= '1';
   
   MS_PROGRAM_RESET_3 <= '0';
   wait for 30 ns;
   MS_PROGRAM_RESET_3 <= '1';
   wait for 30 ns;   
   check1(PS_FILE_RING_7_LATCH,'0',testName,"2A");
   check1(MS_FILE_RING_7_LATCH,'1',testName,"2B");
   
   PS_LOGIC_GATE_F_1 <= '0';
   PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= '1';
   MC_E_CH_FILE_DIGIT_RING_7 <= '0';
   MS_PERCENT_OR_COML_AT <= '0';
   MC_F_CH_FILE_DIGIT_RING_7 <= '1';
   MS_LOZENGE_OR_ASTERISK <= '1';
   wait for 30 ns;
   check1(PS_FILE_RING_7_LATCH,'0',testName,"2C");
   PS_LOGIC_GATE_F_1 <= '1';
   PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= '0';
   wait for 30 ns;
   check1(PS_FILE_RING_7_LATCH,'0',testName,"2D");
   PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= '1';
   MC_E_CH_FILE_DIGIT_RING_7 <= '1';
   wait for 30 ns;
   check1(PS_FILE_RING_7_LATCH,'0',testName,"2E");
   MC_E_CH_FILE_DIGIT_RING_7 <= '0';
   MS_PERCENT_OR_COML_AT <= '1';
   wait for 30 ns;
   check1(PS_FILE_RING_7_LATCH,'0',testName,"2F");
   MC_E_CH_FILE_DIGIT_RING_7 <= '0';
   MS_PERCENT_OR_COML_AT <= '0';
   wait for 30 ns; -- Latch should set
   MC_E_CH_FILE_DIGIT_RING_7 <= '1';
   MS_PERCENT_OR_COML_AT <= '1';   
   wait for 30 ns; -- Latch stays set
   check1(PS_FILE_RING_7_LATCH,'1',testName,"2G");
   check1(MS_FILE_RING_7_LATCH,'0',testName,"2H");

   MS_E_CH_STATUS_SAMPLE_A_DELAY <= '0';
   wait for 30 ns; -- Latch resets   
   MS_E_CH_STATUS_SAMPLE_A_DELAY <= '1';
   wait for 30 ns; -- Latch stays reset
   check1(PS_FILE_RING_7_LATCH,'0',testName,"2I");

   MC_F_CH_FILE_DIGIT_RING_7 <= '1';
   MS_LOZENGE_OR_ASTERISK <= '1';   
   wait for 30 ns;
   check1(PS_FILE_RING_7_LATCH,'0',testName,"2J");
   MC_F_CH_FILE_DIGIT_RING_7 <= '0';
   MS_LOZENGE_OR_ASTERISK <= '1';
   wait for 30 ns;
   check1(PS_FILE_RING_7_LATCH,'0',testName,"2K");
   MC_F_CH_FILE_DIGIT_RING_7 <= '1';
   MS_LOZENGE_OR_ASTERISK <= '0';
   wait for 30 ns;
   check1(PS_FILE_RING_7_LATCH,'0',testName,"2L");
   MC_F_CH_FILE_DIGIT_RING_7 <= '0';
   MS_LOZENGE_OR_ASTERISK <= '0';
   wait for 30 ns; -- Latch should set
   MC_F_CH_FILE_DIGIT_RING_7 <= '1';
   MS_LOZENGE_OR_ASTERISK <= '1';   
   wait for 30 ns; -- Latch stays set
   check1(PS_FILE_RING_7_LATCH,'1',testName,"2M");
   
   MS_F_CH_STATUS_SAMPLE_A_DELAY <= '0';
   wait for 30 ns; -- Latch resets
   MS_F_CH_STATUS_SAMPLE_A_DELAY <= '1';
   wait for 30 ns; -- Latch stays reset
   check1(PS_FILE_RING_7_LATCH,'0',testName,"2N");
   
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