-- VHDL for IBM SMS ALD page 13.42.11.1
-- Title: E CH EX END OF TRAN + DISC LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/28/2020 2:48:01 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_42_11_1_E_CH_EX_END_OF_TRAN_DISC_LATCH is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_E_CH_INT_END_OF_TRF_DELAYED:	 in STD_LOGIC;
		MS_E1_REG_FULL:	 in STD_LOGIC;
		PS_E2_REG_FULL:	 in STD_LOGIC;
		PS_E_CH_2ND_ADDR_TRF:	 in STD_LOGIC;
		PS_E_CH_OUTPUT_MODE:	 in STD_LOGIC;
		MS_E2_REG_FULL:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		MS_E_CH_FILE_ADDR_TRANSFER:	 in STD_LOGIC;
		MS_MASTER_ERROR:	 in STD_LOGIC;
		MC_1301_END_ADDR_TRF_E_CH:	 in STD_LOGIC;
		PS_E_CH_STROBE_TRIGGER:	 in STD_LOGIC;
		MS_E_CH_RESET:	 in STD_LOGIC;
		MS_E_CH_END_OF_2ND_ADDR_TRF:	 in STD_LOGIC;
		MC_BUFFER_END_OF_TRANSFER:	 in STD_LOGIC;
		UNNAMED_26_DOT_00_DOT_01_DOT_0:	 in STD_LOGIC;
		PS_E_CH_EXT_END_OF_TRF_STAR_1412_19:	 in STD_LOGIC;
		PS_E_CH_EXT_END_OF_TRF_STAR_SIF:	 in STD_LOGIC;
		PS_E_CH_EXT_END_OF_TRF_STAR_1311:	 in STD_LOGIC;
		MS_E_CH_SELECT_ANY_BUFFER:	 in STD_LOGIC;
		MS_1401_MODE:	 in STD_LOGIC;
		PS_E_CH_IN_PROCESS:	 in STD_LOGIC;
		PS_CONS_RELEASE_OR_CANCEL:	 in STD_LOGIC;
		MC_1405_END_OF_OP_STAR_E_CH:	 in STD_LOGIC;
		MC_1301_END_OF_OP_STAR_E_CH:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		MC_TAPE_IN_PROCESS:	 in STD_LOGIC;
		PS_E_CH_SELECT_TAPE_DATA:	 in STD_LOGIC;
		PS_E_CH_INPUT_MODE:	 in STD_LOGIC;
		PS_CONS_MX_32_POS:	 in STD_LOGIC;
		MS_E_CH_READY_BUS:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_T_DOT_INPUT:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_21:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_T_DOT_OUTPUT:	 in STD_LOGIC;
		PS_GATE_OFF_E_CH_EXT_END_OF_TRF:	 in STD_LOGIC;
		PS_E_CH_DISCON_LATCH:	 out STD_LOGIC;
		PS_E_CH_DISCON_LATCH_JRJ:	 out STD_LOGIC;
		MC_E_CH_DISCON_TO_1301:	 out STD_LOGIC;
		MC_E_CH_DISCON_TO_1405:	 out STD_LOGIC;
		PS_E_CH_END_ADDR_TRF_STAR_1301_STAR:	 out STD_LOGIC;
		MS_E_CH_EXT_END_OF_TRANSFER:	 out STD_LOGIC;
		PS_E_CH_EXT_END_OF_TRANSFER:	 out STD_LOGIC);
end ALD_13_42_11_1_E_CH_EX_END_OF_TRAN_DISC_LATCH;

