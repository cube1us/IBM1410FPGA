-- Test Bench VHDL for IBM SMS ALD page 14.71.15.1
-- Title: E ADDRESS REGISTER SET CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/5/2020 1:45:36 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_71_15_1_E_ADDRESS_REGISTER_SET_CONTROLS_ACC_tb is
end ALD_14_71_15_1_E_ADDRESS_REGISTER_SET_CONTROLS_ACC_tb;

architecture behavioral of ALD_14_71_15_1_E_ADDRESS_REGISTER_SET_CONTROLS_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_71_15_1_E_ADDRESS_REGISTER_SET_CONTROLS_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MV_CONS_ADDRESS_ENTRY_E_AR:	 in STD_LOGIC;
		MS_STOPPED_AT_CYCLE_END:	 in STD_LOGIC;
		PS_E_CYCLE_CTRL:	 in STD_LOGIC;
		PS_LOGIC_GATE_S_OR_T:	 in STD_LOGIC;
		PS_E_CYCLE:	 in STD_LOGIC;
		PS_LOGIC_GATE_U_OR_V_OR_W:	 in STD_LOGIC;
		PS_INDEX_REQUIRED:	 in STD_LOGIC;
		PS_INDEX_GATE:	 in STD_LOGIC;
		PS_I_RING_10_TIME:	 in STD_LOGIC;
		PS_2ND_ADDRESS:	 in STD_LOGIC;
		PS_INSN_RO_GATE:	 in STD_LOGIC;
		PS_B_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PS_I_O_COML_AT_LATCH:	 in STD_LOGIC;
		MS_UNIT_CTRL_OP_CODE:	 in STD_LOGIC;
		PS_SET_E_AR:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MV_CONS_ADDRESS_ENTRY_E_AR: STD_LOGIC := '1';
	signal MS_STOPPED_AT_CYCLE_END: STD_LOGIC := '1';
	signal PS_E_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_S_OR_T: STD_LOGIC := '0';
	signal PS_E_CYCLE: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_U_OR_V_OR_W: STD_LOGIC := '0';
	signal PS_INDEX_REQUIRED: STD_LOGIC := '0';
	signal PS_INDEX_GATE: STD_LOGIC := '0';
	signal PS_I_RING_10_TIME: STD_LOGIC := '0';
	signal PS_2ND_ADDRESS: STD_LOGIC := '0';
	signal PS_INSN_RO_GATE: STD_LOGIC := '0';
	signal PS_B_CH_NOT_WM_BIT: STD_LOGIC := '0';
	signal PS_I_O_COML_AT_LATCH: STD_LOGIC := '0';
	signal MS_UNIT_CTRL_OP_CODE: STD_LOGIC := '1';

	-- Outputs

	signal PS_SET_E_AR: STD_LOGIC;

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

	UUT: ALD_14_71_15_1_E_ADDRESS_REGISTER_SET_CONTROLS_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MV_CONS_ADDRESS_ENTRY_E_AR => MV_CONS_ADDRESS_ENTRY_E_AR,
		MS_STOPPED_AT_CYCLE_END => MS_STOPPED_AT_CYCLE_END,
		PS_E_CYCLE_CTRL => PS_E_CYCLE_CTRL,
		PS_LOGIC_GATE_S_OR_T => PS_LOGIC_GATE_S_OR_T,
		PS_E_CYCLE => PS_E_CYCLE,
		PS_LOGIC_GATE_U_OR_V_OR_W => PS_LOGIC_GATE_U_OR_V_OR_W,
		PS_INDEX_REQUIRED => PS_INDEX_REQUIRED,
		PS_INDEX_GATE => PS_INDEX_GATE,
		PS_I_RING_10_TIME => PS_I_RING_10_TIME,
		PS_2ND_ADDRESS => PS_2ND_ADDRESS,
		PS_INSN_RO_GATE => PS_INSN_RO_GATE,
		PS_B_CH_NOT_WM_BIT => PS_B_CH_NOT_WM_BIT,
		PS_I_O_COML_AT_LATCH => PS_I_O_COML_AT_LATCH,
		MS_UNIT_CTRL_OP_CODE => MS_UNIT_CTRL_OP_CODE,
		PS_SET_E_AR => PS_SET_E_AR);

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
   

end;