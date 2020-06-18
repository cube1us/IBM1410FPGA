-- Test Bench VHDL for IBM SMS ALD page 11.30.03.1
-- Title: SPECIAL LOGIC GATES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/18/2020 12:43:21 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_30_03_1_SPECIAL_LOGIC_GATES_tb is
end ALD_11_30_03_1_SPECIAL_LOGIC_GATES_tb;

architecture behavioral of ALD_11_30_03_1_SPECIAL_LOGIC_GATES_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_11_30_03_1_SPECIAL_LOGIC_GATES
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_LOGIC_GATE_R:	 in STD_LOGIC;
		MS_1ST_CLOCK_PULSE_CLAMPED_A:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_EARLY_S:	 out STD_LOGIC;
		MS_LOGIC_GATE_EARLY_S:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_R: STD_LOGIC := '1';
	signal MS_1ST_CLOCK_PULSE_CLAMPED_A: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_1: STD_LOGIC := '1';

	-- Outputs

	signal PS_LOGIC_GATE_EARLY_S: STD_LOGIC;
	signal MS_LOGIC_GATE_EARLY_S: STD_LOGIC;

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

	UUT: ALD_11_30_03_1_SPECIAL_LOGIC_GATES port map(
		FPGA_CLK => FPGA_CLK,
		MS_LOGIC_GATE_R => MS_LOGIC_GATE_R,
		MS_1ST_CLOCK_PULSE_CLAMPED_A => MS_1ST_CLOCK_PULSE_CLAMPED_A,
		MS_PROGRAM_RESET_1 => MS_PROGRAM_RESET_1,
		PS_LOGIC_GATE_EARLY_S => PS_LOGIC_GATE_EARLY_S,
		MS_LOGIC_GATE_EARLY_S => MS_LOGIC_GATE_EARLY_S);

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
