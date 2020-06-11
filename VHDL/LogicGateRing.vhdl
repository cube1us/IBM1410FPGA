-- VHDL for IBM SMS ALD group LogicGateRing
-- Title: LogicGateRing
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 6/10/2020 7:43:04 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity LogicGateRing is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PP_SPECIAL_OR_12V_POWER_FOR_OSC: in STD_LOGIC;
		PS_1401_STOP_AND_WAIT: in STD_LOGIC;
		PS_1401_COND_TEST_OP_CODE: in STD_LOGIC;
		PS_I_RING_9_TIME: in STD_LOGIC;
		PS_B_CH_WM_BIT_1: in STD_LOGIC;
		PS_STOP_LATCH: in STD_LOGIC;
		MS_F_CH_IN_PROCESS: in STD_LOGIC;
		MS_E_CH_IN_PROCESS: in STD_LOGIC;
		MS_MASTER_ERROR: in STD_LOGIC;
		MS_LAST_LOGIC_GATE_1: in STD_LOGIC;
		PS_X_CYCLE: in STD_LOGIC;
		PS_I_CYCLE: in STD_LOGIC;
		PS_A_CH_NOT_WM_BIT: in STD_LOGIC;
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
		LAMP_15A1K24: out STD_LOGIC;
		LAMP_15A1A06: out STD_LOGIC;
		LAMP_15A1B06: out STD_LOGIC;
		LAMP_15A1C06: out STD_LOGIC;
		LAMP_15A1D06: out STD_LOGIC;
		LAMP_15A1E06: out STD_LOGIC;
		LAMP_15A1F06: out STD_LOGIC;
		LAMP_15A1G06: out STD_LOGIC;
		LAMP_15A1H06: out STD_LOGIC;
		LAMP_15A1J06: out STD_LOGIC;
		LAMP_15A1K06: out STD_LOGIC);
end LogicGateRing;


ARCHITECTURE structural of LogicGateRing is

	 signal PS_OSCILLATOR_DELAYED: STD_LOGIC;
	 signal PS_1ST_CLOCK_PULSE_PRIME: STD_LOGIC;
	 signal PS_2ND_CLOCK_PULSE_1: STD_LOGIC;
	 signal PS_LOGIC_RING_ON_ADVANCE_1: STD_LOGIC;
	 signal PS_LOGIC_RING_OFF_ADVANCE_1: STD_LOGIC;
	 signal PS_LOGIC_RING_ON_ADVANCE_2: STD_LOGIC;
	 signal PS_LOGIC_RING_OFF_ADVANCE_2: STD_LOGIC;
	 signal MS_LOGIC_GATE_Z: STD_LOGIC;
	 signal MS_LOGIC_GATE_H: STD_LOGIC;
	 signal MS_LOGIC_GATE_J: STD_LOGIC;
	 signal MS_LOGIC_GATE_A: STD_LOGIC;
	 signal PS_LOGIC_GATE_A: STD_LOGIC;
	 signal PS_LOGIC_GATE_A_CONTROL: STD_LOGIC;
	 signal MS_LOGIC_GATE_B: STD_LOGIC;
	 signal PS_LOGIC_GATE_B: STD_LOGIC;
	 signal PS_LOGIC_GATE_C: STD_LOGIC;
	 signal MS_LOGIC_GATE_C: STD_LOGIC;
	 signal MS_LOGIC_GATE_D: STD_LOGIC;
	 signal PS_LOGIC_GATE_D: STD_LOGIC;
	 signal MS_LOGIC_GATE_E: STD_LOGIC;
	 signal PS_LOGIC_GATE_E: STD_LOGIC;
	 signal MS_LOGIC_GATE_F: STD_LOGIC;
	 signal PS_LOGIC_GATE_F: STD_LOGIC;
	 signal PS_LOGIC_GATE_S: STD_LOGIC;
	 signal PS_LOGIC_GATE_T: STD_LOGIC;
	 signal PS_LOGIC_GATE_V: STD_LOGIC;

	 signal XX_PS_OSCILLATOR: STD_LOGIC;
	 signal XX_PS_LOGIC_GATE_E_1: STD_LOGIC;
	 signal XX_PS_2ND_CLOCK_PULSE_3: STD_LOGIC;
	 signal XX_PS_LOGIC_GATE_E_OR_V: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_W: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_A_1: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_R: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_K: STD_LOGIC;
	 signal XX_PS_LOGIC_GATE_Z: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_C_1: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_G: STD_LOGIC;
	 signal XX_PS_LOGIC_GATE_G: STD_LOGIC;
	 signal XX_PS_LOGIC_GATE_H: STD_LOGIC;
	 signal XX_PS_LOGIC_GATE_J: STD_LOGIC;
	 signal XX_PS_LOGIC_GATE_R: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_S: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_T: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_U: STD_LOGIC;
	 signal XX_PS_LOGIC_GATE_U: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_V: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_D_1: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_B_1: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_E_1: STD_LOGIC;
	 signal XX_MS_LOGIC_GATE_F_1: STD_LOGIC;
	 signal XX_PS_LOGIC_GATE_B_OR_S: STD_LOGIC;
	 signal XX_PS_LOGIC_GATE_C_OR_T: STD_LOGIC;
	 signal XX_PS_LOGIC_GATE_F_OR_W: STD_LOGIC;

