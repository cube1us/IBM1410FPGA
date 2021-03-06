-- VHDL for IBM SMS ALD group EChMisc1
-- Title: EChMisc1
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 7/30/2020 1:55:03 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity EChMisc1 is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_F_CYCLE: in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_U: in STD_LOGIC;
		PS_E_CYCLE: in STD_LOGIC;
		PS_F_CH_SELECT_UNIT_U: in STD_LOGIC;
		PS_F_CH_SELECT_ODD_PARITY_UNIT: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_1: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_2: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_4: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_T: in STD_LOGIC;
		PS_E_CH_BUFFER_SELECT: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_K: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_U: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_B: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_F: in STD_LOGIC;
		MS_E_CH_SEL_ODD_PARITY_STAR_1412_19: in STD_LOGIC;
		PS_E_CH_SELECT_7_BIT_UNIT_STAR_SIF: in STD_LOGIC;
		MS_IN_PROCESS_RESET: in STD_LOGIC;
		PS_I_O_PERCENT_LATCH: in STD_LOGIC;
		PS_I_O_COML_AT_LATCH: in STD_LOGIC;
		PS_E_CH_NO_STATUS_ON: in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_A_DELAY: in STD_LOGIC;
		MS_E_CH_STATUS_SAMPLE_B_DELAY: in STD_LOGIC;
		PS_1401_CARD_PRINT_IN_PROC: in STD_LOGIC;
		PS_1ST_I_O_CYCLE_CONTROL: in STD_LOGIC;
		PS_E_CH_SECOND_SAMPLE_B: in STD_LOGIC;
		PS_E_CH_2ND_ADDR_TRF: in STD_LOGIC;
		PS_F_CH_2ND_ADDR_TRF: in STD_LOGIC;
		PS_E_CH_MOVE_MODE: in STD_LOGIC;
		PS_F_CH_MOVE_MODE: in STD_LOGIC;
		PS_E_CH_LOAD_MODE: in STD_LOGIC;
		MS_E_CH_2ND_ADDR_TRF: in STD_LOGIC;
		PS_F_CH_LOAD_MODE: in STD_LOGIC;
		MS_F_CH_2ND_ADDR_TRF: in STD_LOGIC;
		MS_CONTROL_REG_DISABLE: in STD_LOGIC;
		PS_E_CH_INPUT_MODE: in STD_LOGIC;
		PS_F_CH_INPUT_MODE: in STD_LOGIC;
		PS_E_CH_OUTPUT_MODE: in STD_LOGIC;
		PS_F_CH_OUTPUT_MODE: in STD_LOGIC;
		PS_EVEN_PARITY_CYCLE: out STD_LOGIC;
		MS_ODD_PARITY_CYCLE: out STD_LOGIC;
		MS_E_CH_SELECT_ANY_BUFFER: out STD_LOGIC;
		PS_E_CH_SELECT_ANY_BUFFER: out STD_LOGIC;
		PS_E_CH_SELECT_7_BIT_UNIT: out STD_LOGIC;
		MS_E_CH_IN_PROCESS: out STD_LOGIC;
		PS_E_CH_UNOVLP_IN_PROCESS: out STD_LOGIC;
		PS_E_CH_OVLP_IN_PROCESS: out STD_LOGIC;
		MS_E_CH_UNOVLP_IN_PROCESS: out STD_LOGIC;
		PS_E_CH_IN_PROCESS: out STD_LOGIC;
		MS_E_CH_OVLP_IN_PROCESS: out STD_LOGIC;
		PS_MOVE_CYCLE: out STD_LOGIC;
		PS_LOAD_CYCLE: out STD_LOGIC;
		MS_LOAD_CYCLE: out STD_LOGIC;
		MS_INPUT_CYCLE: out STD_LOGIC;
		MS_OUTPUT_CYCLE: out STD_LOGIC;
		PS_INPUT_CYCLE: out STD_LOGIC;
		PS_OUTPUT_CYCLE: out STD_LOGIC;
		LAMP_15A1H14: out STD_LOGIC;
		LAMP_15A1K14: out STD_LOGIC);
