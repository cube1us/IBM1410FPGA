-- Test BenchVHDL for IBM SMS ALD group LogicClock
-- Title: LogicClock
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 6/7/2020 3:51:07 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity LogicClock_tb is
end LogicClock_tb;

architecture behavioral of LogicClock_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component LogicClock
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PP_SPECIAL_OR_12V_POWER_FOR_OSC: in STD_LOGIC;
		PS_1401_STOP_AND_WAIT: in STD_LOGIC;
		PS_1401_COND_TEST_OP_CODE: in STD_LOGIC;
		PS_I_RING_9_TIME: in STD_LOGIC;
		PS_B_CH_WM_BIT_1: in STD_LOGIC;
		PS_LOGIC_GATE_E_1: in STD_LOGIC;
		PS_STOP_LATCH: in STD_LOGIC;
		MS_F_CH_IN_PROCESS: in STD_LOGIC;
		MS_E_CH_IN_PROCESS: in STD_LOGIC;
		MS_MASTER_ERROR: in STD_LOGIC;
		PS_OSCILLATOR: out STD_LOGIC;
		PP_SPECIAL_OR_12V_FOR_REL_DRIVERS: out STD_LOGIC;
		PS_1ST_CLOCK_PULSE_1: out STD_LOGIC;
		PS_1ST_CLOCK_PULSE_PRIME: out STD_LOGIC;
		PS_2ND_CLOCK_PULSE_1: out STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2: out STD_LOGIC;
		PS_STOPPED_DOT_NOT_IN_PROCESS: out STD_LOGIC;
		PS_CLOCK_STOPPED_STAR_AUTS_STAR: out STD_LOGIC;
		PS_CLOCK_STOPPED: out STD_LOGIC;
		MS_CLOCK_STOPPED: out STD_LOGIC;
		LAMP_15A1K24: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PP_SPECIAL_OR_12V_POWER_FOR_OSC: STD_LOGIC := '0';
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

	signal PS_OSCILLATOR: STD_LOGIC;
	signal PP_SPECIAL_OR_12V_FOR_REL_DRIVERS: STD_LOGIC;
	signal PS_1ST_CLOCK_PULSE_1: STD_LOGIC;
	signal PS_1ST_CLOCK_PULSE_PRIME: STD_LOGIC;
	signal PS_2ND_CLOCK_PULSE_1: STD_LOGIC;
	signal PS_2ND_CLOCK_PULSE_2: STD_LOGIC;
	signal PS_STOPPED_DOT_NOT_IN_PROCESS: STD_LOGIC;
	signal PS_CLOCK_STOPPED_STAR_AUTS_STAR: STD_LOGIC;
	signal PS_CLOCK_STOPPED: STD_LOGIC;
	signal MS_CLOCK_STOPPED: STD_LOGIC;
	signal LAMP_15A1K24: STD_LOGIC;
	
procedure check_clock_stopped is
    begin
       wait for 3 us;       
       assert PS_1ST_CLOCK_PULSE_1 = '1' report "check_clock_stopped 1" severity failure;
       assert PS_2ND_CLOCK_PULSE_1 = '0' report "check_clock_stopped 2" severity failure;
       assert PS_1ST_CLOCK_PULSE_1 = '1' report "check_clock_stopped 3" severity failure;
       assert PS_2ND_CLOCK_PULSE_1 = '0' report "check_clock_stopped 4" severity failure;
       wait for 1 us;
       assert PS_1ST_CLOCK_PULSE_1 = '1' report "check_clock_stopped 5" severity failure;
       assert PS_2ND_CLOCK_PULSE_1 = '0' report "check_clock_stopped 6" severity failure;
    end procedure;
    

