-- Test BenchVHDL for IBM SMS ALD group LogicGateRing
-- Title: LogicGateRing
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 6/26/2020 2:47:41 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity LogicGateRing_tb is
end LogicGateRing_tb;

architecture behavioral of LogicGateRing_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component LogicGateRing
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PP_SPECIAL_OR_12V_POWER_FOR_OSC: in STD_LOGIC;
		PS_1401_STOP_AND_WAIT: in STD_LOGIC;
		PS_1401_COND_TEST_OP_CODE: in STD_LOGIC;
		PS_B_CH_WM_BIT_1: in STD_LOGIC;
		PS_STOP_LATCH: in STD_LOGIC;
		MS_F_CH_IN_PROCESS: in STD_LOGIC;
		MS_E_CH_IN_PROCESS: in STD_LOGIC;
		MS_MASTER_ERROR: in STD_LOGIC;
		MS_LAST_LOGIC_GATE_1: in STD_LOGIC;
		PS_X_CYCLE: in STD_LOGIC;
		PS_I_CYCLE: in STD_LOGIC;
		MS_PROGRAM_RESET_3: in STD_LOGIC;
		PS_E_CYCLE_REQUIRED: in STD_LOGIC;
		PS_E_CH_UNOVLP_IN_PROCESS: in STD_LOGIC;
		PS_F_CYCLE_REQUIRED: in STD_LOGIC;
		PS_F_CH_UNOVLP_IN_PROCESS: in STD_LOGIC;
		PS_COMP_DISABLE_CYCLE: in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1: in STD_LOGIC;
		PS_E_CH_OVLP_IN_PROCESS: in STD_LOGIC;
		PS_F_CH_OVLP_IN_PROCESS: in STD_LOGIC;
		MS_PROGRAM_RESET_5: in STD_LOGIC;
		MS_E_CYCLE_REQUIRED: in STD_LOGIC;
		MS_F_CYCLE_REQUIRED: in STD_LOGIC;
		MS_PROGRAM_RESET_1: in STD_LOGIC;
		PS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (12 downTo 0);
		PS_A_CH_NOT_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		PS_OSCILLATOR: out STD_LOGIC;
		PP_SPECIAL_OR_12V_FOR_REL_DRIVERS: out STD_LOGIC;
		PS_1ST_CLOCK_PULSE_1: out STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2: out STD_LOGIC;
		PS_STOPPED_DOT_NOT_IN_PROCESS: out STD_LOGIC;
		PS_CLOCK_STOPPED_STAR_AUTS_STAR: out STD_LOGIC;
		PS_CLOCK_STOPPED: out STD_LOGIC;
		MS_CLOCK_STOPPED: out STD_LOGIC;
		PS_EARLY_LAST_GATE_I_O: out STD_LOGIC;
		MS_ANY_LAST_GATE: out STD_LOGIC;
		PS_ANY_LAST_GATE: out STD_LOGIC;
		PS_LOGIC_GATE_Z: out STD_LOGIC;
		PS_INDEX_GATE: out STD_LOGIC;
		PS_INSN_RO_GATE: out STD_LOGIC;
		PS_LOGIC_GATE_A_1: out STD_LOGIC;
		MS_LOGIC_GATE_A_1: out STD_LOGIC;
		PS_LOGIC_GATE_B_1: out STD_LOGIC;
		MS_LOGIC_GATE_B_1: out STD_LOGIC;
		MS_LOGIC_GATE_C_1: out STD_LOGIC;
		PS_LOGIC_GATE_C_1: out STD_LOGIC;
		MS_LOGIC_GATE_D_1: out STD_LOGIC;
		PS_LOGIC_GATE_C_OR_D: out STD_LOGIC;
		PS_LOGIC_GATE_D_1: out STD_LOGIC;
		PS_LOGIC_GATE_E_1: out STD_LOGIC;
		PS_LOGIC_GATE_E_2: out STD_LOGIC;
		MS_LOGIC_GATE_E_1: out STD_LOGIC;
		MY_LOGIC_GATE_E: out STD_LOGIC;
		PS_LOGIC_GATE_F_1: out STD_LOGIC;
		MY_LOGIC_GATE_F_1: out STD_LOGIC;
		MS_LOGIC_GATE_F_1: out STD_LOGIC;
		MS_LOGIC_GATE_G: out STD_LOGIC;
		PS_LOGIC_GATE_G: out STD_LOGIC;
		PS_LOGIC_GATE_H: out STD_LOGIC;
		PS_LOGIC_GATE_J: out STD_LOGIC;
		MS_LOGIC_GATE_K: out STD_LOGIC;
		PS_LOGIC_GATE_K: out STD_LOGIC;
		MS_LOGIC_GATE_R: out STD_LOGIC;
		PS_LOGIC_GATE_R: out STD_LOGIC;
		MS_LOGIC_GATE_A_DOT_R_CHECK: out STD_LOGIC;
		MS_LOGIC_GATE_S: out STD_LOGIC;
		MS_LOGIC_GATE_T: out STD_LOGIC;
		MS_LOGIC_GATE_U: out STD_LOGIC;
		PS_LOGIC_GATE_U: out STD_LOGIC;
		MS_LOGIC_GATE_V: out STD_LOGIC;
		MS_LOGIC_GATE_W: out STD_LOGIC;
		PS_LOGIC_GATE_W: out STD_LOGIC;
		MY_READ_CALL: out STD_LOGIC;
		PS_LOGIC_GATE_A_OR_R: out STD_LOGIC;
		PS_LOGIC_GATE_B_OR_C: out STD_LOGIC;
		PS_LOGIC_GATE_D_OR_E_OR_F: out STD_LOGIC;
		PS_LOGIC_GATE_S_OR_T: out STD_LOGIC;
		PS_LOGIC_GATE_U_OR_V_OR_W: out STD_LOGIC;
		PS_LOGIC_GATE_E_OR_V: out STD_LOGIC;
		PS_LOGIC_GATE_B_OR_S: out STD_LOGIC;
		MS_LOGIC_GATE_B_OR_S: out STD_LOGIC;
		MS_LOGIC_GATE_C_OR_T: out STD_LOGIC;
		PS_LOGIC_GATE_C_OR_T: out STD_LOGIC;
		MY_LOGIC_GATE_D_OR_U: out STD_LOGIC;
		MS_LOGIC_GATE_D_OR_U: out STD_LOGIC;
		PS_LOGIC_GATE_F_OR_W: out STD_LOGIC;
		MY_LOGIC_GATE_B_OR_S: out STD_LOGIC;
		MY_LOGIC_GATE_C_OR_T: out STD_LOGIC;
		MY_LOGIC_GATE_E_OR_V: out STD_LOGIC;
		MY_LOGIC_GATE_F_OR_W: out STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3: out STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3_JRJ: out STD_LOGIC;
		PS_LOGIC_GATE_EARLY_B: out STD_LOGIC;
		PS_LOGIC_GATE_EARLY_F: out STD_LOGIC;
		PS_LOGIC_GATE_EARLY_B_OR_S: out STD_LOGIC;
		PS_LOGIC_GATE_SPECIAL_A: out STD_LOGIC;
		PS_LOGIC_GATE_SPECIAL_A_1: out STD_LOGIC;
		PS_B_TO_LAST_LOGIC_GATE: out STD_LOGIC;
		PS_LOGIC_GATE_EARLY_S: out STD_LOGIC;
		LAMP_15A1K24: out STD_LOGIC;
		LAMPS_LOGIC_GATE_RING: out STD_LOGIC_VECTOR (10 downTo 1));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PP_SPECIAL_OR_12V_POWER_FOR_OSC: STD_LOGIC := '0';
	signal PS_1401_STOP_AND_WAIT: STD_LOGIC := '0';
	signal PS_1401_COND_TEST_OP_CODE: STD_LOGIC := '0';
	signal PS_B_CH_WM_BIT_1: STD_LOGIC := '0';
	signal PS_STOP_LATCH: STD_LOGIC := '0';
	signal MS_F_CH_IN_PROCESS: STD_LOGIC := '1';
	signal MS_E_CH_IN_PROCESS: STD_LOGIC := '1';
	signal MS_MASTER_ERROR: STD_LOGIC := '1';
	signal MS_LAST_LOGIC_GATE_1: STD_LOGIC := '1';
	signal PS_X_CYCLE: STD_LOGIC := '0';
	signal PS_I_CYCLE: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_3: STD_LOGIC := '1';
	signal PS_E_CYCLE_REQUIRED: STD_LOGIC := '0';
	signal PS_E_CH_UNOVLP_IN_PROCESS: STD_LOGIC := '0';
	signal PS_F_CYCLE_REQUIRED: STD_LOGIC := '0';
	signal PS_F_CH_UNOVLP_IN_PROCESS: STD_LOGIC := '0';
	signal PS_COMP_DISABLE_CYCLE: STD_LOGIC := '0';
	signal PS_LAST_LOGIC_GATE_1: STD_LOGIC := '0';
	signal PS_E_CH_OVLP_IN_PROCESS: STD_LOGIC := '0';
	signal PS_F_CH_OVLP_IN_PROCESS: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_5: STD_LOGIC := '1';
	signal MS_E_CYCLE_REQUIRED: STD_LOGIC := '1';
	signal MS_F_CYCLE_REQUIRED: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_1: STD_LOGIC := '1';
	signal PS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (12 downTo 0) := "0000000000000";
	signal PS_A_CH_NOT_BUS: STD_LOGIC_VECTOR (6 downTo 0) := "0000000";

	-- Outputs

	signal PS_OSCILLATOR: STD_LOGIC;
	signal PP_SPECIAL_OR_12V_FOR_REL_DRIVERS: STD_LOGIC;
	signal PS_1ST_CLOCK_PULSE_1: STD_LOGIC;
	signal PS_2ND_CLOCK_PULSE_2: STD_LOGIC;
	signal PS_STOPPED_DOT_NOT_IN_PROCESS: STD_LOGIC;
	signal PS_CLOCK_STOPPED_STAR_AUTS_STAR: STD_LOGIC;
	signal PS_CLOCK_STOPPED: STD_LOGIC;
	signal MS_CLOCK_STOPPED: STD_LOGIC;
	signal PS_EARLY_LAST_GATE_I_O: STD_LOGIC;
	signal MS_ANY_LAST_GATE: STD_LOGIC;
	signal PS_ANY_LAST_GATE: STD_LOGIC;
	signal PS_LOGIC_GATE_Z: STD_LOGIC;
	signal PS_INDEX_GATE: STD_LOGIC;
	signal PS_INSN_RO_GATE: STD_LOGIC;
	signal PS_LOGIC_GATE_A_1: STD_LOGIC;
	signal MS_LOGIC_GATE_A_1: STD_LOGIC;
	signal PS_LOGIC_GATE_B_1: STD_LOGIC;
	signal MS_LOGIC_GATE_B_1: STD_LOGIC;
	signal MS_LOGIC_GATE_C_1: STD_LOGIC;
	signal PS_LOGIC_GATE_C_1: STD_LOGIC;
	signal MS_LOGIC_GATE_D_1: STD_LOGIC;
	signal PS_LOGIC_GATE_C_OR_D: STD_LOGIC;
	signal PS_LOGIC_GATE_D_1: STD_LOGIC;
	signal PS_LOGIC_GATE_E_1: STD_LOGIC;
	signal PS_LOGIC_GATE_E_2: STD_LOGIC;
	signal MS_LOGIC_GATE_E_1: STD_LOGIC;
	signal MY_LOGIC_GATE_E: STD_LOGIC;
	signal PS_LOGIC_GATE_F_1: STD_LOGIC;
	signal MY_LOGIC_GATE_F_1: STD_LOGIC;
	signal MS_LOGIC_GATE_F_1: STD_LOGIC;
	signal MS_LOGIC_GATE_G: STD_LOGIC;
	signal PS_LOGIC_GATE_G: STD_LOGIC;
	signal PS_LOGIC_GATE_H: STD_LOGIC;
	signal PS_LOGIC_GATE_J: STD_LOGIC;
	signal MS_LOGIC_GATE_K: STD_LOGIC;
	signal PS_LOGIC_GATE_K: STD_LOGIC;
	signal MS_LOGIC_GATE_R: STD_LOGIC;
	signal PS_LOGIC_GATE_R: STD_LOGIC;
	signal MS_LOGIC_GATE_A_DOT_R_CHECK: STD_LOGIC;
	signal MS_LOGIC_GATE_S: STD_LOGIC;
	signal MS_LOGIC_GATE_T: STD_LOGIC;
	signal MS_LOGIC_GATE_U: STD_LOGIC;
	signal PS_LOGIC_GATE_U: STD_LOGIC;
	signal MS_LOGIC_GATE_V: STD_LOGIC;
	signal MS_LOGIC_GATE_W: STD_LOGIC;
	signal PS_LOGIC_GATE_W: STD_LOGIC;
	signal MY_READ_CALL: STD_LOGIC;
	signal PS_LOGIC_GATE_A_OR_R: STD_LOGIC;
	signal PS_LOGIC_GATE_B_OR_C: STD_LOGIC;
	signal PS_LOGIC_GATE_D_OR_E_OR_F: STD_LOGIC;
	signal PS_LOGIC_GATE_S_OR_T: STD_LOGIC;
	signal PS_LOGIC_GATE_U_OR_V_OR_W: STD_LOGIC;
	signal PS_LOGIC_GATE_E_OR_V: STD_LOGIC;
	signal PS_LOGIC_GATE_B_OR_S: STD_LOGIC;
	signal MS_LOGIC_GATE_B_OR_S: STD_LOGIC;
	signal MS_LOGIC_GATE_C_OR_T: STD_LOGIC;
	signal PS_LOGIC_GATE_C_OR_T: STD_LOGIC;
	signal MY_LOGIC_GATE_D_OR_U: STD_LOGIC;
	signal MS_LOGIC_GATE_D_OR_U: STD_LOGIC;
	signal PS_LOGIC_GATE_F_OR_W: STD_LOGIC;
	signal MY_LOGIC_GATE_B_OR_S: STD_LOGIC;
	signal MY_LOGIC_GATE_C_OR_T: STD_LOGIC;
	signal MY_LOGIC_GATE_E_OR_V: STD_LOGIC;
	signal MY_LOGIC_GATE_F_OR_W: STD_LOGIC;
	signal PS_2ND_CLOCK_PULSE_3: STD_LOGIC;
	signal PS_2ND_CLOCK_PULSE_3_JRJ: STD_LOGIC;
	signal PS_LOGIC_GATE_EARLY_B: STD_LOGIC;
	signal PS_LOGIC_GATE_EARLY_F: STD_LOGIC;
	signal PS_LOGIC_GATE_EARLY_B_OR_S: STD_LOGIC;
	signal PS_LOGIC_GATE_SPECIAL_A: STD_LOGIC;
	signal PS_LOGIC_GATE_SPECIAL_A_1: STD_LOGIC;
	signal PS_B_TO_LAST_LOGIC_GATE: STD_LOGIC;
	signal PS_LOGIC_GATE_EARLY_S: STD_LOGIC;
	signal LAMP_15A1K24: STD_LOGIC;
	signal LAMPS_LOGIC_GATE_RING: STD_LOGIC_VECTOR (10 downTo 1);

