-- Test Bench VHDL for IBM SMS ALD page 11.10.02.1
-- Title: 1*LOGIC GATE RING CLK PULSES-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 12:22:35 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_10_02_1_1_LOGIC_GATE_RING_CLK_PULSES_ACC_tb is
end ALD_11_10_02_1_1_LOGIC_GATE_RING_CLK_PULSES_ACC_tb;

architecture behavioral of ALD_11_10_02_1_1_LOGIC_GATE_RING_CLK_PULSES_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_11_10_02_1_1_LOGIC_GATE_RING_CLK_PULSES_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_OSCILLATOR:	 in STD_LOGIC;
		PS_OSCILLATOR_DELAYED:	 in STD_LOGIC;
		PS_1401_STOP_AND_WAIT:	 in STD_LOGIC;
		PS_1401_COND_TEST_OP_CODE:	 in STD_LOGIC;
		PS_I_RING_9_TIME:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_E_1:	 in STD_LOGIC;
		PS_STOP_LATCH:	 in STD_LOGIC;
		MS_F_CH_IN_PROCESS:	 in STD_LOGIC;
		MS_E_CH_IN_PROCESS:	 in STD_LOGIC;
		MS_MASTER_ERROR:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_1:	 out STD_LOGIC;
		PS_1ST_CLOCK_PULSE_PRIME:	 out STD_LOGIC;
		PS_2ND_CLOCK_PULSE_1:	 out STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 out STD_LOGIC;
		PS_STOPPED_DOT_NOT_IN_PROCESS:	 out STD_LOGIC;
		PS_CLOCK_STOPPED_STAR_AUTS_STAR:	 out STD_LOGIC;
		PS_CLOCK_STOPPED:	 out STD_LOGIC;
		MS_CLOCK_STOPPED:	 out STD_LOGIC;
		LAMP_15A1K24:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_OSCILLATOR: STD_LOGIC := '0';
	signal PS_OSCILLATOR_DELAYED: STD_LOGIC := '0';
	signal PS_1401_STOP_AND_WAIT: STD_LOGIC := '0';
	signal PS_1401_COND_TEST_OP_CODE: STD_LOGIC := '0';
	signal PS_I_RING_9_TIME: STD_LOGIC := '0';
	signal PS_B_CH_WM_BIT_1: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_E_1: STD_LOGIC := '0';
	signal PS_STOP_LATCH: STD_LOGIC := '0';
	signal MS_F_CH_IN_PROCESS: STD_LOGIC := '1';
	signal MS_E_CH_IN_PROCESS: STD_LOGIC := '1';
	signal MS_MASTER_ERROR: STD_LOGIC := '1';

	-- Outputs

	signal PS_1ST_CLOCK_PULSE_1: STD_LOGIC;
	signal PS_1ST_CLOCK_PULSE_PRIME: STD_LOGIC;
	signal PS_2ND_CLOCK_PULSE_1: STD_LOGIC;
	signal PS_2ND_CLOCK_PULSE_2: STD_LOGIC;
	signal PS_STOPPED_DOT_NOT_IN_PROCESS: STD_LOGIC;
	signal PS_CLOCK_STOPPED_STAR_AUTS_STAR: STD_LOGIC;
	signal PS_CLOCK_STOPPED: STD_LOGIC;
	signal MS_CLOCK_STOPPED: STD_LOGIC;
	signal LAMP_15A1K24: STD_LOGIC;

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

	UUT: ALD_11_10_02_1_1_LOGIC_GATE_RING_CLK_PULSES_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_OSCILLATOR => PS_OSCILLATOR,
		PS_OSCILLATOR_DELAYED => PS_OSCILLATOR_DELAYED,
		PS_1401_STOP_AND_WAIT => PS_1401_STOP_AND_WAIT,
		PS_1401_COND_TEST_OP_CODE => PS_1401_COND_TEST_OP_CODE,
		PS_I_RING_9_TIME => PS_I_RING_9_TIME,
		PS_B_CH_WM_BIT_1 => PS_B_CH_WM_BIT_1,
		PS_LOGIC_GATE_E_1 => PS_LOGIC_GATE_E_1,
		PS_STOP_LATCH => PS_STOP_LATCH,
		MS_F_CH_IN_PROCESS => MS_F_CH_IN_PROCESS,
		MS_E_CH_IN_PROCESS => MS_E_CH_IN_PROCESS,
		MS_MASTER_ERROR => MS_MASTER_ERROR,
		PS_1ST_CLOCK_PULSE_1 => PS_1ST_CLOCK_PULSE_1,
		PS_1ST_CLOCK_PULSE_PRIME => PS_1ST_CLOCK_PULSE_PRIME,
		PS_2ND_CLOCK_PULSE_1 => PS_2ND_CLOCK_PULSE_1,
		PS_2ND_CLOCK_PULSE_2 => PS_2ND_CLOCK_PULSE_2,
		PS_STOPPED_DOT_NOT_IN_PROCESS => PS_STOPPED_DOT_NOT_IN_PROCESS,
		PS_CLOCK_STOPPED_STAR_AUTS_STAR => PS_CLOCK_STOPPED_STAR_AUTS_STAR,
		PS_CLOCK_STOPPED => PS_CLOCK_STOPPED,
		MS_CLOCK_STOPPED => MS_CLOCK_STOPPED,
		LAMP_15A1K24 => LAMP_15A1K24);

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
