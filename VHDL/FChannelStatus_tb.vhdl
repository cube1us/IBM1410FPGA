-- Test BenchVHDL for IBM SMS ALD group FChannelStatus
-- Title: FChannelStatus
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/7/2020 4:57:24 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity FChannelStatus_tb is
end FChannelStatus_tb;

architecture behavioral of FChannelStatus_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component FChannelStatus
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_F_CYCLE: in STD_LOGIC;
		MS_F_CH_RESET: in STD_LOGIC;
		PS_F_CH_SELECT_TAPE: in STD_LOGIC;
		MS_F_CH_SELECT_TAPE: in STD_LOGIC;
		MS_F_CH_SELECT_UNIT_F: in STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_A: in STD_LOGIC;
		PS_FILE_OP: in STD_LOGIC;
		MS_F_CH_CON_LAT_SET_STAR_1414_STAR: in STD_LOGIC;
		MS_FILE_OP: in STD_LOGIC;
		MC_1301_ERROR_F_CH: in STD_LOGIC;
		MC_1405_ERROR_F_CH: in STD_LOGIC;
		PS_I_O_CHECK: in STD_LOGIC;
		PS_F_CH_CHECK_STAR_SIF: in STD_LOGIC;
		MC_TAPE_ERROR: in STD_LOGIC;
		PS_ERROR_SAMPLE: in STD_LOGIC;
		PS_F_CH_CHECK_BUS_STAR_1414_STAR: in STD_LOGIC;
		MC_RBC_ERROR_1405_F_CH: in STD_LOGIC;
		PS_F_CH_CHECK_STAR_1412_19: in STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_B: in STD_LOGIC;
		MS_F_CH_COND_LATCH_STAR_SIF: in STD_LOGIC;
		TW_RBC_ERROR_1405_F_CH: in STD_LOGIC;
		MC_1301_F_CH_CONDITION: in STD_LOGIC;
		MC_1405_CONDITION_F_CH: in STD_LOGIC;
		MC_SEL_OR_TI_ON_CH_2: in STD_LOGIC;
		PS_F_CH_COND_BUS_STAR_1414_STAR: in STD_LOGIC;
		MS_SET_F_CH_CON_LATCH_STAR_1414_STAR: in STD_LOGIC;
		PS_LOGIC_GATE_C_1: in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK: in STD_LOGIC;
		MC_1301_READY_F_CH: in STD_LOGIC;
		MC_1405_READY_F_CH: in STD_LOGIC;
		PS_F_CH_READY_BUS_STAR_1414_STAR: in STD_LOGIC;
		PS_F_CH_READY_BUS_STAR_1412_19: in STD_LOGIC;
		PS_F_CH_READY_BUS_STAR_SIF: in STD_LOGIC;
		MC_TAPE_READY: in STD_LOGIC;
		PS_F_CH_2ND_ADDR_TRF: in STD_LOGIC;
		MC_SELECT_AND_REWIND_STAR_F_CH: in STD_LOGIC;
		PS_F_CH_BUSY_BUS_STAR_1414_STAR: in STD_LOGIC;
		PS_F_CH_BUSY_BUS_STAR_1412_19: in STD_LOGIC;
		MC_1301_BUSY_F_CH: in STD_LOGIC;
		MC_1405_BUSY_F_CH: in STD_LOGIC;
		MC_TAPE_BUSY: in STD_LOGIC;
		MS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (11 downTo 0);
		PS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (12 downTo 0);
		PS_F_CH_CHECK: out STD_LOGIC;
		PS_F_CH_CONDITION: out STD_LOGIC;
		MS_F_CH_TAPE_INDICATOR: out STD_LOGIC;
		MS_F_CH_CHECK: out STD_LOGIC;
		MS_F_CH_FILE_SET_CHECK_AT_A: out STD_LOGIC;
		MS_F_CH_CHECK_BUS: out STD_LOGIC;
		MS_F_CH_CONDITION: out STD_LOGIC;
		PS_F_CH_TAPE_INDICATOR: out STD_LOGIC;
		PS_F_CH_NOT_READY: out STD_LOGIC;
		PS_F_CH_BUSY: out STD_LOGIC;
		PS_F_CH_READY_BUS: out STD_LOGIC;
		MS_F_CH_BUSY_BUS: out STD_LOGIC;
		MS_F_CH_READY_BUS: out STD_LOGIC;
		MS_F_CH_NOT_READY: out STD_LOGIC;
		MS_F_CH_BUSY: out STD_LOGIC;
		LAMP_15A1E17: out STD_LOGIC;
		LAMP_15A1F17: out STD_LOGIC;
		LAMP_15A1A17: out STD_LOGIC;
		LAMP_15A1C17: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_F_CYCLE: STD_LOGIC := '0';
	signal MS_F_CH_RESET: STD_LOGIC := '1';
	signal PS_F_CH_SELECT_TAPE: STD_LOGIC := '0';
	signal MS_F_CH_SELECT_TAPE: STD_LOGIC := '1';
	signal MS_F_CH_SELECT_UNIT_F: STD_LOGIC := '1';
	signal PS_F_CH_STATUS_SAMPLE_A: STD_LOGIC := '0';
	signal PS_FILE_OP: STD_LOGIC := '0';
	signal MS_F_CH_CON_LAT_SET_STAR_1414_STAR: STD_LOGIC := '1';
	signal MS_FILE_OP: STD_LOGIC := '1';
	signal MC_1301_ERROR_F_CH: STD_LOGIC := '1';
	signal MC_1405_ERROR_F_CH: STD_LOGIC := '1';
	signal PS_I_O_CHECK: STD_LOGIC := '0';
	signal PS_F_CH_CHECK_STAR_SIF: STD_LOGIC := '0';
	signal MC_TAPE_ERROR: STD_LOGIC := '1';
	signal PS_ERROR_SAMPLE: STD_LOGIC := '0';
	signal PS_F_CH_CHECK_BUS_STAR_1414_STAR: STD_LOGIC := '0';
	signal MC_RBC_ERROR_1405_F_CH: STD_LOGIC := '1';
	signal PS_F_CH_CHECK_STAR_1412_19: STD_LOGIC := '0';
	signal PS_F_CH_STATUS_SAMPLE_B: STD_LOGIC := '0';
	signal MS_F_CH_COND_LATCH_STAR_SIF: STD_LOGIC := '1';
	signal TW_RBC_ERROR_1405_F_CH: STD_LOGIC := '0';
	signal MC_1301_F_CH_CONDITION: STD_LOGIC := '1';
	signal MC_1405_CONDITION_F_CH: STD_LOGIC := '1';
	signal MC_SEL_OR_TI_ON_CH_2: STD_LOGIC := '1';
	signal PS_F_CH_COND_BUS_STAR_1414_STAR: STD_LOGIC := '0';
	signal MS_SET_F_CH_CON_LATCH_STAR_1414_STAR: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_C_1: STD_LOGIC := '0';
	signal PS_LOZENGE_OR_ASTERISK: STD_LOGIC := '0';
	signal MC_1301_READY_F_CH: STD_LOGIC := '1';
	signal MC_1405_READY_F_CH: STD_LOGIC := '1';
	signal PS_F_CH_READY_BUS_STAR_1414_STAR: STD_LOGIC := '0';
	signal PS_F_CH_READY_BUS_STAR_1412_19: STD_LOGIC := '0';
	signal PS_F_CH_READY_BUS_STAR_SIF: STD_LOGIC := '0';
	signal MC_TAPE_READY: STD_LOGIC := '1';
	signal PS_F_CH_2ND_ADDR_TRF: STD_LOGIC := '0';
	signal MC_SELECT_AND_REWIND_STAR_F_CH: STD_LOGIC := '1';
	signal PS_F_CH_BUSY_BUS_STAR_1414_STAR: STD_LOGIC := '0';
	signal PS_F_CH_BUSY_BUS_STAR_1412_19: STD_LOGIC := '0';
	signal MC_1301_BUSY_F_CH: STD_LOGIC := '1';
	signal MC_1405_BUSY_F_CH: STD_LOGIC := '1';
	signal MC_TAPE_BUSY: STD_LOGIC := '1';
	signal MS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (11 downTo 0) := "111111111111";
	signal PS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (12 downTo 0) := "0000000000000";

	-- Outputs

	signal PS_F_CH_CHECK: STD_LOGIC;
	signal PS_F_CH_CONDITION: STD_LOGIC;
	signal MS_F_CH_TAPE_INDICATOR: STD_LOGIC;
	signal MS_F_CH_CHECK: STD_LOGIC;
	signal MS_F_CH_FILE_SET_CHECK_AT_A: STD_LOGIC;
	signal MS_F_CH_CHECK_BUS: STD_LOGIC;
	signal MS_F_CH_CONDITION: STD_LOGIC;
	signal PS_F_CH_TAPE_INDICATOR: STD_LOGIC;
	signal PS_F_CH_NOT_READY: STD_LOGIC;
	signal PS_F_CH_BUSY: STD_LOGIC;
	signal PS_F_CH_READY_BUS: STD_LOGIC;
	signal MS_F_CH_BUSY_BUS: STD_LOGIC;
	signal MS_F_CH_READY_BUS: STD_LOGIC;
	signal MS_F_CH_NOT_READY: STD_LOGIC;
	signal MS_F_CH_BUSY: STD_LOGIC;
	signal LAMP_15A1E17: STD_LOGIC;
	signal LAMP_15A1F17: STD_LOGIC;
	signal LAMP_15A1A17: STD_LOGIC;
	signal LAMP_15A1C17: STD_LOGIC;

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

	UUT: FChannelStatus port map(
		FPGA_CLK => FPGA_CLK,
		PS_F_CYCLE => PS_F_CYCLE,
		MS_F_CH_RESET => MS_F_CH_RESET,
		PS_F_CH_SELECT_TAPE => PS_F_CH_SELECT_TAPE,
		MS_F_CH_SELECT_TAPE => MS_F_CH_SELECT_TAPE,
		MS_F_CH_SELECT_UNIT_F => MS_F_CH_SELECT_UNIT_F,
		PS_F_CH_STATUS_SAMPLE_A => PS_F_CH_STATUS_SAMPLE_A,
		PS_FILE_OP => PS_FILE_OP,
		MS_F_CH_CON_LAT_SET_STAR_1414_STAR => MS_F_CH_CON_LAT_SET_STAR_1414_STAR,
		MS_FILE_OP => MS_FILE_OP,
		MC_1301_ERROR_F_CH => MC_1301_ERROR_F_CH,
		MC_1405_ERROR_F_CH => MC_1405_ERROR_F_CH,
		PS_I_O_CHECK => PS_I_O_CHECK,
		PS_F_CH_CHECK_STAR_SIF => PS_F_CH_CHECK_STAR_SIF,
		MC_TAPE_ERROR => MC_TAPE_ERROR,
		PS_ERROR_SAMPLE => PS_ERROR_SAMPLE,
		PS_F_CH_CHECK_BUS_STAR_1414_STAR => PS_F_CH_CHECK_BUS_STAR_1414_STAR,
		MC_RBC_ERROR_1405_F_CH => MC_RBC_ERROR_1405_F_CH,
		PS_F_CH_CHECK_STAR_1412_19 => PS_F_CH_CHECK_STAR_1412_19,
		PS_F_CH_STATUS_SAMPLE_B => PS_F_CH_STATUS_SAMPLE_B,
		MS_F_CH_COND_LATCH_STAR_SIF => MS_F_CH_COND_LATCH_STAR_SIF,
		TW_RBC_ERROR_1405_F_CH => TW_RBC_ERROR_1405_F_CH,
		MC_1301_F_CH_CONDITION => MC_1301_F_CH_CONDITION,
		MC_1405_CONDITION_F_CH => MC_1405_CONDITION_F_CH,
		MC_SEL_OR_TI_ON_CH_2 => MC_SEL_OR_TI_ON_CH_2,
		PS_F_CH_COND_BUS_STAR_1414_STAR => PS_F_CH_COND_BUS_STAR_1414_STAR,
		MS_SET_F_CH_CON_LATCH_STAR_1414_STAR => MS_SET_F_CH_CON_LATCH_STAR_1414_STAR,
		PS_LOGIC_GATE_C_1 => PS_LOGIC_GATE_C_1,
		PS_LOZENGE_OR_ASTERISK => PS_LOZENGE_OR_ASTERISK,
		MC_1301_READY_F_CH => MC_1301_READY_F_CH,
		MC_1405_READY_F_CH => MC_1405_READY_F_CH,
		PS_F_CH_READY_BUS_STAR_1414_STAR => PS_F_CH_READY_BUS_STAR_1414_STAR,
		PS_F_CH_READY_BUS_STAR_1412_19 => PS_F_CH_READY_BUS_STAR_1412_19,
		PS_F_CH_READY_BUS_STAR_SIF => PS_F_CH_READY_BUS_STAR_SIF,
		MC_TAPE_READY => MC_TAPE_READY,
		PS_F_CH_2ND_ADDR_TRF => PS_F_CH_2ND_ADDR_TRF,
		MC_SELECT_AND_REWIND_STAR_F_CH => MC_SELECT_AND_REWIND_STAR_F_CH,
		PS_F_CH_BUSY_BUS_STAR_1414_STAR => PS_F_CH_BUSY_BUS_STAR_1414_STAR,
		PS_F_CH_BUSY_BUS_STAR_1412_19 => PS_F_CH_BUSY_BUS_STAR_1412_19,
		MC_1301_BUSY_F_CH => MC_1301_BUSY_F_CH,
		MC_1405_BUSY_F_CH => MC_1405_BUSY_F_CH,
		MC_TAPE_BUSY => MC_TAPE_BUSY,
		MS_I_RING_HDL_BUS => MS_I_RING_HDL_BUS,
		PS_I_RING_HDL_BUS => PS_I_RING_HDL_BUS,
		PS_F_CH_CHECK => PS_F_CH_CHECK,
		PS_F_CH_CONDITION => PS_F_CH_CONDITION,
		MS_F_CH_TAPE_INDICATOR => MS_F_CH_TAPE_INDICATOR,
		MS_F_CH_CHECK => MS_F_CH_CHECK,
		MS_F_CH_FILE_SET_CHECK_AT_A => MS_F_CH_FILE_SET_CHECK_AT_A,
		MS_F_CH_CHECK_BUS => MS_F_CH_CHECK_BUS,
		MS_F_CH_CONDITION => MS_F_CH_CONDITION,
		PS_F_CH_TAPE_INDICATOR => PS_F_CH_TAPE_INDICATOR,
		PS_F_CH_NOT_READY => PS_F_CH_NOT_READY,
		PS_F_CH_BUSY => PS_F_CH_BUSY,
		PS_F_CH_READY_BUS => PS_F_CH_READY_BUS,
		MS_F_CH_BUSY_BUS => MS_F_CH_BUSY_BUS,
		MS_F_CH_READY_BUS => MS_F_CH_READY_BUS,
		MS_F_CH_NOT_READY => MS_F_CH_NOT_READY,
		MS_F_CH_BUSY => MS_F_CH_BUSY,
		LAMP_15A1E17 => LAMP_15A1E17,
		LAMP_15A1F17 => LAMP_15A1F17,
		LAMP_15A1A17 => LAMP_15A1A17,
		LAMP_15A1C17 => LAMP_15A1C17);

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