end EChMisc1;


ARCHITECTURE structural of EChMisc1 is

	 signal PS_E_CH_SELECT_ODD_PARITY_UNIT: STD_LOGIC;

BEGIN

Page_13_60_02_1: ENTITY ALD_13_60_02_1_ODD_EVEN_PARITY_MODES
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_E_CH_SELECT_UNIT_U =>
		PS_E_CH_SELECT_UNIT_U,
	PS_F_CH_SELECT_UNIT_U =>
		PS_F_CH_SELECT_UNIT_U,
	PS_E_CYCLE =>
		PS_E_CYCLE,
	PS_F_CYCLE =>
		PS_F_CYCLE,
	PS_E_CH_SELECT_ODD_PARITY_UNIT =>
		PS_E_CH_SELECT_ODD_PARITY_UNIT,
	PS_F_CH_SELECT_ODD_PARITY_UNIT =>
		PS_F_CH_SELECT_ODD_PARITY_UNIT,
	PS_EVEN_PARITY_CYCLE =>
		PS_EVEN_PARITY_CYCLE,
	MS_ODD_PARITY_CYCLE =>
		MS_ODD_PARITY_CYCLE
	);

Page_13_60_03_1: ENTITY ALD_13_60_03_1_EVEN_ODD_PARITY_UNIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_E_CH_SELECT_UNIT_1 =>
		MS_E_CH_SELECT_UNIT_1,
	MS_E_CH_SELECT_UNIT_2 =>
		MS_E_CH_SELECT_UNIT_2,
	MS_E_CH_SELECT_UNIT_4 =>
		MS_E_CH_SELECT_UNIT_4,
	PS_E_CH_BUFFER_SELECT =>
		PS_E_CH_BUFFER_SELECT,
	MS_E_CH_SELECT_UNIT_T =>
		MS_E_CH_SELECT_UNIT_T,
	MS_E_CH_SELECT_UNIT_B =>
		MS_E_CH_SELECT_UNIT_B,
	MS_E_CH_SELECT_UNIT_F =>
		MS_E_CH_SELECT_UNIT_F,
	MS_E_CH_SEL_ODD_PARITY_STAR_1412_19 =>
		MS_E_CH_SEL_ODD_PARITY_STAR_1412_19,
	MS_E_CH_SELECT_UNIT_K =>
		MS_E_CH_SELECT_UNIT_K,
	PS_E_CH_SELECT_7_BIT_UNIT_STAR_SIF =>
		PS_E_CH_SELECT_7_BIT_UNIT_STAR_SIF,
	MS_E_CH_SELECT_UNIT_U =>
		MS_E_CH_SELECT_UNIT_U,
	MS_E_CH_SELECT_ANY_BUFFER =>
		MS_E_CH_SELECT_ANY_BUFFER,
	PS_E_CH_SELECT_ANY_BUFFER =>
		PS_E_CH_SELECT_ANY_BUFFER,
	PS_E_CH_SELECT_ODD_PARITY_UNIT =>
		PS_E_CH_SELECT_ODD_PARITY_UNIT,
	PS_E_CH_SELECT_7_BIT_UNIT =>
		PS_E_CH_SELECT_7_BIT_UNIT
	);

