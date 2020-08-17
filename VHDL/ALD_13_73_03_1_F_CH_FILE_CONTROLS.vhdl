-- VHDL for IBM SMS ALD page 13.73.03.1
-- Title: F CH FILE CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/16/2020 9:36:19 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_73_03_1_F_CH_FILE_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_F_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		PS_F_CH_OUTPUT_MODE:	 in STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_B_DELAY:	 in STD_LOGIC;
		MS_F_CH_WRONG_LENGTH_RECORD:	 in STD_LOGIC;
		MS_F_CH_UNIT_NUMBER_4:	 in STD_LOGIC;
		MS_F_CH_CHECK:	 in STD_LOGIC;
		MS_F_CH_NO_TRANSFER_LATCH:	 in STD_LOGIC;
		PS_FILE_OP:	 in STD_LOGIC;
		PS_F_CH_UNIT_NUMBER_3:	 in STD_LOGIC;
		MS_F_CH_CONDITION:	 in STD_LOGIC;
		PS_I_RING_6_TIME:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK:	 in STD_LOGIC;
		MS_COMPUTER_RESET_1:	 in STD_LOGIC;
		MS_F_CH_UNIT_NUMBER_3:	 in STD_LOGIC;
		MS_F_CH_1ST_ADDR_TRANSFER:	 in STD_LOGIC;
		PS_WR_INHIBIT_STAR_7631_STAR_F_CH:	 in STD_LOGIC;
		MS_F_CH_END_OF_2ND_ADDR_TRF:	 in STD_LOGIC;
		MS_F_CH_2ND_ADDR_TRF:	 in STD_LOGIC;
		MS_F_CH_WRITE_INHIBIT:	 out STD_LOGIC;
		MC_F_CH_RBCI_RESET_1405:	 out STD_LOGIC;
		MS_F_CH_RBCI_ON:	 out STD_LOGIC;
		MS_F_CH_SELECT_AND_RBC_ON:	 out STD_LOGIC;
		MS_F_CH_FILE_ADDRESS_TRF:	 out STD_LOGIC;
		LAMP_15A1C15:	 out STD_LOGIC);
end ALD_13_73_03_1_F_CH_FILE_CONTROLS;

architecture behavioral of ALD_13_73_03_1_F_CH_FILE_CONTROLS is 

	signal OUT_4A_G: STD_LOGIC;
	signal OUT_4B_G: STD_LOGIC;
	signal OUT_5C_C: STD_LOGIC;
	signal OUT_4C_C: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_5D_R: STD_LOGIC;
	signal OUT_2D_D: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_4E_D_Latch: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;
	signal OUT_3E_C_Latch: STD_LOGIC;
	signal OUT_2E_C: STD_LOGIC;
	signal OUT_1E_E: STD_LOGIC;
	signal OUT_3F_L: STD_LOGIC;
	signal OUT_2F_B: STD_LOGIC;
	signal OUT_5G_E: STD_LOGIC;
	signal OUT_4H_B: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;
	signal OUT_1H_F: STD_LOGIC;
	signal OUT_4I_D: STD_LOGIC;
	signal OUT_3I_F: STD_LOGIC;
	signal OUT_DOT_2C: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;
	signal OUT_DOT_1H: STD_LOGIC;
	signal OUT_DOT_4I: STD_LOGIC;
	signal OUT_DOT_2E: STD_LOGIC;

begin

	OUT_4A_G <= NOT(PS_F_CH_OUTPUT_MODE AND PS_F_CH_SELECT_UNIT_F AND MS_F_CH_UNIT_NUMBER_3 );
	OUT_4B_G <= NOT(MS_F_CH_WRONG_LENGTH_RECORD AND OUT_DOT_1H );
	OUT_5C_C <= NOT(PS_FILE_OP AND PS_F_CH_UNIT_NUMBER_3 AND PS_LOZENGE_OR_ASTERISK );
	OUT_4C_C <= NOT(MS_F_CH_CHECK AND MS_F_CH_UNIT_NUMBER_4 AND MS_F_CH_CONDITION );
	OUT_2C_C <= NOT(MS_F_CH_NO_TRANSFER_LATCH AND PS_F_CH_STATUS_SAMPLE_B_DELAY );
	OUT_5D_R <= NOT(PS_I_RING_6_TIME AND PS_LOGIC_GATE_C_1 );
	OUT_2D_D <= NOT(PS_FILE_OP AND MS_F_CH_UNIT_NUMBER_3 AND PS_LOZENGE_OR_ASTERISK );
	OUT_4E_D_Latch <= NOT(OUT_DOT_5D AND MS_COMPUTER_RESET_1 AND OUT_3E_C );
	OUT_3E_C_Latch <= NOT(OUT_4E_D AND OUT_DOT_2C );
	OUT_2E_C <= NOT(PS_I_RING_6_TIME AND OUT_3F_L );
	OUT_1E_E <= OUT_DOT_2E;
	OUT_3F_L <= OUT_4E_D;
	OUT_2F_B <= NOT OUT_3F_L;
	LAMP_15A1C15 <= OUT_2F_B;
	OUT_5G_E <= NOT(OUT_3E_C AND PS_LOZENGE_OR_ASTERISK AND MS_F_CH_UNIT_NUMBER_3 );
	OUT_4H_B <= NOT MS_F_CH_1ST_ADDR_TRANSFER;
	OUT_3H_D <= NOT(PS_WR_INHIBIT_STAR_7631_STAR_F_CH );
	OUT_1H_F <= NOT MS_F_CH_END_OF_2ND_ADDR_TRF;
	OUT_4I_D <= NOT MS_F_CH_2ND_ADDR_TRF;
	OUT_3I_F <= NOT OUT_DOT_4I;
	OUT_DOT_2C <= OUT_4A_G OR OUT_4B_G OR OUT_4C_C OR OUT_2C_C OR OUT_3H_D;
	OUT_DOT_5D <= OUT_5C_C OR OUT_5D_R;
	OUT_DOT_1H <= OUT_1H_F OR OUT_3I_F;
	OUT_DOT_4I <= OUT_4H_B OR OUT_4I_D;
	OUT_DOT_2E <= OUT_2D_D OR OUT_2E_C;

	MC_F_CH_RBCI_RESET_1405 <= OUT_1E_E;
	MS_F_CH_RBCI_ON <= OUT_3F_L;
	MS_F_CH_SELECT_AND_RBC_ON <= OUT_5G_E;
	MS_F_CH_WRITE_INHIBIT <= OUT_DOT_2C;
	MS_F_CH_FILE_ADDRESS_TRF <= OUT_DOT_1H;

	Latch_4E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4E_D_Latch,
		Q => OUT_4E_D,
		QBar => OPEN );

	Latch_3E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3E_C_Latch,
		Q => OUT_3E_C,
		QBar => OPEN );


end;