BEGIN

	PS_OSCILLATOR <= 
		XX_PS_OSCILLATOR;
	PS_LOGIC_GATE_E_1 <= 
		XX_PS_LOGIC_GATE_E_1;
	PS_2ND_CLOCK_PULSE_3 <= 
		XX_PS_2ND_CLOCK_PULSE_3;
	PS_LOGIC_GATE_E_OR_V <= 
		XX_PS_LOGIC_GATE_E_OR_V;
	MS_LOGIC_GATE_W <= 
		XX_MS_LOGIC_GATE_W;
	MS_LOGIC_GATE_A_1 <= 
		XX_MS_LOGIC_GATE_A_1;
	MS_LOGIC_GATE_R <= 
		XX_MS_LOGIC_GATE_R;
	MS_LOGIC_GATE_K <= 
		XX_MS_LOGIC_GATE_K;
	PS_LOGIC_GATE_Z <= 
		XX_PS_LOGIC_GATE_Z;
	MS_LOGIC_GATE_C_1 <= 
		XX_MS_LOGIC_GATE_C_1;
	MS_LOGIC_GATE_G <= 
		XX_MS_LOGIC_GATE_G;
	PS_LOGIC_GATE_G <= 
		XX_PS_LOGIC_GATE_G;
	PS_LOGIC_GATE_H <= 
		XX_PS_LOGIC_GATE_H;
	PS_LOGIC_GATE_J <= 
		XX_PS_LOGIC_GATE_J;
	PS_LOGIC_GATE_R <= 
		XX_PS_LOGIC_GATE_R;
	MS_LOGIC_GATE_S <= 
		XX_MS_LOGIC_GATE_S;
	MS_LOGIC_GATE_T <= 
		XX_MS_LOGIC_GATE_T;
	MS_LOGIC_GATE_U <= 
		XX_MS_LOGIC_GATE_U;
	PS_LOGIC_GATE_U <= 
		XX_PS_LOGIC_GATE_U;
	MS_LOGIC_GATE_V <= 
		XX_MS_LOGIC_GATE_V;
	MS_LOGIC_GATE_D_1 <= 
		XX_MS_LOGIC_GATE_D_1;
	MS_LOGIC_GATE_B_1 <= 
		XX_MS_LOGIC_GATE_B_1;
	MS_LOGIC_GATE_E_1 <= 
		XX_MS_LOGIC_GATE_E_1;
	MS_LOGIC_GATE_F_1 <= 
		XX_MS_LOGIC_GATE_F_1;
	PS_LOGIC_GATE_B_OR_S <= 
		XX_PS_LOGIC_GATE_B_OR_S;
	PS_LOGIC_GATE_C_OR_T <= 
		XX_PS_LOGIC_GATE_C_OR_T;
	PS_LOGIC_GATE_F_OR_W <= 
		XX_PS_LOGIC_GATE_F_OR_W;

Page_11_10_01_1: ENTITY ALD_11_10_01_1_LOGIC_CLOCK_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PP_SPECIAL_OR_12V_POWER_FOR_OSC =>
		PP_SPECIAL_OR_12V_POWER_FOR_OSC,
	PS_OSCILLATOR =>
		XX_PS_OSCILLATOR,
	PP_SPECIAL_OR_12V_FOR_REL_DRIVERS =>
		PP_SPECIAL_OR_12V_FOR_REL_DRIVERS,
	PS_OSCILLATOR_DELAYED =>
		PS_OSCILLATOR_DELAYED
	);

