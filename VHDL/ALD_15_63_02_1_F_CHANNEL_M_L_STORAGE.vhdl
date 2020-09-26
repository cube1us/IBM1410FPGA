-- VHDL for IBM SMS ALD page 15.63.02.1
-- Title: F CHANNEL M-L STORAGE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/26/2020 4:21:26 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_63_02_1_F_CHANNEL_M_L_STORAGE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_F_CH_SELECT_7_BIT_UNIT:	 in STD_LOGIC;
		MS_F_CH_RESET_1:	 in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE:	 in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK:	 in STD_LOGIC;
		PS_UNIT_CTRL_OR_MOVE_OP_CODE:	 in STD_LOGIC;
		MS_F_SET_MOVE_MODE_LATCH_STAR_1414_STAR:	 in STD_LOGIC;
		PS_BRANCH_ON_STATUS_CH_2:	 in STD_LOGIC;
		PS_LOGIC_GATE_E_1:	 in STD_LOGIC;
		PS_I_O_INTLK_RESET_CONDITION:	 in STD_LOGIC;
		PS_I_O_LOAD_OP_CODE:	 in STD_LOGIC;
		PS_F_CH_WORD_SEPARATOR_MODE:	 out STD_LOGIC;
		PS_F_CH_MOVE_MODE:	 out STD_LOGIC;
		MS_F_CH_LOAD_MODE:	 out STD_LOGIC;
		PS_F_CH_LOAD_MODE:	 out STD_LOGIC;
		PS_F_CH_INTERLOCK:	 out STD_LOGIC;
		MC_LOAD_MODE_TO_1301_STAR_F_CH:	 out STD_LOGIC;
		MC_LOAD_MODE_TO_1405_STAR_F_CH:	 out STD_LOGIC;
		LAMP_15A1A15:	 out STD_LOGIC);
end ALD_15_63_02_1_F_CHANNEL_M_L_STORAGE;

architecture behavioral of ALD_15_63_02_1_F_CHANNEL_M_L_STORAGE is 

	signal OUT_4A_G: STD_LOGIC;
	signal OUT_2A_C: STD_LOGIC;
	signal OUT_1A_D: STD_LOGIC;
	signal OUT_5B_C: STD_LOGIC;
	signal OUT_4B_B: STD_LOGIC;
	signal OUT_3B_F: STD_LOGIC;
	signal OUT_3B_F_Latch: STD_LOGIC;
	signal OUT_2B_NoPin: STD_LOGIC;
	signal OUT_2B_NoPin_Latch: STD_LOGIC;
	signal OUT_1B_E: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_1C_D: STD_LOGIC;
	signal OUT_5D_K: STD_LOGIC;
	signal OUT_3D_F: STD_LOGIC;
	signal OUT_3D_F_Latch: STD_LOGIC;
	signal OUT_2D_NoPin: STD_LOGIC;
	signal OUT_2D_NoPin_Latch: STD_LOGIC;
	signal OUT_1D_E: STD_LOGIC;
	signal OUT_5E_P: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;
	signal OUT_1E_D: STD_LOGIC;
	signal OUT_4G_C: STD_LOGIC;
	signal OUT_3G_B: STD_LOGIC;
	signal OUT_2G_K: STD_LOGIC;
	signal OUT_4H_R: STD_LOGIC;
	signal OUT_4I_G: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;
	signal OUT_DOT_4G: STD_LOGIC;

begin

	OUT_4A_G <= NOT(PS_F_CH_SELECT_7_BIT_UNIT AND OUT_1E_D );
	OUT_2A_C <= NOT OUT_4A_G;
	OUT_1A_D <= NOT OUT_2C_C;
	OUT_5B_C <= NOT(PS_LAST_INSN_RO_CYCLE AND PS_LOZENGE_OR_ASTERISK );
	OUT_4B_B <= NOT OUT_5B_C;
	OUT_3B_F_Latch <= NOT(OUT_DOT_5D AND MS_F_CH_RESET_1 AND OUT_2B_NoPin );
	OUT_2B_NoPin_Latch <= NOT(OUT_1A_D AND OUT_3B_F );
	OUT_1B_E <= NOT OUT_2B_NoPin;
	OUT_3C_D <= NOT(OUT_4B_B AND PS_UNIT_CTRL_OR_MOVE_OP_CODE AND PS_LOGIC_GATE_E_1 );
	OUT_2C_C <= NOT(OUT_3C_D AND MS_F_SET_MOVE_MODE_LATCH_STAR_1414_STAR );
	OUT_1C_D <= NOT OUT_3B_F;
	OUT_5D_K <= NOT(PS_LAST_INSN_RO_CYCLE AND PS_BRANCH_ON_STATUS_CH_2 );
	OUT_3D_F_Latch <= NOT(OUT_DOT_5D AND MS_F_CH_RESET_1 AND OUT_2D_NoPin );
	OUT_2D_NoPin_Latch <= NOT(OUT_3D_F AND OUT_3E_C );
	OUT_1D_E <= NOT OUT_2D_NoPin;
	OUT_5E_P <= NOT(PS_LOGIC_GATE_E_1 AND PS_I_O_INTLK_RESET_CONDITION );
	OUT_3E_C <= NOT(OUT_4B_B AND PS_LOGIC_GATE_E_1 AND PS_I_O_LOAD_OP_CODE );
	OUT_1E_D <= NOT OUT_3D_F;
	OUT_4G_C <= NOT OUT_1B_E;
	OUT_3G_B <= NOT OUT_DOT_4G;
	OUT_2G_K <= NOT OUT_3G_B;
	LAMP_15A1A15 <= OUT_2G_K;
	OUT_4H_R <= NOT OUT_1D_E;
	OUT_4I_G <= OUT_1D_E;
	OUT_DOT_5D <= OUT_5D_K OR OUT_5E_P;
	OUT_DOT_4G <= OUT_4G_C OR OUT_4H_R;

	PS_F_CH_WORD_SEPARATOR_MODE <= OUT_2A_C;
	PS_F_CH_MOVE_MODE <= OUT_1C_D;
	MS_F_CH_LOAD_MODE <= OUT_1D_E;
	PS_F_CH_LOAD_MODE <= OUT_1E_D;
	MC_LOAD_MODE_TO_1301_STAR_F_CH <= OUT_4I_G;
	MC_LOAD_MODE_TO_1405_STAR_F_CH <= OUT_4I_G;
	PS_F_CH_INTERLOCK <= OUT_DOT_4G;

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_F_Latch,
		Q => OUT_3B_F,
		QBar => OPEN );

	Latch_2B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2B_NoPin_Latch,
		Q => OUT_2B_NoPin,
		QBar => OPEN );

	Latch_3D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3D_F_Latch,
		Q => OUT_3D_F,
		QBar => OPEN );

	Latch_2D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2D_NoPin_Latch,
		Q => OUT_2D_NoPin,
		QBar => OPEN );


end;
