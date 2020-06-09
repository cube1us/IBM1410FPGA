-- Test Bench VHDL for IBM SMS ALD page 11.10.18.1
-- Title: LOGIC GATE RING J-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/7/2020 2:11:18 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_10_18_1_LOGIC_GATE_RING_J_ACC_tb is
end ALD_11_10_18_1_LOGIC_GATE_RING_J_ACC_tb;

architecture behavioral of ALD_11_10_18_1_LOGIC_GATE_RING_J_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_11_10_18_1_LOGIC_GATE_RING_J_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_LOGIC_RING_ON_ADVANCE_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_H:	 in STD_LOGIC;
		PS_LOGIC_RING_OFF_ADVANCE_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_H:	 in STD_LOGIC;
		MS_PROGRAM_RESET_3:	 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_J:	 out STD_LOGIC;
		PS_LOGIC_GATE_J:	 out STD_LOGIC;
		LAMP_15A1J06:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_LOGIC_RING_ON_ADVANCE_1: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_H: STD_LOGIC := '0';
	signal PS_LOGIC_RING_OFF_ADVANCE_1: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_H: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_3: STD_LOGIC := '1';
	signal PS_LAST_LOGIC_GATE_1: STD_LOGIC := '0';

	-- Outputs

	signal MS_LOGIC_GATE_J: STD_LOGIC;
	signal PS_LOGIC_GATE_J: STD_LOGIC;
	signal LAMP_15A1J06: STD_LOGIC;

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ALD_11_10_18_1_LOGIC_GATE_RING_J_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_LOGIC_RING_ON_ADVANCE_1 => PS_LOGIC_RING_ON_ADVANCE_1,
		PS_LOGIC_GATE_H => PS_LOGIC_GATE_H,
		PS_LOGIC_RING_OFF_ADVANCE_1 => PS_LOGIC_RING_OFF_ADVANCE_1,
		MS_LOGIC_GATE_H => MS_LOGIC_GATE_H,
		MS_PROGRAM_RESET_3 => MS_PROGRAM_RESET_3,
		PS_LAST_LOGIC_GATE_1 => PS_LAST_LOGIC_GATE_1,
		MS_LOGIC_GATE_J => MS_LOGIC_GATE_J,
		PS_LOGIC_GATE_J => PS_LOGIC_GATE_J,
		LAMP_15A1J06 => LAMP_15A1J06);

-- START USER TEST BENCH PROCESS

-- The user test bench code MUST be placed between the
-- line that starts with the first line of text that
-- begins with "-- START" and ends with "-- END"
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

-- 
-- TestBenchFPGAClock.vhdl
--
-- Process to simulate the FPGA clock for a VHDL test bench
--

fpga_clk_process: process

   constant clk_period : time := 50 ns;

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