Page_11_10_02_1: ENTITY ALD_11_10_02_1_1_LOGIC_GATE_RING_CLK_PULSES_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_OSCILLATOR =>
		XX_PS_OSCILLATOR,
	PS_OSCILLATOR_DELAYED =>
		PS_OSCILLATOR_DELAYED,
	PS_1401_STOP_AND_WAIT =>
		PS_1401_STOP_AND_WAIT,
	PS_1401_COND_TEST_OP_CODE =>
		PS_1401_COND_TEST_OP_CODE,
	PS_I_RING_9_TIME =>
		PS_I_RING_9_TIME,
	PS_B_CH_WM_BIT_1 =>
		PS_B_CH_WM_BIT_1,
	PS_LOGIC_GATE_E_1 =>
		XX_PS_LOGIC_GATE_E_1,
	PS_STOP_LATCH =>
		PS_STOP_LATCH,
	MS_F_CH_IN_PROCESS =>
		MS_F_CH_IN_PROCESS,
	MS_E_CH_IN_PROCESS =>
		MS_E_CH_IN_PROCESS,
	MS_MASTER_ERROR =>
		MS_MASTER_ERROR,
	PS_1ST_CLOCK_PULSE_1 =>
		PS_1ST_CLOCK_PULSE_1,
	PS_1ST_CLOCK_PULSE_PRIME =>
		PS_1ST_CLOCK_PULSE_PRIME,
	PS_2ND_CLOCK_PULSE_1 =>
		PS_2ND_CLOCK_PULSE_1,
	PS_2ND_CLOCK_PULSE_2 =>
		PS_2ND_CLOCK_PULSE_2,
	PS_STOPPED_DOT_NOT_IN_PROCESS =>
		PS_STOPPED_DOT_NOT_IN_PROCESS,
	PS_CLOCK_STOPPED_STAR_AUTS_STAR =>
		PS_CLOCK_STOPPED_STAR_AUTS_STAR,
	PS_CLOCK_STOPPED =>
		PS_CLOCK_STOPPED,
	MS_CLOCK_STOPPED =>
		MS_CLOCK_STOPPED,
	LAMP_15A1K24 =>
		LAMP_15A1K24
	);

Page_11_10_05_1: ENTITY ALD_11_10_05_1_LOGIC_GATE_RING_ADVAN_PULSES_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_2ND_CLOCK_PULSE_1 =>
		PS_2ND_CLOCK_PULSE_1,
	PS_LOGIC_RING_ON_ADVANCE_1 =>
		PS_LOGIC_RING_ON_ADVANCE_1,
	PS_LOGIC_RING_OFF_ADVANCE_1 =>
		PS_LOGIC_RING_OFF_ADVANCE_1,
	PS_LOGIC_RING_ON_ADVANCE_2 =>
		PS_LOGIC_RING_ON_ADVANCE_2,
	PS_LOGIC_RING_OFF_ADVANCE_2 =>
		PS_LOGIC_RING_OFF_ADVANCE_2
	);

Page_11_10_06_1: ENTITY ALD_11_10_06_1_SPECIAL_LAST_GATES_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_2ND_CLOCK_PULSE_3 =>
		XX_PS_2ND_CLOCK_PULSE_3,
	PS_LOGIC_GATE_E_OR_V =>
		XX_PS_LOGIC_GATE_E_OR_V,
	MS_LOGIC_GATE_W =>
		XX_MS_LOGIC_GATE_W,
	MS_LAST_LOGIC_GATE_1 =>
		MS_LAST_LOGIC_GATE_1,
	MS_LOGIC_GATE_A_1 =>
		XX_MS_LOGIC_GATE_A_1,
	MS_LOGIC_GATE_R =>
		XX_MS_LOGIC_GATE_R,
	PS_EARLY_LAST_GATE_I_O =>
		PS_EARLY_LAST_GATE_I_O,
	MS_ANY_LAST_GATE =>
		MS_ANY_LAST_GATE,
	PS_ANY_LAST_GATE =>
		PS_ANY_LAST_GATE,
	PS_LOGIC_GATE_Z =>
		XX_PS_LOGIC_GATE_Z,
	MS_LOGIC_GATE_Z =>
		MS_LOGIC_GATE_Z
	);

