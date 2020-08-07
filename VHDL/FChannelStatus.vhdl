-- VHDL for IBM SMS ALD group FChannelStatus
-- Title: FChannelStatus
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/7/2020 4:57:24 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity FChannelStatus is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_F_CYCLE: in STD_LOGIC;
		MS_F_CH_RESET: in STD_LOGIC;
		PS_F_CH_SELECT_TAPE: in STD_LOGIC;
		MS_F_CH_SELECT_TAPE: in STD_LOGIC;
		MS_F_CH_SELECT_UNIT_F: in STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_A: in STD_LOGIC;
		PS_FILE_OP: in STD_LOGIC;
		MS_F_CH_CON_LAT_SET_STAR_1414_STAR: in STD_LOGIC;
		MS_FILE_OP: in STD_LOGIC;
		MC_1301_ERROR_F_CH: in STD_LOGIC;
		MC_1405_ERROR_F_CH: in STD_LOGIC;
		PS_I_O_CHECK: in STD_LOGIC;
		PS_F_CH_CHECK_STAR_SIF: in STD_LOGIC;
		MC_TAPE_ERROR: in STD_LOGIC;
		PS_ERROR_SAMPLE: in STD_LOGIC;
		PS_F_CH_CHECK_BUS_STAR_1414_STAR: in STD_LOGIC;
		MC_RBC_ERROR_1405_F_CH: in STD_LOGIC;
		PS_F_CH_CHECK_STAR_1412_19: in STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_B: in STD_LOGIC;
		MS_F_CH_COND_LATCH_STAR_SIF: in STD_LOGIC;
		TW_RBC_ERROR_1405_F_CH: in STD_LOGIC;
		MC_1301_F_CH_CONDITION: in STD_LOGIC;
		MC_1405_CONDITION_F_CH: in STD_LOGIC;
		MC_SEL_OR_TI_ON_CH_2: in STD_LOGIC;
		PS_F_CH_COND_BUS_STAR_1414_STAR: in STD_LOGIC;
		MS_SET_F_CH_CON_LATCH_STAR_1414_STAR: in STD_LOGIC;
		PS_LOGIC_GATE_C_1: in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK: in STD_LOGIC;
		MC_1301_READY_F_CH: in STD_LOGIC;
		MC_1405_READY_F_CH: in STD_LOGIC;
		PS_F_CH_READY_BUS_STAR_1414_STAR: in STD_LOGIC;
		PS_F_CH_READY_BUS_STAR_1412_19: in STD_LOGIC;
		PS_F_CH_READY_BUS_STAR_SIF: in STD_LOGIC;
		MC_TAPE_READY: in STD_LOGIC;
		PS_F_CH_2ND_ADDR_TRF: in STD_LOGIC;
		MC_SELECT_AND_REWIND_STAR_F_CH: in STD_LOGIC;
		PS_F_CH_BUSY_BUS_STAR_1414_STAR: in STD_LOGIC;
		PS_F_CH_BUSY_BUS_STAR_1412_19: in STD_LOGIC;
		MC_1301_BUSY_F_CH: in STD_LOGIC;
		MC_1405_BUSY_F_CH: in STD_LOGIC;
		MC_TAPE_BUSY: in STD_LOGIC;
		MS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (11 downTo 0);
		PS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (12 downTo 0);
		PS_F_CH_CHECK: out STD_LOGIC;
		PS_F_CH_CONDITION: out STD_LOGIC;
		MS_F_CH_TAPE_INDICATOR: out STD_LOGIC;
		MS_F_CH_CHECK: out STD_LOGIC;
		MS_F_CH_FILE_SET_CHECK_AT_A: out STD_LOGIC;
		MS_F_CH_CHECK_BUS: out STD_LOGIC;
		MS_F_CH_CONDITION: out STD_LOGIC;
		PS_F_CH_TAPE_INDICATOR: out STD_LOGIC;
		PS_F_CH_NOT_READY: out STD_LOGIC;
		PS_F_CH_BUSY: out STD_LOGIC;
		PS_F_CH_READY_BUS: out STD_LOGIC;
		MS_F_CH_BUSY_BUS: out STD_LOGIC;
		MS_F_CH_READY_BUS: out STD_LOGIC;
		MS_F_CH_NOT_READY: out STD_LOGIC;
		MS_F_CH_BUSY: out STD_LOGIC;
		LAMP_15A1E17: out STD_LOGIC;
		LAMP_15A1F17: out STD_LOGIC;
		LAMP_15A1A17: out STD_LOGIC;
		LAMP_15A1C17: out STD_LOGIC);