procedure check_clock_running is
    begin
       wait until RISING_EDGE(PS_1ST_CLOCK_PULSE_1);
       wait for 50 ns;
       assert PS_1ST_CLOCK_PULSE_1 = '1' report "check_clock_running 1" severity failure;
       assert PS_2ND_CLOCK_PULSE_1 = '0' report "check_clock_running 2" severity failure;
       wait for 400 ns;
       assert PS_1ST_CLOCK_PULSE_1 = '0' report "check_clock_running 3" severity failure;
       assert PS_2ND_CLOCK_PULSE_1 = '1' report "check_clock_running 4" severity failure;       
       assert LAMP_15A1K24 = '0'         report "check_clock_running lamp" severity failure;
       assert PS_CLOCK_STOPPED = '0'     report "check_clock_running stopped" severity failure;
    end procedure;   
       
	
	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: LogicClock port map(
		FPGA_CLK => FPGA_CLK,
		PP_SPECIAL_OR_12V_POWER_FOR_OSC => PP_SPECIAL_OR_12V_POWER_FOR_OSC,
		PS_1401_STOP_AND_WAIT => PS_1401_STOP_AND_WAIT,
		PS_1401_COND_TEST_OP_CODE => PS_1401_COND_TEST_OP_CODE,
		PS_I_RING_9_TIME => PS_I_RING_9_TIME,
		PS_B_CH_WM_BIT_1 => PS_B_CH_WM_BIT_1,
		PS_LOGIC_GATE_E_1 => PS_LOGIC_GATE_E_1,
		PS_STOP_LATCH => PS_STOP_LATCH,
		MS_F_CH_IN_PROCESS => MS_F_CH_IN_PROCESS,
		MS_E_CH_IN_PROCESS => MS_E_CH_IN_PROCESS,
		MS_MASTER_ERROR => MS_MASTER_ERROR,
		PS_OSCILLATOR => PS_OSCILLATOR,
		PP_SPECIAL_OR_12V_FOR_REL_DRIVERS => PP_SPECIAL_OR_12V_FOR_REL_DRIVERS,
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

   --   First basic test - clocks should be out of phase

   wait for 3 us;
   wait until RISING_EDGE(PS_1ST_CLOCK_PULSE_1);
   wait for 2 ns;
   assert PS_2ND_CLOCK_PULSE_1 = NOT PS_1ST_CLOCK_PULSE_1 
      report "Clock pulses not complemented" severity error;
   wait until FALLING_EDGE(PS_1ST_CLOCK_PULSE_1);
   check_clock_running;
   
   --   Second test - clock should stop once master error is asserted
   --   This should light up the STOP lamp
   
   MS_MASTER_ERROR <= '0';
   check_clock_stopped;
   assert LAMP_15A1K24 = '1'         report "check_clock_stopped not lamp" severity failure;
   assert PS_CLOCK_STOPPED = '1'     report "check_clock_stopped not stopped" severity failure;              


   
   MS_MASTER_ERROR <= '1';
   wait for 2 us;
   check_clock_running;
   
   --   Third test - 1401 stop.  Add factors one at a time checking
   --   along the way.  This one does NOT light up the STOP lamp
   
   PS_1401_STOP_AND_WAIT <= '1';
   check_clock_running;
   PS_1401_COND_TEST_OP_CODE <= '1';
   check_clock_running;
   PS_I_RING_9_TIME <= '1';
   check_clock_running;
   PS_B_CH_WM_BIT_1 <= '1';
   check_clock_running;
   PS_LOGIC_GATE_E_1 <= '1';
   check_clock_stopped;
   assert LAMP_15A1K24 = '0'         report "check_clock_stopped lamp error" severity failure;
   assert PS_CLOCK_STOPPED = '0'     report "check_clock_stopped stopped error" severity failure;              

   
   PS_1401_STOP_AND_WAIT <= '0';
   check_clock_running;
   wait for 1 us;
   
   --   Now test the stop latch input which is inhibited as long as either
   --   channel is doing something.
   
   MS_F_CH_IN_PROCESS <= '0';
   PS_STOP_LATCH <= '1';
   check_clock_running;
   wait for 1 us;
   
   MS_E_CH_IN_PROCESS <= '0';
   MS_F_CH_IN_PROCESS <= '1';
   check_clock_running;
   wait for 1 us;
   
   --   And then, let it stop.

   MS_F_CH_IN_PROCESS <= '1';
   MS_E_CH_IN_PROCESS <= '1';
   PS_STOP_LATCH <= '1';
   check_clock_stopped;
   assert PS_STOPPED_DOT_NOT_IN_PROCESS = '1' report "STOPPED DOT NOT IN PROCESS ERROR" severity failure;
   assert LAMP_15A1K24 = '1'         report "check_clock_stopped not lamp" severity failure;
   assert PS_CLOCK_STOPPED = '1'     report "check_clock_stopped not stopped" severity failure;                 

   assert false report "Normal End of Test" severity failure;
   
   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 1100 us;  -- Determines how long your simulation runs
   assert false report "Simulation Ended" severity failure;
   end process;

-- END USER TEST BENCH PROCESS

END;