Page_11_10_07_1: ENTITY ALD_11_10_07_1_ADDRESS_REG_CONTROLS_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_X_CYCLE =>
		PS_X_CYCLE,
	MS_LOGIC_GATE_H =>
		MS_LOGIC_GATE_H,
	MS_LOGIC_GATE_A_1 =>
		XX_MS_LOGIC_GATE_A_1,
	MS_LOGIC_GATE_K =>
		XX_MS_LOGIC_GATE_K,
	MS_LOGIC_GATE_J =>
		MS_LOGIC_GATE_J,
	MS_LOGIC_GATE_R =>
		XX_MS_LOGIC_GATE_R,
	PS_I_CYCLE =>
		PS_I_CYCLE,
	PS_A_CH_NOT_WM_BIT =>
		PS_A_CH_NOT_WM_BIT,
	PS_INDEX_GATE =>
		PS_INDEX_GATE,
	PS_INSN_RO_GATE =>
		PS_INSN_RO_GATE
	);

Page_11_10_10_1: ENTITY ALD_11_10_10_1_LOGIC_GATE_RING_A_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_1 =>
		PS_LOGIC_RING_ON_ADVANCE_1,
	PS_LOGIC_GATE_Z =>
		XX_PS_LOGIC_GATE_Z,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	PS_LOGIC_RING_OFF_ADVANCE_1 =>
		PS_LOGIC_RING_OFF_ADVANCE_1,
	MS_LOGIC_GATE_Z =>
		MS_LOGIC_GATE_Z,
	PS_E_CYCLE_REQUIRED =>
		PS_E_CYCLE_REQUIRED,
	PS_E_CH_UNOVLP_IN_PROCESS =>
		PS_E_CH_UNOVLP_IN_PROCESS,
	PS_F_CYCLE_REQUIRED =>
		PS_F_CYCLE_REQUIRED,
	PS_F_CH_UNOVLP_IN_PROCESS =>
		PS_F_CH_UNOVLP_IN_PROCESS,
	PS_COMP_DISABLE_CYCLE =>
		PS_COMP_DISABLE_CYCLE,
	MS_LOGIC_GATE_A =>
		MS_LOGIC_GATE_A,
	PS_LOGIC_GATE_A_1 =>
		PS_LOGIC_GATE_A_1,
	PS_LOGIC_GATE_A =>
		PS_LOGIC_GATE_A,
	PS_LOGIC_GATE_A_CONTROL =>
		PS_LOGIC_GATE_A_CONTROL,
	MS_LOGIC_GATE_A_1 =>
		XX_MS_LOGIC_GATE_A_1,
	LAMP_15A1A06 =>
		LAMP_15A1A06
	);

Page_11_10_11_1: ENTITY ALD_11_10_11_1_LOGIC_GATE_RING_B_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_1 =>
		PS_LOGIC_RING_ON_ADVANCE_1,
	PS_LOGIC_GATE_A =>
		PS_LOGIC_GATE_A,
	PS_LOGIC_RING_OFF_ADVANCE_1 =>
		PS_LOGIC_RING_OFF_ADVANCE_1,
	MS_LOGIC_GATE_A =>
		MS_LOGIC_GATE_A,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	PS_LOGIC_GATE_B_1 =>
		PS_LOGIC_GATE_B_1,
	MS_LOGIC_GATE_B =>
		MS_LOGIC_GATE_B,
	PS_LOGIC_GATE_B =>
		PS_LOGIC_GATE_B,
	MS_LOGIC_GATE_B_1 =>
		XX_MS_LOGIC_GATE_B_1,
	LAMP_15A1B06 =>
		LAMP_15A1B06
	);

Page_11_10_12_1: ENTITY ALD_11_10_12_1_LOGIC_GATE_RING_C_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_1 =>
		PS_LOGIC_RING_ON_ADVANCE_1,
	PS_LOGIC_GATE_B =>
		PS_LOGIC_GATE_B,
	PS_LOGIC_RING_OFF_ADVANCE_1 =>
		PS_LOGIC_RING_OFF_ADVANCE_1,
	MS_LOGIC_GATE_B =>
		MS_LOGIC_GATE_B,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	MS_LOGIC_GATE_C =>
		MS_LOGIC_GATE_C,
	PS_LOGIC_GATE_C =>
		PS_LOGIC_GATE_C,
	PS_LOGIC_GATE_C_1 =>
		PS_LOGIC_GATE_C_1,
	MS_LOGIC_GATE_C_1 =>
		XX_MS_LOGIC_GATE_C_1,
	LAMP_15A1C06 =>
		LAMP_15A1C06
	);

