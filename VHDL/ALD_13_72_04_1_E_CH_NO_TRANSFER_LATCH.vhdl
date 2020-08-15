-- VHDL for IBM SMS ALD page 13.72.04.1
-- Title: E CH NO TRANSFER LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/15/2020 4:45:40 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_72_04_1_E_CH_NO_TRANSFER_LATCH is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_E_CH_END_OF_2ND_ADDR_TRF:	 in STD_LOGIC;
		MS_E_CH_RESET:	 in STD_LOGIC;
		MS_E_CH_STROBE_TRIGGER:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		MS_E_CH_FILE_SET_CHECK_AT_A:	 in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_B:	 in STD_LOGIC;
		PS_SET_E_CH_NO_TRANS_LAT_STAR_SIF:	 in STD_LOGIC;
		PS_E_CH_NO_TRF_STAR_7631_INHIBIT:	 in STD_LOGIC;
		PS_SET_E_CH_NO_TRANS_LAT_STAR_12_19:	 in STD_LOGIC;
		MC_BUFFER_NO_TRANS_COND:	 in STD_LOGIC;
		MS_E_CH_SELECT_ANY_BUFFER:	 in STD_LOGIC;
		MS_E_CH_FILE_SET_W_DOT_L_DOT_ADDR:	 in STD_LOGIC;
		MC_BUFFER_NO_TRANS_COND_JRJ:	 in STD_LOGIC;
		MS_CONS_INQUIRY_REQUEST:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_T_DOT_INPUT:	 in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_A:	 in STD_LOGIC;
		PS_E_CH_READY_BUS:	 in STD_LOGIC;
		MS_E_CH_BUSY_BUS:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_1:	 in STD_LOGIC;
		MS_E_CH_STACKER_SEL_OP_CODE:	 in STD_LOGIC;
		MS_1ST_DATA_STROBE_LATCH:	 out STD_LOGIC;
		MS_E_CH_FILE_DOT_NO_TRANSFER_BUS:	 out STD_LOGIC;
		MS_FILE_SET_E_CH_NO_TRANS_B:	 out STD_LOGIC;
		MS_E_CH_NO_TRANSFER_LATCH:	 out STD_LOGIC;
		PS_E_CH_NO_TRANSFER_LATCH:	 out STD_LOGIC;
		LAMP_15A1K16:	 out STD_LOGIC);
end ALD_13_72_04_1_E_CH_NO_TRANSFER_LATCH;

architecture behavioral of ALD_13_72_04_1_E_CH_NO_TRANSFER_LATCH is 

	signal OUT_5A_D: STD_LOGIC;
	signal OUT_5A_D_Latch: STD_LOGIC;
	signal OUT_4A_K: STD_LOGIC;
	signal OUT_4A_K_Latch: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_2B_D: STD_LOGIC;
	signal OUT_4C_E: STD_LOGIC;
	signal OUT_3C_NoPin: STD_LOGIC;
	signal OUT_3C_NoPin_Latch: STD_LOGIC;
	signal OUT_2C_P: STD_LOGIC;
	signal OUT_2C_P_Latch: STD_LOGIC;
	signal OUT_1C_C: STD_LOGIC;
	signal OUT_5D_A: STD_LOGIC;
	signal OUT_3D_E: STD_LOGIC;
	signal OUT_2D_C: STD_LOGIC;
	signal OUT_1D_B: STD_LOGIC;
	signal OUT_5E_C: STD_LOGIC;
	signal OUT_4E_R: STD_LOGIC;
	signal OUT_3E_K: STD_LOGIC;
	signal OUT_2E_K: STD_LOGIC;
	signal OUT_2F_P: STD_LOGIC;
	signal OUT_5H_G: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;
	signal OUT_DOT_2C: STD_LOGIC;
	signal OUT_DOT_2E: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;

begin

	OUT_5A_D_Latch <= NOT(MS_E_CH_END_OF_2ND_ADDR_TRF AND MS_E_CH_RESET AND OUT_4A_K );
	OUT_4A_K_Latch <= NOT(OUT_5A_D AND MS_E_CH_STROBE_TRIGGER );
	OUT_4B_C <= NOT(OUT_5A_D AND PS_E_CH_SELECT_UNIT_F );
	OUT_2B_D <= NOT OUT_1C_C;
	LAMP_15A1K16 <= OUT_2B_D;
	OUT_4C_E <= NOT(OUT_5A_D AND PS_E_CH_SELECT_UNIT_F AND PS_E_CH_STATUS_SAMPLE_B );
	OUT_3C_NoPin_Latch <= NOT(OUT_DOT_2C AND MS_E_CH_RESET );
	OUT_2C_P_Latch <= NOT(OUT_4C_E AND OUT_3C_NoPin AND MS_E_CH_FILE_SET_CHECK_AT_A );
	OUT_1C_C <= NOT OUT_DOT_2C;
	OUT_5D_A <= NOT(OUT_DOT_5D OR MS_E_CH_SELECT_ANY_BUFFER );
	OUT_3D_E <= NOT(OUT_5D_A AND OUT_4H_C AND PS_E_CH_STATUS_SAMPLE_B );
	OUT_2D_C <= NOT(OUT_3D_E AND MS_E_CH_FILE_SET_W_DOT_L_DOT_ADDR AND OUT_DOT_2E );
	OUT_1D_B <= NOT OUT_3C_NoPin;
	OUT_5E_C <= NOT(MS_CONS_INQUIRY_REQUEST AND PS_E_CH_SELECT_UNIT_T_DOT_INPUT );
	OUT_4E_R <= NOT(OUT_5D_A AND OUT_5H_G );
	OUT_3E_K <= NOT(OUT_5E_C AND OUT_4E_R );
	OUT_2E_K <= NOT(OUT_3E_K AND PS_E_CH_STATUS_SAMPLE_A );
	OUT_2F_P <= NOT(PS_E_CH_READY_BUS AND MS_E_CH_BUSY_BUS );
	OUT_5H_G <= NOT(PS_E_CH_SELECT_UNIT_1 AND MS_E_CH_STACKER_SEL_OP_CODE );
	OUT_4H_C <= NOT(OUT_5H_G );
	OUT_DOT_2C <= OUT_2C_P OR PS_SET_E_CH_NO_TRANS_LAT_STAR_SIF OR PS_E_CH_NO_TRF_STAR_7631_INHIBIT OR PS_SET_E_CH_NO_TRANS_LAT_STAR_12_19 OR OUT_2D_C;
	OUT_DOT_2E <= OUT_2E_K OR OUT_2F_P;
	OUT_DOT_5D <= MC_BUFFER_NO_TRANS_COND AND MC_BUFFER_NO_TRANS_COND_JRJ;

	MS_1ST_DATA_STROBE_LATCH <= OUT_5A_D;
	MS_E_CH_FILE_DOT_NO_TRANSFER_BUS <= OUT_4B_C;
	MS_FILE_SET_E_CH_NO_TRANS_B <= OUT_4C_E;
	MS_E_CH_NO_TRANSFER_LATCH <= OUT_1C_C;
	PS_E_CH_NO_TRANSFER_LATCH <= OUT_1D_B;

	Latch_5A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5A_D_Latch,
		Q => OUT_5A_D,
		QBar => OPEN );

	Latch_4A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4A_K_Latch,
		Q => OUT_4A_K,
		QBar => OPEN );

	Latch_3C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3C_NoPin_Latch,
		Q => OUT_3C_NoPin,
		QBar => OPEN );

	Latch_2C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2C_P_Latch,
		Q => OUT_2C_P,
		QBar => OPEN );


end;
