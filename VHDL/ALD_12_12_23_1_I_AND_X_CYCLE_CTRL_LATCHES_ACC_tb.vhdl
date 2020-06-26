-- Test Bench VHDL for IBM SMS ALD page 12.12.23.1
-- Title: I AND X CYCLE CTRL LATCHES-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 1:32:00 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_23_1_I_AND_X_CYCLE_CTRL_LATCHES_ACC_tb is
end ALD_12_12_23_1_I_AND_X_CYCLE_CTRL_LATCHES_ACC_tb;

architecture behavioral of ALD_12_12_23_1_I_AND_X_CYCLE_CTRL_LATCHES_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_12_12_23_1_I_AND_X_CYCLE_CTRL_LATCHES_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE:	 in STD_LOGIC;
		PS_NEXT_TO_AND_LAST_LOGIC_GATE:	 in STD_LOGIC;
		MS_ANY_CHECK_TEST:	 in STD_LOGIC;
		MS_CONS_RESET_START_CONDITION:	 in STD_LOGIC;
		PS_SET_I_CYCLE_CTRL:	 in STD_LOGIC;
		PS_NOT_INTR_START:	 in STD_LOGIC;
		PS_STORAGE_SCAN_ROUTINE:	 in STD_LOGIC;
		PS_CONS_PRINTER_STROBE:	 in STD_LOGIC;
		MS_CONSOLE_SET_START_CND:	 in STD_LOGIC;
		MS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_Z:	 in STD_LOGIC;
		PS_I_O_LAST_EX_CYCLE:	 in STD_LOGIC;
		PS_PROCESS_ROUTINE:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		PS_NEXT_TO_LAST_LOGIC_GATE:	 in STD_LOGIC;
		PS_SET_X_CYCLE_CTRL:	 in STD_LOGIC;
		PS_I_CYCLE_CTRL:	 out STD_LOGIC;
		MS_LAST_EX_DOT_NEXT_TO_LAST:	 out STD_LOGIC;
		MS_I_CYCLE_CTRL:	 out STD_LOGIC;
		PS_X_CYCLE_CTRL:	 out STD_LOGIC;
		MS_I_O_LAST_EX_DOT_Z:	 out STD_LOGIC;
		MS_X_CYCLE_CTRL:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_LAST_EXECUTE_CYCLE: STD_LOGIC := '0';
	signal PS_NEXT_TO_AND_LAST_LOGIC_GATE: STD_LOGIC := '0';
	signal MS_ANY_CHECK_TEST: STD_LOGIC := '1';
	signal MS_CONS_RESET_START_CONDITION: STD_LOGIC := '1';
	signal PS_SET_I_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_NOT_INTR_START: STD_LOGIC := '0';
	signal PS_STORAGE_SCAN_ROUTINE: STD_LOGIC := '0';
	signal PS_CONS_PRINTER_STROBE: STD_LOGIC := '0';
	signal MS_CONSOLE_SET_START_CND: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_D_1: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_Z: STD_LOGIC := '0';
	signal PS_I_O_LAST_EX_CYCLE: STD_LOGIC := '0';
	signal PS_PROCESS_ROUTINE: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_1: STD_LOGIC := '1';
	signal PS_NEXT_TO_LAST_LOGIC_GATE: STD_LOGIC := '0';
	signal PS_SET_X_CYCLE_CTRL: STD_LOGIC := '0';

	-- Outputs

	signal PS_I_CYCLE_CTRL: STD_LOGIC;
	signal MS_LAST_EX_DOT_NEXT_TO_LAST: STD_LOGIC;
	signal MS_I_CYCLE_CTRL: STD_LOGIC;
	signal PS_X_CYCLE_CTRL: STD_LOGIC;
	signal MS_I_O_LAST_EX_DOT_Z: STD_LOGIC;
	signal MS_X_CYCLE_CTRL: STD_LOGIC;

-- START USER TEST BENCH DECLARATIONS

-- The user test bench declarations, if any, must be
-- placed AFTER the line starts with the first line of text 
-- with -- START USER TEST BENCH DECLARATIONS and ends
-- with the line containing -- END (and the rest of the line) below.
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

   -- Your test bench declarations go here

-- END USER TEST BENCH DECLARATIONS

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ALD_12_12_23_1_I_AND_X_CYCLE_CTRL_LATCHES_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_LAST_EXECUTE_CYCLE => PS_LAST_EXECUTE_CYCLE,
		PS_NEXT_TO_AND_LAST_LOGIC_GATE => PS_NEXT_TO_AND_LAST_LOGIC_GATE,
		MS_ANY_CHECK_TEST => MS_ANY_CHECK_TEST,
		MS_CONS_RESET_START_CONDITION => MS_CONS_RESET_START_CONDITION,
		PS_SET_I_CYCLE_CTRL => PS_SET_I_CYCLE_CTRL,
		PS_NOT_INTR_START => PS_NOT_INTR_START,
		PS_STORAGE_SCAN_ROUTINE => PS_STORAGE_SCAN_ROUTINE,
		PS_CONS_PRINTER_STROBE => PS_CONS_PRINTER_STROBE,
		MS_CONSOLE_SET_START_CND => MS_CONSOLE_SET_START_CND,
		MS_LOGIC_GATE_D_1 => MS_LOGIC_GATE_D_1,
		PS_LOGIC_GATE_Z => PS_LOGIC_GATE_Z,
		PS_I_O_LAST_EX_CYCLE => PS_I_O_LAST_EX_CYCLE,
		PS_PROCESS_ROUTINE => PS_PROCESS_ROUTINE,
		MS_PROGRAM_RESET_1 => MS_PROGRAM_RESET_1,
		PS_NEXT_TO_LAST_LOGIC_GATE => PS_NEXT_TO_LAST_LOGIC_GATE,
		PS_SET_X_CYCLE_CTRL => PS_SET_X_CYCLE_CTRL,
		PS_I_CYCLE_CTRL => PS_I_CYCLE_CTRL,
		MS_LAST_EX_DOT_NEXT_TO_LAST => MS_LAST_EX_DOT_NEXT_TO_LAST,
		MS_I_CYCLE_CTRL => MS_I_CYCLE_CTRL,
		PS_X_CYCLE_CTRL => PS_X_CYCLE_CTRL,
		MS_I_O_LAST_EX_DOT_Z => MS_I_O_LAST_EX_DOT_Z,
		MS_X_CYCLE_CTRL => MS_X_CYCLE_CTRL);

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
   assert false report "Simulation Ended" severity failure;
   end process;

-- END USER TEST BENCH PROCESS

end;
