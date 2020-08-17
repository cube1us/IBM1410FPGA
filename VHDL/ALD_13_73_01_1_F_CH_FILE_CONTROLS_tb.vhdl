-- Test Bench VHDL for IBM SMS ALD page 13.73.01.1
-- Title: F CH FILE CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/17/2020 4:41:04 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_73_01_1_F_CH_FILE_CONTROLS_tb is
end ALD_13_73_01_1_F_CH_FILE_CONTROLS_tb;

architecture behavioral of ALD_13_73_01_1_F_CH_FILE_CONTROLS_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_13_73_01_1_F_CH_FILE_CONTROLS
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_MASTER_ERROR:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_CLAMPED_A:	 in STD_LOGIC;
		MS_F_CH_INPUT_MODE_STAR_1301_STAR:	 in STD_LOGIC;
		MS_F_CH_UNIT_NUMBER_9:	 in STD_LOGIC;
		MS_F_CH_INPUT_MODE_STAR_1311_STAR:	 in STD_LOGIC;
		PS_F_CH_IN_PROCESS:	 in STD_LOGIC;
		PS_F_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		PS_Q_OR_V_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_A_DELAY:	 in STD_LOGIC;
		PS_F_CH_NO_STATUS_ON:	 in STD_LOGIC;
		MS_1ST_DATA_STROBE_LATCH_CH_F:	 in STD_LOGIC;
		MS_BLOCK_F_CH_FILE_START_GT:	 in STD_LOGIC;
		PS_ANY_LAST_GATE:	 in STD_LOGIC;
		PS_F_CYCLE:	 in STD_LOGIC;
		MS_F2_REG_FULL:	 in STD_LOGIC;
		MS_F_CH_RESET:	 in STD_LOGIC;
		MS_LOGIC_GATE_B_OR_S:	 in STD_LOGIC;
		PS_F_CH_END_ADDR_TRF_1301:	 in STD_LOGIC;
		PS_F_CH_INT_END_OF_XFER_DELAYED:	 in STD_LOGIC;
		MS_F_CH_UNIT_NUMBER_4:	 in STD_LOGIC;
		MS_F1_REG_FULL:	 in STD_LOGIC;
		MS_1311_F_CH_END_ADDR_TRF:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_CLAMPED_A:	 in STD_LOGIC;
		PS_LOGIC_GATE_E_OR_V:	 in STD_LOGIC;
		PS_F_CH_2ND_ADDR_TRF:	 out STD_LOGIC;
		MS_COMP_DISABLE_CYCLE_STAR_FILE_F_CH:	 out STD_LOGIC;
		MS_F_CH_2ND_ADDR_TRF:	 out STD_LOGIC;
		MC_1301_START_GATE_STAR_F_CH:	 out STD_LOGIC;
		MC_1405_START_GATE_STAR_F_CH:	 out STD_LOGIC;
		MS_F_CH_1ST_CHAR_2ND_ADDR:	 out STD_LOGIC;
		PS_F_CH_END_OF_2ND_ADDR_TRF:	 out STD_LOGIC;
		MS_F_CH_END_OF_2ND_ADDR_TRF:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_MASTER_ERROR: STD_LOGIC := '1';
	signal PS_2ND_CLOCK_PULSE_CLAMPED_A: STD_LOGIC := '0';
	signal MS_F_CH_INPUT_MODE_STAR_1301_STAR: STD_LOGIC := '1';
	signal MS_F_CH_UNIT_NUMBER_9: STD_LOGIC := '1';
	signal MS_F_CH_INPUT_MODE_STAR_1311_STAR: STD_LOGIC := '1';
	signal PS_F_CH_IN_PROCESS: STD_LOGIC := '0';
	signal PS_F_CH_SELECT_UNIT_F: STD_LOGIC := '0';
	signal PS_Q_OR_V_SYMBOL_OP_MODIFIER: STD_LOGIC := '0';
	signal PS_F_CH_STATUS_SAMPLE_A_DELAY: STD_LOGIC := '0';
	signal PS_F_CH_NO_STATUS_ON: STD_LOGIC := '0';
	signal MS_1ST_DATA_STROBE_LATCH_CH_F: STD_LOGIC := '1';
	signal MS_BLOCK_F_CH_FILE_START_GT: STD_LOGIC := '1';
	signal PS_ANY_LAST_GATE: STD_LOGIC := '0';
	signal PS_F_CYCLE: STD_LOGIC := '0';
	signal MS_F2_REG_FULL: STD_LOGIC := '1';
	signal MS_F_CH_RESET: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_B_OR_S: STD_LOGIC := '1';
	signal PS_F_CH_END_ADDR_TRF_1301: STD_LOGIC := '0';
	signal PS_F_CH_INT_END_OF_XFER_DELAYED: STD_LOGIC := '0';
	signal MS_F_CH_UNIT_NUMBER_4: STD_LOGIC := '1';
	signal MS_F1_REG_FULL: STD_LOGIC := '1';
	signal MS_1311_F_CH_END_ADDR_TRF: STD_LOGIC := '1';
	signal PS_1ST_CLOCK_PULSE_CLAMPED_A: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_E_OR_V: STD_LOGIC := '0';

	-- Outputs

	signal PS_F_CH_2ND_ADDR_TRF: STD_LOGIC;
	signal MS_COMP_DISABLE_CYCLE_STAR_FILE_F_CH: STD_LOGIC;
	signal MS_F_CH_2ND_ADDR_TRF: STD_LOGIC;
	signal MC_1301_START_GATE_STAR_F_CH: STD_LOGIC;
	signal MC_1405_START_GATE_STAR_F_CH: STD_LOGIC;
	signal MS_F_CH_1ST_CHAR_2ND_ADDR: STD_LOGIC;
	signal PS_F_CH_END_OF_2ND_ADDR_TRF: STD_LOGIC;
	signal MS_F_CH_END_OF_2ND_ADDR_TRF: STD_LOGIC;

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

	UUT: ALD_13_73_01_1_F_CH_FILE_CONTROLS port map(
		FPGA_CLK => FPGA_CLK,
		MS_MASTER_ERROR => MS_MASTER_ERROR,
		PS_2ND_CLOCK_PULSE_CLAMPED_A => PS_2ND_CLOCK_PULSE_CLAMPED_A,
		MS_F_CH_INPUT_MODE_STAR_1301_STAR => MS_F_CH_INPUT_MODE_STAR_1301_STAR,
		MS_F_CH_UNIT_NUMBER_9 => MS_F_CH_UNIT_NUMBER_9,
		MS_F_CH_INPUT_MODE_STAR_1311_STAR => MS_F_CH_INPUT_MODE_STAR_1311_STAR,
		PS_F_CH_IN_PROCESS => PS_F_CH_IN_PROCESS,
		PS_F_CH_SELECT_UNIT_F => PS_F_CH_SELECT_UNIT_F,
		PS_Q_OR_V_SYMBOL_OP_MODIFIER => PS_Q_OR_V_SYMBOL_OP_MODIFIER,
		PS_F_CH_STATUS_SAMPLE_A_DELAY => PS_F_CH_STATUS_SAMPLE_A_DELAY,
		PS_F_CH_NO_STATUS_ON => PS_F_CH_NO_STATUS_ON,
		MS_1ST_DATA_STROBE_LATCH_CH_F => MS_1ST_DATA_STROBE_LATCH_CH_F,
		MS_BLOCK_F_CH_FILE_START_GT => MS_BLOCK_F_CH_FILE_START_GT,
		PS_ANY_LAST_GATE => PS_ANY_LAST_GATE,
		PS_F_CYCLE => PS_F_CYCLE,
		MS_F2_REG_FULL => MS_F2_REG_FULL,
		MS_F_CH_RESET => MS_F_CH_RESET,
		MS_LOGIC_GATE_B_OR_S => MS_LOGIC_GATE_B_OR_S,
		PS_F_CH_END_ADDR_TRF_1301 => PS_F_CH_END_ADDR_TRF_1301,
		PS_F_CH_INT_END_OF_XFER_DELAYED => PS_F_CH_INT_END_OF_XFER_DELAYED,
		MS_F_CH_UNIT_NUMBER_4 => MS_F_CH_UNIT_NUMBER_4,
		MS_F1_REG_FULL => MS_F1_REG_FULL,
		MS_1311_F_CH_END_ADDR_TRF => MS_1311_F_CH_END_ADDR_TRF,
		PS_1ST_CLOCK_PULSE_CLAMPED_A => PS_1ST_CLOCK_PULSE_CLAMPED_A,
		PS_LOGIC_GATE_E_OR_V => PS_LOGIC_GATE_E_OR_V,
		PS_F_CH_2ND_ADDR_TRF => PS_F_CH_2ND_ADDR_TRF,
		MS_COMP_DISABLE_CYCLE_STAR_FILE_F_CH => MS_COMP_DISABLE_CYCLE_STAR_FILE_F_CH,
		MS_F_CH_2ND_ADDR_TRF => MS_F_CH_2ND_ADDR_TRF,
		MC_1301_START_GATE_STAR_F_CH => MC_1301_START_GATE_STAR_F_CH,
		MC_1405_START_GATE_STAR_F_CH => MC_1405_START_GATE_STAR_F_CH,
		MS_F_CH_1ST_CHAR_2ND_ADDR => MS_F_CH_1ST_CHAR_2ND_ADDR,
		PS_F_CH_END_OF_2ND_ADDR_TRF => PS_F_CH_END_OF_2ND_ADDR_TRF,
		MS_F_CH_END_OF_2ND_ADDR_TRF => MS_F_CH_END_OF_2ND_ADDR_TRF);

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

   testName := "13.72.01.1        ";
   
   wait for 30 ns;
   PS_F_CH_SELECT_UNIT_F <= '0';
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   
   check1(MC_1405_START_GATE_STAR_F_CH,'1',testName,"1A");
   check1(MC_1301_START_GATE_STAR_F_CH,'1',testName,"1B");

   MS_MASTER_ERROR <= '1';
   MS_1ST_DATA_STROBE_LATCH_CH_F <= '1';
   wait for 30 ns;
   MS_BLOCK_F_CH_FILE_START_GT <= '1';
   wait for 30 ns;
   MS_F2_REG_FULL <= '1';
   MS_F_CH_UNIT_NUMBER_9 <= '1';
   wait for 30 ns;
   MS_F_CH_UNIT_NUMBER_4 <= '1';
   wait for 30 ns;
   MS_F_CH_INPUT_MODE_STAR_1301_STAR <= '1';
   wait for 30 ns;   
   PS_F_CH_IN_PROCESS <= '1'; 
   wait for 30 ns;
   PS_F_CH_SELECT_UNIT_F <= '1';
   wait for 30 ns;   
   check1(MC_1405_START_GATE_STAR_F_CH,'1',testName,"1C");
   
   MS_F_CH_UNIT_NUMBER_9 <= '0';
   wait for 30 ns;
   MS_F_CH_UNIT_NUMBER_9 <= '1';
   wait for 30 ns;
   check1(MC_1405_START_GATE_STAR_F_CH,'0',testName,"1D");
   PS_F_CH_SELECT_UNIT_F <= '0';
   wait for 30 ns;
   PS_F_CH_SELECT_UNIT_F <= '1';
   wait for 30 ns;
   check1(MC_1405_START_GATE_STAR_F_CH,'1',testName,"1E");
   
   MS_F_CH_UNIT_NUMBER_4 <= '0';
   wait for 30 ns;
   MS_F_CH_UNIT_NUMBER_4 <= '1';
   wait for 30 ns;
   check1(MC_1405_START_GATE_STAR_F_CH,'0',testName,"1F");
   MS_MASTER_ERROR <= '0';
   wait for 30 ns;
   MS_MASTER_ERROR <= '1';
   wait for 30 ns;
   check1(MC_1405_START_GATE_STAR_F_CH,'1',testName,"1G");
   
   -- Need to set both of them...
   MS_F_CH_INPUT_MODE_STAR_1301_STAR <= '0';
   MS_F_CH_INPUT_MODE_STAR_1311_STAR <= '0';
   wait for 30 ns;
   MS_F_CH_INPUT_MODE_STAR_1301_STAR <= '1';
   MS_F_CH_INPUT_MODE_STAR_1311_STAR <= '1';   
   wait for 30 ns;
   check1(MC_1405_START_GATE_STAR_F_CH,'0',testName,"1H");
   PS_F_CH_IN_PROCESS <= '0';
   wait for 30 ns;
   PS_F_CH_IN_PROCESS <= '1';
   wait for 30 ns;
   check1(MC_1405_START_GATE_STAR_F_CH,'1',testName,"1I");
   
   MS_F2_REG_FULL <= '0';
   wait for 30 ns;
   MS_F2_REG_FULL <= '1';
   wait for 30 ns;
   check1(MC_1405_START_GATE_STAR_F_CH,'0',testName,"1J");
   MS_1ST_DATA_STROBE_LATCH_CH_F <= '0';
   wait for 30 ns;
   MS_1ST_DATA_STROBE_LATCH_CH_F <= '1';
   wait for 30 ns;
   check1(MC_1405_START_GATE_STAR_F_CH,'1',testName,"1K");

   MS_F2_REG_FULL <= '0';
   wait for 30 ns;
   MS_F2_REG_FULL <= '1';
   wait for 30 ns;
   check1(MC_1405_START_GATE_STAR_F_CH,'0',testName,"1J");
   MS_BLOCK_F_CH_FILE_START_GT <= '0';
   wait for 30 ns;
   MS_BLOCK_F_CH_FILE_START_GT <= '1';
   wait for 30 ns;
   check1(MC_1405_START_GATE_STAR_F_CH,'1',testName,"1K");

   PS_F_CH_SELECT_UNIT_F <= '0';
   PS_F_CH_IN_PROCESS <= '0';
   MS_F_CH_INPUT_MODE_STAR_1301_STAR <= '0';
      
   -- Test E Ch 2nd Addr TRF
      
   PS_F_CH_STATUS_SAMPLE_A_DELAY <= '0';
   PS_F_CH_NO_STATUS_ON <= '1';
   PS_F_CH_SELECT_UNIT_F <= '1';
   MS_F_CH_UNIT_NUMBER_4 <= '1';
   wait for 30 ns;
   check1(PS_F_CH_2ND_ADDR_TRF,'0',testname,"4A");
   check1(MS_F_CH_2ND_ADDR_TRF,'1',testname,"4B");
   PS_F_CH_STATUS_SAMPLE_A_DELAY <= '1';
   PS_F_CH_NO_STATUS_ON <= '0';
   wait for 30 ns;
   check1(PS_F_CH_2ND_ADDR_TRF,'0',testname,"4C");
   PS_F_CH_NO_STATUS_ON <= '1';
   PS_F_CH_SELECT_UNIT_F <= '0';
   wait for 30 ns;
   check1(PS_F_CH_2ND_ADDR_TRF,'0',testname,"4D");
   PS_F_CH_SELECT_UNIT_F <= '1';
   MS_F_CH_UNIT_NUMBER_4 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_2ND_ADDR_TRF,'0',testname,"4E");
   MS_F_CH_UNIT_NUMBER_4 <= '1';
   wait for 30 ns; -- Set latch
   check1(PS_F_CH_2ND_ADDR_TRF,'1',testname,"4F");
   check1(MS_F_CH_2ND_ADDR_TRF,'0',testname,"4G");
   PS_F_CH_STATUS_SAMPLE_A_DELAY <= '0';
   wait for 30 ns; -- Latch stays set
   check1(PS_F_CH_2ND_ADDR_TRF,'1',testname,"4H");
   check1(MS_F_CH_2ND_ADDR_TRF,'0',testname,"4I");
   
   -- Test E Ch 1st Char 2nd Addr
 
   PS_LOGIC_GATE_E_OR_V <= '0';
   PS_F_CYCLE <= '1';
   wait for 30 ns;
   check1(MS_F_CH_1ST_CHAR_2ND_ADDR,'1',testName,"5A");
   PS_LOGIC_GATE_E_OR_V <= '1';
   PS_F_CYCLE <= '0';
   wait for 30 ns;
   check1(MS_F_CH_1ST_CHAR_2ND_ADDR,'1',testName,"5B");
   PS_F_CYCLE <= '1';
   wait for 30 ns;
   check1(MS_F_CH_1ST_CHAR_2ND_ADDR,'0',testName,"5C");  
   PS_LOGIC_GATE_E_OR_V <= '0'; 
   
   -- Reset the latch output 3D pin P
   
   PS_ANY_LAST_GATE <= '1';
   wait for 30 ns;       
   PS_ANY_LAST_GATE <= '0';
   wait for 30 ns;       
   check1(MS_F_CH_1ST_CHAR_2ND_ADDR,'0',testName,"5D");   
   
   -- Now reset 1st Char 2nd Addr Latch
   
   MS_LOGIC_GATE_B_OR_S <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_B_OR_S <= '1';
   wait for 30 ns;
   check1(MS_F_CH_1ST_CHAR_2ND_ADDR,'1',testName,"5E");   
   
   wait for 30 ns;      
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 30 ns;
   wait for 30 ns;      
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 30 ns;
   
   check1(MS_F_CH_END_OF_2ND_ADDR_TRF,'1',testName,"6A");
   check1(PS_F_CH_2ND_ADDR_TRF,'1',testname,"6B");   
   
   -- Test 1311 (I think) end of 2nd address transfer   
   
   MS_1311_F_CH_END_ADDR_TRF <= '0';   
   wait for 30 ns;      
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;
   check1(MS_F_CH_END_OF_2ND_ADDR_TRF,'0',testName,"6C");
   check1(PS_F_CH_2ND_ADDR_TRF,'0',testname,"6D");   
   
   -- Because the End of Addr TRF signal from the 1311 is
   -- NOT qualified by 2ND ADDR TRF, it has to be released
   -- or END 2nd Addr TRF just bounces up and down
   
   MS_1311_F_CH_END_ADDR_TRF <= '1';   

   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   
   check1(MS_F_CH_END_OF_2ND_ADDR_TRF,'1',testName,"6E");
   check1(PS_F_CH_2ND_ADDR_TRF,'0',testname,"6F");  
   
   -- Set 2nd Addr TRF again
   
   PS_F_CH_STATUS_SAMPLE_A_DELAY <= '1';
   PS_F_CH_NO_STATUS_ON <= '1';
   PS_F_CH_SELECT_UNIT_F <= '1';
   MS_F_CH_UNIT_NUMBER_4 <= '1';
   wait for 30 ns;
   check1(MS_F_CH_END_OF_2ND_ADDR_TRF,'1',testName,"7A");
   check1(PS_F_CH_2ND_ADDR_TRF,'1',testname,"7B");
   PS_F_CH_STATUS_SAMPLE_A_DELAY <= '0';     
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   check1(MS_F_CH_END_OF_2ND_ADDR_TRF,'1',testName,"7C");
   check1(PS_F_CH_2ND_ADDR_TRF,'1',testname,"7D");  

   -- Test 1301 End of transfer.  First test with it not present
   
   PS_F_CH_INT_END_OF_XFER_DELAYED <= '1';
   MS_F_CH_UNIT_NUMBER_4 <= '1';
   MS_F1_REG_FULL <= '1';
   MS_F2_REG_FULL <= '1';
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   check1(MS_F_CH_END_OF_2ND_ADDR_TRF,'1',testName,"7E");
   check1(PS_F_CH_2ND_ADDR_TRF,'1',testname,"7F");  

   -- Now change all but the 1301 signal to 0, and turn that on
   -- (NOT sufficient to end 2nd addr trf - that just STARTS the process
   -- to end the 2nd Addr TRF)               

   PS_F_CH_INT_END_OF_XFER_DELAYED <= '0';
   MS_F_CH_UNIT_NUMBER_4 <= '0';
   MS_F1_REG_FULL <= '0';
   MS_F2_REG_FULL <= '0';
   PS_F_CH_END_ADDR_TRF_1301 <= '1';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   PS_F_CH_END_ADDR_TRF_1301 <= '0';
   wait for 90 ns;
   check1(MS_F_CH_END_OF_2ND_ADDR_TRF,'1',testName,"7G");
   check1(PS_F_CH_2ND_ADDR_TRF,'1',testname,"7H");  

   PS_F_CH_INT_END_OF_XFER_DELAYED <= '0';
   MS_F_CH_UNIT_NUMBER_4 <= '1';
   MS_F1_REG_FULL <= '1';
   MS_F2_REG_FULL <= '1';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   check1(MS_F_CH_END_OF_2ND_ADDR_TRF,'1',testName,"7I");
   check1(PS_F_CH_2ND_ADDR_TRF,'1',testname,"7J");  

   PS_F_CH_INT_END_OF_XFER_DELAYED <= '1';
   MS_F_CH_UNIT_NUMBER_4 <= '0';
   MS_F1_REG_FULL <= '1';
   MS_F2_REG_FULL <= '1';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   check1(MS_F_CH_END_OF_2ND_ADDR_TRF,'1',testName,"7K");
   check1(PS_F_CH_2ND_ADDR_TRF,'1',testname,"7L");
   
   PS_F_CH_INT_END_OF_XFER_DELAYED <= '1';
   MS_F_CH_UNIT_NUMBER_4 <= '1';
   MS_F1_REG_FULL <= '0';
   MS_F2_REG_FULL <= '1';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   check1(MS_F_CH_END_OF_2ND_ADDR_TRF,'1',testName,"7M");
   check1(PS_F_CH_2ND_ADDR_TRF,'1',testname,"7N");
   
   PS_F_CH_INT_END_OF_XFER_DELAYED <= '1';
   MS_F_CH_UNIT_NUMBER_4 <= '1';
   MS_F1_REG_FULL <= '1';
   MS_F2_REG_FULL <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   check1(MS_F_CH_END_OF_2ND_ADDR_TRF,'1',testName,"7O");
   check1(PS_F_CH_2ND_ADDR_TRF,'1',testname,"7P");  

   -- NOW let it reset     

   MS_F2_REG_FULL <= '1';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   check1(MS_F_CH_END_OF_2ND_ADDR_TRF,'1',testName,"7Q");
   check1(PS_F_CH_2ND_ADDR_TRF,'0',testname,"7R");  
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED_A <= '1';
   wait for 90 ns;   


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