end FChannelStatus;


ARCHITECTURE structural of FChannelStatus is

	 signal XX_PS_F_CH_READY_BUS: STD_LOGIC;
	 signal XX_MS_F_CH_BUSY_BUS: STD_LOGIC;

BEGIN

	PS_F_CH_READY_BUS <= 
		XX_PS_F_CH_READY_BUS;
	MS_F_CH_BUSY_BUS <= 
		XX_MS_F_CH_BUSY_BUS;

Page_13_66_01_1: ENTITY ALD_13_66_01_1_F_CH_CHECK_AND_CONDITION
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_F_CH_STATUS_SAMPLE_A =>
		PS_F_CH_STATUS_SAMPLE_A,
	PS_FILE_OP =>
		PS_FILE_OP,
	MS_F_CH_CON_LAT_SET_STAR_1414_STAR =>
		MS_F_CH_CON_LAT_SET_STAR_1414_STAR,
	MS_FILE_OP =>
		MS_FILE_OP,
	PS_F_CH_READY_BUS =>
		XX_PS_F_CH_READY_BUS,
	MC_1301_ERROR_F_CH =>
		MC_1301_ERROR_F_CH,
	MC_1405_ERROR_F_CH =>
		MC_1405_ERROR_F_CH,
	PS_I_O_CHECK =>
		PS_I_O_CHECK,
	PS_F_CH_CHECK_STAR_SIF =>
		PS_F_CH_CHECK_STAR_SIF,
	MC_TAPE_ERROR =>
		MC_TAPE_ERROR,
	MS_F_CH_SELECT_TAPE =>
		MS_F_CH_SELECT_TAPE,
	PS_ERROR_SAMPLE =>
		PS_ERROR_SAMPLE,
	PS_F_CYCLE =>
		PS_F_CYCLE,
	MS_F_CH_RESET =>
		MS_F_CH_RESET,
	PS_F_CH_CHECK_BUS_STAR_1414_STAR =>
		PS_F_CH_CHECK_BUS_STAR_1414_STAR,
	MS_F_CH_BUSY_BUS =>
		XX_MS_F_CH_BUSY_BUS,
	MC_RBC_ERROR_1405_F_CH =>
		MC_RBC_ERROR_1405_F_CH,
	PS_F_CH_CHECK_STAR_1412_19 =>
		PS_F_CH_CHECK_STAR_1412_19,
	MS_F_CH_SELECT_UNIT_F =>
		MS_F_CH_SELECT_UNIT_F,
	PS_F_CH_STATUS_SAMPLE_B =>
		PS_F_CH_STATUS_SAMPLE_B,
	MS_F_CH_COND_LATCH_STAR_SIF =>
		MS_F_CH_COND_LATCH_STAR_SIF,
	TW_RBC_ERROR_1405_F_CH =>
		TW_RBC_ERROR_1405_F_CH,
	MC_1301_F_CH_CONDITION =>
		MC_1301_F_CH_CONDITION,
	MC_1405_CONDITION_F_CH =>
		MC_1405_CONDITION_F_CH,
	MC_SEL_OR_TI_ON_CH_2 =>
		MC_SEL_OR_TI_ON_CH_2,
	PS_F_CH_SELECT_TAPE =>
		PS_F_CH_SELECT_TAPE,
	PS_F_CH_COND_BUS_STAR_1414_STAR =>
		PS_F_CH_COND_BUS_STAR_1414_STAR,
	MS_SET_F_CH_CON_LATCH_STAR_1414_STAR =>
		MS_SET_F_CH_CON_LATCH_STAR_1414_STAR,
	MS_F_CH_CHECK =>
		MS_F_CH_CHECK,
	MS_F_CH_FILE_SET_CHECK_AT_A =>
		MS_F_CH_FILE_SET_CHECK_AT_A,
	PS_F_CH_CHECK =>
		PS_F_CH_CHECK,
	MS_F_CH_CHECK_BUS =>
		MS_F_CH_CHECK_BUS,
	MS_F_CH_CONDITION =>
		MS_F_CH_CONDITION,
	PS_F_CH_CONDITION =>
		PS_F_CH_CONDITION,
	PS_F_CH_TAPE_INDICATOR =>
		PS_F_CH_TAPE_INDICATOR,
	MS_F_CH_TAPE_INDICATOR =>
		MS_F_CH_TAPE_INDICATOR,
	LAMP_15A1E17 =>
		LAMP_15A1E17,
	LAMP_15A1F17 =>
		LAMP_15A1F17
	);