Page_13_60_04_1: ENTITY ALD_13_60_04_1_E_CH_IN_PROCESS_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_I_O_COML_AT_LATCH =>
		PS_I_O_COML_AT_LATCH,
	PS_E_CH_NO_STATUS_ON =>
		PS_E_CH_NO_STATUS_ON,
	PS_I_O_PERCENT_LATCH =>
		PS_I_O_PERCENT_LATCH,
	PS_E_CH_STATUS_SAMPLE_A_DELAY =>
		PS_E_CH_STATUS_SAMPLE_A_DELAY,
	MS_IN_PROCESS_RESET =>
		MS_IN_PROCESS_RESET,
	MS_E_CH_STATUS_SAMPLE_B_DELAY =>
		MS_E_CH_STATUS_SAMPLE_B_DELAY,
	PS_1401_CARD_PRINT_IN_PROC =>
		PS_1401_CARD_PRINT_IN_PROC,
	PS_1ST_I_O_CYCLE_CONTROL =>
		PS_1ST_I_O_CYCLE_CONTROL,
	PS_E_CH_SECOND_SAMPLE_B =>
		PS_E_CH_SECOND_SAMPLE_B,
	MS_E_CH_OVLP_IN_PROCESS =>
		MS_E_CH_OVLP_IN_PROCESS,
	PS_E_CH_OVLP_IN_PROCESS =>
		PS_E_CH_OVLP_IN_PROCESS,
	MS_E_CH_UNOVLP_IN_PROCESS =>
		MS_E_CH_UNOVLP_IN_PROCESS,
	PS_E_CH_UNOVLP_IN_PROCESS =>
		PS_E_CH_UNOVLP_IN_PROCESS,
	PS_E_CH_IN_PROCESS =>
		PS_E_CH_IN_PROCESS,
	MS_E_CH_IN_PROCESS =>
		MS_E_CH_IN_PROCESS,
	LAMP_15A1H14 =>
		LAMP_15A1H14,
	LAMP_15A1K14 =>
		LAMP_15A1K14
	);

Page_13_60_05_1: ENTITY ALD_13_60_05_1_MOVE_AND_LOAD_CYCLES
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_E_CH_2ND_ADDR_TRF =>
		PS_E_CH_2ND_ADDR_TRF,
	PS_F_CH_2ND_ADDR_TRF =>
		PS_F_CH_2ND_ADDR_TRF,
	PS_E_CH_MOVE_MODE =>
		PS_E_CH_MOVE_MODE,
	PS_E_CYCLE =>
		PS_E_CYCLE,
	PS_F_CH_MOVE_MODE =>
		PS_F_CH_MOVE_MODE,
	PS_F_CYCLE =>
		PS_F_CYCLE,
	PS_E_CH_LOAD_MODE =>
		PS_E_CH_LOAD_MODE,
	MS_E_CH_2ND_ADDR_TRF =>
		MS_E_CH_2ND_ADDR_TRF,
	PS_F_CH_LOAD_MODE =>
		PS_F_CH_LOAD_MODE,
	MS_F_CH_2ND_ADDR_TRF =>
		MS_F_CH_2ND_ADDR_TRF,
	PS_MOVE_CYCLE =>
		PS_MOVE_CYCLE,
	PS_LOAD_CYCLE =>
		PS_LOAD_CYCLE,
	MS_LOAD_CYCLE =>
		MS_LOAD_CYCLE
	);

Page_13_60_06_1: ENTITY ALD_13_60_06_1_INPUT_AND_OUTPUT_CYCLES_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_E_CH_INPUT_MODE =>
		PS_E_CH_INPUT_MODE,
	PS_F_CH_INPUT_MODE =>
		PS_F_CH_INPUT_MODE,
	MS_CONTROL_REG_DISABLE =>
		MS_CONTROL_REG_DISABLE,
	PS_E_CYCLE =>
		PS_E_CYCLE,
	PS_F_CYCLE =>
		PS_F_CYCLE,
	PS_E_CH_OUTPUT_MODE =>
		PS_E_CH_OUTPUT_MODE,
	PS_F_CH_OUTPUT_MODE =>
		PS_F_CH_OUTPUT_MODE,
	PS_INPUT_CYCLE =>
		PS_INPUT_CYCLE,
	MS_INPUT_CYCLE =>
		MS_INPUT_CYCLE,
	PS_OUTPUT_CYCLE =>
		PS_OUTPUT_CYCLE,
	MS_OUTPUT_CYCLE =>
		MS_OUTPUT_CYCLE
	);


END;
