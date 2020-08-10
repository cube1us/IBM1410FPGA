-- Test BenchVHDL for IBM SMS ALD group FChStatusSample
-- Title: FChStatusSample
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/9/2020 8:35:23 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity FChStatusSample_tb is
end FChStatusSample_tb;

architecture behavioral of FChStatusSample_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component FChStatusSample
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_LOGIC_GATE_D_1: in STD_LOGIC;
		PS_LOGIC_GATE_E_1: in STD_LOGIC;
		PS_LOGIC_GATE_F_1: in STD_LOGIC;
		PS_I_CYCLE_1: in STD_LOGIC;
		PS_UNIT_CTRL_OP_CODE: in STD_LOGIC;
		PS_I_O_MOVE_OR_I_O_LOAD_OP_CODE: in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK: in STD_LOGIC;
		MS_F_CH_SELECT_UNIT_F_A: in STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_EXTENSION: in STD_LOGIC;
		PS_B_CH_WM_BIT_1: in STD_LOGIC;
		PS_GATE_F_CH_ST_SAMPLE_A_STAR_1414_STAR: in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2: in STD_LOGIC;
		PS_LOGIC_GATE_Z: in STD_LOGIC;
		MS_F_CH_RESET: in STD_LOGIC;
		PS_F_CH_IN_PROCESS: in STD_LOGIC;
		PS_F_CH_INT_END_OF_TRANSFER: in STD_LOGIC;
		MS_F_CH_END_OF_2ND_ADDR_TRF: in STD_LOGIC;
		PS_F_CH_EXT_END_OF_TRANSFER: in STD_LOGIC;
		PS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (12 downTo 0);
		PS_F_CH_STATUS_SAMPLE_A_DELAY: out STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_A: out STD_LOGIC;
		MS_F_CH_STATUS_SAMPLE_A_DELAY: out STD_LOGIC;
		MS_F_CH_STATUS_SAMPLE_B_DELAY: out STD_LOGIC;
		PS_F_CH_INT_END_OF_XFER_DELAYED: out STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_B: out STD_LOGIC;
		PS_F_CH_SECOND_SAMPLE_B: out STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_B_1: out STD_LOGIC;
		MS_F_CH_INT_END_OF_XFER_DELAYED: out STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_B_DELAY: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_D_1: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_E_1: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_F_1: STD_LOGIC := '0';
	signal PS_I_CYCLE_1: STD_LOGIC := '0';
	signal PS_UNIT_CTRL_OP_CODE: STD_LOGIC := '0';
	signal PS_I_O_MOVE_OR_I_O_LOAD_OP_CODE: STD_LOGIC := '0';
	signal PS_LOZENGE_OR_ASTERISK: STD_LOGIC := '0';
	signal MS_F_CH_SELECT_UNIT_F_A: STD_LOGIC := '1';
	signal PS_FILE_OP_DOT_D_CY_DOT_EXTENSION: STD_LOGIC := '0';
	signal PS_B_CH_WM_BIT_1: STD_LOGIC := '0';
	signal PS_GATE_F_CH_ST_SAMPLE_A_STAR_1414_STAR: STD_LOGIC := '0';
	signal PS_2ND_CLOCK_PULSE_2: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_Z: STD_LOGIC := '0';
	signal MS_F_CH_RESET: STD_LOGIC := '1';
	signal PS_F_CH_IN_PROCESS: STD_LOGIC := '0';
	signal PS_F_CH_INT_END_OF_TRANSFER: STD_LOGIC := '0';
	signal MS_F_CH_END_OF_2ND_ADDR_TRF: STD_LOGIC := '1';
	signal PS_F_CH_EXT_END_OF_TRANSFER: STD_LOGIC := '0';
	signal PS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (12 downTo 0) := "0000000000000";

	-- Outputs

	signal PS_F_CH_STATUS_SAMPLE_A_DELAY: STD_LOGIC;
	signal PS_F_CH_STATUS_SAMPLE_A: STD_LOGIC;
	signal MS_F_CH_STATUS_SAMPLE_A_DELAY: STD_LOGIC;
	signal MS_F_CH_STATUS_SAMPLE_B_DELAY: STD_LOGIC;
	signal PS_F_CH_INT_END_OF_XFER_DELAYED: STD_LOGIC;
	signal PS_F_CH_STATUS_SAMPLE_B: STD_LOGIC;
	signal PS_F_CH_SECOND_SAMPLE_B: STD_LOGIC;
	signal PS_F_CH_STATUS_SAMPLE_B_1: STD_LOGIC;
	signal MS_F_CH_INT_END_OF_XFER_DELAYED: STD_LOGIC;
	signal PS_F_CH_STATUS_SAMPLE_B_DELAY: STD_LOGIC;

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

	UUT: FChStatusSample port map(
		FPGA_CLK => FPGA_CLK,
		PS_LOGIC_GATE_D_1 => PS_LOGIC_GATE_D_1,
		PS_LOGIC_GATE_E_1 => PS_LOGIC_GATE_E_1,
		PS_LOGIC_GATE_F_1 => PS_LOGIC_GATE_F_1,
		PS_I_CYCLE_1 => PS_I_CYCLE_1,
		PS_UNIT_CTRL_OP_CODE => PS_UNIT_CTRL_OP_CODE,
		PS_I_O_MOVE_OR_I_O_LOAD_OP_CODE => PS_I_O_MOVE_OR_I_O_LOAD_OP_CODE,
		PS_LOZENGE_OR_ASTERISK => PS_LOZENGE_OR_ASTERISK,
		MS_F_CH_SELECT_UNIT_F_A => MS_F_CH_SELECT_UNIT_F_A,
		PS_FILE_OP_DOT_D_CY_DOT_EXTENSION => PS_FILE_OP_DOT_D_CY_DOT_EXTENSION,
		PS_B_CH_WM_BIT_1 => PS_B_CH_WM_BIT_1,
		PS_GATE_F_CH_ST_SAMPLE_A_STAR_1414_STAR => PS_GATE_F_CH_ST_SAMPLE_A_STAR_1414_STAR,
		PS_2ND_CLOCK_PULSE_2 => PS_2ND_CLOCK_PULSE_2,
		PS_LOGIC_GATE_Z => PS_LOGIC_GATE_Z,
		MS_F_CH_RESET => MS_F_CH_RESET,
		PS_F_CH_IN_PROCESS => PS_F_CH_IN_PROCESS,
		PS_F_CH_INT_END_OF_TRANSFER => PS_F_CH_INT_END_OF_TRANSFER,
		MS_F_CH_END_OF_2ND_ADDR_TRF => MS_F_CH_END_OF_2ND_ADDR_TRF,
		PS_F_CH_EXT_END_OF_TRANSFER => PS_F_CH_EXT_END_OF_TRANSFER,
		PS_I_RING_HDL_BUS => PS_I_RING_HDL_BUS,
		PS_F_CH_STATUS_SAMPLE_A_DELAY => PS_F_CH_STATUS_SAMPLE_A_DELAY,
		PS_F_CH_STATUS_SAMPLE_A => PS_F_CH_STATUS_SAMPLE_A,
		MS_F_CH_STATUS_SAMPLE_A_DELAY => MS_F_CH_STATUS_SAMPLE_A_DELAY,
		MS_F_CH_STATUS_SAMPLE_B_DELAY => MS_F_CH_STATUS_SAMPLE_B_DELAY,
		PS_F_CH_INT_END_OF_XFER_DELAYED => PS_F_CH_INT_END_OF_XFER_DELAYED,
		PS_F_CH_STATUS_SAMPLE_B => PS_F_CH_STATUS_SAMPLE_B,
		PS_F_CH_SECOND_SAMPLE_B => PS_F_CH_SECOND_SAMPLE_B,
		PS_F_CH_STATUS_SAMPLE_B_1 => PS_F_CH_STATUS_SAMPLE_B_1,
		MS_F_CH_INT_END_OF_XFER_DELAYED => MS_F_CH_INT_END_OF_XFER_DELAYED,
		PS_F_CH_STATUS_SAMPLE_B_DELAY => PS_F_CH_STATUS_SAMPLE_B_DELAY);

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

   testName := "13.67.02.1        ";
   
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   
   check1(PS_F_CH_INT_END_OF_XFER_DELAYED,'0',testName,"1A");
   check1(MS_F_CH_INT_END_OF_XFER_DELAYED,'1',testName,"1B");
   PS_F_CH_INT_END_OF_TRANSFER <= '1';
   wait for 30 ns;
   check1(PS_F_CH_INT_END_OF_XFER_DELAYED,'0',testName,"1C");
   check1(MS_F_CH_INT_END_OF_XFER_DELAYED,'1',testName,"1D");
   PS_LOGIC_GATE_Z <= '1';
   wait for 30 ns; -- Sets latch
   PS_F_CH_INT_END_OF_TRANSFER <= '0';
   PS_LOGIC_GATE_Z <= '0';
   wait for 30 ns;  -- Latch stays set
   check1(PS_F_CH_INT_END_OF_XFER_DELAYED,'1',testName,"1E");
   check1(MS_F_CH_INT_END_OF_XFER_DELAYED,'0',testName,"1F");
   MS_F_CH_END_OF_2ND_ADDR_TRF <= '0';
   wait for 30 ns;
   MS_F_CH_END_OF_2ND_ADDR_TRF <= '1';
   wait for 30 ns; -- Latch stays reset
   check1(PS_F_CH_INT_END_OF_XFER_DELAYED,'0',testName,"1G");
   check1(MS_F_CH_INT_END_OF_XFER_DELAYED,'1',testName,"1H");
   
   
   -- Set the latch again, for later tests
   
   PS_F_CH_INT_END_OF_TRANSFER <= '1';
   PS_LOGIC_GATE_Z <= '1';
   wait for 30 ns; -- Sets latch
   PS_F_CH_INT_END_OF_TRANSFER <= '0';
   PS_LOGIC_GATE_Z <= '0';
   wait for 30 ns;  -- Latch stays set
   check1(PS_F_CH_INT_END_OF_XFER_DELAYED,'1',testName,"1I");
   
     
   check1(PS_F_CH_STATUS_SAMPLE_B,'0',testname,"2A");
   check1(PS_F_CH_STATUS_SAMPLE_B_1,'0',testname,"2B");
   check1(PS_F_CH_SECOND_SAMPLE_B,'0',testname,"2C");
   check1(PS_F_CH_STATUS_SAMPLE_B_DELAY,'0',testname,"2D");
   check1(MS_F_CH_STATUS_SAMPLE_B_DELAY,'1',testname,"2E");
   
   PS_F_CH_IN_PROCESS <= '1'; -- To prevent reset
   PS_F_CH_EXT_END_OF_TRANSFER <= '1';
   PS_2ND_CLOCK_PULSE_2 <= '1';
   wait for 30 ns;   
   PS_2ND_CLOCK_PULSE_2 <= '0';
   wait for 30 ns; -- Not Yet
   check1(PS_F_CH_STATUS_SAMPLE_B,'0',testname,"2F");
   check1(PS_F_CH_STATUS_SAMPLE_B_1,'0',testname,"2G");
   check1(PS_F_CH_SECOND_SAMPLE_B,'0',testname,"2H");
   check1(PS_F_CH_STATUS_SAMPLE_B_DELAY,'0',testname,"2I");
   check1(MS_F_CH_STATUS_SAMPLE_B_DELAY,'1',testname,"2J");

   PS_LOGIC_GATE_Z <= '1';
   PS_2ND_CLOCK_PULSE_2 <= '1';
   wait for 30 ns;   
   PS_2ND_CLOCK_PULSE_2 <= '0';
   wait for 30 ns; -- Now, first one should be set
   PS_LOGIC_GATE_Z <= '0';
   PS_F_CH_EXT_END_OF_TRANSFER <= '0';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_B,'1',testname,"2K");
   check1(PS_F_CH_STATUS_SAMPLE_B_1,'1',testname,"2L");
   check1(PS_F_CH_SECOND_SAMPLE_B,'0',testname,"2M");
   check1(PS_F_CH_STATUS_SAMPLE_B_DELAY,'0',testname,"2N");
   check1(MS_F_CH_STATUS_SAMPLE_B_DELAY,'1',testname,"2O");
   
   -- Test Reset of Status Sample B
   
   PS_F_CH_IN_PROCESS <= '0';
   wait for 30 ns;
   PS_F_CH_IN_PROCESS <= '1';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_B,'0',testname,"2P");
   check1(PS_F_CH_STATUS_SAMPLE_B_1,'0',testname,"2Q");
   
   -- Then set it again for the next test
   
   PS_LOGIC_GATE_Z <= '1';
   PS_2ND_CLOCK_PULSE_2 <= '1';
   PS_F_CH_EXT_END_OF_TRANSFER <= '1';
   wait for 30 ns;   
   PS_2ND_CLOCK_PULSE_2 <= '0';
   wait for 30 ns; -- Now, first one should be set again
   PS_LOGIC_GATE_Z <= '0';
   PS_F_CH_EXT_END_OF_TRANSFER <= '0';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_B,'1',testname,"2R");
   check1(PS_F_CH_STATUS_SAMPLE_B_1,'1',testname,"2S");
   check1(PS_F_CH_SECOND_SAMPLE_B,'0',testname,"2T");
   check1(PS_F_CH_STATUS_SAMPLE_B_DELAY,'0',testname,"2U");
   check1(MS_F_CH_STATUS_SAMPLE_B_DELAY,'1',testname,"2V");
   
   -- On the next clock, it should shift down one

   PS_2ND_CLOCK_PULSE_2 <= '1';
   wait for 30 ns;   
   PS_2ND_CLOCK_PULSE_2 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_B,'0',testname,"3A");
   check1(PS_F_CH_STATUS_SAMPLE_B_1,'0',testname,"3B");
   check1(PS_F_CH_SECOND_SAMPLE_B,'1',testname,"3C");
   check1(PS_F_CH_STATUS_SAMPLE_B_DELAY,'0',testname,"3D");
   check1(MS_F_CH_STATUS_SAMPLE_B_DELAY,'1',testname,"3E");
   
   -- And then the next one
   
   PS_2ND_CLOCK_PULSE_2 <= '1';
   wait for 30 ns;   
   PS_2ND_CLOCK_PULSE_2 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_B,'0',testname,"4A");
   check1(PS_F_CH_STATUS_SAMPLE_B_1,'0',testname,"4B");
   check1(PS_F_CH_SECOND_SAMPLE_B,'0',testname,"4C");
   check1(PS_F_CH_STATUS_SAMPLE_B_DELAY,'1',testname,"4D");
   check1(MS_F_CH_STATUS_SAMPLE_B_DELAY,'0',testname,"4E");
            
   -- Then back to square one

   PS_2ND_CLOCK_PULSE_2 <= '1';
   wait for 30 ns;   
   PS_2ND_CLOCK_PULSE_2 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_B,'0',testname,"5A");
   check1(PS_F_CH_STATUS_SAMPLE_B_1,'0',testname,"5B");
   check1(PS_F_CH_SECOND_SAMPLE_B,'0',testname,"5C");
   check1(PS_F_CH_STATUS_SAMPLE_B_DELAY,'0',testname,"5D");
   check1(MS_F_CH_STATUS_SAMPLE_B_DELAY,'1',testname,"5E");
   
   -- And it should stay that way

   PS_2ND_CLOCK_PULSE_2 <= '1';
   wait for 30 ns;   
   PS_2ND_CLOCK_PULSE_2 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_B,'0',testname,"5A");
   check1(PS_F_CH_STATUS_SAMPLE_B_1,'0',testname,"5B");
   check1(PS_F_CH_SECOND_SAMPLE_B,'0',testname,"5C");
   check1(PS_F_CH_STATUS_SAMPLE_B_DELAY,'0',testname,"5D");
   check1(MS_F_CH_STATUS_SAMPLE_B_DELAY,'1',testname,"5E");
   
   -- One last test - so set it again
   
   PS_LOGIC_GATE_Z <= '1';
   PS_2ND_CLOCK_PULSE_2 <= '1';
   PS_F_CH_EXT_END_OF_TRANSFER <= '1';
   wait for 30 ns;   
   PS_2ND_CLOCK_PULSE_2 <= '0';
   wait for 30 ns; -- Now, first one should be set again
   PS_LOGIC_GATE_Z <= '0';
   PS_F_CH_EXT_END_OF_TRANSFER <= '0';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_B,'1',testname,"6A");
 
   -- And to the next one...
   
   PS_2ND_CLOCK_PULSE_2 <= '1';
   wait for 30 ns;   
   PS_2ND_CLOCK_PULSE_2 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_B,'0',testname,"6C");
   check1(PS_F_CH_SECOND_SAMPLE_B,'1',testname,"6E");
   
   -- And the last one
   
   PS_2ND_CLOCK_PULSE_2 <= '1';
   wait for 30 ns;   
   PS_2ND_CLOCK_PULSE_2 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_B,'0',testname,"6F");
   check1(PS_F_CH_SECOND_SAMPLE_B,'0',testname,"6H");
   check1(PS_F_CH_STATUS_SAMPLE_B_DELAY,'1',testname,"6I");
   check1(MS_F_CH_STATUS_SAMPLE_B_DELAY,'0',testname,"6J");

   testName := "13.67.01.1        ";
   
   
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"1A");
   MS_F_CH_SELECT_UNIT_F_A <= '0';
   PS_I_O_MOVE_OR_I_O_LOAD_OP_CODE <= '1';
   PS_LOZENGE_OR_ASTERISK <= '1';
   PS_I_CYCLE_1 <= '1';
   PS_I_RING_HDL_BUS(12) <= '1';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"1B");
   MS_F_CH_SELECT_UNIT_F_A <= '1';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"1C");
   PS_LOGIC_GATE_D_1 <= '1';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_A,'1',testName,"1D");
   
   PS_LOGIC_GATE_D_1 <= '1';  -- Leave on for a while
   
   MS_F_CH_SELECT_UNIT_F_A <= '0';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"1E");
   MS_F_CH_SELECT_UNIT_F_A <= '1';
   wait for 30 ns;   
   PS_I_O_MOVE_OR_I_O_LOAD_OP_CODE <= '0';
   wait for 30 ns;   
   check1(PS_f_CH_STATUS_SAMPLE_A,'0',testName,"1F");
   PS_I_O_MOVE_OR_I_O_LOAD_OP_CODE <= '1';
   wait for 30 ns;
   PS_LOZENGE_OR_ASTERISK <= '0';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"1G");
   PS_LOZENGE_OR_ASTERISK <= '1';
   wait for 30 ns;   
   PS_I_CYCLE_1 <= '0';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"1H");
   PS_I_CYCLE_1 <= '1';
   wait for 30 ns;   
   PS_I_RING_HDL_BUS(12) <= '0';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"1I");
   PS_I_RING_HDL_BUS(12) <= '1';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A,'1',testName,"1J");
   PS_I_O_MOVE_OR_I_O_LOAD_OP_CODE <= '0';
   PS_LOZENGE_OR_ASTERISK <= '0';
   PS_I_CYCLE_1 <= '0';
   PS_I_RING_HDL_BUS(12) <= '0';
   wait for 30 ns;
   
   PS_LOGIC_GATE_D_1 <= '1';  -- Leave on for a while
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"2A");
   PS_GATE_F_CH_ST_SAMPLE_A_STAR_1414_STAR <= '1';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A,'1',testName,"2B");
   PS_GATE_F_CH_ST_SAMPLE_A_STAR_1414_STAR <= '0';
   wait for 30 ns;

   PS_LOGIC_GATE_D_1 <= '1';  -- Leave on for a while
   PS_UNIT_CTRL_OP_CODE <= '1';
   PS_LOZENGE_OR_ASTERISK <= '1';
   PS_I_CYCLE_1 <= '1';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"3A");
   PS_I_RING_HDL_BUS(7) <= '1';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A,'1',testName,"3B");
   PS_UNIT_CTRL_OP_CODE <= '0';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"3C");
   PS_UNIT_CTRL_OP_CODE <= '1';
   wait for 30 ns;   
   PS_I_CYCLE_1 <= '0';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"3D");
   PS_I_CYCLE_1 <= '1';
   wait for 30 ns;   
   PS_LOZENGE_OR_ASTERISK <= '0';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"3E");
   PS_LOZENGE_OR_ASTERISK <= '1';
   wait for 30 ns;   
   PS_I_RING_HDL_BUS(7) <= '0';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"3F");
   PS_I_RING_HDL_BUS(7) <= '1';
   wait for 30 ns;
     
   PS_LOGIC_GATE_D_1 <= '0';
   PS_UNIT_CTRL_OP_CODE <= '0';
   PS_LOZENGE_OR_ASTERISK <= '0';
   PS_I_CYCLE_1 <= '0';
   PS_I_RING_HDL_BUS(7) <= '0';

   PS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= '0';
   PS_LOZENGE_OR_ASTERISK <= '1';
   PS_LOGIC_GATE_E_1 <= '1';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"5C");
   PS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= '1';
   wait for 30 ns;
   PS_LOZENGE_OR_ASTERISK <= '0';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"5D");
   PS_LOZENGE_OR_ASTERISK <= '1';
   wait for 30 ns;
   PS_LOGIC_GATE_E_1 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_A,'0',testName,"5E");
   PS_LOGIC_GATE_E_1 <= '1';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_A,'1',testName,"5F");
   PS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= '0';
   PS_LOZENGE_OR_ASTERISK <= '0';
   PS_LOGIC_GATE_E_1 <= '0';
   
   -- Turn Ungated Sample A back on (This is not a named signal on the F Channel ALD)
   
   PS_LOGIC_GATE_D_1 <= '1';
   PS_GATE_F_CH_ST_SAMPLE_A_STAR_1414_STAR <= '1';

   wait for 30 ns; 
   check1(PS_F_CH_STATUS_SAMPLE_A,'1',testName,"6A");
   
   PS_LOGIC_GATE_D_1 <= '0'; -- Don't need this part now - it would get in the way   
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_A_DELAY,'0',testName,"6B");
   PS_B_CH_WM_BIT_1 <= '1';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_A_DELAY,'0',testName,"6C");
   PS_LOGIC_GATE_E_1 <= '1';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_A_DELAY,'1',testName,"6D");
   PS_B_CH_WM_BIT_1 <= '0';
   wait for 30 ns;
   check1(PS_F_CH_STATUS_SAMPLE_A_DELAY,'0',testName,"6E");
   PS_B_CH_WM_BIT_1 <= '1';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A_DELAY,'1',testName,"6F");
   PS_GATE_F_CH_ST_SAMPLE_A_STAR_1414_STAR <= '0';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A_DELAY,'0',testName,"6G");      
   PS_B_CH_WM_BIT_1 <= '0';
   PS_LOGIC_GATE_E_1 <= '0';
   wait for 30 ns;   
   
   PS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= '1';
   PS_LOZENGE_OR_ASTERISK <= '1';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A_DELAY,'0',testName,"7A");
   PS_LOGIC_GATE_F_1 <= '1';      
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A_DELAY,'1',testName,"7B");
   PS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= '0';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A_DELAY,'0',testName,"7C");
   PS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= '1';
   wait for 30 ns;   
   PS_LOZENGE_OR_ASTERISK <= '0';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A_DELAY,'0',testName,"7D");
   PS_LOZENGE_OR_ASTERISK <= '1';
   wait for 30 ns;   
   check1(PS_F_CH_STATUS_SAMPLE_A_DELAY,'1',testName,"7E");
   PS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= '0';
   PS_LOZENGE_OR_ASTERISK <= '0';
   PS_LOGIC_GATE_F_1 <= '0';      

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