Page_11_10_13_1: ENTITY ALD_11_10_13_1_LOGIC_GATE_RING_D_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_1 =>
		PS_LOGIC_RING_ON_ADVANCE_1,
	PS_LOGIC_GATE_C =>
		PS_LOGIC_GATE_C,
	MS_LOGIC_GATE_C =>
		MS_LOGIC_GATE_C,
	PS_LOGIC_RING_OFF_ADVANCE_1 =>
		PS_LOGIC_RING_OFF_ADVANCE_1,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	MS_LOGIC_GATE_C_1 =>
		XX_MS_LOGIC_GATE_C_1,
	MS_LOGIC_GATE_D =>
		MS_LOGIC_GATE_D,
	PS_LOGIC_GATE_D =>
		PS_LOGIC_GATE_D,
	PS_LOGIC_GATE_D_1 =>
		PS_LOGIC_GATE_D_1,
	MS_LOGIC_GATE_D_1 =>
		XX_MS_LOGIC_GATE_D_1,
	PS_LOGIC_GATE_C_OR_D =>
		PS_LOGIC_GATE_C_OR_D,
	LAMP_15A1D06 =>
		LAMP_15A1D06
	);

Page_11_10_14_1: ENTITY ALD_11_10_14_1_LOGIC_GATE_RING_E_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_GATE_D =>
		PS_LOGIC_GATE_D,
	PS_LOGIC_RING_ON_ADVANCE_1 =>
		PS_LOGIC_RING_ON_ADVANCE_1,
	MS_LOGIC_GATE_D =>
		MS_LOGIC_GATE_D,
	PS_LOGIC_RING_OFF_ADVANCE_1 =>
		PS_LOGIC_RING_OFF_ADVANCE_1,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	MS_LOGIC_GATE_E =>
		MS_LOGIC_GATE_E,
	PS_LOGIC_GATE_E =>
		PS_LOGIC_GATE_E,
	PS_LOGIC_GATE_E_1 =>
		XX_PS_LOGIC_GATE_E_1,
	PS_LOGIC_GATE_E_2 =>
		PS_LOGIC_GATE_E_2,
	MS_LOGIC_GATE_E_1 =>
		XX_MS_LOGIC_GATE_E_1,
	MY_LOGIC_GATE_E =>
		MY_LOGIC_GATE_E,
	LAMP_15A1E06 =>
		LAMP_15A1E06
	);

Page_11_10_15_1: ENTITY ALD_11_10_15_1_LOGIC_GATE_RING_F
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_1 =>
		PS_LOGIC_RING_ON_ADVANCE_1,
	PS_LOGIC_GATE_E =>
		PS_LOGIC_GATE_E,
	PS_LOGIC_RING_OFF_ADVANCE_1 =>
		PS_LOGIC_RING_OFF_ADVANCE_1,
	MS_LOGIC_GATE_E =>
		MS_LOGIC_GATE_E,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	PS_LOGIC_GATE_F_1 =>
		PS_LOGIC_GATE_F_1,
	MS_LOGIC_GATE_F =>
		MS_LOGIC_GATE_F,
	PS_LOGIC_GATE_F =>
		PS_LOGIC_GATE_F,
	MY_LOGIC_GATE_F_1 =>
		MY_LOGIC_GATE_F_1,
	MS_LOGIC_GATE_F_1 =>
		XX_MS_LOGIC_GATE_F_1,
	LAMP_15A1F06 =>
		LAMP_15A1F06
	);

Page_11_10_16_1: ENTITY ALD_11_10_16_1_LOGIC_GATE_RING_G_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_1 =>
		PS_LOGIC_RING_ON_ADVANCE_1,
	PS_LOGIC_GATE_F =>
		PS_LOGIC_GATE_F,
	PS_LOGIC_RING_OFF_ADVANCE_1 =>
		PS_LOGIC_RING_OFF_ADVANCE_1,
	MS_LOGIC_GATE_F =>
		MS_LOGIC_GATE_F,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	PS_LAST_LOGIC_GATE_1 =>
		PS_LAST_LOGIC_GATE_1,
	MS_LOGIC_GATE_G =>
		XX_MS_LOGIC_GATE_G,
	PS_LOGIC_GATE_G =>
		XX_PS_LOGIC_GATE_G,
	LAMP_15A1G06 =>
		LAMP_15A1G06
	);

