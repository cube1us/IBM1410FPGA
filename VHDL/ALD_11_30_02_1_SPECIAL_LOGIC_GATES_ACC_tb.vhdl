-- Test Bench VHDL for IBM SMS ALD page 11.30.02.1
-- Title: SPECIAL LOGIC GATES-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/17/2020 4:27:55 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_30_02_1_SPECIAL_LOGIC_GATES_ACC_tb is
end ALD_11_30_02_1_SPECIAL_LOGIC_GATES_ACC_tb;

architecture behavioral of ALD_11_30_02_1_SPECIAL_LOGIC_GATES_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_11_30_02_1_SPECIAL_LOGIC_GATES_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_PROGRAM_RESET_5:	 in STD_LOGIC;
		MS_E_CYCLE_REQUIRED:	 in STD_LOGIC;
		MS_F_CYCLE_REQUIRED:	 in STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_Z:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3:	 in STD_LOGIC;
		MS_PROGRAM_RESET_3:	 in STD_LOGIC;
		MS_LAST_LOGIC_GATE_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_SPECIAL_A:	 out STD_LOGIC;
		PS_LOGIC_GATE_SPECIAL_A_1:	 out STD_LOGIC;
		PS_B_TO_LAST_LOGIC_GATE:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_5: STD_LOGIC := '1';
	signal MS_E_CYCLE_REQUIRED: STD_LOGIC := '1';
	signal MS_F_CYCLE_REQUIRED: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_B_1: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_Z: STD_LOGIC := '0';
	signal PS_2ND_CLOCK_PULSE_3: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_3: STD_LOGIC := '1';
	signal MS_LAST_LOGIC_GATE_1: STD_LOGIC := '1';

	-- Outputs

	signal PS_LOGIC_GATE_SPECIAL_A: STD_LOGIC;
	signal PS_LOGIC_GATE_SPECIAL_A_1: STD_LOGIC;
	signal PS_B_TO_LAST_LOGIC_GATE: STD_LOGIC;

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

	UUT: ALD_11_30_02_1_SPECIAL_LOGIC_GATES_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MS_PROGRAM_RESET_5 => MS_PROGRAM_RESET_5,
		MS_E_CYCLE_REQUIRED => MS_E_CYCLE_REQUIRED,
		MS_F_CYCLE_REQUIRED => MS_F_CYCLE_REQUIRED,
		MS_LOGIC_GATE_B_1 => MS_LOGIC_GATE_B_1,
		PS_LOGIC_GATE_Z => PS_LOGIC_GATE_Z,
		PS_2ND_CLOCK_PULSE_3 => PS_2ND_CLOCK_PULSE_3,
		MS_PROGRAM_RESET_3 => MS_PROGRAM_RESET_3,
		MS_LAST_LOGIC_GATE_1 => MS_LAST_LOGIC_GATE_1,
		PS_LOGIC_GATE_SPECIAL_A => PS_LOGIC_GATE_SPECIAL_A,
		PS_LOGIC_GATE_SPECIAL_A_1 => PS_LOGIC_GATE_SPECIAL_A_1,
		PS_B_TO_LAST_LOGIC_GATE => PS_B_TO_LAST_LOGIC_GATE);

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
