-- Test Bench VHDL for IBM SMS ALD page 12.12.04.1
-- Title: I CYCLE LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 1:28:35 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_04_1_I_CYCLE_LATCH_tb is
end ALD_12_12_04_1_I_CYCLE_LATCH_tb;

architecture behavioral of ALD_12_12_04_1_I_CYCLE_LATCH_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_12_12_04_1_I_CYCLE_LATCH
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_CONTROL_REG_DISABLE:	 in STD_LOGIC;
		MS_PROGRAM_RES_OR_S_LOGIC_GATE:	 in STD_LOGIC;
		PS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		PS_I_CYCLE_CTRL:	 in STD_LOGIC;
		MS_I_CYCLE_CTRL:	 in STD_LOGIC;
		PS_I_CYCLE:	 out STD_LOGIC;
		MS_I_CYCLE_DOT_NOT_CR_DISABLE:	 out STD_LOGIC;
		PS_I_CYCLE_1:	 out STD_LOGIC;
		MS_I_CYCLE:	 out STD_LOGIC;
		PS_I_CYCLE_DOT_NOT_CR_DISABLE:	 out STD_LOGIC;
		LAMP_11C8J15:	 out STD_LOGIC;
		LAMP_15A1H10:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_CONTROL_REG_DISABLE: STD_LOGIC := '1';
	signal MS_PROGRAM_RES_OR_S_LOGIC_GATE: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_B_1: STD_LOGIC := '0';
	signal PS_I_CYCLE_CTRL: STD_LOGIC := '0';
	signal MS_I_CYCLE_CTRL: STD_LOGIC := '1';

	-- Outputs

	signal PS_I_CYCLE: STD_LOGIC;
	signal MS_I_CYCLE_DOT_NOT_CR_DISABLE: STD_LOGIC;
	signal PS_I_CYCLE_1: STD_LOGIC;
	signal MS_I_CYCLE: STD_LOGIC;
	signal PS_I_CYCLE_DOT_NOT_CR_DISABLE: STD_LOGIC;
	signal LAMP_11C8J15: STD_LOGIC;
	signal LAMP_15A1H10: STD_LOGIC;

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

	UUT: ALD_12_12_04_1_I_CYCLE_LATCH port map(
		FPGA_CLK => FPGA_CLK,
		MS_CONTROL_REG_DISABLE => MS_CONTROL_REG_DISABLE,
		MS_PROGRAM_RES_OR_S_LOGIC_GATE => MS_PROGRAM_RES_OR_S_LOGIC_GATE,
		PS_LOGIC_GATE_B_1 => PS_LOGIC_GATE_B_1,
		PS_I_CYCLE_CTRL => PS_I_CYCLE_CTRL,
		MS_I_CYCLE_CTRL => MS_I_CYCLE_CTRL,
		PS_I_CYCLE => PS_I_CYCLE,
		MS_I_CYCLE_DOT_NOT_CR_DISABLE => MS_I_CYCLE_DOT_NOT_CR_DISABLE,
		PS_I_CYCLE_1 => PS_I_CYCLE_1,
		MS_I_CYCLE => MS_I_CYCLE,
		PS_I_CYCLE_DOT_NOT_CR_DISABLE => PS_I_CYCLE_DOT_NOT_CR_DISABLE,
		LAMP_11C8J15 => LAMP_11C8J15,
		LAMP_15A1H10 => LAMP_15A1H10);

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