-- START USER TEST BENCH DECLARATIONS

   -- Your test bench declarations go here

-- END USER TEST BENCH DECLARATIONS

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: LogicGateRing port map(
		FPGA_CLK => FPGA_CLK,
		PP_SPECIAL_OR_12V_POWER_FOR_OSC => PP_SPECIAL_OR_12V_POWER_FOR_OSC,
		PS_1401_STOP_AND_WAIT => PS_1401_STOP_AND_WAIT,
		PS_1401_COND_TEST_OP_CODE => PS_1401_COND_TEST_OP_CODE,
		PS_B_CH_WM_BIT_1 => PS_B_CH_WM_BIT_1,
		PS_STOP_LATCH => PS_STOP_LATCH,
		MS_F_CH_IN_PROCESS => MS_F_CH_IN_PROCESS,
		MS_E_CH_IN_PROCESS => MS_E_CH_IN_PROCESS,
		MS_MASTER_ERROR => MS_MASTER_ERROR,
		MS_LAST_LOGIC_GATE_1 => MS_LAST_LOGIC_GATE_1,
		PS_X_CYCLE => PS_X_CYCLE,
		PS_I_CYCLE => PS_I_CYCLE,
		MS_PROGRAM_RESET_3 => MS_PROGRAM_RESET_3,
		PS_E_CYCLE_REQUIRED => PS_E_CYCLE_REQUIRED,
		PS_E_CH_UNOVLP_IN_PROCESS => PS_E_CH_UNOVLP_IN_PROCESS,
		PS_F_CYCLE_REQUIRED => PS_F_CYCLE_REQUIRED,
		PS_F_CH_UNOVLP_IN_PROCESS => PS_F_CH_UNOVLP_IN_PROCESS,
		PS_COMP_DISABLE_CYCLE => PS_COMP_DISABLE_CYCLE,
		PS_LAST_LOGIC_GATE_1 => PS_LAST_LOGIC_GATE_1,
		PS_E_CH_OVLP_IN_PROCESS => PS_E_CH_OVLP_IN_PROCESS,
		PS_F_CH_OVLP_IN_PROCESS => PS_F_CH_OVLP_IN_PROCESS,
		MS_PROGRAM_RESET_5 => MS_PROGRAM_RESET_5,
		MS_E_CYCLE_REQUIRED => MS_E_CYCLE_REQUIRED,
		MS_F_CYCLE_REQUIRED => MS_F_CYCLE_REQUIRED,
		MS_PROGRAM_RESET_1 => MS_PROGRAM_RESET_1,
		PS_I_RING_HDL_BUS => PS_I_RING_HDL_BUS,
		PS_A_CH_NOT_BUS => PS_A_CH_NOT_BUS,
		PS_OSCILLATOR => PS_OSCILLATOR,
		PP_SPECIAL_OR_12V_FOR_REL_DRIVERS => PP_SPECIAL_OR_12V_FOR_REL_DRIVERS,
		PS_1ST_CLOCK_PULSE_1 => PS_1ST_CLOCK_PULSE_1,
		PS_2ND_CLOCK_PULSE_2 => PS_2ND_CLOCK_PULSE_2,
		PS_STOPPED_DOT_NOT_IN_PROCESS => PS_STOPPED_DOT_NOT_IN_PROCESS,
		PS_CLOCK_STOPPED_STAR_AUTS_STAR => PS_CLOCK_STOPPED_STAR_AUTS_STAR,
		PS_CLOCK_STOPPED => PS_CLOCK_STOPPED,
		MS_CLOCK_STOPPED => MS_CLOCK_STOPPED,
		PS_EARLY_LAST_GATE_I_O => PS_EARLY_LAST_GATE_I_O,
		MS_ANY_LAST_GATE => MS_ANY_LAST_GATE,
		PS_ANY_LAST_GATE => PS_ANY_LAST_GATE,
		PS_LOGIC_GATE_Z => PS_LOGIC_GATE_Z,
		PS_INDEX_GATE => PS_INDEX_GATE,
		PS_INSN_RO_GATE => PS_INSN_RO_GATE,
		PS_LOGIC_GATE_A_1 => PS_LOGIC_GATE_A_1,
		MS_LOGIC_GATE_A_1 => MS_LOGIC_GATE_A_1,
		PS_LOGIC_GATE_B_1 => PS_LOGIC_GATE_B_1,
		MS_LOGIC_GATE_B_1 => MS_LOGIC_GATE_B_1,
		MS_LOGIC_GATE_C_1 => MS_LOGIC_GATE_C_1,
		PS_LOGIC_GATE_C_1 => PS_LOGIC_GATE_C_1,
		MS_LOGIC_GATE_D_1 => MS_LOGIC_GATE_D_1,
		PS_LOGIC_GATE_C_OR_D => PS_LOGIC_GATE_C_OR_D,
		PS_LOGIC_GATE_D_1 => PS_LOGIC_GATE_D_1,
		PS_LOGIC_GATE_E_1 => PS_LOGIC_GATE_E_1,
		PS_LOGIC_GATE_E_2 => PS_LOGIC_GATE_E_2,
		MS_LOGIC_GATE_E_1 => MS_LOGIC_GATE_E_1,
		MY_LOGIC_GATE_E => MY_LOGIC_GATE_E,
		PS_LOGIC_GATE_F_1 => PS_LOGIC_GATE_F_1,
		MY_LOGIC_GATE_F_1 => MY_LOGIC_GATE_F_1,
		MS_LOGIC_GATE_F_1 => MS_LOGIC_GATE_F_1,
		MS_LOGIC_GATE_G => MS_LOGIC_GATE_G,
		PS_LOGIC_GATE_G => PS_LOGIC_GATE_G,
		PS_LOGIC_GATE_H => PS_LOGIC_GATE_H,
		PS_LOGIC_GATE_J => PS_LOGIC_GATE_J,
		MS_LOGIC_GATE_K => MS_LOGIC_GATE_K,
		PS_LOGIC_GATE_K => PS_LOGIC_GATE_K,
		MS_LOGIC_GATE_R => MS_LOGIC_GATE_R,
		PS_LOGIC_GATE_R => PS_LOGIC_GATE_R,
		MS_LOGIC_GATE_A_DOT_R_CHECK => MS_LOGIC_GATE_A_DOT_R_CHECK,
		MS_LOGIC_GATE_S => MS_LOGIC_GATE_S,
		MS_LOGIC_GATE_T => MS_LOGIC_GATE_T,
		MS_LOGIC_GATE_U => MS_LOGIC_GATE_U,
		PS_LOGIC_GATE_U => PS_LOGIC_GATE_U,
		MS_LOGIC_GATE_V => MS_LOGIC_GATE_V,
		MS_LOGIC_GATE_W => MS_LOGIC_GATE_W,
		PS_LOGIC_GATE_W => PS_LOGIC_GATE_W,
		MY_READ_CALL => MY_READ_CALL,
		PS_LOGIC_GATE_A_OR_R => PS_LOGIC_GATE_A_OR_R,
		PS_LOGIC_GATE_B_OR_C => PS_LOGIC_GATE_B_OR_C,
		PS_LOGIC_GATE_D_OR_E_OR_F => PS_LOGIC_GATE_D_OR_E_OR_F,
		PS_LOGIC_GATE_S_OR_T => PS_LOGIC_GATE_S_OR_T,
		PS_LOGIC_GATE_U_OR_V_OR_W => PS_LOGIC_GATE_U_OR_V_OR_W,
		PS_LOGIC_GATE_E_OR_V => PS_LOGIC_GATE_E_OR_V,
		PS_LOGIC_GATE_B_OR_S => PS_LOGIC_GATE_B_OR_S,
		MS_LOGIC_GATE_B_OR_S => MS_LOGIC_GATE_B_OR_S,
		MS_LOGIC_GATE_C_OR_T => MS_LOGIC_GATE_C_OR_T,
		PS_LOGIC_GATE_C_OR_T => PS_LOGIC_GATE_C_OR_T,
		MY_LOGIC_GATE_D_OR_U => MY_LOGIC_GATE_D_OR_U,
		MS_LOGIC_GATE_D_OR_U => MS_LOGIC_GATE_D_OR_U,
		PS_LOGIC_GATE_F_OR_W => PS_LOGIC_GATE_F_OR_W,
		MY_LOGIC_GATE_B_OR_S => MY_LOGIC_GATE_B_OR_S,
		MY_LOGIC_GATE_C_OR_T => MY_LOGIC_GATE_C_OR_T,
		MY_LOGIC_GATE_E_OR_V => MY_LOGIC_GATE_E_OR_V,
		MY_LOGIC_GATE_F_OR_W => MY_LOGIC_GATE_F_OR_W,
		PS_2ND_CLOCK_PULSE_3 => PS_2ND_CLOCK_PULSE_3,
		PS_2ND_CLOCK_PULSE_3_JRJ => PS_2ND_CLOCK_PULSE_3_JRJ,
		PS_LOGIC_GATE_EARLY_B => PS_LOGIC_GATE_EARLY_B,
		PS_LOGIC_GATE_EARLY_F => PS_LOGIC_GATE_EARLY_F,
		PS_LOGIC_GATE_EARLY_B_OR_S => PS_LOGIC_GATE_EARLY_B_OR_S,
		PS_LOGIC_GATE_SPECIAL_A => PS_LOGIC_GATE_SPECIAL_A,
		PS_LOGIC_GATE_SPECIAL_A_1 => PS_LOGIC_GATE_SPECIAL_A_1,
		PS_B_TO_LAST_LOGIC_GATE => PS_B_TO_LAST_LOGIC_GATE,
		PS_LOGIC_GATE_EARLY_S => PS_LOGIC_GATE_EARLY_S,
		LAMP_15A1K24 => LAMP_15A1K24,
		LAMPS_LOGIC_GATE_RING => LAMPS_LOGIC_GATE_RING);

