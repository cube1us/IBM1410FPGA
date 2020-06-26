-- Test Bench VHDL for IBM SMS ALD page 11.20.06.1
-- Title: I RING 9 AND 10 TIME-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 1:02:30 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_20_06_1_I_RING_9_AND_10_TIME_ACC_tb is
end ALD_11_20_06_1_I_RING_9_AND_10_TIME_ACC_tb;

architecture behavioral of ALD_11_20_06_1_I_RING_9_AND_10_TIME_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_11_20_06_1_I_RING_9_AND_10_TIME_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_I_RING_8_TIME:	 in STD_LOGIC;
		MS_I_RING_8_TIME:	 in STD_LOGIC;
		PS_I_RING_OFF_ADVANCE_2:	 in STD_LOGIC;
		PS_I_RING_ON_ADVANCE_2:	 in STD_LOGIC;
		MS_I_RING_RESET_2:	 in STD_LOGIC;
		MS_I_RING_9_TIME:	 out STD_LOGIC;
		PS_I_RING_9_TIME:	 out STD_LOGIC;
		MS_I_RING_10_TIME:	 out STD_LOGIC;
		PS_I_RING_10_TIME:	 out STD_LOGIC;
		LAMP_15A1E02:	 out STD_LOGIC;
		LAMP_15A1F02:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_I_RING_8_TIME: STD_LOGIC := '0';
	signal MS_I_RING_8_TIME: STD_LOGIC := '1';
	signal PS_I_RING_OFF_ADVANCE_2: STD_LOGIC := '0';
	signal PS_I_RING_ON_ADVANCE_2: STD_LOGIC := '0';
	signal MS_I_RING_RESET_2: STD_LOGIC := '1';

	-- Outputs

	signal MS_I_RING_9_TIME: STD_LOGIC;
	signal PS_I_RING_9_TIME: STD_LOGIC;
	signal MS_I_RING_10_TIME: STD_LOGIC;
	signal PS_I_RING_10_TIME: STD_LOGIC;
	signal LAMP_15A1E02: STD_LOGIC;
	signal LAMP_15A1F02: STD_LOGIC;

-- START USER TEST BENCH DECLARATIONS

-- The user test bench declarations, if any, must be
-- placed AFTER the line starts with the first line of text 
-- with -- START USER TEST BENCH DECLARATIONS and ends
-- with -- END USER TEST BENCH DECLARATIONS

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ALD_11_20_06_1_I_RING_9_AND_10_TIME_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_I_RING_8_TIME => PS_I_RING_8_TIME,
		MS_I_RING_8_TIME => MS_I_RING_8_TIME,
		PS_I_RING_OFF_ADVANCE_2 => PS_I_RING_OFF_ADVANCE_2,
		PS_I_RING_ON_ADVANCE_2 => PS_I_RING_ON_ADVANCE_2,
		MS_I_RING_RESET_2 => MS_I_RING_RESET_2,
		MS_I_RING_9_TIME => MS_I_RING_9_TIME,
		PS_I_RING_9_TIME => PS_I_RING_9_TIME,
		MS_I_RING_10_TIME => MS_I_RING_10_TIME,
		PS_I_RING_10_TIME => PS_I_RING_10_TIME,
		LAMP_15A1E02 => LAMP_15A1E02,
		LAMP_15A1F02 => LAMP_15A1F02);

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
