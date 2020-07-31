-- VHDL for IBM SMS ALD page 13.63.03.1
-- Title: E CH WRONG LENGTH RECORD-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/31/2020 9:58:34 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_63_03_1_E_CH_WRONG_LENGTH_RECORD_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_Q_OR_V_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		MS_E1_REG_FULL:	 in STD_LOGIC;
		MS_E_CH_STROBE_TRIGGER:	 in STD_LOGIC;
		PS_PROGRAM_RESET:	 in STD_LOGIC;
		MS_E_CH_RESET_CORR_REC_LENGTH:	 in STD_LOGIC;
		MS_F_OR_K_E_CH_RESET:	 in STD_LOGIC;
		MS_E2_REG_FULL:	 in STD_LOGIC;
		PS_E_CH_END_OF_RECORD_LATCH:	 in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_B:	 in STD_LOGIC;
		PS_E_CH_READY_BUS:	 in STD_LOGIC;
		MS_E_CH_BUSY_BUS:	 in STD_LOGIC;
		MS_E_CH_FILE_DOT_NO_TRANSFER_BUS:	 in STD_LOGIC;
		PS_B_CH_GROUP_MARK_DOT_WM:	 in STD_LOGIC;
		PS_FILE_OP:	 in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_A:	 in STD_LOGIC;
		MS_E_CH_RESET:	 in STD_LOGIC;
		MS_Q_OR_V_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_FILE_RING_7_LATCH:	 in STD_LOGIC;
		MS_E_CH_CHECK_BUS:	 in STD_LOGIC;
		MS_E_CH_UNIT_NUMBER_0:	 in STD_LOGIC;
		MS_FILE_SET_E_CH_NO_TRANS_B:	 in STD_LOGIC;
		PS_E_CH_2_CHAR_ONLY_OP_CODES:	 in STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_EXTENSION:	 in STD_LOGIC;
		PS_E_CH_UNIT_NUMBER_0:	 in STD_LOGIC;
		PS_LOGIC_GATE_E_1:	 in STD_LOGIC;
		PS_1401_MODE:	 in STD_LOGIC;
		MS_M_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_UNIT_CTRL_OP_CODE:	 in STD_LOGIC;
		PS_E_CH_UNGATED_SAMPLE_A:	 in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_A_DELAY:	 in STD_LOGIC;
		PS_E_CH_ANY_STATUS_ON:	 in STD_LOGIC;
		PS_E_CH_CORRECT_LENGTH_RECORD:	 out STD_LOGIC;
		MS_E_CH_CORRECT_LENGTH_RECORD:	 out STD_LOGIC;
		MS_E_CH_FILE_SET_W_DOT_L_DOT_ADDR:	 out STD_LOGIC;
		PS_FILE_WRONG_LENGTH_ADDR_CON:	 out STD_LOGIC;
		PS_E_CH_WRONG_LENGTH_REC_COND:	 out STD_LOGIC;
		PS_E_CH_WRONG_LENGTH_RECORD:	 out STD_LOGIC;
		PS_E_CH_WLR_STAR_1311_1401:	 out STD_LOGIC;
		MS_E_CH_WRONG_LENGTH_RECORD:	 out STD_LOGIC;
		MC_W_DOT_L_DOT_R_DOT_TO_FILE_STAR_E_CH:	 out STD_LOGIC;
		LAMP_15A1H16:	 out STD_LOGIC);
end ALD_13_63_03_1_E_CH_WRONG_LENGTH_RECORD_ACC;

architecture behavioral of ALD_13_63_03_1_E_CH_WRONG_LENGTH_RECORD_ACC is 

	signal OUT_4A_C: STD_LOGIC;
	signal OUT_2A_D: STD_LOGIC;
	signal OUT_1A_C: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_3B_Q: STD_LOGIC;
	signal OUT_4C_D: STD_LOGIC;
	signal OUT_4C_D_Latch: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_2C_E: STD_LOGIC;
	signal OUT_2C_E_Latch: STD_LOGIC;
	signal OUT_4D_E: STD_LOGIC;
	signal OUT_3D_K: STD_LOGIC;
	signal OUT_2D_G: STD_LOGIC;
	signal OUT_4E_C: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_2E_G: STD_LOGIC;
	signal OUT_5F_C: STD_LOGIC;
	signal OUT_4F_C: STD_LOGIC;
	signal OUT_3F_C: STD_LOGIC;
	signal OUT_3F_C_Latch: STD_LOGIC;
	signal OUT_2F_D: STD_LOGIC;
	signal OUT_2F_D_Latch: STD_LOGIC;
	signal OUT_5G_K: STD_LOGIC;
	signal OUT_4G_K: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_2G_A: STD_LOGIC;
	signal OUT_1G_C: STD_LOGIC;
	signal OUT_4H_E: STD_LOGIC;
	signal OUT_3H_E: STD_LOGIC;
	signal OUT_2H_D: STD_LOGIC;
	signal OUT_5I_P: STD_LOGIC;
	signal OUT_3I_D: STD_LOGIC;
	signal OUT_1I_E: STD_LOGIC;
	signal OUT_DOT_4A: STD_LOGIC;
	signal OUT_DOT_1A: STD_LOGIC;
	signal OUT_DOT_2D: STD_LOGIC;
	signal OUT_DOT_4F: STD_LOGIC;
	signal OUT_DOT_5I: STD_LOGIC;

