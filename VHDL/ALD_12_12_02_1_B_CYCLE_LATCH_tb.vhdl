-- Test Bench VHDL for IBM SMS ALD page 12.12.02.1
-- Title: B CYCLE LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 1:27:50 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_02_1_B_CYCLE_LATCH_tb is
end ALD_12_12_02_1_B_CYCLE_LATCH_tb;

architecture behavioral of ALD_12_12_02_1_B_CYCLE_LATCH_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_12_12_02_1_B_CYCLE_LATCH
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_PROGRAM_RES_OR_S_LOGIC_GATE:	 in STD_LOGIC;
		PS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		PS_B_CYCLE_CTRL:	 in STD_LOGIC;
		MS_B_CYCLE_CTRL:	 in STD_LOGIC;
		MS_E_CYCLE_CTRL:	 in STD_LOGIC;
		MS_F_CYCLE_CTRL:	 in STD_LOGIC;
		PS_B_CYCLE:	 out STD_LOGIC;
		PS_B_CYCLE_1:	 out STD_LOGIC;
		MS_B_CYCLE:	 out STD_LOGIC;
		PS_B_OR_E_OR_F_CYCLE_CTRL:	 out STD_LOGIC;
		LAMP_11C8B15:	 out STD_LOGIC;
		LAMP_15A1B10:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_PROGRAM_RES_OR_S_LOGIC_GATE: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_B_1: STD_LOGIC := '0';
	signal PS_B_CYCLE_CTRL: STD_LOGIC := '0';
	signal MS_B_CYCLE_CTRL: STD_LOGIC := '1';
	signal MS_E_CYCLE_CTRL: STD_LOGIC := '1';
	signal MS_F_CYCLE_CTRL: STD_LOGIC := '1';

	-- Outputs

	signal PS_B_CYCLE: STD_LOGIC;
	signal PS_B_CYCLE_1: STD_LOGIC;
	signal MS_B_CYCLE: STD_LOGIC;
	signal PS_B_OR_E_OR_F_CYCLE_CTRL: STD_LOGIC;
	signal LAMP_11C8B15: STD_LOGIC;
	signal LAMP_15A1B10: STD_LOGIC;

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

	UUT: ALD_12_12_02_1_B_CYCLE_LATCH port map(
		FPGA_CLK => FPGA_CLK,
		MS_PROGRAM_RES_OR_S_LOGIC_GATE => MS_PROGRAM_RES_OR_S_LOGIC_GATE,
		PS_LOGIC_GATE_B_1 => PS_LOGIC_GATE_B_1,
		PS_B_CYCLE_CTRL => PS_B_CYCLE_CTRL,
		MS_B_CYCLE_CTRL => MS_B_CYCLE_CTRL,
		MS_E_CYCLE_CTRL => MS_E_CYCLE_CTRL,
		MS_F_CYCLE_CTRL => MS_F_CYCLE_CTRL,
		PS_B_CYCLE => PS_B_CYCLE,
		PS_B_CYCLE_1 => PS_B_CYCLE_1,
		MS_B_CYCLE => MS_B_CYCLE,
		PS_B_OR_E_OR_F_CYCLE_CTRL => PS_B_OR_E_OR_F_CYCLE_CTRL,
		LAMP_11C8B15 => LAMP_11C8B15,
		LAMP_15A1B10 => LAMP_15A1B10);

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
