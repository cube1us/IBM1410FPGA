-- VHDL for IBM SMS ALD page 12.62.01.1
-- Title: E CH NOT READY
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/17/2020 7:26:30 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_62_01_1_E_CH_NOT_READY is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MC_1301_READY_E_CH:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		MC_1405_READY_E_CH:	 in STD_LOGIC;
		MC_BUFFER_READY:	 in STD_LOGIC;
		MS_E_CH_SELECT_ANY_BUFFER:	 in STD_LOGIC;
		PS_E_CH_READY_BUS_STAR_SIF:	 in STD_LOGIC;
		PS_E_CH_READY_BUS_STAR_1412_19:	 in STD_LOGIC;
		MC_BUFFER_READY_JRJ:	 in STD_LOGIC;
		MC_TAPE_READY:	 in STD_LOGIC;
		MS_E_CH_SELECT_TAPE_DATA:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_T:	 in STD_LOGIC;
		MS_E_CH_SELECT_AND_REWIND:	 in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_A:	 in STD_LOGIC;
		MS_E_CH_RESET:	 in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_B:	 in STD_LOGIC;
		PS_E_CH_2ND_ADDR_TRF:	 in STD_LOGIC;
		PS_E_CH_READY_BUS:	 out STD_LOGIC;
		MS_E_CH_READY_BUS:	 out STD_LOGIC;
		MS_E_CH_NOT_READY:	 out STD_LOGIC;
		PS_E_CH_NOT_READY:	 out STD_LOGIC;
		LAMP_15A1A16:	 out STD_LOGIC);
end ALD_12_62_01_1_E_CH_NOT_READY;

architecture behavioral of ALD_12_62_01_1_E_CH_NOT_READY is 

	signal OUT_3A_B: STD_LOGIC;
	signal OUT_3B_B: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_2C_F: STD_LOGIC;
	signal OUT_1C_R: STD_LOGIC;
	signal OUT_2D_G: STD_LOGIC;
	signal OUT_3F_G: STD_LOGIC;
	signal OUT_2F_R: STD_LOGIC;
	signal OUT_1F_K: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_3G_C_Latch: STD_LOGIC;
	signal OUT_2G_E: STD_LOGIC;
	signal OUT_2G_E_Latch: STD_LOGIC;
	signal OUT_3H_C: STD_LOGIC;
	signal OUT_2H_B: STD_LOGIC;
	signal OUT_DOT_5A: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;
	signal OUT_DOT_5B: STD_LOGIC;

begin

	OUT_3A_B <= NOT(OUT_DOT_5A OR MS_E_CH_SELECT_UNIT_F );
	OUT_3B_B <= NOT(OUT_DOT_5B OR MS_E_CH_SELECT_ANY_BUFFER );
	OUT_3C_C <= NOT(MC_TAPE_READY OR MS_E_CH_SELECT_TAPE_DATA );
	OUT_2C_F <= NOT OUT_DOT_2B;
	OUT_1C_R <= NOT OUT_2C_F;
	OUT_2D_G <= NOT(MS_E_CH_SELECT_UNIT_T AND MS_E_CH_SELECT_AND_REWIND );
	LAMP_15A1A16 <= OUT_1F_K;
	OUT_3F_G <= NOT(OUT_2C_F AND PS_E_CH_STATUS_SAMPLE_A );
	OUT_2F_R <= NOT OUT_2G_E;
	OUT_1F_K <= NOT OUT_2F_R;
	OUT_3G_C_Latch <= NOT(OUT_2G_E AND MS_E_CH_RESET );
	OUT_2G_E_Latch <= NOT(OUT_3F_G AND OUT_3G_C AND OUT_3H_C );
	OUT_3H_C <= NOT(OUT_2C_F AND PS_E_CH_STATUS_SAMPLE_B AND PS_E_CH_2ND_ADDR_TRF );
	OUT_2H_B <= NOT OUT_3G_C;
	OUT_DOT_5A <= MC_1301_READY_E_CH AND MC_1405_READY_E_CH;
	OUT_DOT_2B <= OUT_3A_B OR OUT_3B_B OR PS_E_CH_READY_BUS_STAR_SIF OR PS_E_CH_READY_BUS_STAR_1412_19 OR OUT_3C_C OR OUT_2D_G;
	OUT_DOT_5B <= MC_BUFFER_READY AND MC_BUFFER_READY_JRJ;

	MS_E_CH_READY_BUS <= OUT_2C_F;
	PS_E_CH_READY_BUS <= OUT_1C_R;
	MS_E_CH_NOT_READY <= OUT_2F_R;
	PS_E_CH_NOT_READY <= OUT_2H_B;

	Latch_3G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3G_C_Latch,
		Q => OUT_3G_C,
		QBar => OPEN );

	Latch_2G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2G_E_Latch,
		Q => OUT_2G_E,
		QBar => OPEN );


end;