Page_13_66_05_1: ENTITY ALD_13_66_05_1_F_CH_NOT_READY_BUSY
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MC_1301_READY_F_CH =>
		MC_1301_READY_F_CH,
	MC_1405_READY_F_CH =>
		MC_1405_READY_F_CH,
	PS_F_CH_READY_BUS_STAR_1414_STAR =>
		PS_F_CH_READY_BUS_STAR_1414_STAR,
	PS_F_CH_READY_BUS_STAR_1412_19 =>
		PS_F_CH_READY_BUS_STAR_1412_19,
	PS_F_CH_READY_BUS_STAR_SIF =>
		PS_F_CH_READY_BUS_STAR_SIF,
	MC_TAPE_READY =>
		MC_TAPE_READY,
	PS_F_CH_STATUS_SAMPLE_B =>
		PS_F_CH_STATUS_SAMPLE_B,
	PS_F_CH_2ND_ADDR_TRF =>
		PS_F_CH_2ND_ADDR_TRF,
	PS_F_CH_STATUS_SAMPLE_A =>
		PS_F_CH_STATUS_SAMPLE_A,
	PS_F_CH_SELECT_TAPE =>
		PS_F_CH_SELECT_TAPE,
	MS_F_CH_SELECT_UNIT_F =>
		MS_F_CH_SELECT_UNIT_F,
	PS_I_RING_5_TIME =>
		PS_I_RING_HDL_BUS(5),
	MS_F_CH_RESET =>
		MS_F_CH_RESET,
	PS_LOGIC_GATE_C_1 =>
		PS_LOGIC_GATE_C_1,
	PS_LOZENGE_OR_ASTERISK =>
		PS_LOZENGE_OR_ASTERISK,
	MC_SELECT_AND_REWIND_STAR_F_CH =>
		MC_SELECT_AND_REWIND_STAR_F_CH,
	MS_I_RING_5_TIME =>
		MS_I_RING_HDL_BUS(5),
	PS_F_CH_BUSY_BUS_STAR_1414_STAR =>
		PS_F_CH_BUSY_BUS_STAR_1414_STAR,
	PS_F_CH_BUSY_BUS_STAR_1412_19 =>
		PS_F_CH_BUSY_BUS_STAR_1412_19,
	MC_1301_BUSY_F_CH =>
		MC_1301_BUSY_F_CH,
	MS_F_CH_SELECT_TAPE =>
		MS_F_CH_SELECT_TAPE,
	MC_1405_BUSY_F_CH =>
		MC_1405_BUSY_F_CH,
	MC_TAPE_BUSY =>
		MC_TAPE_BUSY,
	MS_F_CH_READY_BUS =>
		MS_F_CH_READY_BUS,
	PS_F_CH_NOT_READY =>
		PS_F_CH_NOT_READY,
	MS_F_CH_NOT_READY =>
		MS_F_CH_NOT_READY,
	PS_F_CH_READY_BUS =>
		XX_PS_F_CH_READY_BUS,
	MS_F_CH_BUSY =>
		MS_F_CH_BUSY,
	PS_F_CH_BUSY =>
		PS_F_CH_BUSY,
	MS_F_CH_BUSY_BUS =>
		XX_MS_F_CH_BUSY_BUS,
	LAMP_15A1A17 =>
		LAMP_15A1A17,
	LAMP_15A1C17 =>
		LAMP_15A1C17
	);


END;
