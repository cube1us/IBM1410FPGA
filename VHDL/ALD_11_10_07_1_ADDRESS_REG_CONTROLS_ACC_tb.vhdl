-- Test Bench VHDL for IBM SMS ALD page 11.10.07.1
-- Title: ADDRESS REG CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 12:25:14 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_10_07_1_ADDRESS_REG_CONTROLS_ACC_tb is
end ALD_11_10_07_1_ADDRESS_REG_CONTROLS_ACC_tb;

architecture behavioral of ALD_11_10_07_1_ADDRESS_REG_CONTROLS_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_11_10_07_1_ADDRESS_REG_CONTROLS_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_X_CYCLE:	 in STD_LOGIC;
		MS_LOGIC_GATE_H:	 in STD_LOGIC;
		MS_LOGIC_GATE_A_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_K:	 in STD_LOGIC;
		MS_LOGIC_GATE_J:	 in STD_LOGIC;
		MS_LOGIC_GATE_R:	 in STD_LOGIC;
		PS_I_CYCLE:	 in STD_LOGIC;
		PS_A_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PS_INDEX_GATE:	 out STD_LOGIC;
		PS_INSN_RO_GATE:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_X_CYCLE: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_H: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_A_1: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_K: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_J: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_R: STD_LOGIC := '1';
	signal PS_I_CYCLE: STD_LOGIC := '0';
	signal PS_A_CH_NOT_WM_BIT: STD_LOGIC := '0';

	-- Outputs

	signal PS_INDEX_GATE: STD_LOGIC;
	signal PS_INSN_RO_GATE: STD_LOGIC;

-- START USER TEST BENCH DECLARATIONS

-- The user test bench declaraionts, if any, must be
-- placed AFTER the line starts with the first line of text 
-- that -- START USER TEST BENCH DECLARATIONS and ends
-- with --END .
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

   -- Your test bench declarations go here

-- END USER TEST BENCH DECLARATIONS

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ALD_11_10_07_1_ADDRESS_REG_CONTROLS_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_X_CYCLE => PS_X_CYCLE,
		MS_LOGIC_GATE_H => MS_LOGIC_GATE_H,
		MS_LOGIC_GATE_A_1 => MS_LOGIC_GATE_A_1,
		MS_LOGIC_GATE_K => MS_LOGIC_GATE_K,
		MS_LOGIC_GATE_J => MS_LOGIC_GATE_J,
		MS_LOGIC_GATE_R => MS_LOGIC_GATE_R,
		PS_I_CYCLE => PS_I_CYCLE,
		PS_A_CH_NOT_WM_BIT => PS_A_CH_NOT_WM_BIT,
		PS_INDEX_GATE => PS_INDEX_GATE,
		PS_INSN_RO_GATE => PS_INSN_RO_GATE);

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