begin

	OUT_4A_C <= NOT(PS_E_CH_STATUS_SAMPLE_B AND PS_E_CH_END_OF_RECORD_LATCH );
	OUT_2A_D <= NOT(PS_Q_OR_V_SYMBOL_OP_MODIFIER AND MS_E_CH_SELECT_UNIT_F AND PS_E_CH_STATUS_SAMPLE_A );
	OUT_1A_C <= NOT(OUT_2A_D );
	OUT_4B_C <= NOT(MS_E1_REG_FULL AND MS_E2_REG_FULL AND MS_E_CH_STROBE_TRIGGER );
	OUT_3B_Q <= OUT_4C_D;
	OUT_4C_D_Latch <= NOT(MS_E_CH_RESET_CORR_REC_LENGTH AND OUT_DOT_1A AND MS_F_OR_K_E_CH_RESET );
	OUT_3C_C <= NOT(PS_PROGRAM_RESET AND OUT_2G_A );
	OUT_2C_E_Latch <= NOT(OUT_4C_D AND OUT_3C_C AND OUT_DOT_4A );
	OUT_4D_E <= NOT(MS_E2_REG_FULL AND PS_E_CH_END_OF_RECORD_LATCH AND MS_E_CH_STROBE_TRIGGER );
	OUT_3D_K <= NOT(PS_B_CH_GROUP_MARK_DOT_WM AND PS_FILE_RING_7_LATCH );
	OUT_2D_G <= NOT(PS_E_CH_READY_BUS AND MS_E_CH_BUSY_BUS );
	OUT_4E_C <= NOT(PS_B_CH_GROUP_MARK_DOT_WM AND PS_FILE_OP AND PS_E_CH_STATUS_SAMPLE_A );
	OUT_3E_D <= NOT(OUT_4D_E AND PS_E_CH_STATUS_SAMPLE_B AND MS_E_CH_FILE_DOT_NO_TRANSFER_BUS );
	OUT_2E_G <= NOT(OUT_3D_K AND PS_E_CH_STATUS_SAMPLE_A AND PS_FILE_OP );
	OUT_5F_C <= NOT(MS_Q_OR_V_SYMBOL_OP_MODIFIER AND MS_E_CH_CHECK_BUS AND MS_E_CH_UNIT_NUMBER_0 );
	OUT_4F_C <= NOT(OUT_5F_C AND PS_FILE_RING_7_LATCH );
	OUT_3F_C_Latch <= NOT(MS_E_CH_RESET AND OUT_2F_D );
	OUT_2F_D_Latch <= NOT(OUT_3E_D AND OUT_3F_C AND OUT_DOT_2D );
	OUT_5G_K <= NOT(PS_FILE_OP_DOT_D_CY_DOT_EXTENSION AND PS_E_CH_UNIT_NUMBER_0 );
	OUT_4G_K <= NOT(PS_E_CH_2_CHAR_ONLY_OP_CODES AND PS_E_CH_UNGATED_SAMPLE_A );
	OUT_3G_C <= NOT(MS_FILE_SET_E_CH_NO_TRANS_B AND OUT_DOT_5I AND OUT_3I_D );
	OUT_2G_A <= OUT_3F_C;
	OUT_1G_C <= NOT(OUT_2G_A );
	OUT_4H_E <= NOT(PS_E_CH_UNGATED_SAMPLE_A AND PS_UNIT_CTRL_OP_CODE AND MS_M_SYMBOL_OP_MODIFIER );
	OUT_3H_E <= NOT(OUT_4G_K AND OUT_4H_E AND OUT_DOT_4F );
	OUT_2H_D <= NOT OUT_2G_A;
	LAMP_15A1H16 <= OUT_2H_D;
	OUT_5I_P <= NOT(PS_LOGIC_GATE_E_1 AND PS_1401_MODE );
	OUT_3I_D <= NOT(OUT_2G_A AND PS_E_CH_STATUS_SAMPLE_A_DELAY AND PS_E_CH_ANY_STATUS_ON );
	OUT_1I_E <= OUT_2G_A;
	OUT_DOT_4A <= OUT_4A_C OR OUT_4B_C;
	OUT_DOT_1A <= OUT_1A_C OR OUT_2C_E OR OUT_3G_C OR OUT_3H_E;
	OUT_DOT_2D <= OUT_2D_G OR OUT_2E_G;
	OUT_DOT_4F <= OUT_4E_C OR OUT_4F_C;
	OUT_DOT_5I <= OUT_5G_K OR OUT_5I_P;

	MS_E_CH_CORRECT_LENGTH_RECORD <= OUT_3B_Q;
	PS_E_CH_WRONG_LENGTH_REC_COND <= OUT_4D_E;
	PS_FILE_WRONG_LENGTH_ADDR_CON <= OUT_3D_K;
	PS_E_CH_WRONG_LENGTH_RECORD <= OUT_2F_D;
	MS_E_CH_WRONG_LENGTH_RECORD <= OUT_2G_A;
	PS_E_CH_WLR_STAR_1311_1401 <= OUT_1G_C;
	MC_W_DOT_L_DOT_R_DOT_TO_FILE_STAR_E_CH <= OUT_1I_E;
	PS_E_CH_CORRECT_LENGTH_RECORD <= OUT_DOT_1A;
	MS_E_CH_FILE_SET_W_DOT_L_DOT_ADDR <= OUT_DOT_2D;

	Latch_4C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4C_D_Latch,
		Q => OUT_4C_D,
		QBar => OPEN );

	Latch_2C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2C_E_Latch,
		Q => OUT_2C_E,
		QBar => OPEN );

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_C_Latch,
		Q => OUT_3F_C,
		QBar => OPEN );

	Latch_2F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2F_D_Latch,
		Q => OUT_2F_D,
		QBar => OPEN );


end;
