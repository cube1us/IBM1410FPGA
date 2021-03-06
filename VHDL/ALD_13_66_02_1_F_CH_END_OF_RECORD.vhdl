-- VHDL for IBM SMS ALD page 13.66.02.1
-- Title: F CH END OF RECORD
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/8/2020 1:14:01 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_66_02_1_F_CH_END_OF_RECORD is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_F_CYCLE:	 in STD_LOGIC;
		PS_WRAP_AROUND_CONDITIONS:	 in STD_LOGIC;
		MS_F_CH_LAST_INPUT_CYCLE:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_OR_W:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		PS_B_CH_GROUP_MARK_DOT_WM:	 in STD_LOGIC;
		MS_W_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		MS_F_CH_2ND_ADDR_TRF:	 in STD_LOGIC;
		MS_R_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_1401_CARD_PRINT_IN_PROC:	 in STD_LOGIC;
		PS_F_CH_SIF_SENSE_OR_CONTROL:	 in STD_LOGIC;
		PS_UNIT_CTRL_OP_CODE:	 in STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_A:	 in STD_LOGIC;
		PS_LOGIC_GATE_W:	 in STD_LOGIC;
		MS_F_CH_RESET:	 in STD_LOGIC;
		MS_F_CH_END_OF_2ND_ADDR_TRF:	 in STD_LOGIC;
		MS_MAR_WRAP_AROUND:	 out STD_LOGIC;
		MS_I_O_GRP_MK_END_OF_RECORD:	 out STD_LOGIC;
		MS_F_CH_STATUS_SPL_A_DOT_U_OP_CODE:	 out STD_LOGIC;
		MS_F_CH_OVERLAP_END_OF_RECORD:	 out STD_LOGIC;
		MS_F_CH_END_OF_RECORD_LATCH:	 out STD_LOGIC;
		PS_F_CH_END_OF_RECORD_LATCH:	 out STD_LOGIC);
end ALD_13_66_02_1_F_CH_END_OF_RECORD;

architecture behavioral of ALD_13_66_02_1_F_CH_END_OF_RECORD is 

	signal OUT_5A_G: STD_LOGIC;
	signal OUT_5B_G: STD_LOGIC;
	signal OUT_4D_G: STD_LOGIC;
	signal OUT_5E_G: STD_LOGIC;
	signal OUT_4E_G: STD_LOGIC;
	signal OUT_5F_D: STD_LOGIC;
	signal OUT_5G_C: STD_LOGIC;
	signal OUT_2G_E: STD_LOGIC;
	signal OUT_4H_NoPin: STD_LOGIC;
	signal OUT_4H_NoPin_Latch: STD_LOGIC;
	signal OUT_2H_P: STD_LOGIC;
	signal OUT_2H_P_Latch: STD_LOGIC;
	signal OUT_1H_C: STD_LOGIC;
	signal OUT_1I_B: STD_LOGIC;
	signal OUT_DOT_4D: STD_LOGIC;
	signal OUT_DOT_3A: STD_LOGIC;
	signal OUT_DOT_2H: STD_LOGIC;
	signal OUT_DOT_5E: STD_LOGIC;

begin

	OUT_5A_G <= NOT(PS_F_CYCLE AND PS_WRAP_AROUND_CONDITIONS AND MS_F_CH_LAST_INPUT_CYCLE );
	OUT_5B_G <= NOT(PS_LOGIC_GATE_F_OR_W AND PS_2ND_CLOCK_PULSE_2 );
	OUT_4D_G <= NOT(PS_F_CYCLE AND PS_B_CH_GROUP_MARK_DOT_WM );
	OUT_5E_G <= NOT(MS_R_SYMBOL_OP_MODIFIER AND MS_W_SYMBOL_OP_MODIFIER AND MS_F_CH_2ND_ADDR_TRF );
	OUT_4E_G <= NOT(OUT_DOT_5E AND PS_LOGIC_GATE_F_1 AND MS_1401_CARD_PRINT_IN_PROC );
	OUT_5F_D <= NOT(PS_UNIT_CTRL_OP_CODE AND PS_F_CH_STATUS_SAMPLE_A );
	OUT_5G_C <= NOT(PS_F_CYCLE AND PS_B_CH_GROUP_MARK_DOT_WM AND PS_LOGIC_GATE_W );
	OUT_2G_E <= NOT(OUT_5F_D AND OUT_5G_C );
	OUT_4H_NoPin_Latch <= NOT(OUT_DOT_2H AND MS_F_CH_RESET AND MS_F_CH_END_OF_2ND_ADDR_TRF );
	OUT_2H_P_Latch <= NOT(OUT_4H_NoPin AND OUT_DOT_3A AND OUT_DOT_4D );
	OUT_1H_C <= NOT OUT_DOT_2H;
	OUT_1I_B <= NOT OUT_4H_NoPin;
	OUT_DOT_4D <= OUT_4D_G OR OUT_4E_G;
	OUT_DOT_3A <= OUT_5A_G OR OUT_5B_G;
	OUT_DOT_2H <= OUT_2G_E OR OUT_2H_P;
	OUT_DOT_5E <= OUT_5E_G OR PS_F_CH_SIF_SENSE_OR_CONTROL;

	MS_F_CH_STATUS_SPL_A_DOT_U_OP_CODE <= OUT_5F_D;
	MS_F_CH_OVERLAP_END_OF_RECORD <= OUT_5G_C;
	MS_F_CH_END_OF_RECORD_LATCH <= OUT_1H_C;
	PS_F_CH_END_OF_RECORD_LATCH <= OUT_1I_B;
	MS_I_O_GRP_MK_END_OF_RECORD <= OUT_DOT_4D;
	MS_MAR_WRAP_AROUND <= OUT_DOT_3A;

	Latch_4H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4H_NoPin_Latch,
		Q => OUT_4H_NoPin,
		QBar => OPEN );

	Latch_2H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2H_P_Latch,
		Q => OUT_2H_P,
		QBar => OPEN );


end;
