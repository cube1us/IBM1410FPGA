-- Test Bench VHDL for IBM SMS ALD page 11.10.24.1
-- Title: LOGIC GATE RING EXTENSION V
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 12:38:15 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_10_24_1_LOGIC_GATE_RING_EXTENSION_V_tb is
end ALD_11_10_24_1_LOGIC_GATE_RING_EXTENSION_V_tb;

architecture behavioral of ALD_11_10_24_1_LOGIC_GATE_RING_EXTENSION_V_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_11_10_24_1_LOGIC_GATE_RING_EXTENSION_V
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_LOGIC_RING_ON_ADVANCE_2:	 in STD_LOGIC;
		PS_LOGIC_GATE_U:	 in STD_LOGIC;
		PS_LOGIC_RING_OFF_ADVANCE_2:	 in STD_LOGIC;
		MS_LOGIC_GATE_U:	 in STD_LOGIC;
		MS_PROGRAM_RESET_5:	 in STD_LOGIC;
		MS_LOGIC_GATE_V:	 out STD_LOGIC;
		PS_LOGIC_GATE_V:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_LOGIC_RING_ON_ADVANCE_2: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_U: STD_LOGIC := '0';
	signal PS_LOGIC_RING_OFF_ADVANCE_2: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_U: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_5: STD_LOGIC := '1';

	-- Outputs

	signal MS_LOGIC_GATE_V: STD_LOGIC;
	signal PS_LOGIC_GATE_V: STD_LOGIC;

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

	UUT: ALD_11_10_24_1_LOGIC_GATE_RING_EXTENSION_V port map(
		FPGA_CLK => FPGA_CLK,
		PS_LOGIC_RING_ON_ADVANCE_2 => PS_LOGIC_RING_ON_ADVANCE_2,
		PS_LOGIC_GATE_U => PS_LOGIC_GATE_U,
		PS_LOGIC_RING_OFF_ADVANCE_2 => PS_LOGIC_RING_OFF_ADVANCE_2,
		MS_LOGIC_GATE_U => MS_LOGIC_GATE_U,
		MS_PROGRAM_RESET_5 => MS_PROGRAM_RESET_5,
		MS_LOGIC_GATE_V => MS_LOGIC_GATE_V,
		PS_LOGIC_GATE_V => PS_LOGIC_GATE_V);

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