-- START USER TEST BENCH PROCESS

-- PS_2ND_CLOCK_PULSE_3 <= NOT PS_1ST_CLOCK_PULSE_PRIME;
MS_LAST_LOGIC_GATE_1 <= NOT PS_LAST_LOGIC_GATE_1;
-- PS_LOGIC_GATE_E_OR_V <= PS_LOGIC_GATE_E_1;
MS_PROGRAM_RESET_5 <= MS_PROGRAM_RESET_3;
MS_PROGRAM_RESET_1 <= MS_PROGRAM_RESET_3;

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

--
-- Stand in for the oscillator and assocaited logic
--



uut_process: process
   begin

   -- Your test bench code
   
   --   Master reset

   report "Begin Logic Gate Ring Test" severity note;

   wait for 1 us;
   MS_PROGRAM_RESET_3 <= '0';
   wait for 1 us;
   MS_PROGRAM_RESET_3 <= '1';
   
   --   Run the logic gates through their ordinary paces.
      
   wait until PS_LOGIC_GATE_E_1 = '1' AND PS_2ND_CLOCK_PULSE_3 = '1';
   wait for 30 ns;
   assert PS_EARLY_LAST_GATE_I_O = '1' report "EARLY LAST GATE IS 0" severity failure;
   
   wait until PS_LOGIC_GATE_F_1 = '1';
   PS_LAST_LOGIC_GATE_1 <= '1';
   wait for 3 ns;
   assert MS_ANY_LAST_GATE = '0' report "MS ANY LAST GATE IS 1" severity failure;
   assert PS_ANY_LAST_GATE = '1' report "PS ANY LAST GATE IS 0" severity failure;
   wait for 10 ns;
   -- assert MS_LOGIC_GATE_Z = '0'  report "MS LOGIC GATE Z IS 1"  severity failure;
   -- assert PS_LOGIC_GATE_Z = '1'  report "PS LOGIC GATE Z IS 0"  severity failure;
   
   --   +S INDEX GATE ONLY ACTIVE FOR H, J and K logic states
   
   assert PS_INDEX_GATE = '0' report "PS INDEX GATE NOT 0 (0a)" severity failure;
   PS_X_CYCLE <= '1';
   wait for 10 ns;
   assert PS_INDEX_GATE = '0' report "PS INDEX GATE NOT 0 (0b)" severity failure;
   PS_X_CYCLE <= '0';
      
   wait until PS_2ND_CLOCK_PULSE_3 = '1';
   wait for 30 ns;
   assert PS_EARLY_LAST_GATE_I_O = '0' report "EARLY LAST GATE IS 1" severity failure;
   
   wait until PS_LOGIC_GATE_F_1 = '0';
   PS_LAST_LOGIC_GATE_1 <= '0';
   
   report "Waiting for H" severity note;
   wait until PS_LOGIC_GATE_H = '1';
   PS_LAST_LOGIC_GATE_1 <= '1';
   assert PS_INDEX_GATE = '0' report "PS INDEX GATE NOT 0 (1)" severity failure;
   PS_X_CYCLE <= '1';
   wait for 10 ns;
   assert PS_INDEX_GATE = '1' report "PS INDEX GATE NOT 1 (1)" severity failure;
   PS_X_CYCLE <= '0';
   
   wait until PS_LOGIC_GATE_H = '0';
   PS_LAST_LOGIC_GATE_1 <= '0';
  
   wait until PS_LOGIC_GATE_J = '1';
   PS_LAST_LOGIC_GATE_1 <= '1';
   assert PS_INDEX_GATE = '0' report "PS INDEX GATE NOT 0 (2)" severity failure;
   PS_X_CYCLE <= '1';
   wait for 10 ns;
   assert PS_INDEX_GATE = '1' report "PS INDEX GATE NOT 1 (2)" severity failure;
   PS_X_CYCLE <= '0';   
   wait until PS_LOGIC_GATE_J = '0';
   PS_LAST_LOGIC_GATE_1 <= '0';
   
   wait until PS_LOGIC_GATE_K = '1';
   PS_LAST_LOGIC_GATE_1 <= '1';
   assert PS_INDEX_GATE = '0' report "PS INDEX GATE NOT 0 (3)" severity failure;
   PS_X_CYCLE <= '1';
   wait for 10 ns;
   assert PS_INDEX_GATE = '1' report "PS INDEX GATE NOT 1 (3)" severity failure;
   PS_X_CYCLE <= '0';      
   wait until PS_LOGIC_GATE_K = '0';
   PS_LAST_LOGIC_GATE_1 <= '0';

   -- Test instruction readout gate
   
   wait until PS_LOGIC_GATE_A_1 = '1';
   assert PS_INSN_RO_GATE = '0' report "INSN RO NOT 0 (4)" severity failure;   
   PS_I_CYCLE <= '1';
   wait for 10 ns;
   assert PS_INSN_RO_GATE = '0' report "INSN RO NOT 0 (5)" severity failure;
   -- PS_A_CH_NOT_WM_BIT <= '1';
   PS_A_CH_NOT_BUS(6) <= '1';
   wait for 10 ns;
   assert PS_INSN_RO_GATE = '1' report "INSN RO NOT 1 (6)" severity failure;
   
   --   Examine simulator "scope" to verify PS INSN RO is not 1 during
   --   B through E logic ring states.   
   
   --   Test Compute Disable / unoverlapped I/O
   
   wait until PS_LOGIC_GATE_E_1 = '1';
   PS_COMP_DISABLE_CYCLE <= '1';
   PS_E_CH_UNOVLP_IN_PROCESS <= '1';
   wait until PS_LOGIC_GATE_G = '1';
   PS_LAST_LOGIC_GATE_1 <= '1';
   wait until PS_LOGIC_GATE_G = '0';
   PS_LAST_LOGIC_GATE_1 <= '0';
   --   At this point, the ring should hold after "G"
   wait for 5 us;
   PS_E_CYCLE_REQUIRED <= '1';
   wait for 3 us;
   --   At this point, the ring should start up again at "A"
   PS_E_CYCLE_REQUIRED <= '0';
   wait until PS_LOGIC_GATE_G = '1';
   PS_LAST_LOGIC_GATE_1 <= '1';
   wait until PS_LOGIC_GATE_G = '0';
   PS_LAST_LOGIC_GATE_1 <= '0';
   --   At this point the ring should hold again after "G"
   --   As compute disable is still present
   wait for 5 us;
   PS_COMP_DISABLE_CYCLE <= '0';
   PS_E_CH_UNOVLP_IN_PROCESS <= '0';
   --   At this point the ring should finish and go back to "A"

   --   Now test overlapped I/O, which should go into the
   --   Logic Ring R thru W extension   
   
   wait until PS_LOGIC_GATE_B_1 = '1';
   PS_E_CYCLE_REQUIRED <= '1';
   PS_E_CH_OVLP_IN_PROCESS <= '1';
   PS_COMP_DISABLE_CYCLE <= '1';
   wait until PS_LOGIC_GATE_F_1 = '1';
   PS_LAST_LOGIC_GATE_1 <= '1';
   wait until PS_LOGIC_GATE_R = '1';
   PS_LAST_LOGIC_GATE_1 <= '0';
   wait until PS_LOGIC_GATE_W = '1';
   PS_LAST_LOGIC_GATE_1 <= '1';
   PS_E_CYCLE_REQUIRED <= '0';
   PS_COMP_DISABLE_CYCLE <= '0';   
   wait until PS_LOGIC_GATE_W = '0';
   PS_LAST_LOGIC_GATE_1 <= '0';
   --   At this point the ring should finish and go back to "A"
   --   Note that PS_E_CH_OVLP_IN_PROCESS is left at '1'
     
   report "END LOGIC GATE RING TEST" severity note;
   
   wait;

   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 100 us;  -- Determines how long your simulation runs
   assert false report "Simulation Ended Normally" severity failure;
   end process;

-- END USER TEST BENCH PROCESS

END;
