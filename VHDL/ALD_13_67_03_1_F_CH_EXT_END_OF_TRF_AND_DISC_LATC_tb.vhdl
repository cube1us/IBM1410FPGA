-- Test Bench VHDL for IBM SMS ALD page 13.67.03.1
-- Title: F CH EXT END OF TRF AND DISC LATC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/8/2024 1:35:27 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_67_03_1_F_CH_EXT_END_OF_TRF_AND_DISC_LATC_tb is
end ALD_13_67_03_1_F_CH_EXT_END_OF_TRF_AND_DISC_LATC_tb;

architecture behavioral of ALD_13_67_03_1_F_CH_EXT_END_OF_TRF_AND_DISC_LATC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_13_67_03_1_F_CH_EXT_END_OF_TRF_AND_DISC_LATC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_F2_REG_FULL:	 in STD_LOGIC;
		PS_F_CH_OUTPUT_MODE:	 in STD_LOGIC;
		PS_F_CH_INT_END_OF_XFER_DELAYED:	 in STD_LOGIC;
		MS_F1_REG_FULL:	 in STD_LOGIC;
		MS_MASTER_ERROR:	 in STD_LOGIC;
		PS_F_CH_2ND_ADDR_TRF:	 in STD_LOGIC;
		MS_F2_REG_FULL:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		MS_F_CH_FILE_ADDRESS_TRF:	 in STD_LOGIC;
		MS_F_CH_END_OF_2ND_ADDR_TRF:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_21:	 in STD_LOGIC;
		PS_F_CH_STROBE_TRIGGER:	 in STD_LOGIC;
		MC_1301_END_ADDR_TRF_F_CH:	 in STD_LOGIC;
		PS_F_CH_INPUT_MODE:	 in STD_LOGIC;
		PS_F_CH_IN_PROCESS:	 in STD_LOGIC;
		PS_F_CH_SELECT_TAPE:	 in STD_LOGIC;
		MS_F_CH_RESET:	 in STD_LOGIC;
		PS_F_CH_SELECT_UNIT_F_LN_2:	 in STD_LOGIC;
		MC_TAPE_IN_PROCESS_F_CH_JRJ:	 in STD_LOGIC;
		MS_1401_MODE:	 in STD_LOGIC;
		MS_F_CH_READY_BUS:	 in STD_LOGIC;
		PS_SET_F_CH_EXT_END_TRF_STAR_SIF:	 in STD_LOGIC;
		PS_F_CH_EXT_END_OF_TRF_BUS_STAR_1414:	 in STD_LOGIC;
		PS_SET_F_CH_EXT_END_TRF_STAR_1412_19:	 in STD_LOGIC;
		MC_1301_END_OF_OP_STAR_F_CH:	 in STD_LOGIC;
		MC_1405_END_OF_OP_STAR_F_CH:	 in STD_LOGIC;
		MS_F_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		MC_F_CH_DISCON_TO_1301:	 out STD_LOGIC;
		MC_F_CH_DISCON_TO_1405:	 out STD_LOGIC;
		PS_F_CH_END_ADDR_TRF_1301:	 out STD_LOGIC;
		PS_F_CH_DISCON_LATCH:	 out STD_LOGIC;
		MS_F_CH_EXT_END_OF_TRANSFER:	 out STD_LOGIC;
		PS_F_CH_EXT_END_OF_TRANSFER:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_F2_REG_FULL: STD_LOGIC := '0';
	signal PS_F_CH_OUTPUT_MODE: STD_LOGIC := '0';
	signal PS_F_CH_INT_END_OF_XFER_DELAYED: STD_LOGIC := '0';
	signal MS_F1_REG_FULL: STD_LOGIC := '1';
	signal MS_MASTER_ERROR: STD_LOGIC := '1';
	signal PS_F_CH_2ND_ADDR_TRF: STD_LOGIC := '0';
	signal MS_F2_REG_FULL: STD_LOGIC := '1';
	signal PS_2ND_CLOCK_PULSE_2: STD_LOGIC := '0';
	signal MS_F_CH_FILE_ADDRESS_TRF: STD_LOGIC := '1';
	signal MS_F_CH_END_OF_2ND_ADDR_TRF: STD_LOGIC := '1';
	signal PS_1ST_CLOCK_PULSE_21: STD_LOGIC := '0';
	signal PS_F_CH_STROBE_TRIGGER: STD_LOGIC := '0';
	signal MC_1301_END_ADDR_TRF_F_CH: STD_LOGIC := '1';
	signal PS_F_CH_INPUT_MODE: STD_LOGIC := '0';
	signal PS_F_CH_IN_PROCESS: STD_LOGIC := '0';
	signal PS_F_CH_SELECT_TAPE: STD_LOGIC := '0';
	signal MS_F_CH_RESET: STD_LOGIC := '1';
	signal PS_F_CH_SELECT_UNIT_F_LN_2: STD_LOGIC := '0';
	signal MC_TAPE_IN_PROCESS_F_CH_JRJ: STD_LOGIC := '1';
	signal MS_1401_MODE: STD_LOGIC := '1';
	signal MS_F_CH_READY_BUS: STD_LOGIC := '1';
	signal PS_SET_F_CH_EXT_END_TRF_STAR_SIF: STD_LOGIC := '0';
	signal PS_F_CH_EXT_END_OF_TRF_BUS_STAR_1414: STD_LOGIC := '0';
	signal PS_SET_F_CH_EXT_END_TRF_STAR_1412_19: STD_LOGIC := '0';
	signal MC_1301_END_OF_OP_STAR_F_CH: STD_LOGIC := '1';
	signal MC_1405_END_OF_OP_STAR_F_CH: STD_LOGIC := '1';
	signal MS_F_CH_SELECT_UNIT_F: STD_LOGIC := '1';

	-- Outputs

	signal MC_F_CH_DISCON_TO_1301: STD_LOGIC;
	signal MC_F_CH_DISCON_TO_1405: STD_LOGIC;
	signal PS_F_CH_END_ADDR_TRF_1301: STD_LOGIC;
	signal PS_F_CH_DISCON_LATCH: STD_LOGIC;
	signal MS_F_CH_EXT_END_OF_TRANSFER: STD_LOGIC;
	signal PS_F_CH_EXT_END_OF_TRANSFER: STD_LOGIC;

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

	UUT: ALD_13_67_03_1_F_CH_EXT_END_OF_TRF_AND_DISC_LATC port map(
		FPGA_CLK => FPGA_CLK,
		PS_F2_REG_FULL => PS_F2_REG_FULL,
		PS_F_CH_OUTPUT_MODE => PS_F_CH_OUTPUT_MODE,
		PS_F_CH_INT_END_OF_XFER_DELAYED => PS_F_CH_INT_END_OF_XFER_DELAYED,
		MS_F1_REG_FULL => MS_F1_REG_FULL,
		MS_MASTER_ERROR => MS_MASTER_ERROR,
		PS_F_CH_2ND_ADDR_TRF => PS_F_CH_2ND_ADDR_TRF,
		MS_F2_REG_FULL => MS_F2_REG_FULL,
		PS_2ND_CLOCK_PULSE_2 => PS_2ND_CLOCK_PULSE_2,
		MS_F_CH_FILE_ADDRESS_TRF => MS_F_CH_FILE_ADDRESS_TRF,
		MS_F_CH_END_OF_2ND_ADDR_TRF => MS_F_CH_END_OF_2ND_ADDR_TRF,
		PS_1ST_CLOCK_PULSE_21 => PS_1ST_CLOCK_PULSE_21,
		PS_F_CH_STROBE_TRIGGER => PS_F_CH_STROBE_TRIGGER,
		MC_1301_END_ADDR_TRF_F_CH => MC_1301_END_ADDR_TRF_F_CH,
		PS_F_CH_INPUT_MODE => PS_F_CH_INPUT_MODE,
		PS_F_CH_IN_PROCESS => PS_F_CH_IN_PROCESS,
		PS_F_CH_SELECT_TAPE => PS_F_CH_SELECT_TAPE,
		MS_F_CH_RESET => MS_F_CH_RESET,
		PS_F_CH_SELECT_UNIT_F_LN_2 => PS_F_CH_SELECT_UNIT_F_LN_2,
		MC_TAPE_IN_PROCESS_F_CH_JRJ => MC_TAPE_IN_PROCESS_F_CH_JRJ,
		MS_1401_MODE => MS_1401_MODE,
		MS_F_CH_READY_BUS => MS_F_CH_READY_BUS,
		PS_SET_F_CH_EXT_END_TRF_STAR_SIF => PS_SET_F_CH_EXT_END_TRF_STAR_SIF,
		PS_F_CH_EXT_END_OF_TRF_BUS_STAR_1414 => PS_F_CH_EXT_END_OF_TRF_BUS_STAR_1414,
		PS_SET_F_CH_EXT_END_TRF_STAR_1412_19 => PS_SET_F_CH_EXT_END_TRF_STAR_1412_19,
		MC_1301_END_OF_OP_STAR_F_CH => MC_1301_END_OF_OP_STAR_F_CH,
		MC_1405_END_OF_OP_STAR_F_CH => MC_1405_END_OF_OP_STAR_F_CH,
		MS_F_CH_SELECT_UNIT_F => MS_F_CH_SELECT_UNIT_F,
		MC_F_CH_DISCON_TO_1301 => MC_F_CH_DISCON_TO_1301,
		MC_F_CH_DISCON_TO_1405 => MC_F_CH_DISCON_TO_1405,
		PS_F_CH_END_ADDR_TRF_1301 => PS_F_CH_END_ADDR_TRF_1301,
		PS_F_CH_DISCON_LATCH => PS_F_CH_DISCON_LATCH,
		MS_F_CH_EXT_END_OF_TRANSFER => MS_F_CH_EXT_END_OF_TRANSFER,
		PS_F_CH_EXT_END_OF_TRANSFER => PS_F_CH_EXT_END_OF_TRANSFER);

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

   testName := "13.42.11.1        ";
   
   -- Reset the latches
   MS_F_CH_RESET <= '0';
   wait for 60 ns;
   MS_F_CH_RESET <= '1';
   
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"1A");
   check1(PS_F_CH_END_ADDR_TRF_1301,'0',testName,"1C");
   
   MC_1301_END_ADDR_TRF_F_CH <= '0';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"1D");
   check1(PS_F_CH_END_ADDR_TRF_1301,'1',testName,"1F");
   check1(MC_F_CH_DISCON_TO_1301,'1',testName,"1G");
   check1(MC_F_CH_DISCON_TO_1405,'1',testName,"1H");
   PS_F2_REG_FULL <= '1';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"1I");
   PS_F_CH_2ND_ADDR_TRF <= '1';   
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'1',testName,"1K");
   check1(MC_F_CH_DISCON_TO_1301,'0',testName,"1M");
   check1(MC_F_CH_DISCON_TO_1405,'0',testName,"1N");
   -- In spite of what the ILD says, this does latch, apparently
   MC_1301_END_ADDR_TRF_F_CH <= '1';
   PS_F2_REG_FULL <= '0';
   PS_F_CH_2ND_ADDR_TRF <= '0';   
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'1',testName,"1O");
   
   -- Reset the latches
   MS_F_CH_RESET <= '0';
   wait for 60 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   MS_F1_REG_FULL <= '0';
   MS_F2_REG_FULL <= '0';
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"2A");
   PS_F_CH_2ND_ADDR_TRF <= '1';   
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"2C");
   MS_F1_REG_FULL <= '1';  -- NOT E1 reg full   
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"2D");
   MS_F2_REG_FULL <= '1'; -- NOT E2 reg Full
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"2E");
   PS_2ND_CLOCK_PULSE_2 <= '1';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"2F");
   PS_F_CH_STROBE_TRIGGER <= '1';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"2G");
   PS_F_CH_INT_END_OF_XFER_DELAYED <= '1';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'1',testName,"2H");
   MS_F1_REG_FULL <= '0';
   MS_F2_REG_FULL <= '0';
   PS_F_CH_2ND_ADDR_TRF <= '0';   
   PS_2ND_CLOCK_PULSE_2 <= '0';
   PS_F_CH_STROBE_TRIGGER <= '0';
   PS_F_CH_INT_END_OF_XFER_DELAYED <= '0';
   -- Should stay latched
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'1',testName,"2I");
   
   -- Reset the latches
   MS_F_CH_RESET <= '0';
   wait for 60 ns;
   MS_F_CH_RESET <= '1';
   PS_F_CH_INT_END_OF_XFER_DELAYED <= '1';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"3A");
   PS_F_CH_INPUT_MODE <= '1';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"3B");
   PS_F_CH_SELECT_UNIT_F_LN_2 <= '1';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'1',testName,"3C");
   PS_F_CH_INT_END_OF_XFER_DELAYED <= '0';
   PS_F_CH_INPUT_MODE <= '0';
   PS_F_CH_SELECT_UNIT_F_LN_2 <= '0';
   -- Should stay latched
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'1',testName,"3D");
   MS_F_CH_END_OF_2ND_ADDR_TRF <= '0';  -- Different reset this time
   wait for 30 ns;
   MS_F_CH_END_OF_2ND_ADDR_TRF <= '1';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"3E");
   
   MS_F_CH_FILE_ADDRESS_TRF <= '0';
   MS_F1_REG_FULL <= '0';
   MS_F2_REG_FULL <= '0';

   PS_F_CH_OUTPUT_MODE <= '1';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"4A");
   PS_F_CH_INT_END_OF_XFER_DELAYED <= '1';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"4B");
   MS_F_CH_FILE_ADDRESS_TRF <= '1'; -- NOT ...
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"4C");
   MS_F1_REG_FULL <= '1';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"4D");
   MS_F2_REG_FULL <= '1';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'0',testName,"4E");
   PS_2ND_CLOCK_PULSE_2 <= '1';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'1',testName,"4F");
   MS_F_CH_FILE_ADDRESS_TRF <= '0';
   MS_F1_REG_FULL <= '0';
   MS_F2_REG_FULL <= '0';
   PS_F_CH_INT_END_OF_XFER_DELAYED <= '0';
   PS_2ND_CLOCK_PULSE_2 <= '0';
   PS_F_CH_OUTPUT_MODE <= '1';
   wait for 30 ns;
   -- Should stay latched   
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'1',testName,"4G");

   -- Reset the latches
   MS_F_CH_RESET <= '0';
   wait for 60 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   MS_MASTER_ERROR <= '0';
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'1',testName,"5A");
   MS_MASTER_ERROR <= '1';   
   wait for 30 ns;
   check1(PS_F_CH_DISCON_LATCH,'1',testName,"5B");

   -- Leave latch set for beginning of next test  
   
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"6A"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"6B");

   MS_F_CH_READY_BUS <= '0';
   MS_1401_MODE <= '0';
   PS_F_CH_IN_PROCESS <= '1';   
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_21 <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_21 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"8A"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"8B");
   MS_F_CH_READY_BUS <= '1';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_21 <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_21 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"8B"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"8C");
   MS_1401_MODE <= '1';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_21 <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_21 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"8D"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"8E");
   MS_F_CH_READY_BUS <= '0';
   MS_1401_MODE <= '0';
   PS_F_CH_IN_PROCESS <= '0';   
   -- Reset the latches
   MS_F_CH_RESET <= '0';
   wait for 60 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"8F"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"8G");

   PS_SET_F_CH_EXT_END_TRF_STAR_SIF <= '1';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_21 <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_21 <= '0';
   wait for 30 ns;
   PS_SET_F_CH_EXT_END_TRF_STAR_SIF <= '0';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"9A"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"9B");
   MS_F_CH_RESET <= '0';
   wait for 60 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"9C"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"9D");

   PS_F_CH_EXT_END_OF_TRF_BUS_STAR_1414 <= '1';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_21 <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_21 <= '0';
   wait for 30 ns;
   PS_F_CH_EXT_END_OF_TRF_BUS_STAR_1414 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"9E"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"9F");
   MS_F_CH_RESET <= '0';
   wait for 60 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"9G"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"9H");

   PS_SET_F_CH_EXT_END_TRF_STAR_1412_19 <= '1';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_21 <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_21 <= '0';
   wait for 30 ns;
   PS_SET_F_CH_EXT_END_TRF_STAR_1412_19 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"9I"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"9J");
   MS_F_CH_RESET <= '0';
   wait for 60 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"9K"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"9L");

   MC_1405_END_OF_OP_STAR_F_CH <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_21 <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_21 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"10A"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"10B");
   MS_F_CH_SELECT_UNIT_F <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_21 <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_21 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"10C"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"10D");
   MC_1405_END_OF_OP_STAR_F_CH <= '1';
   -- Reset the latches
   MS_F_CH_RESET <= '0';
   wait for 60 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"10E"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"10F");
   MC_1301_END_OF_OP_STAR_F_CH <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_21 <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_21 <= '0';
   wait for 30 ns;
   MC_1301_END_OF_OP_STAR_F_CH <= '1';
   MS_F_CH_SELECT_UNIT_F <= '1';   
   wait for 90 ns;
   -- Should still be set
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"10G"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"10H");
   -- Reset the latches
   MS_F_CH_RESET <= '0';
   wait for 60 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"10I"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"10J");
   
   PS_F_CH_SELECT_TAPE <= '1';
   -- Note that MC_TAPE_IN_PROCESS_F_CH_JRJ is already active
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_21 <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_21 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"11A"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"11B");
   PS_F_CH_IN_PROCESS <= '1';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_21 <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_21 <= '0';
   wait for 30 ns;
   -- Should not set because Ext End of Trf Ctrl Latch not yet set
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"11C"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"11D");
   MC_TAPE_IN_PROCESS_F_CH_JRJ <= '0';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_21 <= '1';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_21 <= '0';
   wait for 30 ns;
   -- Now, the Ext End of Trf Ctrl latch is set, BUT we now need
   -- NOT tape in process to set the Ext End of Transfer Latch
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"11E"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"11F");
   MC_TAPE_IN_PROCESS_F_CH_JRJ <= '1';
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_21 <= '1';
   wait for 90 ns;  -- Should set trigger   
   PS_1ST_CLOCK_PULSE_21 <= '0';
   wait for 30 ns;
   PS_F_CH_SELECT_TAPE <= '0';
   PS_F_CH_IN_PROCESS <= '0';
   wait for 30 ns;  -- Latch should stay set
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"11G"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"11H");
   -- Reset the latches
   MS_F_CH_RESET <= '0';
   wait for 60 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   check1(PS_F_CH_EXT_END_OF_TRANSFER,'0',testname,"10I"); 
   check1(MS_F_CH_EXT_END_OF_TRANSFER,'1',testname,"10J");
  
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
