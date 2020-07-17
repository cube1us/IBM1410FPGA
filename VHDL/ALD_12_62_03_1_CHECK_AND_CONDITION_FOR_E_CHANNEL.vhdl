-- VHDL for IBM SMS ALD page 12.62.03.1
-- Title: CHECK AND CONDITION FOR E CHANNEL
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/17/2020 7:28:37 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_62_03_1_CHECK_AND_CONDITION_FOR_E_CHANNEL is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MC_1301_ERROR_E_CH:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		MC_1405_ERROR_E_CH:	 in STD_LOGIC;
		MC_BUFFER_ERROR:	 in STD_LOGIC;
		MC_BUFFER_ERROR_JRJ:	 in STD_LOGIC;
		PS_E_CH_CHECK_BUS_STAR_SIF:	 in STD_LOGIC;
		PS_E_CH_CHECK_BUS_STAR_1412_19:	 in STD_LOGIC;
		MC_TAPE_ERROR:	 in STD_LOGIC;
		MS_E_CH_SELECT_ANY_BUFFER:	 in STD_LOGIC;
		MC_1301_E_CH_CONDITION:	 in STD_LOGIC;
		MC_1405_CONDITION_E_CH:	 in STD_LOGIC;
		MC_BUFFER_CONDITION:	 in STD_LOGIC;
		MC_BUFFER_CONDITION_JRJ:	 in STD_LOGIC;
		PS_E_CH_SELECT_TAPE_DATA:	 in STD_LOGIC;
		MC_SEL_OR_TAPE_IND_ON_CH_1:	 in STD_LOGIC;
		PS_1401_MODE:	 in STD_LOGIC;
		MC_RBC_ERROR_1405_E_CH:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_F_A:	 in STD_LOGIC;
		MS_1401_MODE:	 in STD_LOGIC;
		PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_T_DOT_INPUT:	 in STD_LOGIC;
		PS_E_CH_TAPE_ERROR:	 out STD_LOGIC;
		PS_E_CH_CHECK_BUS:	 out STD_LOGIC;
		MS_E_CH_CHECK_BUS:	 out STD_LOGIC;
		PS_E_CH_CONDITION_BUS:	 out STD_LOGIC;
		MS_E_CH_TAPE_INDICATOR:	 out STD_LOGIC;
		PS_E_CH_TAPE_INDICATOR:	 out STD_LOGIC);
end ALD_12_62_03_1_CHECK_AND_CONDITION_FOR_E_CHANNEL;

architecture behavioral of ALD_12_62_03_1_CHECK_AND_CONDITION_FOR_E_CHANNEL is 

	signal OUT_3A_C: STD_LOGIC;
	signal OUT_3B_C: STD_LOGIC;
	signal OUT_3C_B: STD_LOGIC;
	signal OUT_3C_B_Latch: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_1C_F: STD_LOGIC;
	signal OUT_3D_L: STD_LOGIC;
	signal OUT_2D_P: STD_LOGIC;
	signal OUT_3E_L: STD_LOGIC;
	signal OUT_2E_G: STD_LOGIC;
	signal OUT_4F_G: STD_LOGIC;
	signal OUT_3F_L: STD_LOGIC;
	signal OUT_3F_L_Latch: STD_LOGIC;
	signal OUT_5G_B: STD_LOGIC;
	signal OUT_4G_K: STD_LOGIC;
	signal OUT_3G_D: STD_LOGIC;
	signal OUT_2G_F: STD_LOGIC;
	signal OUT_1G_D: STD_LOGIC;
	signal OUT_3H_G: STD_LOGIC;
	signal OUT_2H_R: STD_LOGIC;
	signal OUT_1H_C: STD_LOGIC;
	signal OUT_DOT_5A: STD_LOGIC;
	signal OUT_DOT_5B: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;
	signal OUT_DOT_5E: STD_LOGIC;
	signal OUT_DOT_3G: STD_LOGIC;

begin

	OUT_3A_C <= NOT(OUT_DOT_5A OR MS_E_CH_SELECT_UNIT_F );
	OUT_3B_C <= NOT(OUT_DOT_5B OR MS_E_CH_SELECT_ANY_BUFFER );
	OUT_3C_B_Latch <= NOT(MC_TAPE_ERROR );
	OUT_2C_D <= NOT OUT_DOT_2B;
	OUT_1C_F <= NOT OUT_2C_D;
	OUT_3D_L <= NOT(OUT_DOT_5D OR MS_E_CH_SELECT_UNIT_F );
	OUT_2D_P <= NOT(OUT_3C_B AND PS_E_CH_SELECT_TAPE_DATA );
	OUT_3E_L <= NOT(OUT_DOT_5E OR MS_E_CH_SELECT_ANY_BUFFER );
	OUT_2E_G <= NOT(OUT_2D_P AND OUT_4F_G );
	OUT_4F_G <= NOT(PS_1401_MODE AND OUT_5G_B );
	OUT_3F_L_Latch <= NOT(MC_SEL_OR_TAPE_IND_ON_CH_1 );
	OUT_5G_B <= NOT(MC_RBC_ERROR_1405_E_CH OR MS_E_CH_SELECT_UNIT_F_A );
	OUT_4G_K <= NOT(OUT_5G_B AND MS_1401_MODE );
	OUT_3G_D <= NOT(OUT_4G_K AND OUT_2H_R AND OUT_3H_G );
	OUT_2G_F <= NOT OUT_DOT_3G;
	OUT_1G_D <= NOT OUT_2G_F;
	OUT_3H_G <= NOT(PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC AND PS_E_CH_SELECT_UNIT_T_DOT_INPUT );
	OUT_2H_R <= NOT(PS_E_CH_SELECT_TAPE_DATA AND OUT_3F_L );
	OUT_1H_C <= NOT(OUT_3F_L );
	OUT_DOT_5A <= MC_1301_ERROR_E_CH AND MC_1405_ERROR_E_CH;
	OUT_DOT_5B <= MC_BUFFER_ERROR AND MC_BUFFER_ERROR_JRJ;
	OUT_DOT_2B <= OUT_3A_C OR OUT_3B_C OR PS_E_CH_CHECK_BUS_STAR_SIF OR PS_E_CH_CHECK_BUS_STAR_1412_19 OR OUT_2E_G;
	OUT_DOT_5D <= MC_1301_E_CH_CONDITION AND MC_1405_CONDITION_E_CH;
	OUT_DOT_5E <= MC_BUFFER_CONDITION AND MC_BUFFER_CONDITION_JRJ;
	OUT_DOT_3G <= OUT_3D_L OR OUT_3E_L OR OUT_3G_D;

	PS_E_CH_TAPE_ERROR <= OUT_3C_B;
	MS_E_CH_CHECK_BUS <= OUT_2C_D;
	PS_E_CH_CHECK_BUS <= OUT_1C_F;
	PS_E_CH_TAPE_INDICATOR <= OUT_3F_L;
	PS_E_CH_CONDITION_BUS <= OUT_1G_D;
	MS_E_CH_TAPE_INDICATOR <= OUT_1H_C;

	Latch_3C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3C_B_Latch,
		Q => OUT_3C_B,
		QBar => OPEN );

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_L_Latch,
		Q => OUT_3F_L,
		QBar => OPEN );


end;
