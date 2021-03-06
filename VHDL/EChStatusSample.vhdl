-- VHDL for IBM SMS ALD group EChStatusSample
-- Title: EChStatusSample
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/6/2020 8:35:49 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity EChStatusSample is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2: in STD_LOGIC;
		PS_LOGIC_GATE_Z: in STD_LOGIC;
		MS_PROGRAM_RESET_2: in STD_LOGIC;
		PS_E_CH_EXT_END_OF_TRANSFER: in STD_LOGIC;
		PS_E_CH_IN_PROCESS: in STD_LOGIC;
		PS_E_CH_INT_END_OF_TRANSFER: in STD_LOGIC;
		MS_E_CH_RESET: in STD_LOGIC;
		MS_E_CH_END_OF_2ND_ADDR_TRF: in STD_LOGIC;
		MS_RECOVER_LATCH_STAR_1311: in STD_LOGIC;
		PS_GT_OFF_E_CH_ST_SPL_DLY: in STD_LOGIC;
		PS_LOGIC_GATE_D_1: in STD_LOGIC;
		PS_LOGIC_GATE_E_1: in STD_LOGIC;
		PS_LOGIC_GATE_F_1: in STD_LOGIC;
		PS_I_CYCLE_1: in STD_LOGIC;
		MS_1401_MODE: in STD_LOGIC;
		PS_UNIT_CTRL_OP_CODE: in STD_LOGIC;
		PS_M_OR_L_OP_CODES: in STD_LOGIC;
		PS_E_CH_2_CHAR_ONLY_OP_CODES: in STD_LOGIC;
		PS_PERCENT_OR_COML_AT: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_F_A: in STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_EXTENSION: in STD_LOGIC;
		PS_B_CH_WM_BIT_1: in STD_LOGIC;
		PS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (12 downTo 0);
		MS_E_CH_INT_END_OF_XFER_DELAYED: out STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_B: out STD_LOGIC;
		PS_E_CH_INT_END_OF_TRF_DELAYED: out STD_LOGIC;
		MS_E_CH_STATUS_SAMPLE_B_DELAY: out STD_LOGIC;
		PS_E_CH_SECOND_SAMPLE_B: out STD_LOGIC;
		MS_E_CH_STATUS_SAMPLE_B: out STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_B_DELAY: out STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_A: out STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_A_DELAY: out STD_LOGIC;
		PS_E_CH_UNGATED_SAMPLE_A: out STD_LOGIC;
		MS_E_CH_STATUS_SAMPLE_A_DELAY: out STD_LOGIC);
end EChStatusSample;


ARCHITECTURE structural of EChStatusSample is

BEGIN

Page_13_65_05_1: ENTITY ALD_13_65_05_1_E_CH_STATUS_SAMPLE_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_E_CH_RESET =>
		MS_E_CH_RESET,
	MS_E_CH_END_OF_2ND_ADDR_TRF =>
		MS_E_CH_END_OF_2ND_ADDR_TRF,
	PS_E_CH_INT_END_OF_TRANSFER =>
		PS_E_CH_INT_END_OF_TRANSFER,
	PS_LOGIC_GATE_Z =>
		PS_LOGIC_GATE_Z,
	PS_E_CH_EXT_END_OF_TRANSFER =>
		PS_E_CH_EXT_END_OF_TRANSFER,
	PS_E_CH_IN_PROCESS =>
		PS_E_CH_IN_PROCESS,
	PS_2ND_CLOCK_PULSE_2 =>
		PS_2ND_CLOCK_PULSE_2,
	MS_PROGRAM_RESET_2 =>
		MS_PROGRAM_RESET_2,
	MS_RECOVER_LATCH_STAR_1311 =>
		MS_RECOVER_LATCH_STAR_1311,
	PS_GT_OFF_E_CH_ST_SPL_DLY =>
		PS_GT_OFF_E_CH_ST_SPL_DLY,
	MS_E_CH_INT_END_OF_XFER_DELAYED =>
		MS_E_CH_INT_END_OF_XFER_DELAYED,
	PS_E_CH_INT_END_OF_TRF_DELAYED =>
		PS_E_CH_INT_END_OF_TRF_DELAYED,
	MS_E_CH_STATUS_SAMPLE_B =>
		MS_E_CH_STATUS_SAMPLE_B,
	PS_E_CH_STATUS_SAMPLE_B =>
		PS_E_CH_STATUS_SAMPLE_B,
	PS_E_CH_SECOND_SAMPLE_B =>
		PS_E_CH_SECOND_SAMPLE_B,
	MS_E_CH_STATUS_SAMPLE_B_DELAY =>
		MS_E_CH_STATUS_SAMPLE_B_DELAY,
	PS_E_CH_STATUS_SAMPLE_B_DELAY =>
		PS_E_CH_STATUS_SAMPLE_B_DELAY
	);

Page_13_65_06_1: ENTITY ALD_13_65_06_1_E_CH_STATUS_SAMPLE
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_M_OR_L_OP_CODES =>
		PS_M_OR_L_OP_CODES,
	PS_I_RING_12_TIME =>
		PS_I_RING_HDL_BUS(12),
	MS_E_CH_SELECT_UNIT_F_A =>
		MS_E_CH_SELECT_UNIT_F_A,
	MS_1401_MODE =>
		MS_1401_MODE,
	PS_LOGIC_GATE_D_1 =>
		PS_LOGIC_GATE_D_1,
	PS_PERCENT_OR_COML_AT =>
		PS_PERCENT_OR_COML_AT,
	PS_B_CH_WM_BIT_1 =>
		PS_B_CH_WM_BIT_1,
	PS_FILE_OP_DOT_D_CY_DOT_EXTENSION =>
		PS_FILE_OP_DOT_D_CY_DOT_EXTENSION,
	PS_LOGIC_GATE_E_1 =>
		PS_LOGIC_GATE_E_1,
	PS_I_CYCLE_1 =>
		PS_I_CYCLE_1,
	PS_UNIT_CTRL_OP_CODE =>
		PS_UNIT_CTRL_OP_CODE,
	PS_I_RING_7_TIME =>
		PS_I_RING_HDL_BUS(7),
	PS_LOGIC_GATE_F_1 =>
		PS_LOGIC_GATE_F_1,
	PS_I_RING_2_TIME =>
		PS_I_RING_HDL_BUS(2),
	PS_E_CH_2_CHAR_ONLY_OP_CODES =>
		PS_E_CH_2_CHAR_ONLY_OP_CODES,
	PS_E_CH_STATUS_SAMPLE_A =>
		PS_E_CH_STATUS_SAMPLE_A,
	PS_E_CH_STATUS_SAMPLE_A_DELAY =>
		PS_E_CH_STATUS_SAMPLE_A_DELAY,
	MS_E_CH_STATUS_SAMPLE_A_DELAY =>
		MS_E_CH_STATUS_SAMPLE_A_DELAY,
	PS_E_CH_UNGATED_SAMPLE_A =>
		PS_E_CH_UNGATED_SAMPLE_A
	);


END;