architecture behavioral of ALD_13_42_11_1_E_CH_EX_END_OF_TRAN_DISC_LATCH is 

	signal OUT_5A_G: STD_LOGIC;
	signal OUT_4A_D: STD_LOGIC;
	signal OUT_3A_E: STD_LOGIC;
	signal OUT_2A_B: STD_LOGIC;
	signal OUT_5B_G: STD_LOGIC;
	signal OUT_4B_H: STD_LOGIC;
	signal OUT_3B_C: STD_LOGIC;
	signal OUT_2B_P: STD_LOGIC;
	signal OUT_5C_E: STD_LOGIC;
	signal OUT_5C_E_Latch: STD_LOGIC;
	signal OUT_4C_E: STD_LOGIC;
	signal OUT_4C_E_Latch: STD_LOGIC;
	signal OUT_3C_L: STD_LOGIC;
	signal OUT_3C_L_Latch: STD_LOGIC;
	signal OUT_2C_L: STD_LOGIC;
	signal OUT_4D_NoPin: STD_LOGIC;
	signal OUT_3D_E: STD_LOGIC;
	signal OUT_2D_B: STD_LOGIC;
	signal OUT_5E_C: STD_LOGIC;
	signal OUT_5E_C_Latch: STD_LOGIC;
	signal OUT_4E_G: STD_LOGIC;
	signal OUT_4E_G_Latch: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_3E_D_Latch: STD_LOGIC;
	signal OUT_2E_P: STD_LOGIC;
	signal OUT_5F_K: STD_LOGIC;
	signal OUT_4F_B: STD_LOGIC;
	signal OUT_3F_E: STD_LOGIC;
	signal OUT_2F_C: STD_LOGIC;
	signal OUT_5G_D: STD_LOGIC;
	signal OUT_4G_C: STD_LOGIC;
	signal OUT_2G_R: STD_LOGIC;
	signal OUT_5H_C: STD_LOGIC;
	signal OUT_4H_F: STD_LOGIC;
	signal OUT_4H_B: STD_LOGIC;
	signal OUT_2H_D: STD_LOGIC;
	signal OUT_3I_C: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;
	signal OUT_DOT_5B: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;
	signal OUT_DOT_5E: STD_LOGIC;
	signal OUT_DOT_5F: STD_LOGIC;
	signal OUT_DOT_3B: STD_LOGIC;
	signal OUT_DOT_2F: STD_LOGIC;
	signal OUT_DOT_4I: STD_LOGIC;

