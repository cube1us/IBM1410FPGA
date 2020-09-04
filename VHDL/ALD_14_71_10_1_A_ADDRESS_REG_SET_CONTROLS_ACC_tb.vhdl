-- Test Bench VHDL for IBM SMS ALD page 14.71.10.1
-- Title: A ADDRESS REG SET CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/4/2020 5:09:26 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_71_10_1_A_ADDRESS_REG_SET_CONTROLS_ACC_tb is
end ALD_14_71_10_1_A_ADDRESS_REG_SET_CONTROLS_ACC_tb;

architecture behavioral of ALD_14_71_10_1_A_ADDRESS_REG_SET_CONTROLS_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_71_10_1_A_ADDRESS_REG_SET_CONTROLS_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_A_CYCLE_CTRL:	 in STD_LOGIC;
		PS_LOGIC_GATE_B_OR_C:	 in STD_LOGIC;
		PS_A_CYCLE:	 in STD_LOGIC;
		PS_LOGIC_GATE_D_OR_E_OR_F:	 in STD_LOGIC;
		PS_1311_SET_AAR:	 in STD_LOGIC;
		PS_INDEX_A_AR:	 in STD_LOGIC;
		PS_INDEX_GATE:	 in STD_LOGIC;
		PS_RD_1ST_ADDR_TO_A_AND_C_AR:	 in STD_LOGIC;
		PS_1ST_ADDRESS:	 in STD_LOGIC;
		PS_INSN_RO_GATE:	 in STD_LOGIC;
		MS_STOPPED_AT_CYCLE_END:	 in STD_LOGIC;
		MV_CONS_MODE_SW_ADDR_SET_MODE:	 in STD_LOGIC;
		SWITCH_ROT_ADDR_ENTRY:	 in STD_LOGIC_VECTOR(11 downTo 0);
		PS_SET_A_AR:	 out STD_LOGIC;
		MS_INDEX_A_AR_DOT_INDEX_GATE:	 out STD_LOGIC;
		MS_SET_A_AND_C_AR:	 out STD_LOGIC;
		MV_CONS_ADDRESS_ENTRY_B_AR:	 out STD_LOGIC;
		MV_CONS_ADDRESS_ENTRY_D_AR:	 out STD_LOGIC;
		MV_CONS_ADDRESS_ENTRY_C_AR:	 out STD_LOGIC;
		MV_CONS_ADDRESS_ENTRY_NORMAL_1:	 out STD_LOGIC;
		MV_CONS_ADDRESS_ENTRY_NORMAL_2:	 out STD_LOGIC;
		MV_CONS_ADDRESS_ENTRY_F_AR:	 out STD_LOGIC;
		MV_CONS_ADDRESS_ENTRY_E_AR:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_A_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_B_OR_C: STD_LOGIC := '0';
	signal PS_A_CYCLE: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_D_OR_E_OR_F: STD_LOGIC := '0';
	signal PS_1311_SET_AAR: STD_LOGIC := '0';
	signal PS_INDEX_A_AR: STD_LOGIC := '0';
	signal PS_INDEX_GATE: STD_LOGIC := '0';
	signal PS_RD_1ST_ADDR_TO_A_AND_C_AR: STD_LOGIC := '0';
	signal PS_1ST_ADDRESS: STD_LOGIC := '0';
	signal PS_INSN_RO_GATE: STD_LOGIC := '0';
	signal MS_STOPPED_AT_CYCLE_END: STD_LOGIC := '1';
	signal MV_CONS_MODE_SW_ADDR_SET_MODE: STD_LOGIC := '1';
	signal SWITCH_ROT_ADDR_ENTRY: STD_LOGIC_VECTOR(11 downTo 0) := "000000000000";
	signal SWITCH_ROT: STD_LOGIC_VECTOR(11 downTo 0) := "000000000000";

	-- Outputs

	signal PS_SET_A_AR: STD_LOGIC;
	signal MS_INDEX_A_AR_DOT_INDEX_GATE: STD_LOGIC;
	signal MS_SET_A_AND_C_AR: STD_LOGIC;
	signal MV_CONS_ADDRESS_ENTRY_B_AR: STD_LOGIC;
	signal MV_CONS_ADDRESS_ENTRY_D_AR: STD_LOGIC;
	signal MV_CONS_ADDRESS_ENTRY_C_AR: STD_LOGIC;
	signal MV_CONS_ADDRESS_ENTRY_NORMAL_1: STD_LOGIC;
	signal MV_CONS_ADDRESS_ENTRY_NORMAL_2: STD_LOGIC;
	signal MV_CONS_ADDRESS_ENTRY_F_AR: STD_LOGIC;
	signal MV_CONS_ADDRESS_ENTRY_E_AR: STD_LOGIC;

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

	UUT: ALD_14_71_10_1_A_ADDRESS_REG_SET_CONTROLS_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_A_CYCLE_CTRL => PS_A_CYCLE_CTRL,
		PS_LOGIC_GATE_B_OR_C => PS_LOGIC_GATE_B_OR_C,
		PS_A_CYCLE => PS_A_CYCLE,
		PS_LOGIC_GATE_D_OR_E_OR_F => PS_LOGIC_GATE_D_OR_E_OR_F,
		PS_1311_SET_AAR => PS_1311_SET_AAR,
		PS_INDEX_A_AR => PS_INDEX_A_AR,
		PS_INDEX_GATE => PS_INDEX_GATE,
		PS_RD_1ST_ADDR_TO_A_AND_C_AR => PS_RD_1ST_ADDR_TO_A_AND_C_AR,
		PS_1ST_ADDRESS => PS_1ST_ADDRESS,
		PS_INSN_RO_GATE => PS_INSN_RO_GATE,
		MS_STOPPED_AT_CYCLE_END => MS_STOPPED_AT_CYCLE_END,
		MV_CONS_MODE_SW_ADDR_SET_MODE => MV_CONS_MODE_SW_ADDR_SET_MODE,
		SWITCH_ROT_ADDR_ENTRY => SWITCH_ROT_ADDR_ENTRY,
		SWITCH_ROT => SWITCH_ROT,
		PS_SET_A_AR => PS_SET_A_AR,
		MS_INDEX_A_AR_DOT_INDEX_GATE => MS_INDEX_A_AR_DOT_INDEX_GATE,
		MS_SET_A_AND_C_AR => MS_SET_A_AND_C_AR,
		MV_CONS_ADDRESS_ENTRY_B_AR => MV_CONS_ADDRESS_ENTRY_B_AR,
		MV_CONS_ADDRESS_ENTRY_D_AR => MV_CONS_ADDRESS_ENTRY_D_AR,
		MV_CONS_ADDRESS_ENTRY_C_AR => MV_CONS_ADDRESS_ENTRY_C_AR,
		MV_CONS_ADDRESS_ENTRY_NORMAL_1 => MV_CONS_ADDRESS_ENTRY_NORMAL_1,
		MV_CONS_ADDRESS_ENTRY_NORMAL_2 => MV_CONS_ADDRESS_ENTRY_NORMAL_2,
		MV_CONS_ADDRESS_ENTRY_F_AR => MV_CONS_ADDRESS_ENTRY_F_AR,
		MV_CONS_ADDRESS_ENTRY_E_AR => MV_CONS_ADDRESS_ENTRY_E_AR);

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