Page_11_10_17_1: ENTITY ALD_11_10_17_1_LOGIC_GATE_RING_H_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_1 =>
		PS_LOGIC_RING_ON_ADVANCE_1,
	PS_LOGIC_GATE_G =>
		XX_PS_LOGIC_GATE_G,
	PS_LOGIC_RING_OFF_ADVANCE_1 =>
		PS_LOGIC_RING_OFF_ADVANCE_1,
	MS_LOGIC_GATE_G =>
		XX_MS_LOGIC_GATE_G,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	PS_LAST_LOGIC_GATE_1 =>
		PS_LAST_LOGIC_GATE_1,
	MS_LOGIC_GATE_H =>
		MS_LOGIC_GATE_H,
	PS_LOGIC_GATE_H =>
		XX_PS_LOGIC_GATE_H,
	LAMP_15A1H06 =>
		LAMP_15A1H06
	);

Page_11_10_18_1: ENTITY ALD_11_10_18_1_LOGIC_GATE_RING_J_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_1 =>
		PS_LOGIC_RING_ON_ADVANCE_1,
	PS_LOGIC_GATE_H =>
		XX_PS_LOGIC_GATE_H,
	PS_LOGIC_RING_OFF_ADVANCE_1 =>
		PS_LOGIC_RING_OFF_ADVANCE_1,
	MS_LOGIC_GATE_H =>
		MS_LOGIC_GATE_H,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	PS_LAST_LOGIC_GATE_1 =>
		PS_LAST_LOGIC_GATE_1,
	MS_LOGIC_GATE_J =>
		MS_LOGIC_GATE_J,
	PS_LOGIC_GATE_J =>
		XX_PS_LOGIC_GATE_J,
	LAMP_15A1J06 =>
		LAMP_15A1J06
	);

Page_11_10_19_1: ENTITY ALD_11_10_19_1_LOGIC_GATE_RING_K_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_1 =>
		PS_LOGIC_RING_ON_ADVANCE_1,
	PS_LOGIC_GATE_J =>
		XX_PS_LOGIC_GATE_J,
	PS_LOGIC_RING_OFF_ADVANCE_1 =>
		PS_LOGIC_RING_OFF_ADVANCE_1,
	MS_LOGIC_GATE_J =>
		MS_LOGIC_GATE_J,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	PS_LAST_LOGIC_GATE_1 =>
		PS_LAST_LOGIC_GATE_1,
	MS_LOGIC_GATE_K =>
		XX_MS_LOGIC_GATE_K,
	PS_LOGIC_GATE_K =>
		PS_LOGIC_GATE_K,
	LAMP_15A1K06 =>
		LAMP_15A1K06
	);

Page_11_10_20_1: ENTITY ALD_11_10_20_1_LOGIC_GATE_RING_EXTENSION_R_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_2 =>
		PS_LOGIC_RING_ON_ADVANCE_2,
	PS_LOGIC_GATE_Z =>
		XX_PS_LOGIC_GATE_Z,
	PS_LOGIC_RING_OFF_ADVANCE_2 =>
		PS_LOGIC_RING_OFF_ADVANCE_2,
	MS_LOGIC_GATE_Z =>
		MS_LOGIC_GATE_Z,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	PS_E_CYCLE_REQUIRED =>
		PS_E_CYCLE_REQUIRED,
	PS_E_CH_OVLP_IN_PROCESS =>
		PS_E_CH_OVLP_IN_PROCESS,
	PS_LOGIC_GATE_A_CONTROL =>
		PS_LOGIC_GATE_A_CONTROL,
	PS_F_CYCLE_REQUIRED =>
		PS_F_CYCLE_REQUIRED,
	PS_F_CH_OVLP_IN_PROCESS =>
		PS_F_CH_OVLP_IN_PROCESS,
	MS_LOGIC_GATE_R =>
		XX_MS_LOGIC_GATE_R,
	PS_LOGIC_GATE_R =>
		XX_PS_LOGIC_GATE_R,
	MS_LOGIC_GATE_A_DOT_R_CHECK =>
		MS_LOGIC_GATE_A_DOT_R_CHECK
	);

Page_11_10_21_1: ENTITY ALD_11_10_21_1_LOGIC_GATE_RING_EXTENSION_S
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_2 =>
		PS_LOGIC_RING_ON_ADVANCE_2,
	PS_LOGIC_GATE_R =>
		XX_PS_LOGIC_GATE_R,
	PS_LOGIC_RING_OFF_ADVANCE_2 =>
		PS_LOGIC_RING_OFF_ADVANCE_2,
	MS_LOGIC_GATE_R =>
		XX_MS_LOGIC_GATE_R,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	MS_LOGIC_GATE_S =>
		XX_MS_LOGIC_GATE_S,
	PS_LOGIC_GATE_S =>
		PS_LOGIC_GATE_S
	);

