-- VHDL for IBM SMS ALD page 14.71.31.1
-- Title: B AR READOUT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/6/2020 3:06:34 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_71_31_1_B_AR_READOUT is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MV_CE_RO_B_AR:	 in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES:	 in STD_LOGIC;
		MS_CONSOLE_RO_BAR:	 in STD_LOGIC;
		PS_B_TO_LAST_LOGIC_GATE:	 in STD_LOGIC;
		PS_A_OR_C_CYCLE:	 in STD_LOGIC;
		PS_E_CYCLE_CTRL:	 in STD_LOGIC;
		PS_E_CH_UNOVLP_IN_PROCESS:	 in STD_LOGIC;
		PS_BLOCK_BAR_RO_E_CH_STAR_1311:	 in STD_LOGIC;
		MS_CONSOLE_INHIBIT_AR_RO:	 in STD_LOGIC;
		PS_F_CYCLE_CTRL:	 in STD_LOGIC;
		PS_F_CH_UNOVLP_IN_PROCESS:	 in STD_LOGIC;
		PS_BLOCK_BAR_RO_F_CH_STAR_1311:	 in STD_LOGIC;
		MS_1ST_I_O_CYCLE_CONTROL:	 in STD_LOGIC;
		MS_B_AR_RO_CTRL_STAR_ARITH:	 in STD_LOGIC;
		PS_D_CYCLE_CTRL:	 in STD_LOGIC;
		PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8:	 in STD_LOGIC;
		PS_PROCESS_ROUTINE:	 in STD_LOGIC;
		PS_LOGIC_GATE_SPECIAL_A:	 in STD_LOGIC;
		PS_STORE_ADDR_REG_OPS_RO_GATE:	 in STD_LOGIC;
		PS_B_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_B_CYCLE_CTRL:	 in STD_LOGIC;
		PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL:	 in STD_LOGIC;
		PS_RO_B_AR_ON_SCAN_B_CY_OPS:	 in STD_LOGIC;
		PS_RO_B_AR:	 out STD_LOGIC);
end ALD_14_71_31_1_B_AR_READOUT;

architecture behavioral of ALD_14_71_31_1_B_AR_READOUT is 

	signal OUT_3A_C: STD_LOGIC;
	signal OUT_2A_K: STD_LOGIC;
	signal OUT_3B_R: STD_LOGIC;
	signal OUT_2B_B: STD_LOGIC;
	signal OUT_3C_E: STD_LOGIC;
	signal OUT_2D_C: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_3F_P: STD_LOGIC;
	signal OUT_5G_C: STD_LOGIC;
	signal OUT_4G_D: STD_LOGIC;
	signal OUT_3G_G: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_1G_H: STD_LOGIC;
	signal OUT_3H_C: STD_LOGIC;
	signal OUT_5I_E: STD_LOGIC;
	signal OUT_DOT_3B: STD_LOGIC;
	signal OUT_DOT_3D: STD_LOGIC;
	signal OUT_DOT_3E: STD_LOGIC;
	signal OUT_DOT_2G: STD_LOGIC;

begin

	OUT_3A_C <= NOT(PS_1401_STORE_AR_OP_CODES AND MS_CONSOLE_INHIBIT_AR_RO );
	OUT_2A_K <= NOT(MV_CE_RO_B_AR AND MS_CONSOLE_RO_BAR );
	OUT_3B_R <= NOT PS_B_TO_LAST_LOGIC_GATE;
	OUT_2B_B <= NOT PS_A_OR_C_CYCLE;
	OUT_3C_E <= NOT(MS_CONSOLE_INHIBIT_AR_RO AND PS_E_CYCLE_CTRL AND PS_E_CH_UNOVLP_IN_PROCESS );
	OUT_2D_C <= NOT(OUT_DOT_3B AND OUT_DOT_3D AND OUT_DOT_3E );
	OUT_3E_D <= NOT(PS_F_CYCLE_CTRL AND PS_F_CH_UNOVLP_IN_PROCESS AND MS_CONSOLE_INHIBIT_AR_RO );
	OUT_3F_P <= NOT(MS_1ST_I_O_CYCLE_CONTROL );
	OUT_5G_C <= NOT(PS_D_CYCLE_CTRL AND PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8 AND PS_PROCESS_ROUTINE );
	OUT_4G_D <= NOT(OUT_5G_C AND MS_B_AR_RO_CTRL_STAR_ARITH AND OUT_5I_E );
	OUT_3G_G <= NOT(OUT_4G_D AND MS_CONSOLE_INHIBIT_AR_RO AND PS_LOGIC_GATE_SPECIAL_A );
	OUT_2G_C <= NOT(OUT_3G_G AND OUT_3H_C );
	OUT_1G_H <= OUT_DOT_2G;
	OUT_3H_C <= NOT(PS_STORE_ADDR_REG_OPS_RO_GATE AND PS_B_SYMBOL_OP_MODIFIER );
	OUT_5I_E <= NOT(PS_B_CYCLE_CTRL AND PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL AND PS_RO_B_AR_ON_SCAN_B_CY_OPS );
	OUT_DOT_3B <= OUT_3A_C OR OUT_3B_R OR OUT_2B_B;
	OUT_DOT_3D <= OUT_3C_E OR PS_BLOCK_BAR_RO_E_CH_STAR_1311 OR OUT_3F_P;
	OUT_DOT_3E <= OUT_3E_D OR PS_BLOCK_BAR_RO_F_CH_STAR_1311;
	OUT_DOT_2G <= OUT_2A_K OR OUT_2D_C OR OUT_2G_C;

	PS_RO_B_AR <= OUT_1G_H;


end;
