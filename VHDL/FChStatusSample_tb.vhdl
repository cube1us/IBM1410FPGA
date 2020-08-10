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
