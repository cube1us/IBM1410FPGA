-- Test BenchVHDL for IBM SMS ALD group CycleLatches
-- Title: CycleLatches
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 6/26/2020 2:54:15 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity CycleLatches_tb is
end CycleLatches_tb;

architecture behavioral of CycleLatches_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component CycleLatches
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_LOGIC_GATE_B_1: in STD_LOGIC;
		PS_A_CYCLE_CTRL: in STD_LOGIC;
		MS_A_CYCLE_CTRL: in STD_LOGIC;
		PS_B_CYCLE_CTRL: in STD_LOGIC;
		MS_B_CYCLE_CTRL: in STD_LOGIC;
		MS_E_CYCLE_CTRL: in STD_LOGIC;
		MS_F_CYCLE_CTRL: in STD_LOGIC;
		MS_CONTROL_REG_DISABLE: in STD_LOGIC;
		PS_I_CYCLE_CTRL: in STD_LOGIC;
		MS_I_CYCLE_CTRL: in STD_LOGIC;
		MS_LOGIC_GATE_S: in STD_LOGIC;
		MS_CONSOLE_SET_START_CND: in STD_LOGIC;
		MS_CONS_RESET_START_CONDITION: in STD_LOGIC;
		MS_PROGRAM_RESET_1: in STD_LOGIC;
		PS_X_CYCLE_CTRL: in STD_LOGIC;
		MS_X_CYCLE_CTRL: in STD_LOGIC;
		PS_C_CYCLE_CTRL: in STD_LOGIC;
		MS_C_CYCLE_CTRL: in STD_LOGIC;
		MS_F_CYCLE: in STD_LOGIC;
		MS_E_CYCLE: in STD_LOGIC;
		PS_D_CYCLE_CTRL: in STD_LOGIC;
		MS_D_CYCLE_CTRL: in STD_LOGIC;
		PS_A_CYCLE: out STD_LOGIC;
		MS_A_CYCLE: out STD_LOGIC;
		PS_A_OR_B_CYCLE: out STD_LOGIC;
		PS_B_CYCLE: out STD_LOGIC;
		PS_B_CYCLE_1: out STD_LOGIC;
		PS_B_OR_E_OR_F_CYCLE_CTRL: out STD_LOGIC;
		PS_I_CYCLE: out STD_LOGIC;
		MS_I_CYCLE_DOT_NOT_CR_DISABLE: out STD_LOGIC;
		PS_I_CYCLE_1: out STD_LOGIC;
		PS_I_CYCLE_DOT_NOT_CR_DISABLE: out STD_LOGIC;
		MS_I_CYCLE: out STD_LOGIC;
		PS_X_CYCLE: out STD_LOGIC;
		MS_X_CYCLE_DOT_NOT_CR_DISABLE: out STD_LOGIC;
		MS_X_CYCLE: out STD_LOGIC;
		MS_C_CYCLE_DOT_NOT_CR_DISABLE: out STD_LOGIC;
		PS_C_CYCLE: out STD_LOGIC;
		PS_C_CYCLE_1: out STD_LOGIC;
		PS_A_OR_C_CYCLE: out STD_LOGIC;
		MS_D_CYCLE_DOT_NOT_CR_DISABLE: out STD_LOGIC;
		PS_D_CYCLE: out STD_LOGIC;
		PS_C_OR_D_CYCLE: out STD_LOGIC;
		PS_B_OR_E_OR_F_CYCLE: out STD_LOGIC;
		PS_B_OR_D_CYCLE: out STD_LOGIC;
		LAMPS_CYCLE_CE: out STD_LOGIC_VECTOR (5 downTo 0);
		LAMPS_CYCLE_CONSOLE: out STD_LOGIC_VECTOR (5 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_B_1: STD_LOGIC := '0';
	signal PS_A_CYCLE_CTRL: STD_LOGIC := '0';
	signal MS_A_CYCLE_CTRL: STD_LOGIC := '1';
	signal PS_B_CYCLE_CTRL: STD_LOGIC := '0';
	signal MS_B_CYCLE_CTRL: STD_LOGIC := '1';
	signal MS_E_CYCLE_CTRL: STD_LOGIC := '1';
	signal MS_F_CYCLE_CTRL: STD_LOGIC := '1';
	signal MS_CONTROL_REG_DISABLE: STD_LOGIC := '1';
	signal PS_I_CYCLE_CTRL: STD_LOGIC := '0';
	signal MS_I_CYCLE_CTRL: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_S: STD_LOGIC := '1';
	signal MS_CONSOLE_SET_START_CND: STD_LOGIC := '1';
	signal MS_CONS_RESET_START_CONDITION: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_1: STD_LOGIC := '1';
	signal PS_X_CYCLE_CTRL: STD_LOGIC := '0';
	signal MS_X_CYCLE_CTRL: STD_LOGIC := '1';
	signal PS_C_CYCLE_CTRL: STD_LOGIC := '0';
	signal MS_C_CYCLE_CTRL: STD_LOGIC := '1';
	signal MS_F_CYCLE: STD_LOGIC := '1';
	signal MS_E_CYCLE: STD_LOGIC := '1';
	signal PS_D_CYCLE_CTRL: STD_LOGIC := '0';
	signal MS_D_CYCLE_CTRL: STD_LOGIC := '1';

	-- Outputs

	signal PS_A_CYCLE: STD_LOGIC;
	signal MS_A_CYCLE: STD_LOGIC;
	signal PS_A_OR_B_CYCLE: STD_LOGIC;
	signal PS_B_CYCLE: STD_LOGIC;
	signal PS_B_CYCLE_1: STD_LOGIC;
	signal PS_B_OR_E_OR_F_CYCLE_CTRL: STD_LOGIC;
	signal PS_I_CYCLE: STD_LOGIC;
	signal MS_I_CYCLE_DOT_NOT_CR_DISABLE: STD_LOGIC;
	signal PS_I_CYCLE_1: STD_LOGIC;
	signal PS_I_CYCLE_DOT_NOT_CR_DISABLE: STD_LOGIC;
	signal MS_I_CYCLE: STD_LOGIC;
	signal PS_X_CYCLE: STD_LOGIC;
	signal MS_X_CYCLE_DOT_NOT_CR_DISABLE: STD_LOGIC;
	signal MS_X_CYCLE: STD_LOGIC;
	signal MS_C_CYCLE_DOT_NOT_CR_DISABLE: STD_LOGIC;
	signal PS_C_CYCLE: STD_LOGIC;
	signal PS_C_CYCLE_1: STD_LOGIC;
	signal PS_A_OR_C_CYCLE: STD_LOGIC;
	signal MS_D_CYCLE_DOT_NOT_CR_DISABLE: STD_LOGIC;
	signal PS_D_CYCLE: STD_LOGIC;
	signal PS_C_OR_D_CYCLE: STD_LOGIC;
	signal PS_B_OR_E_OR_F_CYCLE: STD_LOGIC;
	signal PS_B_OR_D_CYCLE: STD_LOGIC;
	signal LAMPS_CYCLE_CE: STD_LOGIC_VECTOR (5 downTo 0);
	signal LAMPS_CYCLE_CONSOLE: STD_LOGIC_VECTOR (5 downTo 0);

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

	UUT: CycleLatches port map(
		FPGA_CLK => FPGA_CLK,
		PS_LOGIC_GATE_B_1 => PS_LOGIC_GATE_B_1,
		PS_A_CYCLE_CTRL => PS_A_CYCLE_CTRL,
		MS_A_CYCLE_CTRL => MS_A_CYCLE_CTRL,
		PS_B_CYCLE_CTRL => PS_B_CYCLE_CTRL,
		MS_B_CYCLE_CTRL => MS_B_CYCLE_CTRL,
		MS_E_CYCLE_CTRL => MS_E_CYCLE_CTRL,
		MS_F_CYCLE_CTRL => MS_F_CYCLE_CTRL,
		MS_CONTROL_REG_DISABLE => MS_CONTROL_REG_DISABLE,
		PS_I_CYCLE_CTRL => PS_I_CYCLE_CTRL,
		MS_I_CYCLE_CTRL => MS_I_CYCLE_CTRL,
		MS_LOGIC_GATE_S => MS_LOGIC_GATE_S,
		MS_CONSOLE_SET_START_CND => MS_CONSOLE_SET_START_CND,
		MS_CONS_RESET_START_CONDITION => MS_CONS_RESET_START_CONDITION,
		MS_PROGRAM_RESET_1 => MS_PROGRAM_RESET_1,
		PS_X_CYCLE_CTRL => PS_X_CYCLE_CTRL,
		MS_X_CYCLE_CTRL => MS_X_CYCLE_CTRL,
		PS_C_CYCLE_CTRL => PS_C_CYCLE_CTRL,
		MS_C_CYCLE_CTRL => MS_C_CYCLE_CTRL,
		MS_F_CYCLE => MS_F_CYCLE,
		MS_E_CYCLE => MS_E_CYCLE,
		PS_D_CYCLE_CTRL => PS_D_CYCLE_CTRL,
		MS_D_CYCLE_CTRL => MS_D_CYCLE_CTRL,
		PS_A_CYCLE => PS_A_CYCLE,
		MS_A_CYCLE => MS_A_CYCLE,
		PS_A_OR_B_CYCLE => PS_A_OR_B_CYCLE,
		PS_B_CYCLE => PS_B_CYCLE,
		PS_B_CYCLE_1 => PS_B_CYCLE_1,
		PS_B_OR_E_OR_F_CYCLE_CTRL => PS_B_OR_E_OR_F_CYCLE_CTRL,
		PS_I_CYCLE => PS_I_CYCLE,
		MS_I_CYCLE_DOT_NOT_CR_DISABLE => MS_I_CYCLE_DOT_NOT_CR_DISABLE,
		PS_I_CYCLE_1 => PS_I_CYCLE_1,
		PS_I_CYCLE_DOT_NOT_CR_DISABLE => PS_I_CYCLE_DOT_NOT_CR_DISABLE,
		MS_I_CYCLE => MS_I_CYCLE,
		PS_X_CYCLE => PS_X_CYCLE,
		MS_X_CYCLE_DOT_NOT_CR_DISABLE => MS_X_CYCLE_DOT_NOT_CR_DISABLE,
		MS_X_CYCLE => MS_X_CYCLE,
		MS_C_CYCLE_DOT_NOT_CR_DISABLE => MS_C_CYCLE_DOT_NOT_CR_DISABLE,
		PS_C_CYCLE => PS_C_CYCLE,
		PS_C_CYCLE_1 => PS_C_CYCLE_1,
		PS_A_OR_C_CYCLE => PS_A_OR_C_CYCLE,
		MS_D_CYCLE_DOT_NOT_CR_DISABLE => MS_D_CYCLE_DOT_NOT_CR_DISABLE,
		PS_D_CYCLE => PS_D_CYCLE,
		PS_C_OR_D_CYCLE => PS_C_OR_D_CYCLE,
		PS_B_OR_E_OR_F_CYCLE => PS_B_OR_E_OR_F_CYCLE,
		PS_B_OR_D_CYCLE => PS_B_OR_D_CYCLE,
		LAMPS_CYCLE_CE => LAMPS_CYCLE_CE,
		LAMPS_CYCLE_CONSOLE => LAMPS_CYCLE_CONSOLE);

-- START USER TEST BENCH PROCESS

-- The user test bench code MUST be placed between the
-- line that starts with the first line of text that
-- begins with "-- START USERS TEST BENCH PROCESS" 
-- and ends with "-- END"
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

MS_A_CYCLE_CTRL <= NOT PS_A_CYCLE_CTRL;
MS_B_CYCLE_CTRL <= NOT PS_B_CYCLE_CTRL;
MS_I_CYCLE_CTRL <= NOT PS_I_CYCLE_CTRL;
MS_X_CYCLE_CTRL <= NOT PS_X_CYCLE_CTRL;
MS_C_CYCLE_CTRL <= NOT PS_C_CYCLE_CTRL;
MS_D_CYCLE_CTRL <= NOT PS_D_CYCLE_CTRL;

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
   
   --   Reset

   wait for 1 us;
   MS_PROGRAM_RESET_1 <= '0';
   wait for 1us;
   MS_PROGRAM_RESET_1 <= '1';
   
   -- Test the cycle latches one at a time

   wait for 30 ns;
   assert PS_A_CYCLE = '0' report "A Cycle 1 after RESET" severity failure;
   assert PS_B_CYCLE = '0' report "B Cycle 1 after RESET" severity failure;
   assert PS_C_CYCLE = '0' report "C Cycle 1 after RESET" severity failure;
   assert PS_D_CYCLE = '0' report "D Cycle 1 after RESET" severity failure;
   assert PS_I_CYCLE = '0' report "I Cycle 1 after RESET" severity failure;
   assert PS_X_CYCLE = '0' report "X Cycle 1 after RESET" severity failure;   
   
   --  A Cycle
   
   PS_LOGIC_GATE_B_1 <= '1';
   PS_A_CYCLE_CTRL <= '1';
   
   wait for 30 ns;
   assert PS_A_CYCLE = '1' report "A Cycle 0 after LGB" severity failure;
   
   PS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   PS_A_CYCLE_CTRL <= '0';
   wait for 30 ns;
   assert PS_A_CYCLE = '1' report "A Cycle 0 post LGB" severity failure;

   PS_B_CYCLE_CTRL <= '1';
   wait for 30 ns;
   assert PS_B_CYCLE = '0' report "B Cycle 1 pre LGB" severity failure;

   -- B Cycle

   PS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   assert PS_A_CYCLE = '0' report "A Cycle 1 after A Cycle post LGB" severity failure;
   assert PS_B_CYCLE = '1' report "B Cycle 0 after A Cycle post LGB" severity failure;
   
   PS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   PS_B_CYCLE_CTRL <= '0';
   wait for 30 ns;
   assert PS_B_CYCLE = '1' report "B Cycle 0 post LGB" severity failure;
   
   PS_C_CYCLE_CTRL <= '1';
   wait for 30 ns;
   assert PS_C_CYCLE = '0' report "C Cycle 1 pre LGB" severity failure;
   
   -- C Cycle

   MS_CONTROL_REG_DISABLE <= '0';
   wait for 120 ns;
   MS_CONTROL_REG_DISABLE <= '1';
      
   PS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   assert PS_B_CYCLE = '0' report "B Cycle 1 after B Cycle post LGB" severity failure;
   assert PS_C_CYCLE = '1' report "C Cycle 0 after B Cycle post LGB" severity failure;

   PS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   PS_C_CYCLE_CTRL <= '0';
   wait for 30 ns;
   assert PS_C_CYCLE = '1' report "C Cycle 0 post LGB" severity failure;
   
   PS_D_CYCLE_CTRL <= '1';
   wait for 30 ns;
   assert PS_D_CYCLE = '0' report "D Cycle 1 pre LGB" severity failure;
   
   -- D Cycle

   MS_CONTROL_REG_DISABLE <= '0';
   wait for 120 ns;
   MS_CONTROL_REG_DISABLE <= '1';
         
   PS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   assert PS_C_CYCLE = '0' report "C Cycle 1 after C Cycle post LGB" severity failure;
   assert PS_D_CYCLE = '1' report "D Cycle 0 after C Cycle post LGB" severity failure;

   PS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   PS_D_CYCLE_CTRL <= '0';
   wait for 30 ns;
   assert PS_D_CYCLE = '1' report "D Cycle 0 post LGB" severity failure;
   
   PS_I_CYCLE_CTRL <= '1';
   wait for 30 ns;
   assert PS_I_CYCLE = '0' report "I Cycle 1 pre LDB" severity failure;
   
   -- I Cycle

   MS_CONTROL_REG_DISABLE <= '0';
   wait for 120 ns;
   MS_CONTROL_REG_DISABLE <= '1';
         
   PS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   assert PS_D_CYCLE = '0' report "D Cycle 1 after D Cycle post LGB" severity failure;
   assert PS_I_CYCLE = '1' report "I Cycle 0 after D Cycle post LGB" severity failure;

   PS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   PS_I_CYCLE_CTRL <= '0';
   wait for 30 ns;
   assert PS_I_CYCLE = '1' report "I Cycle 0 post LGB" severity failure;
   
   PS_X_CYCLE_CTRL <= '1';
   wait for 30 ns;
   assert PS_X_CYCLE = '0' report "X Cycle 1 pre LDB" severity failure;

   -- X Cycle

   MS_CONTROL_REG_DISABLE <= '0';
   wait for 120 ns;
   MS_CONTROL_REG_DISABLE <= '1';
         
   PS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   assert PS_I_CYCLE = '0' report "I Cycle 1 after I Cycle post LGB" severity failure;
   assert PS_X_CYCLE = '1' report "X Cycle 0 after I Cycle post LGB" severity failure;

   PS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   PS_X_CYCLE_CTRL <= '0';
   wait for 30 ns;
   assert PS_X_CYCLE = '1' report "X Cycle 0 post LGB" severity failure;
        
   MS_PROGRAM_RESET_1 <= '0';
   wait for 30 ns;
   assert PS_X_CYCLE = '0' report "Program Reset X Cycle still 1" severity failure;
         
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

END;