Page_11_10_22_1: ENTITY ALD_11_10_22_1_LOGIC_GATE_RING_EXTENSION_T
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_2 =>
		PS_LOGIC_RING_ON_ADVANCE_2,
	PS_LOGIC_GATE_S =>
		PS_LOGIC_GATE_S,
	PS_LOGIC_RING_OFF_ADVANCE_2 =>
		PS_LOGIC_RING_OFF_ADVANCE_2,
	MS_LOGIC_GATE_S =>
		XX_MS_LOGIC_GATE_S,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	MS_LOGIC_GATE_T =>
		XX_MS_LOGIC_GATE_T,
	PS_LOGIC_GATE_T =>
		PS_LOGIC_GATE_T
	);

Page_11_10_23_1: ENTITY ALD_11_10_23_1_LOGIC_GATE_RING_EXTENSION_U
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_2 =>
		PS_LOGIC_RING_ON_ADVANCE_2,
	PS_LOGIC_GATE_T =>
		PS_LOGIC_GATE_T,
	PS_LOGIC_RING_OFF_ADVANCE_2 =>
		PS_LOGIC_RING_OFF_ADVANCE_2,
	MS_LOGIC_GATE_T =>
		XX_MS_LOGIC_GATE_T,
	MS_PROGRAM_RESET_3 =>
		MS_PROGRAM_RESET_3,
	MS_LOGIC_GATE_U =>
		XX_MS_LOGIC_GATE_U,
	PS_LOGIC_GATE_U =>
		XX_PS_LOGIC_GATE_U
	);

Page_11_10_24_1: ENTITY ALD_11_10_24_1_LOGIC_GATE_RING_EXTENSION_V
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_2 =>
		PS_LOGIC_RING_ON_ADVANCE_2,
	PS_LOGIC_GATE_U =>
		XX_PS_LOGIC_GATE_U,
	PS_LOGIC_RING_OFF_ADVANCE_2 =>
		PS_LOGIC_RING_OFF_ADVANCE_2,
	MS_LOGIC_GATE_U =>
		XX_MS_LOGIC_GATE_U,
	MS_PROGRAM_RESET_5 =>
		MS_PROGRAM_RESET_5,
	MS_LOGIC_GATE_V =>
		XX_MS_LOGIC_GATE_V,
	PS_LOGIC_GATE_V =>
		PS_LOGIC_GATE_V
	);

Page_11_10_25_1: ENTITY ALD_11_10_25_1_LOGIC_GATE_RING_EXTENSION_W
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_RING_ON_ADVANCE_2 =>
		PS_LOGIC_RING_ON_ADVANCE_2,
	PS_LOGIC_GATE_V =>
		PS_LOGIC_GATE_V,
	PS_LOGIC_RING_OFF_ADVANCE_2 =>
		PS_LOGIC_RING_OFF_ADVANCE_2,
	MS_LOGIC_GATE_V =>
		XX_MS_LOGIC_GATE_V,
	MS_PROGRAM_RESET_5 =>
		MS_PROGRAM_RESET_5,
	MS_LOGIC_GATE_W =>
		XX_MS_LOGIC_GATE_W,
	PS_LOGIC_GATE_W =>
		PS_LOGIC_GATE_W
	);

Page_11_10_32_1: ENTITY ALD_11_10_32_1_LOGIC_GATE_MIX_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_LOGIC_GATE_A_1 =>
		XX_MS_LOGIC_GATE_A_1,
	MS_LOGIC_GATE_R =>
		XX_MS_LOGIC_GATE_R,
	MS_LOGIC_GATE_B_1 =>
		XX_MS_LOGIC_GATE_B_1,
	MS_LOGIC_GATE_C_1 =>
		XX_MS_LOGIC_GATE_C_1,
	MS_LOGIC_GATE_D_1 =>
		XX_MS_LOGIC_GATE_D_1,
	MS_LOGIC_GATE_E_1 =>
		XX_MS_LOGIC_GATE_E_1,
	MS_LOGIC_GATE_F_1 =>
		XX_MS_LOGIC_GATE_F_1,
	MY_READ_CALL =>
		MY_READ_CALL,
	PS_LOGIC_GATE_A_OR_R =>
		PS_LOGIC_GATE_A_OR_R,
	PS_LOGIC_GATE_B_OR_C =>
		PS_LOGIC_GATE_B_OR_C,
	PS_LOGIC_GATE_D_OR_E_OR_F =>
		PS_LOGIC_GATE_D_OR_E_OR_F
	);

