-- Test BenchVHDL for IBM SMS ALD group EChannelStatus
-- Title: EChannelStatus
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 7/16/2020 1:57:57 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity EChannelStatus_tb is
end EChannelStatus_tb;

architecture behavioral of EChannelStatus_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component EChannelStatus
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MC_1301_READY_E_CH: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_F: in STD_LOGIC;
		MC_1405_READY_E_CH: in STD_LOGIC;
		MC_BUFFER_READY: in STD_LOGIC;
		MS_E_CH_SELECT_ANY_BUFFER: in STD_LOGIC;
		PS_E_CH_READY_BUS_STAR_SIF: in STD_LOGIC;
		PS_E_CH_READY_BUS_STAR_1412_19: in STD_LOGIC;
		MC_TAPE_READY: in STD_LOGIC;
		MS_E_CH_SELECT_TAPE_DATA: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_T: in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_A: in STD_LOGIC;
		MS_E_CH_RESET: in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_B: in STD_LOGIC;
		PS_E_CH_2ND_ADDR_TRF: in STD_LOGIC;
		MC_BUFFER_READY_JRJ: in STD_LOGIC;
		PS_LOGIC_GATE_C_1: in STD_LOGIC;
		MC_SELECT_AND_REWIND_STAR_E_CH: in STD_LOGIC;
		MC_1301_BUSY_E_CH: in STD_LOGIC;
		PS_E_CH_BUSY_BUS_STAR_1412_19: in STD_LOGIC;
		MC_1405_BUSY_E_CH: in STD_LOGIC;
		MC_BUFFER_BUSY: in STD_LOGIC;
		MC_BUFFER_BUSY_JRJ: in STD_LOGIC;
		MC_TAPE_BUSY: in STD_LOGIC;
		MS_CONSOLE_HOME_POSITION: in STD_LOGIC;
		PS_W_OR_X_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_T: in STD_LOGIC;
		PS_PERCENT_OR_COML_AT: in STD_LOGIC;
		PS_E_CH_SELECT_TAPE_DATA: in STD_LOGIC;
		MS_1401_MODE: in STD_LOGIC;
		MC_1301_ERROR_E_CH: in STD_LOGIC;
		MC_1405_ERROR_E_CH: in STD_LOGIC;
		MC_BUFFER_ERROR: in STD_LOGIC;
		MC_BUFFER_ERROR_JRJ: in STD_LOGIC;
		PS_E_CH_CHECK_BUS_STAR_SIF: in STD_LOGIC;
		PS_E_CH_CHECK_BUS_STAR_1412_19: in STD_LOGIC;
		MC_TAPE_ERROR: in STD_LOGIC;
		MC_1301_E_CH_CONDITION: in STD_LOGIC;
		MC_1405_CONDITION_E_CH: in STD_LOGIC;
		MC_BUFFER_CONDITION: in STD_LOGIC;
		MC_BUFFER_CONDITION_JRJ: in STD_LOGIC;
		MC_SEL_OR_TAPE_IND_ON_CH_1: in STD_LOGIC;
		PS_1401_MODE: in STD_LOGIC;
		MC_RBC_ERROR_1405_E_CH: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_F_A: in STD_LOGIC;
		PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC: in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_T_DOT_INPUT: in STD_LOGIC;
		PS_E_CYCLE: in STD_LOGIC;
		PS_E_CH_IN_PROCESS: in STD_LOGIC;
		PS_CONS_DATA_CHECK: in STD_LOGIC;
		MS_1401_I_O_CHECK_RESET: in STD_LOGIC;
		PS_ERROR_SAMPLE: in STD_LOGIC;
		PS_I_O_CHECK: in STD_LOGIC;
		PS_FILE_OP: in STD_LOGIC;
		MS_E_CH_2_CHAR_ONLY_OP_CODES: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_T_DOT_INPUT: in STD_LOGIC;
		MS_FILE_OP: in STD_LOGIC;
		PS_E_CH_COND_LATCH_STAR_SIF: in STD_LOGIC;
		PS_1401_CARD_PR_ERR_SAMPLE: in STD_LOGIC;
		MS_1401_READ_TRIGGER: in STD_LOGIC;
		MS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (11 downTo 0);
		PS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (12 downTo 0);
		PS_E_CH_NOT_READY: out STD_LOGIC;
		PS_E_CH_READY_BUS: out STD_LOGIC;
		MS_E_CH_READY_BUS: out STD_LOGIC;
		MS_E_CH_NOT_READY: out STD_LOGIC;
		PS_E_CH_BUSY_BUS: out STD_LOGIC;
		PS_E_CH_BUSY: out STD_LOGIC;
		MS_E_CH_BUSY_BUS: out STD_LOGIC;
		MS_E_CH_BUSY: out STD_LOGIC;
		PS_E_CH_CONDITION_BUS: out STD_LOGIC;
		PS_E_CH_TAPE_ERROR: out STD_LOGIC;
		MS_E_CH_TAPE_INDICATOR: out STD_LOGIC;
		PS_E_CH_CHECK_BUS: out STD_LOGIC;
		MS_E_CH_CHECK_BUS: out STD_LOGIC;
		PS_E_CH_TAPE_INDICATOR: out STD_LOGIC;
		PS_E_CH_CHECK: out STD_LOGIC;
		PS_E_CH_CONDITION: out STD_LOGIC;
		MS_E_CH_CHECK: out STD_LOGIC;
		MS_E_CH_FILE_SET_CHECK_AT_A: out STD_LOGIC;
		MS_E_CH_CONDITION: out STD_LOGIC;
		LAMP_15A1A16: out STD_LOGIC;
		LAMP_15A1C16: out STD_LOGIC;
		LAMP_15A1E16: out STD_LOGIC;
		LAMP_15A1F16: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MC_1301_READY_E_CH: STD_LOGIC := '1';
	signal MS_E_CH_SELECT_UNIT_F: STD_LOGIC := '1';
	signal MC_1405_READY_E_CH: STD_LOGIC := '1';
	signal MC_BUFFER_READY: STD_LOGIC := '1';
	signal MS_E_CH_SELECT_ANY_BUFFER: STD_LOGIC := '1';
	signal PS_E_CH_READY_BUS_STAR_SIF: STD_LOGIC := '0';
	signal PS_E_CH_READY_BUS_STAR_1412_19: STD_LOGIC := '0';
	signal MC_TAPE_READY: STD_LOGIC := '1';
	signal MS_E_CH_SELECT_TAPE_DATA: STD_LOGIC := '1';
	signal MS_E_CH_SELECT_UNIT_T: STD_LOGIC := '1';
	signal PS_E_CH_STATUS_SAMPLE_A: STD_LOGIC := '0';
	signal MS_E_CH_RESET: STD_LOGIC := '1';
	signal PS_E_CH_STATUS_SAMPLE_B: STD_LOGIC := '0';
	signal PS_E_CH_2ND_ADDR_TRF: STD_LOGIC := '0';
	signal MC_BUFFER_READY_JRJ: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_C_1: STD_LOGIC := '0';
	signal MC_SELECT_AND_REWIND_STAR_E_CH: STD_LOGIC := '1';
	signal MC_1301_BUSY_E_CH: STD_LOGIC := '1';
	signal PS_E_CH_BUSY_BUS_STAR_1412_19: STD_LOGIC := '0';
	signal MC_1405_BUSY_E_CH: STD_LOGIC := '1';
	signal MC_BUFFER_BUSY: STD_LOGIC := '1';
	signal MC_BUFFER_BUSY_JRJ: STD_LOGIC := '1';
	signal MC_TAPE_BUSY: STD_LOGIC := '1';
	signal MS_CONSOLE_HOME_POSITION: STD_LOGIC := '1';
	signal PS_W_OR_X_SYMBOL_OP_MODIFIER: STD_LOGIC := '0';
	signal PS_E_CH_SELECT_UNIT_T: STD_LOGIC := '0';
	signal PS_PERCENT_OR_COML_AT: STD_LOGIC := '0';
	signal PS_E_CH_SELECT_TAPE_DATA: STD_LOGIC := '0';
	signal MS_1401_MODE: STD_LOGIC := '1';
	signal MC_1301_ERROR_E_CH: STD_LOGIC := '1';
	signal MC_1405_ERROR_E_CH: STD_LOGIC := '1';
	signal MC_BUFFER_ERROR: STD_LOGIC := '1';
	signal MC_BUFFER_ERROR_JRJ: STD_LOGIC := '1';
	signal PS_E_CH_CHECK_BUS_STAR_SIF: STD_LOGIC := '0';
	signal PS_E_CH_CHECK_BUS_STAR_1412_19: STD_LOGIC := '0';
	signal MC_TAPE_ERROR: STD_LOGIC := '1';
	signal MC_1301_E_CH_CONDITION: STD_LOGIC := '1';
	signal MC_1405_CONDITION_E_CH: STD_LOGIC := '1';
	signal MC_BUFFER_CONDITION: STD_LOGIC := '1';
	signal MC_BUFFER_CONDITION_JRJ: STD_LOGIC := '1';
	signal MC_SEL_OR_TAPE_IND_ON_CH_1: STD_LOGIC := '1';
	signal PS_1401_MODE: STD_LOGIC := '0';
	signal MC_RBC_ERROR_1405_E_CH: STD_LOGIC := '1';
	signal MS_E_CH_SELECT_UNIT_F_A: STD_LOGIC := '1';
	signal PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC: STD_LOGIC := '0';
	signal PS_E_CH_SELECT_UNIT_T_DOT_INPUT: STD_LOGIC := '0';
	signal PS_E_CYCLE: STD_LOGIC := '0';
	signal PS_E_CH_IN_PROCESS: STD_LOGIC := '0';
	signal PS_CONS_DATA_CHECK: STD_LOGIC := '0';
	signal MS_1401_I_O_CHECK_RESET: STD_LOGIC := '1';
	signal PS_ERROR_SAMPLE: STD_LOGIC := '0';
	signal PS_I_O_CHECK: STD_LOGIC := '0';
	signal PS_FILE_OP: STD_LOGIC := '0';
	signal MS_E_CH_2_CHAR_ONLY_OP_CODES: STD_LOGIC := '1';
	signal MS_E_CH_SELECT_UNIT_T_DOT_INPUT: STD_LOGIC := '1';
	signal MS_FILE_OP: STD_LOGIC := '1';
	signal PS_E_CH_COND_LATCH_STAR_SIF: STD_LOGIC := '0';
	signal PS_1401_CARD_PR_ERR_SAMPLE: STD_LOGIC := '0';
	signal MS_1401_READ_TRIGGER: STD_LOGIC := '1';
	signal MS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (11 downTo 0) := "111111111111";
	signal PS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (12 downTo 0) := "0000000000000";

	-- Outputs

	signal PS_E_CH_NOT_READY: STD_LOGIC;
	signal PS_E_CH_READY_BUS: STD_LOGIC;
	signal MS_E_CH_READY_BUS: STD_LOGIC;
	signal MS_E_CH_NOT_READY: STD_LOGIC;
	signal PS_E_CH_BUSY_BUS: STD_LOGIC;
	signal PS_E_CH_BUSY: STD_LOGIC;
	signal MS_E_CH_BUSY_BUS: STD_LOGIC;
	signal MS_E_CH_BUSY: STD_LOGIC;
	signal PS_E_CH_CONDITION_BUS: STD_LOGIC;
	signal PS_E_CH_TAPE_ERROR: STD_LOGIC;
	signal MS_E_CH_TAPE_INDICATOR: STD_LOGIC;
	signal PS_E_CH_CHECK_BUS: STD_LOGIC;
	signal MS_E_CH_CHECK_BUS: STD_LOGIC;
	signal PS_E_CH_TAPE_INDICATOR: STD_LOGIC;
	signal PS_E_CH_CHECK: STD_LOGIC;
	signal PS_E_CH_CONDITION: STD_LOGIC;
	signal MS_E_CH_CHECK: STD_LOGIC;
	signal MS_E_CH_FILE_SET_CHECK_AT_A: STD_LOGIC;
	signal MS_E_CH_CONDITION: STD_LOGIC;
	signal LAMP_15A1A16: STD_LOGIC;
	signal LAMP_15A1C16: STD_LOGIC;
	signal LAMP_15A1E16: STD_LOGIC;
	signal LAMP_15A1F16: STD_LOGIC;

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

	UUT: EChannelStatus port map(
		FPGA_CLK => FPGA_CLK,
		MC_1301_READY_E_CH => MC_1301_READY_E_CH,
		MS_E_CH_SELECT_UNIT_F => MS_E_CH_SELECT_UNIT_F,
		MC_1405_READY_E_CH => MC_1405_READY_E_CH,
		MC_BUFFER_READY => MC_BUFFER_READY,
		MS_E_CH_SELECT_ANY_BUFFER => MS_E_CH_SELECT_ANY_BUFFER,
		PS_E_CH_READY_BUS_STAR_SIF => PS_E_CH_READY_BUS_STAR_SIF,
		PS_E_CH_READY_BUS_STAR_1412_19 => PS_E_CH_READY_BUS_STAR_1412_19,
		MC_TAPE_READY => MC_TAPE_READY,
		MS_E_CH_SELECT_TAPE_DATA => MS_E_CH_SELECT_TAPE_DATA,
		MS_E_CH_SELECT_UNIT_T => MS_E_CH_SELECT_UNIT_T,
		PS_E_CH_STATUS_SAMPLE_A => PS_E_CH_STATUS_SAMPLE_A,
		MS_E_CH_RESET => MS_E_CH_RESET,
		PS_E_CH_STATUS_SAMPLE_B => PS_E_CH_STATUS_SAMPLE_B,
		PS_E_CH_2ND_ADDR_TRF => PS_E_CH_2ND_ADDR_TRF,
		MC_BUFFER_READY_JRJ => MC_BUFFER_READY_JRJ,
		PS_LOGIC_GATE_C_1 => PS_LOGIC_GATE_C_1,
		MC_SELECT_AND_REWIND_STAR_E_CH => MC_SELECT_AND_REWIND_STAR_E_CH,
		MC_1301_BUSY_E_CH => MC_1301_BUSY_E_CH,
		PS_E_CH_BUSY_BUS_STAR_1412_19 => PS_E_CH_BUSY_BUS_STAR_1412_19,
		MC_1405_BUSY_E_CH => MC_1405_BUSY_E_CH,
		MC_BUFFER_BUSY => MC_BUFFER_BUSY,
		MC_BUFFER_BUSY_JRJ => MC_BUFFER_BUSY_JRJ,
		MC_TAPE_BUSY => MC_TAPE_BUSY,
		MS_CONSOLE_HOME_POSITION => MS_CONSOLE_HOME_POSITION,
		PS_W_OR_X_SYMBOL_OP_MODIFIER => PS_W_OR_X_SYMBOL_OP_MODIFIER,
		PS_E_CH_SELECT_UNIT_T => PS_E_CH_SELECT_UNIT_T,
		PS_PERCENT_OR_COML_AT => PS_PERCENT_OR_COML_AT,
		PS_E_CH_SELECT_TAPE_DATA => PS_E_CH_SELECT_TAPE_DATA,
		MS_1401_MODE => MS_1401_MODE,
		MC_1301_ERROR_E_CH => MC_1301_ERROR_E_CH,
		MC_1405_ERROR_E_CH => MC_1405_ERROR_E_CH,
		MC_BUFFER_ERROR => MC_BUFFER_ERROR,
		MC_BUFFER_ERROR_JRJ => MC_BUFFER_ERROR_JRJ,
		PS_E_CH_CHECK_BUS_STAR_SIF => PS_E_CH_CHECK_BUS_STAR_SIF,
		PS_E_CH_CHECK_BUS_STAR_1412_19 => PS_E_CH_CHECK_BUS_STAR_1412_19,
		MC_TAPE_ERROR => MC_TAPE_ERROR,
		MC_1301_E_CH_CONDITION => MC_1301_E_CH_CONDITION,
		MC_1405_CONDITION_E_CH => MC_1405_CONDITION_E_CH,
		MC_BUFFER_CONDITION => MC_BUFFER_CONDITION,
		MC_BUFFER_CONDITION_JRJ => MC_BUFFER_CONDITION_JRJ,
		MC_SEL_OR_TAPE_IND_ON_CH_1 => MC_SEL_OR_TAPE_IND_ON_CH_1,
		PS_1401_MODE => PS_1401_MODE,
		MC_RBC_ERROR_1405_E_CH => MC_RBC_ERROR_1405_E_CH,
		MS_E_CH_SELECT_UNIT_F_A => MS_E_CH_SELECT_UNIT_F_A,
		PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC => PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC,
		PS_E_CH_SELECT_UNIT_T_DOT_INPUT => PS_E_CH_SELECT_UNIT_T_DOT_INPUT,
		PS_E_CYCLE => PS_E_CYCLE,
		PS_E_CH_IN_PROCESS => PS_E_CH_IN_PROCESS,
		PS_CONS_DATA_CHECK => PS_CONS_DATA_CHECK,
		MS_1401_I_O_CHECK_RESET => MS_1401_I_O_CHECK_RESET,
		PS_ERROR_SAMPLE => PS_ERROR_SAMPLE,
		PS_I_O_CHECK => PS_I_O_CHECK,
		PS_FILE_OP => PS_FILE_OP,
		MS_E_CH_2_CHAR_ONLY_OP_CODES => MS_E_CH_2_CHAR_ONLY_OP_CODES,
		MS_E_CH_SELECT_UNIT_T_DOT_INPUT => MS_E_CH_SELECT_UNIT_T_DOT_INPUT,
		MS_FILE_OP => MS_FILE_OP,
		PS_E_CH_COND_LATCH_STAR_SIF => PS_E_CH_COND_LATCH_STAR_SIF,
		PS_1401_CARD_PR_ERR_SAMPLE => PS_1401_CARD_PR_ERR_SAMPLE,
		MS_1401_READ_TRIGGER => MS_1401_READ_TRIGGER,
		MS_I_RING_HDL_BUS => MS_I_RING_HDL_BUS,
		PS_I_RING_HDL_BUS => PS_I_RING_HDL_BUS,
		PS_E_CH_NOT_READY => PS_E_CH_NOT_READY,
		PS_E_CH_READY_BUS => PS_E_CH_READY_BUS,
		MS_E_CH_READY_BUS => MS_E_CH_READY_BUS,
		MS_E_CH_NOT_READY => MS_E_CH_NOT_READY,
		PS_E_CH_BUSY_BUS => PS_E_CH_BUSY_BUS,
		PS_E_CH_BUSY => PS_E_CH_BUSY,
		MS_E_CH_BUSY_BUS => MS_E_CH_BUSY_BUS,
		MS_E_CH_BUSY => MS_E_CH_BUSY,
		PS_E_CH_CONDITION_BUS => PS_E_CH_CONDITION_BUS,
		PS_E_CH_TAPE_ERROR => PS_E_CH_TAPE_ERROR,
		MS_E_CH_TAPE_INDICATOR => MS_E_CH_TAPE_INDICATOR,
		PS_E_CH_CHECK_BUS => PS_E_CH_CHECK_BUS,
		MS_E_CH_CHECK_BUS => MS_E_CH_CHECK_BUS,
		PS_E_CH_TAPE_INDICATOR => PS_E_CH_TAPE_INDICATOR,
		PS_E_CH_CHECK => PS_E_CH_CHECK,
		PS_E_CH_CONDITION => PS_E_CH_CONDITION,
		MS_E_CH_CHECK => MS_E_CH_CHECK,
		MS_E_CH_FILE_SET_CHECK_AT_A => MS_E_CH_FILE_SET_CHECK_AT_A,
		MS_E_CH_CONDITION => MS_E_CH_CONDITION,
		LAMP_15A1A16 => LAMP_15A1A16,
		LAMP_15A1C16 => LAMP_15A1C16,
		LAMP_15A1E16 => LAMP_15A1E16,
		LAMP_15A1F16 => LAMP_15A1F16);

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
   
   testName := "12.62.01.1        ";
   
   wait for 30 ns;
   MS_E_CH_RESET <= '0';
   wait for 1 us;
   MS_E_CH_RESET <= '1';
   
   check1(PS_E_CH_READY_BUS,'0',testName,"SA");
   check1(MS_E_CH_READY_BUS,'1',testName,"SB");
   check1(PS_E_CH_NOT_READY,'0',testName,"SC");
   check1(MS_E_CH_NOT_READY,'1',testName,"SD");
   
   MC_1301_READY_E_CH <= '0';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'0',testName,"1A");
   MS_E_CH_SELECT_UNIT_F <= '0';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'1',testName,"1B");
   check1(MS_E_CH_READY_BUS,'0',testName,"1C");
   MC_1301_READY_E_CH <= '1';
   wait for 30 ns;
   MC_1405_READY_E_CH <= '0';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'1',testName,"1D");
   MC_1405_READY_E_CH <= '1';   
   MS_E_CH_SELECT_UNIT_F <= '1';
   
   MC_BUFFER_READY <= '0';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'0',testName,"2A");
   MS_E_CH_SELECT_ANY_BUFFER <= '0';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'1',testName,"2B");
   MC_BUFFER_READY <= '1';
   wait for 30 ns;
   MC_BUFFER_READY_JRJ <= '0';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'1',testName,"2C");
   MC_BUFFER_READY_JRJ <= '1';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'0',testName,"2D");
   MS_E_CH_SELECT_ANY_BUFFER <= '1';
   
   MC_TAPE_READY <= '0';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'0',testName,"3A");
   MS_E_CH_SELECT_TAPE_DATA <= '0';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'1',testName,"3B");
   MC_TAPE_READY <= '1';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'0',testName,"3C");
   MS_E_CH_SELECT_TAPE_DATA <= '1';
   
   PS_E_CH_READY_BUS_STAR_SIF <= '1';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'1',testName,"4A");
   PS_E_CH_READY_BUS_STAR_SIF <= '0';
   wait for 30 ns;
   PS_E_CH_READY_BUS_STAR_1412_19 <= '1';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'1',testName,"4B");
   PS_E_CH_READY_BUS_STAR_1412_19 <= '0';
   wait for 30 ns;
   MS_E_CH_SELECT_UNIT_T <= '0';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'1',testName,"4C");
   MS_E_CH_SELECT_UNIT_T <= '1';
   wait for 30 ns;
   -- The next signal actually originates on 12.62.02.1
   
   MS_I_RING_HDL_BUS(5) <= '0';
   MC_SELECT_AND_REWIND_STAR_E_CH <= '0';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'0',testName,"4D");
   check1(PS_E_CH_BUSY_BUS,'0',testName,"4E");
   MS_E_CH_SELECT_TAPE_DATA <= '0';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'0',testName,"4F");
   check1(PS_E_CH_BUSY_BUS,'0',testName,"4G");
   MS_I_RING_HDL_BUS(5) <= '1';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'1',testName,"4H");
   check1(PS_E_CH_BUSY_BUS,'1',testName,"4I");   
   MC_SELECT_AND_REWIND_STAR_E_CH <= '1';
   MS_E_CH_SELECT_TAPE_DATA <= '1';      
   
  
  -- Make sure we are not ready 
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'0',testName,"5A");
   check1(PS_E_CH_NOT_READY,'0',testName,"5B");
   -- Set the not ready latch
   PS_E_CH_STATUS_SAMPLE_A <= '1';
   wait for 30 ns;
   check1(PS_E_CH_NOT_READY,'1',testName,"5C");
   check1(MS_E_CH_NOT_READY,'0',testName,"5D");
   -- Reset the latch before the next test, ready still off   
   PS_E_CH_STATUS_SAMPLE_A <= '0';
   MS_E_CH_RESET <= '0';
   wait for 30 ns;
   MS_E_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_E_CH_NOT_READY,'0',testName,"5E");
   
   PS_E_CH_2ND_ADDR_TRF <= '1';
   wait for 30 ns;
   check1(PS_E_CH_NOT_READY,'0',testName,"6A");
   check1(LAMP_15A1A16,'0',testName,"6B");
   PS_E_CH_STATUS_SAMPLE_B <= '1';
   wait for 30 ns;
   check1(PS_E_CH_NOT_READY,'1',testName,"6C");
   check1(LAMP_15A1A16,'1',testName,"6D");
   PS_E_CH_2ND_ADDR_TRF <= '0';
   PS_E_CH_STATUS_SAMPLE_B <= '0';
   MS_E_CH_RESET <= '0';
   wait for 30 ns;
   MS_E_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_E_CH_NOT_READY,'0',testName,"6E");
   
   -- Set ready back to true
   
   PS_E_CH_READY_BUS_STAR_SIF <= '1';
   wait for 30 ns;
   check1(PS_E_CH_READY_BUS,'1',testName,"7A");
   -- Should not be able to set the not ready latch now
   PS_E_CH_STATUS_SAMPLE_A <= '1';
   PS_E_CH_STATUS_SAMPLE_B <= '1';
   PS_E_CH_2ND_ADDR_TRF <= '1';
   wait for 30 ns;
   check1(PS_E_CH_NOT_READY,'0',testName,"7B");
   PS_E_CH_STATUS_SAMPLE_A <= '0';
   PS_E_CH_STATUS_SAMPLE_B <= '0';
   PS_E_CH_2ND_ADDR_TRF <= '0';
   PS_E_CH_READY_BUS_STAR_SIF <= '0';
   
   testName := "12.62.02.1        ";
   
   check1(PS_E_CH_BUSY_BUS,'0',testName,"SA");
   check1(MS_E_CH_BUSY_BUS,'1',testName,"SB");
   check1(PS_E_CH_BUSY,'0',testName,"SC");
   check1(MS_E_CH_BUSY,'1',testName,"SD");
   
   MC_1301_BUSY_E_CH <= '0';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'0',testName,"1A");
   MS_E_CH_SELECT_UNIT_F <= '0';   
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'1',testName,"1B");
   check1(MS_E_CH_BUSY_BUS,'0',testName,"1C");
   MC_1301_BUSY_E_CH <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'0',testName,"1E");
   MC_1405_BUSY_E_CH <= '0';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'1',testName,"1F");
   MC_1405_BUSY_E_CH <= '1';
   MS_E_CH_SELECT_UNIT_F <= '1';   
   wait for 30 ns;
   
   MC_BUFFER_BUSY <= '0';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'0',testName,"2A");
   MS_E_CH_SELECT_ANY_BUFFER <= '0';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'1',testName,"2B");
   MC_BUFFER_BUSY_JRJ <= '0';
   MC_BUFFER_BUSY <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'1',testName,"2C");
   MS_E_CH_SELECT_ANY_BUFFER <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'0',testName,"2D");
   MC_BUFFER_BUSY_JRJ <= '1';
   
   MC_TAPE_BUSY <= '0';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'0',testName,"3A");
   MS_E_CH_SELECT_TAPE_DATA <= '0';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'1',testName,"3B");
   MC_TAPE_BUSY <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'0',testName,"3C");
   MS_E_CH_SELECT_TAPE_DATA <= '1';
   
   -- Note part of the next sequence tested as part of 12.62.01.1

   MS_CONSOLE_HOME_POSITION <= '0';   
   PS_E_CH_SELECT_UNIT_T <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'0',testName,"4A");
   PS_W_OR_X_SYMBOL_OP_MODIFIER <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'0',testName,"4B");
   MS_CONSOLE_HOME_POSITION <= '1';   
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'1',testName,"4C");
   PS_E_CH_SELECT_UNIT_T <= '0';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'0',testName,"4D");
   PS_W_OR_X_SYMBOL_OP_MODIFIER <= '0';
   
   PS_E_CH_BUSY_BUS_STAR_1412_19 <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'1',testName,"5A");
   
   -- Leave busy bus set for the next several tests
   
   MS_1401_MODE <= '0';
   check1(PS_E_CH_BUSY,'0',testName,"6A");
   PS_E_CH_SELECT_TAPE_DATA <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'0',testName,"6B");
   PS_PERCENT_OR_COML_AT <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'0',testName,"6C");
   PS_I_RING_HDL_BUS(5) <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'0',testName,"6D");
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'0',testName,"6E");
   MS_1401_MODE <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'1',testName,"6F");
   check1(LAMP_15A1C16,'1',testName,"6G");
   PS_E_CH_SELECT_TAPE_DATA <= '0';
   PS_PERCENT_OR_COML_AT <= '0';
   PS_I_RING_HDL_BUS(5) <= '0';
   PS_LOGIC_GATE_C_1 <= '0';
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'1',testName,"6H");
   MS_E_CH_RESET <= '0';
   wait for 30 ns;
   MS_E_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'0',testName,"6I");
   check1(LAMP_15A1C16,'0',testName,"6J");
   
   PS_E_CH_2ND_ADDR_TRF <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'0',testName,"7A");
   PS_E_CH_STATUS_SAMPLE_B <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'1',testName,"7B");
   PS_E_CH_2ND_ADDR_TRF <= '0';
   PS_E_CH_STATUS_SAMPLE_B <= '0';
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'1',testName,"7C");
   MS_E_CH_RESET <= '0';
   wait for 30 ns;
   MS_E_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'0',testName,"7D");
   
   PS_E_CH_READY_BUS_STAR_SIF <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'0',testName,"8A");
   PS_E_CH_STATUS_SAMPLE_A <= '1';   
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'1',testName,"8B");
   PS_E_CH_READY_BUS_STAR_SIF <= '0';
   PS_E_CH_STATUS_SAMPLE_A <= '0';   
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'1',testName,"8C");
   MS_E_CH_RESET <= '0';
   wait for 30 ns;
   MS_E_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'0',testName,"8D");
   
   -- Without the Busy bus, the busy latch should not set
   PS_E_CH_BUSY_BUS_STAR_1412_19 <= '0';
   wait for 30 ns;
   check1(PS_E_CH_BUSY_BUS,'0',testName,"9A");
      
   PS_E_CH_SELECT_TAPE_DATA <= '1';
   PS_PERCENT_OR_COML_AT <= '1';
   PS_I_RING_HDL_BUS(5) <= '1';
   PS_LOGIC_GATE_C_1 <= '1';
   MS_1401_MODE <= '1';
   PS_E_CH_2ND_ADDR_TRF <= '1';
   PS_E_CH_STATUS_SAMPLE_B <= '1';
   PS_E_CH_READY_BUS_STAR_SIF <= '1';
   PS_E_CH_STATUS_SAMPLE_A <= '1';   
   wait for 30 ns;
   check1(PS_E_CH_BUSY,'0',testName,"9B");

   PS_E_CH_SELECT_TAPE_DATA <= '0';
   PS_PERCENT_OR_COML_AT <= '0';
   PS_I_RING_HDL_BUS(5) <= '0';
   PS_LOGIC_GATE_C_1 <= '0';
   MS_1401_MODE <= '1';
   PS_E_CH_2ND_ADDR_TRF <= '0';
   PS_E_CH_STATUS_SAMPLE_B <= '0';
   PS_E_CH_READY_BUS_STAR_SIF <= '0';
   PS_E_CH_STATUS_SAMPLE_A <= '0';   
   
   testName := "12.62.03.1        ";
   
   check1(PS_E_CH_TAPE_ERROR,'0',testName,"SA");
   check1(PS_E_CH_CHECK_BUS,'0',testName,"SB");
   check1(MS_E_CH_CHECK_BUS,'1',testName,"SC");
   check1(PS_E_CH_CONDITION_BUS,'0',testName,"SD");
   check1(PS_E_CH_TAPE_INDICATOR,'0',testName,"SE");
   check1(MS_E_CH_TAPE_INDICATOR,'1',testName,"SF");
   
   MC_1301_ERROR_E_CH <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'0',testName,"1A");
   MS_E_CH_SELECT_UNIT_F <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'1',testName,"1B");
   MC_1301_ERROR_E_CH <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'0',testName,"1C");
   MC_1405_ERROR_E_CH <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'1',testName,"1D");
   MS_E_CH_SELECT_UNIT_F <= '1';
   MC_1405_ERROR_E_CH <= '1';
      
   PS_1401_MODE <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'0',testName,"2A");
   MC_RBC_ERROR_1405_E_CH <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'0',testName,"2B");
   MS_E_CH_SELECT_UNIT_F_A <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'1',testName,"2C");
   MC_RBC_ERROR_1405_E_CH <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'0',testName,"2D");
   PS_1401_MODE <= '0';
   MS_E_CH_SELECT_UNIT_F_A <= '1';
   
   MS_E_CH_SELECT_ANY_BUFFER <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'0',testName,"3A");
   MC_BUFFER_ERROR <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'1',testName,"3B");
   MC_BUFFER_ERROR <= '1';
   wait for 30 ns;
   MC_BUFFER_ERROR_JRJ <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'1',testName,"3C");
   MC_BUFFER_ERROR_JRJ <= '1';
   MS_E_CH_SELECT_ANY_BUFFER <= '1';
   
   check1(PS_E_CH_TAPE_ERROR,'0',testName,"4A");
   MC_TAPE_ERROR <= '0';   
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'0',testName,"4B");
   check1(PS_E_CH_TAPE_ERROR,'1',testName,"4C");
   PS_E_CH_SELECT_TAPE_DATA <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'1',testName,"4D");
   MC_TAPE_ERROR <= '1';   
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'0',testName,"4E");
   PS_E_CH_SELECT_TAPE_DATA <= '0';
   
   PS_E_CH_CHECK_BUS_STAR_SIF <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'1',testName,"5A");
   PS_E_CH_CHECK_BUS_STAR_SIF <= '0';
   PS_E_CH_CHECK_BUS_STAR_1412_19 <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK_BUS,'1',testName,"5A");
   PS_E_CH_CHECK_BUS_STAR_1412_19 <= '0';
   
   MC_1301_E_CH_CONDITION <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'0',testName,"6A");
   MS_E_CH_SELECT_UNIT_F <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'1',testName,"6B");
   MC_1301_E_CH_CONDITION <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'0',testName,"6C");
   MC_1405_CONDITION_E_CH <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'1',testName,"6D");
   MC_1405_CONDITION_E_CH <= '1';
   MS_E_CH_SELECT_UNIT_F <= '1';
   
   MC_SEL_OR_TAPE_IND_ON_CH_1 <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'0',testName,"7A");
   check1(PS_E_CH_TAPE_INDICATOR,'1',testName,"7B");
   check1(MS_E_CH_TAPE_INDICATOR,'0',testName,"7C");
   PS_E_CH_SELECT_TAPE_DATA <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'1',testName,"7D");
   MC_SEL_OR_TAPE_IND_ON_CH_1 <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'0',testName,"7E");
   check1(PS_E_CH_TAPE_INDICATOR,'0',testName,"7F");
   check1(MS_E_CH_TAPE_INDICATOR,'1',testName,"7G");
   PS_E_CH_SELECT_TAPE_DATA <= '0';
   
   MS_E_CH_SELECT_ANY_BUFFER <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'0',testName,"8A");
   MC_BUFFER_CONDITION <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'1',testName,"8B");
   MC_BUFFER_CONDITION <= '1';
   wait for 30 ns;
   MC_BUFFER_CONDITION_JRJ <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'1',testName,"8C");
   MC_BUFFER_CONDITION_JRJ <= '1';
   
   PS_E_CH_SELECT_UNIT_T_DOT_INPUT <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'0',testName,"9A");
   PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'1',testName,"9B");
   PS_E_CH_SELECT_UNIT_T_DOT_INPUT <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'0',testName,"9C");
   PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC <= '0';
   
   MS_1401_MODE <= '0';
   MC_RBC_ERROR_1405_E_CH <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'0',testName,"10A");
   MS_1401_MODE <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'0',testName,"10B");
   MS_E_CH_SELECT_UNIT_F_A <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'1',testName,"10C");
   MC_RBC_ERROR_1405_E_CH <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION_BUS,'0',testName,"10D");
   MS_E_CH_SELECT_UNIT_F_A <= '1';
   
   testName := "12.62.04.1        ";
   
   check1(PS_E_CH_CHECK,'0',testName,"SA");
   check1(MS_E_CH_CHECK,'1',testName,"SB");
   check1(PS_E_CH_CONDITION,'0',testName,"SC");
   check1(MS_E_CH_CONDITION,'1',testName,"SD");
   check1(MS_E_CH_FILE_SET_CHECK_AT_A,'1',testName,"SE");
   check1(LAMP_15A1E16,'0',testName,"SF");
   check1(LAMP_15A1F16,'0',testName,"SG");
   
   PS_E_CH_SELECT_UNIT_T <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'0',testName,"1A");
   PS_E_CH_IN_PROCESS <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'0',testName,"1B");
   PS_CONS_DATA_CHECK <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'1',testName,"1C");
   check1(LAMP_15A1E16,'1',testName,"1D");
   -- Latch should stay set
   PS_E_CH_SELECT_UNIT_T <= '0';
   PS_E_CH_IN_PROCESS <= '0';
   PS_CONS_DATA_CHECK <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'1',testName,"1E");
   MS_E_CH_RESET <= '0';
   wait for 30 ns;
   MS_E_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'0',testName,"1F");
   
   PS_I_O_CHECK <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'0',testName,"2A");
   PS_E_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'0',testName,"2B");
   PS_ERROR_SAMPLE <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'1',testName,"2C");
   PS_I_O_CHECK <= '0';
   PS_E_CYCLE <= '0';
   PS_ERROR_SAMPLE <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'1',testName,"2E");
   MS_1401_I_O_CHECK_RESET <= '0';
   wait for 30 ns;
   MS_1401_I_O_CHECK_RESET <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'0',testName,"2F");
   
   PS_E_CH_CHECK_BUS_STAR_SIF <= '1';  -- Used for the next two tests
   
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'0',testName,"3A");
   check1(MS_E_CH_FILE_SET_CHECK_AT_A,'1',testName,"3B");
   PS_E_CH_READY_BUS_STAR_SIF <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'0',testName,"3C");
   check1(MS_E_CH_FILE_SET_CHECK_AT_A,'1',testName,"3D");
   PS_E_CH_BUSY_BUS_STAR_1412_19 <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'0',testName,"3E");
   check1(MS_E_CH_FILE_SET_CHECK_AT_A,'1',testName,"3F");
   PS_E_CH_STATUS_SAMPLE_A <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'0',testName,"3G");
   check1(MS_E_CH_FILE_SET_CHECK_AT_A,'1',testName,"3H");
   PS_FILE_OP <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'1',testName,"3I");
   check1(MS_E_CH_FILE_SET_CHECK_AT_A,'0',testName,"3J");
   PS_E_CH_READY_BUS_STAR_SIF <= '0';
   wait for 30 ns;   
   check1(MS_E_CH_FILE_SET_CHECK_AT_A,'1',testName,"3K");   
   PS_E_CH_BUSY_BUS_STAR_1412_19 <= '0';
   PS_E_CH_STATUS_SAMPLE_A <= '0';
   PS_FILE_OP <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'1',testName,"3L");   
   MS_E_CH_RESET <= '0';
   wait for 30 ns;
   MS_E_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'0',testName,"3M");
   
   PS_E_CH_STATUS_SAMPLE_B <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'1',testName,"4A");
   PS_E_CH_STATUS_SAMPLE_B <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'1',testName,"4B");   
   MS_E_CH_RESET <= '0';
   wait for 30 ns;
   MS_E_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CHECK,'0',testName,"4C");
   PS_E_CH_CHECK_BUS_STAR_SIF <= '0';
   
   check1(PS_E_CH_CONDITION,'0',testName,"5A");
   PS_E_CH_COND_LATCH_STAR_SIF <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION,'1',testName,"5B");
   check1(MS_E_CH_CONDITION,'0',testName,"5C");
   check1(LAMP_15A1F16,'1',testName,"5D");   
   PS_E_CH_COND_LATCH_STAR_SIF <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION,'1',testName,"5E");
   MS_E_CH_RESET <= '0';
   wait for 30 ns;   
   MS_E_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION,'0',testName,"5E");
   
   MS_E_CH_SELECT_ANY_BUFFER <= '0';
   PS_E_CH_STATUS_SAMPLE_B <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION,'0',testName,"6A");
   MC_1301_E_CH_CONDITION <= '0';
   MS_E_CH_SELECT_UNIT_F <= '0';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION,'0',testName,"6B");
   wait for 30 ns;
   MS_E_CH_SELECT_ANY_BUFFER <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION,'1',testName,"6C");
   PS_E_CH_STATUS_SAMPLE_B <= '0';
   MS_E_CH_SELECT_ANY_BUFFER <= '1';
   
   -- Leave E Ch Condition Bus set for the rest of the tests
   
   wait for 30 ns;
   check1(PS_E_CH_CONDITION,'1',testName,"6D");      
   MS_E_CH_RESET <= '0';
   wait for 30 ns;   
   MS_E_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION,'0',testName,"6E");
   
   PS_E_CH_READY_BUS_STAR_SIF <= '1';
   -- NOT busy bus
   check1(PS_E_CH_BUSY_BUS,'0',testName,"7A");
   PS_E_CH_SELECT_TAPE_DATA <= '0';
   MS_FILE_OP <= '1';
   MS_E_CH_2_CHAR_ONLY_OP_CODES <= '1';
   MS_E_CH_SELECT_UNIT_T_DOT_INPUT <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION,'0',testName,"7B");      
   PS_E_CH_STATUS_SAMPLE_A <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION,'1',testName,"7C");      
   PS_E_CH_READY_BUS_STAR_SIF <= '0';
   PS_E_CH_SELECT_TAPE_DATA <= '0';
   MS_FILE_OP <= '1';
   MS_E_CH_2_CHAR_ONLY_OP_CODES <= '1';
   MS_E_CH_SELECT_UNIT_T_DOT_INPUT <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION,'1',testName,"7D");      
   MS_E_CH_RESET <= '0';
   wait for 30 ns;   
   MS_E_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_E_CH_CONDITION,'0',testName,"7E");
   
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

END;