MS_I_RING_HDL_BUS <= NOT PS_I_RING_HDL_BUS(11 downto 0);

-- Place your test bench code in the uut_process

uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;

   begin

   -- Your test bench code
   
   testName := "13.66.01.1 READY  ";
   
   wait for 30 ns;
   MS_F_CH_RESET <= '0';
   wait for 1 us;
   MS_F_CH_RESET <= '1';
   
   check1(PS_F_CH_READY_BUS,'0',testName,"SA");
   check1(MS_F_CH_READY_BUS,'1',testName,"SB");
   check1(PS_F_CH_NOT_READY,'0',testName,"SC");
   check1(MS_F_CH_NOT_READY,'1',testName,"SD");
   
   MC_1301_READY_F_CH <= '0';
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'0',testName,"1A");
   MS_F_CH_SELECT_UNIT_F <= '0';
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'1',testName,"1B");
   check1(MS_F_CH_READY_BUS,'0',testName,"1C");
   MC_1301_READY_F_CH <= '1';
   wait for 30 ns;
   MC_1405_READY_F_CH <= '0';
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'1',testName,"1D");
   MC_1405_READY_F_CH <= '1';   
   MS_F_CH_SELECT_UNIT_F <= '1';
   
  
   MC_TAPE_READY <= '0';
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'0',testName,"3A");
   MS_F_CH_SELECT_TAPE <= '0';
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'1',testName,"3B");
   MC_TAPE_READY <= '1';
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'0',testName,"3C");
   MS_F_CH_SELECT_TAPE <= '1';
   
   PS_F_CH_READY_BUS_STAR_SIF <= '1';
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'1',testName,"4A");
   PS_F_CH_READY_BUS_STAR_SIF <= '0';
   wait for 30 ns;
   PS_F_CH_READY_BUS_STAR_1412_19 <= '1';
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'1',testName,"4B");
   PS_F_CH_READY_BUS_STAR_1412_19 <= '0';
   wait for 30 ns;
   PS_F_CH_READY_BUS_STAR_1414_STAR <= '1';
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'1',testName,"4C");
   PS_F_CH_READY_BUS_STAR_1414_STAR <= '0';
   wait for 30 ns;
   
   PS_I_RING_HDL_BUS(5) <= '1';
   MC_SELECT_AND_REWIND_STAR_F_CH <= '0';
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'0',testName,"4D");
   MS_F_CH_SELECT_TAPE <= '0';
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'0',testName,"4F");
   PS_I_RING_HDL_BUS(5) <= '0';
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'1',testName,"4H");
   MC_SELECT_AND_REWIND_STAR_F_CH <= '1';
   MS_F_CH_SELECT_TAPE <= '1';         

  -- Make sure we are not ready 
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'0',testName,"5A");
   check1(PS_F_CH_NOT_READY,'0',testName,"5B");
   -- Set the not ready latch
   PS_F_CH_STATUS_SAMPLE_A <= '1';
   wait for 30 ns;
   check1(PS_F_CH_NOT_READY,'1',testName,"5C");
   check1(MS_F_CH_NOT_READY,'0',testName,"5D");
   -- Reset the latch before the next test, ready still off   
   PS_F_CH_STATUS_SAMPLE_A <= '0';
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_NOT_READY,'0',testName,"5E");
   
   PS_F_CH_2ND_ADDR_TRF <= '1';
   wait for 30 ns;
   check1(PS_F_CH_NOT_READY,'0',testName,"6A");
   check1(LAMP_15A1A17,'0',testName,"6B");
   PS_F_CH_STATUS_SAMPLE_B <= '1';
   wait for 30 ns;
   check1(PS_F_CH_NOT_READY,'1',testName,"6C");
   check1(LAMP_15A1A17,'1',testName,"6D");
   PS_F_CH_2ND_ADDR_TRF <= '0';
   PS_F_CH_STATUS_SAMPLE_B <= '0';
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_NOT_READY,'0',testName,"6E");
   
   -- Set ready back to true
   
   PS_F_CH_READY_BUS_STAR_SIF <= '1';
   wait for 30 ns;
   check1(PS_F_CH_READY_BUS,'1',testName,"7A");
   -- Should not be able to set the not ready latch now
   PS_F_CH_STATUS_SAMPLE_A <= '1';
   PS_F_CH_STATUS_SAMPLE_B <= '1';
   PS_F_CH_2ND_ADDR_TRF <= '1';
   wait for 30 ns;
   check1(PS_F_CH_NOT_READY,'0',testName,"7B");
   PS_F_CH_STATUS_SAMPLE_A <= '0';
   PS_F_CH_STATUS_SAMPLE_B <= '0';
   PS_F_CH_2ND_ADDR_TRF <= '0';
   PS_F_CH_READY_BUS_STAR_SIF <= '0';

   testName := "13.66.05.1 BUSY   ";
   
   check1(MS_F_CH_BUSY_BUS,'1',testName,"SB");
   check1(PS_F_CH_BUSY,'0',testName,"SC");
   check1(MS_F_CH_BUSY,'1',testName,"SD");
   
   MC_1301_BUSY_F_CH <= '0';
   wait for 30 ns;
   check1(MS_F_CH_BUSY_BUS,'1',testName,"1A");
   MS_F_CH_SELECT_UNIT_F <= '0';   
   wait for 30 ns;
   check1(MS_F_CH_BUSY_BUS,'0',testName,"1C");
   MC_1301_BUSY_F_CH <= '1';
   wait for 30 ns;
   check1(MS_F_CH_BUSY_BUS,'1',testName,"1E");
   MC_1405_BUSY_F_CH <= '0';
   wait for 30 ns;
   check1(MS_F_CH_BUSY_BUS,'0',testName,"1F");
   MC_1405_BUSY_F_CH <= '1';
   MS_F_CH_SELECT_UNIT_F <= '1';   
   wait for 30 ns;
      
   MC_TAPE_BUSY <= '0';
   wait for 30 ns;
   check1(MS_F_CH_BUSY_BUS,'1',testName,"3A");
   MS_F_CH_SELECT_TAPE <= '0';
   wait for 30 ns;
   check1(MS_F_CH_BUSY_BUS,'0',testName,"3B");
   MC_TAPE_BUSY <= '1';
   wait for 30 ns;
   check1(MS_F_CH_BUSY_BUS,'1',testName,"3C");
   MS_F_CH_SELECT_TAPE <= '1';

   PS_I_RING_HDL_BUS(5) <= '1';
   MC_SELECT_AND_REWIND_STAR_F_CH <= '0';
   wait for 30 ns;
   check1(MS_F_CH_BUSY_BUS,'1',testName,"4D");
   MS_F_CH_SELECT_TAPE <= '0';
   wait for 30 ns;
   check1(MS_F_CH_BUSY_BUS,'1',testName,"4F");
   PS_I_RING_HDL_BUS(5) <= '0';
   wait for 30 ns;
   check1(MS_F_CH_BUSY_BUS,'0',testName,"4H");
   MC_SELECT_AND_REWIND_STAR_F_CH <= '1';
   MS_F_CH_SELECT_TAPE <= '1';         

   PS_F_CH_BUSY_BUS_STAR_1412_19 <= '1';
   wait for 30 ns;
   check1(MS_F_CH_BUSY_BUS,'0',testName,"5A");
   PS_F_CH_BUSY_BUS_STAR_1412_19 <= '0';
   wait for 30 ns;
   PS_F_CH_BUSY_BUS_STAR_1414_STAR <= '1';
   wait for 30 ns;
   check1(MS_F_CH_BUSY_BUS,'0',testName,"5B");

   -- Leave busy bus set for the next several tests
   
   check1(PS_F_CH_BUSY,'0',testName,"6A");
   PS_F_CH_SELECT_TAPE <= '1';
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'0',testName,"6B");
   PS_LOZENGE_OR_ASTERISK <= '1';
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'0',testName,"6C");
   PS_I_RING_HDL_BUS(5) <= '1';
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'0',testName,"6D");
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'1',testName,"6E");
   check1(MS_F_CH_BUSY,'0',testName,"6F");
   check1(LAMP_15A1C17,'1',testName,"6G");
   PS_F_CH_SELECT_TAPE <= '0';
   PS_LOZENGE_OR_ASTERISK <= '0';
   PS_I_RING_HDL_BUS(5) <= '0';
   PS_LOGIC_GATE_C_1 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'1',testName,"6H");
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'0',testName,"6I");
   check1(LAMP_15A1C17,'0',testName,"6J");
   
   PS_F_CH_2ND_ADDR_TRF <= '1';
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'0',testName,"7A");
   PS_F_CH_STATUS_SAMPLE_B <= '1';
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'1',testName,"7B");
   PS_F_CH_2ND_ADDR_TRF <= '0';
   PS_F_CH_STATUS_SAMPLE_B <= '0';
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'1',testName,"7C");
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'0',testName,"7D");
   
   PS_F_CH_READY_BUS_STAR_SIF <= '1';
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'0',testName,"8A");
   PS_F_CH_STATUS_SAMPLE_A <= '1';   
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'1',testName,"8B");
   PS_F_CH_READY_BUS_STAR_SIF <= '0';
   PS_F_CH_STATUS_SAMPLE_A <= '0';   
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'1',testName,"8C");
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'0',testName,"8D");
   
   -- Without the Busy bus, the busy latch should not set
   
   PS_F_CH_BUSY_BUS_STAR_1414_STAR <= '0';
   wait for 30 ns;
   check1(MS_F_CH_BUSY_BUS,'1',testName,"9A");
      
   PS_F_CH_SELECT_TAPE <= '1';
   PS_LOZENGE_OR_ASTERISK <= '1';
   PS_I_RING_HDL_BUS(5) <= '1';
   PS_LOGIC_GATE_C_1 <= '1';
   PS_F_CH_2ND_ADDR_TRF <= '1';
   PS_F_CH_STATUS_SAMPLE_B <= '1';
   PS_F_CH_READY_BUS_STAR_SIF <= '1';
   PS_F_CH_STATUS_SAMPLE_A <= '1';   
   wait for 30 ns;
   check1(PS_F_CH_BUSY,'0',testName,"9B");

   PS_F_CH_SELECT_TAPE <= '0';
   PS_LOZENGE_OR_ASTERISK <= '0';
   PS_I_RING_HDL_BUS(5) <= '0';
   PS_LOGIC_GATE_C_1 <= '0';
   PS_F_CH_2ND_ADDR_TRF <= '0';
   PS_F_CH_STATUS_SAMPLE_B <= '0';
   PS_F_CH_READY_BUS_STAR_SIF <= '0';
   PS_F_CH_STATUS_SAMPLE_A <= '0';   

   testName := "13.66.01.1 BUSSES ";
   
   check1(MC_TAPE_ERROR,'1',testName,"SA");
   check1(MS_F_CH_CHECK_BUS,'1',testName,"SC");
   check1(PS_F_CH_TAPE_INDICATOR,'0',testName,"SE");
   check1(MS_F_CH_TAPE_INDICATOR,'1',testName,"SF");
   
   MC_1301_ERROR_F_CH <= '0';
   wait for 30 ns;
   check1(MS_F_CH_CHECK_BUS,'1',testName,"1A");
   MS_F_CH_SELECT_UNIT_F <= '0';
   wait for 30 ns;
   check1(MS_F_CH_CHECK_BUS,'0',testName,"1B");
   MC_1301_ERROR_F_CH <= '1';
   wait for 30 ns;
   check1(MS_F_CH_CHECK_BUS,'1',testName,"1C");
   MC_1405_ERROR_F_CH <= '0';
   wait for 30 ns;
   check1(MS_F_CH_CHECK_BUS,'0',testName,"1D");
   MS_F_CH_SELECT_UNIT_F <= '1';
   MC_1405_ERROR_F_CH <= '1';
   wait for 30 ns;
           
   MC_TAPE_ERROR <= '0';
   MS_F_CH_SELECT_TAPE <= '1';   
   wait for 30 ns;
   check1(MS_F_CH_CHECK_BUS,'1',testName,"4B");
   MS_F_CH_SELECT_TAPE <= '0';
   wait for 30 ns;
   check1(MS_F_CH_CHECK_BUS,'0',testName,"4D");
   MC_TAPE_ERROR <= '1';   
   wait for 30 ns;
   check1(MS_F_CH_CHECK_BUS,'1',testName,"4E");
   MS_F_CH_SELECT_TAPE <= '1';
   
   PS_F_CH_CHECK_BUS_STAR_1414_STAR <= '1';
   wait for 30 ns;
   check1(MS_F_CH_CHECK_BUS,'0',testName,"5A");
   PS_F_CH_CHECK_BUS_STAR_1414_STAR <= '0';
   wait for 30 ns;
   PS_F_CH_CHECK_STAR_SIF <= '1';
   wait for 30 ns;
   check1(MS_F_CH_CHECK_BUS,'0',testName,"5B");
   PS_F_CH_CHECK_STAR_SIF <= '0';
   PS_F_CH_CHECK_STAR_1412_19 <= '1';
   wait for 30 ns;
   check1(MS_F_CH_CHECK_BUS,'0',testName,"5C");
   PS_F_CH_CHECK_STAR_1412_19 <= '0';
   
   -- On the F Channel, there is no Condition Bus  :(
   -- Set the following so these will set the COND latch

   MS_SET_F_CH_CON_LATCH_STAR_1414_STAR <= '0';
   PS_F_CH_STATUS_SAMPLE_B <= '1';   
   
   MC_1301_F_CH_CONDITION <= '0';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'0',testName,"6A");
   MS_F_CH_SELECT_UNIT_F <= '0';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'1',testName,"6B");
   MC_1301_F_CH_CONDITION <= '1';
   wait for 30 ns;
   -- Reset
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;   

   check1(PS_F_CH_CONDITION,'0',testName,"6C");
   MC_1405_CONDITION_F_CH <= '0';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'1',testName,"6D");
   MC_1405_CONDITION_F_CH <= '1';
   MS_F_CH_SELECT_UNIT_F <= '1';
   -- Reset
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;   
   
   
   MC_SEL_OR_TI_ON_CH_2 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'0',testName,"7A");
   check1(PS_F_CH_TAPE_INDICATOR,'1',testName,"7B");
   check1(MS_F_CH_TAPE_INDICATOR,'0',testName,"7C");
   PS_F_CH_SELECT_TAPE <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'1',testName,"7D");
   MC_SEL_OR_TI_ON_CH_2 <= '1';
   wait for 30 ns;
   -- Reset
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;   
   
   check1(PS_F_CH_CONDITION,'0',testName,"7E");
   check1(PS_F_CH_TAPE_INDICATOR,'0',testName,"7F");
   check1(MS_F_CH_TAPE_INDICATOR,'1',testName,"7G");
   PS_F_CH_SELECT_TAPE <= '0';
   
   PS_F_CH_COND_BUS_STAR_1414_STAR <= '1';
   wait for 30 ns;
   PS_F_CH_COND_BUS_STAR_1414_STAR <= '0';
   wait for 30 ns;   
   check1(PS_F_CH_CONDITION,'1',testName,"8A");
   -- Reset
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;   
     
   MC_RBC_ERROR_1405_F_CH <= '0';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'0',testName,"10A");
   MS_F_CH_SELECT_UNIT_F <= '0';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'1',testName,"10C");
   MC_RBC_ERROR_1405_F_CH <= '1';
   wait for 30 ns;
   -- Reset
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;   
   
   check1(PS_F_CH_CONDITION,'0',testName,"10D");
   MS_F_CH_SELECT_UNIT_F <= '1';
   
   -- Back to normal after Condition Bus tests before the latch tests
   
   MS_SET_F_CH_CON_LATCH_STAR_1414_STAR <= '1';
   PS_F_CH_STATUS_SAMPLE_B <= '0';   
   
   testName := "13.66.01.1 LATCHES";
   
   check1(PS_F_CH_CHECK,'0',testName,"SA");
   check1(MS_F_CH_CHECK,'1',testName,"SB");
   check1(PS_F_CH_CONDITION,'0',testName,"SC");
   check1(MS_F_CH_CONDITION,'1',testName,"SD");
   check1(MS_F_CH_FILE_SET_CHECK_AT_A,'1',testName,"SE");
   check1(LAMP_15A1E17,'0',testName,"SF");
   check1(LAMP_15A1F17,'0',testName,"SG");
      
   PS_I_O_CHECK <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'0',testName,"2A");
   PS_F_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'0',testName,"2B");
   PS_ERROR_SAMPLE <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'1',testName,"2C");
   PS_I_O_CHECK <= '0';
   PS_F_CYCLE <= '0';
   PS_ERROR_SAMPLE <= '0';
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'1',testName,"2E");
   -- Reset
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;   
   check1(PS_F_CH_CHECK,'0',testName,"2F");
   
   PS_F_CH_CHECK_STAR_SIF <= '1';  -- Used for the next two tests
   
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'0',testName,"3A");
   check1(MS_F_CH_FILE_SET_CHECK_AT_A,'1',testName,"3B");
   PS_F_CH_READY_BUS_STAR_SIF <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'0',testName,"3C");
   check1(MS_F_CH_FILE_SET_CHECK_AT_A,'1',testName,"3D");
   PS_F_CH_BUSY_BUS_STAR_1412_19 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'0',testName,"3E");
   check1(MS_F_CH_FILE_SET_CHECK_AT_A,'1',testName,"3F");
   PS_F_CH_STATUS_SAMPLE_A <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'0',testName,"3G");
   check1(MS_F_CH_FILE_SET_CHECK_AT_A,'1',testName,"3H");
   PS_FILE_OP <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'1',testName,"3I");
   check1(MS_F_CH_CHECK,'0',testName,"3J");
   check1(MS_F_CH_FILE_SET_CHECK_AT_A,'0',testName,"3K");
   PS_F_CH_READY_BUS_STAR_SIF <= '0';
   wait for 30 ns;   
   check1(MS_F_CH_FILE_SET_CHECK_AT_A,'1',testName,"3L");   
   PS_F_CH_BUSY_BUS_STAR_1412_19 <= '0';
   PS_F_CH_STATUS_SAMPLE_A <= '0';
   PS_FILE_OP <= '0';
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'1',testName,"3M");   
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'0',testName,"3N");
   
   PS_F_CH_STATUS_SAMPLE_B <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'1',testName,"4A");
   PS_F_CH_STATUS_SAMPLE_B <= '0';
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'1',testName,"4B");   
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CHECK,'0',testName,"4C");
   PS_F_CH_CHECK_STAR_SIF <= '0';
   
   check1(PS_F_CH_CONDITION,'0',testName,"5A");
   MS_F_CH_COND_LATCH_STAR_SIF <= '0';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'1',testName,"5B");
   check1(MS_F_CH_CONDITION,'0',testName,"5C");
   check1(LAMP_15A1F17,'1',testName,"5D");   
   MS_F_CH_COND_LATCH_STAR_SIF <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'1',testName,"5E");
   MS_F_CH_RESET <= '0';
   wait for 30 ns;   
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'0',testName,"5F");

   -- Set the Condition bus (DOT function at 5I)
   
   PS_F_CH_COND_BUS_STAR_1414_STAR <= '1';

   MS_F_CH_CON_LAT_SET_STAR_1414_STAR <= '0';         
   PS_F_CH_READY_BUS_STAR_SIF <= '1';
   -- NOT busy bus
   check1(MS_F_CH_BUSY_BUS,'1',testName,"7A");
   PS_F_CH_SELECT_TAPE <= '0';
   MS_FILE_OP <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'0',testName,"7B");      
   PS_F_CH_STATUS_SAMPLE_A <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'1',testName,"7C");      
   PS_F_CH_COND_BUS_STAR_1414_STAR <= '0';
   PS_F_CH_READY_BUS_STAR_SIF <= '0';
   PS_F_CH_SELECT_TAPE <= '0';
   MS_FILE_OP <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'1',testName,"7D");      
   MS_F_CH_RESET <= '0';
   wait for 30 ns;   
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_CONDITION,'0',testName,"7E");

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