Page_11_10_33_1: ENTITY ALD_11_10_33_1_LOGIC_GATE_MIX
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_LOGIC_GATE_S =>
		XX_MS_LOGIC_GATE_S,
	MS_LOGIC_GATE_T =>
		XX_MS_LOGIC_GATE_T,
	MS_LOGIC_GATE_U =>
		XX_MS_LOGIC_GATE_U,
	MS_LOGIC_GATE_V =>
		XX_MS_LOGIC_GATE_V,
	MS_LOGIC_GATE_W =>
		XX_MS_LOGIC_GATE_W,
	PS_LOGIC_GATE_S_OR_T =>
		PS_LOGIC_GATE_S_OR_T,
	PS_LOGIC_GATE_U_OR_V_OR_W =>
		PS_LOGIC_GATE_U_OR_V_OR_W
	);

Page_11_10_34_1: ENTITY ALD_11_10_34_1_LOGIC_GATE_MIX
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_LOGIC_GATE_B_1 =>
		XX_MS_LOGIC_GATE_B_1,
	MS_LOGIC_GATE_S =>
		XX_MS_LOGIC_GATE_S,
	MS_LOGIC_GATE_C_1 =>
		XX_MS_LOGIC_GATE_C_1,
	MS_LOGIC_GATE_T =>
		XX_MS_LOGIC_GATE_T,
	MS_LOGIC_GATE_D_1 =>
		XX_MS_LOGIC_GATE_D_1,
	MS_LOGIC_GATE_U =>
		XX_MS_LOGIC_GATE_U,
	MS_LOGIC_GATE_E_1 =>
		XX_MS_LOGIC_GATE_E_1,
	MS_LOGIC_GATE_F_1 =>
		XX_MS_LOGIC_GATE_F_1,
	MS_LOGIC_GATE_V =>
		XX_MS_LOGIC_GATE_V,
	MS_LOGIC_GATE_W =>
		XX_MS_LOGIC_GATE_W,
	PS_LOGIC_GATE_B_OR_S =>
		XX_PS_LOGIC_GATE_B_OR_S,
	MS_LOGIC_GATE_B_OR_S =>
		MS_LOGIC_GATE_B_OR_S,
	MS_LOGIC_GATE_C_OR_T =>
		MS_LOGIC_GATE_C_OR_T,
	PS_LOGIC_GATE_C_OR_T =>
		XX_PS_LOGIC_GATE_C_OR_T,
	MY_LOGIC_GATE_D_OR_U =>
		MY_LOGIC_GATE_D_OR_U,
	MS_LOGIC_GATE_D_OR_U =>
		MS_LOGIC_GATE_D_OR_U,
	PS_LOGIC_GATE_E_OR_V =>
		XX_PS_LOGIC_GATE_E_OR_V,
	PS_LOGIC_GATE_F_OR_W =>
		XX_PS_LOGIC_GATE_F_OR_W
	);

Page_11_10_35_1: ENTITY ALD_11_10_35_1_LOGIC_GATE_MIX
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_LOGIC_GATE_B_OR_S =>
		XX_PS_LOGIC_GATE_B_OR_S,
	PS_LOGIC_GATE_C_OR_T =>
		XX_PS_LOGIC_GATE_C_OR_T,
	PS_LOGIC_GATE_E_OR_V =>
		XX_PS_LOGIC_GATE_E_OR_V,
	PS_LOGIC_GATE_F_OR_W =>
		XX_PS_LOGIC_GATE_F_OR_W,
	MY_LOGIC_GATE_B_OR_S =>
		MY_LOGIC_GATE_B_OR_S,
	MY_LOGIC_GATE_C_OR_T =>
		MY_LOGIC_GATE_C_OR_T,
	MY_LOGIC_GATE_E_OR_V =>
		MY_LOGIC_GATE_E_OR_V,
	MY_LOGIC_GATE_F_OR_W =>
		MY_LOGIC_GATE_F_OR_W
	);

Page_11_10_36_1: ENTITY ALD_11_10_36_1_2ND_CLOCK_PULSE_3_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_1ST_CLOCK_PULSE_PRIME =>
		PS_1ST_CLOCK_PULSE_PRIME,
	PS_2ND_CLOCK_PULSE_3 =>
		XX_PS_2ND_CLOCK_PULSE_3,
	PS_2ND_CLOCK_PULSE_3_JRJ =>
		PS_2ND_CLOCK_PULSE_3_JRJ
	);


END;