begin

	OUT_5A_G <= NOT(PS_E_CH_OUTPUT_MODE AND PS_E_CH_INT_END_OF_TRF_DELAYED AND MS_E1_REG_FULL );
	OUT_4A_D <= NOT(PS_E_CH_INT_END_OF_TRF_DELAYED AND MS_E1_REG_FULL AND PS_E_CH_2ND_ADDR_TRF );
	OUT_3A_E <= NOT(PS_E2_REG_FULL AND PS_E_CH_2ND_ADDR_TRF AND OUT_3C_L );
	OUT_2A_B <= OUT_DOT_2B;
	OUT_5B_G <= NOT(MS_E2_REG_FULL AND PS_2ND_CLOCK_PULSE_2 AND MS_E_CH_FILE_ADDR_TRANSFER );
	OUT_4B_H <= OUT_5C_E;
	OUT_3B_C <= NOT(MS_E2_REG_FULL AND PS_2ND_CLOCK_PULSE_2 AND PS_E_CH_STROBE_TRIGGER );
	OUT_2B_P <= NOT(OUT_3A_E AND OUT_DOT_3B );
	OUT_5C_E_Latch <= NOT(MS_E_CH_RESET AND MS_E_CH_END_OF_2ND_ADDR_TRF AND OUT_DOT_2B );
	OUT_4C_E_Latch <= NOT(OUT_5C_E AND OUT_DOT_5B AND MS_MASTER_ERROR );
	OUT_3C_L_Latch <= NOT(MC_1301_END_ADDR_TRF_E_CH );
	OUT_2C_L <= NOT(OUT_DOT_5D OR MS_E_CH_SELECT_ANY_BUFFER );
	OUT_4D_NoPin <= NOT(PS_E_CH_IN_PROCESS AND PS_E_CH_SELECT_TAPE_DATA AND OUT_5E_C );
	OUT_3D_E <= NOT(PS_E_CH_INT_END_OF_TRF_DELAYED AND PS_E_CH_SELECT_UNIT_F AND PS_E_CH_INPUT_MODE );
	OUT_2D_B <= NOT(OUT_DOT_5E OR MS_E_CH_SELECT_UNIT_F );
	OUT_5E_C_Latch <= NOT(MC_TAPE_IN_PROCESS );
	OUT_4E_G_Latch <= NOT(MS_E_CH_RESET AND OUT_3E_D );
	OUT_3E_D_Latch <= NOT(OUT_4D_NoPin AND OUT_4E_G );
	OUT_2E_P <= NOT(OUT_3D_E );
	OUT_5F_K <= NOT(PS_CONS_RELEASE_OR_CANCEL AND PS_CONS_MX_32_POS );
	OUT_4F_B <= NOT OUT_5E_C;
	OUT_3F_E <= NOT(OUT_4F_B AND OUT_3E_D AND PS_E_CH_SELECT_TAPE_DATA );
	OUT_2F_C <= NOT(OUT_3F_E AND OUT_DOT_5F AND OUT_5H_C );
	OUT_5G_D <= NOT(PS_E_CH_IN_PROCESS AND PS_E_CH_SELECT_UNIT_T_DOT_INPUT );
	OUT_4G_C <= NOT(MS_E_CH_READY_BUS AND MS_1401_MODE AND PS_E_CH_IN_PROCESS );
	OUT_2G_R <= NOT(OUT_4G_C );
	OUT_5H_C <= NOT(PS_E_CH_SELECT_UNIT_T_DOT_OUTPUT AND OUT_DOT_2B );

	SMS_DEY_4H: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => OUT_DOT_2F,	-- Pin K
		ACSET => PS_1ST_CLOCK_PULSE_21,	-- Pin H
		DCRESET => MS_E_CH_RESET,	-- Pin P
		OUTON => OUT_4H_F,
		OUTOFF => OUT_4H_B,
		GROUND => OPEN,
		DCRFORCE => OPEN,
		ACRESET => OPEN,
		GATEOFF => OPEN,
		DCSFORCE => OPEN );

	OUT_2H_D <= NOT OUT_4H_F;
	OUT_3I_C <= NOT OUT_DOT_4I;
	OUT_DOT_2B <= OUT_2B_P OR OUT_4C_E OR OUT_2E_P;
	OUT_DOT_5B <= OUT_5A_G OR OUT_5B_G;
	OUT_DOT_5D <= MC_BUFFER_END_OF_TRANSFER OR UNNAMED_26_DOT_00_DOT_01_DOT_0;
	OUT_DOT_5E <= MC_1301_END_OF_OP_STAR_E_CH AND MC_1405_END_OF_OP_STAR_E_CH;
	OUT_DOT_5F <= OUT_5F_K OR OUT_5G_D;
	OUT_DOT_3B <= OUT_4A_D OR OUT_3B_C;
	OUT_DOT_2F <= OUT_2C_L OR PS_E_CH_EXT_END_OF_TRF_STAR_1311 OR PS_E_CH_EXT_END_OF_TRF_STAR_SIF OR PS_E_CH_EXT_END_OF_TRF_STAR_1412_19 OR OUT_2D_B OR OUT_2F_C OR OUT_2G_R;
	OUT_DOT_4I <= OUT_4H_B OR PS_GATE_OFF_E_CH_EXT_END_OF_TRF;

	PS_E_CH_DISCON_LATCH <= OUT_2A_B;
	MC_E_CH_DISCON_TO_1301 <= OUT_4B_H;
	MC_E_CH_DISCON_TO_1405 <= OUT_4B_H;
	PS_E_CH_END_ADDR_TRF_STAR_1301_STAR <= OUT_3C_L;
	MS_E_CH_EXT_END_OF_TRANSFER <= OUT_2H_D;
	PS_E_CH_EXT_END_OF_TRANSFER <= OUT_3I_C;
	PS_E_CH_DISCON_LATCH_JRJ <= OUT_DOT_2B;

	Latch_5C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5C_E_Latch,
		Q => OUT_5C_E,
		QBar => OPEN );

	Latch_4C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4C_E_Latch,
		Q => OUT_4C_E,
		QBar => OPEN );

	Latch_3C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3C_L_Latch,
		Q => OUT_3C_L,
		QBar => OPEN );

	Latch_5E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5E_C_Latch,
		Q => OUT_5E_C,
		QBar => OPEN );

	Latch_4E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4E_G_Latch,
		Q => OUT_4E_G,
		QBar => OPEN );

	Latch_3E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3E_D_Latch,
		Q => OUT_3E_D,
		QBar => OPEN );


end;
