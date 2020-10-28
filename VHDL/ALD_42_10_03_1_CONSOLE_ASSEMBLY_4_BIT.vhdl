-- VHDL for IBM SMS ALD page 42.10.03.1
-- Title: CONSOLE ASSEMBLY 4 BIT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/25/2020 10:17:56 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_42_10_03_1_CONSOLE_ASSEMBLY_4_BIT is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_AR_CH_4_BIT_STAR_TRANSLATOR_STAR:	 in STD_LOGIC;
		PS_CONS_ADDR_REG_EXIT_GATE:	 in STD_LOGIC;
		PS_OP_REG_4_BIT:	 in STD_LOGIC;
		PS_CONS_MX_19_POS:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_4_BIT:	 in STD_LOGIC;
		PS_CONS_MX_26_POS:	 in STD_LOGIC;
		PS_OP_MOD_REG_4_BIT:	 in STD_LOGIC;
		PS_CONS_MX_20_POS:	 in STD_LOGIC;
		PS_E_CH_UNIT_NU_REG_4_BIT:	 in STD_LOGIC;
		PS_CONS_MX_27_POS:	 in STD_LOGIC;
		PS_A_DATA_REG_4_BIT:	 in STD_LOGIC;
		PS_CONS_MX_22_POS:	 in STD_LOGIC;
		PS_F_CH_U_SEL_REG_4_BIT:	 in STD_LOGIC;
		PS_B_CH_4_BIT:	 in STD_LOGIC;
		PS_CONS_B_DATA_CH_GATE:	 in STD_LOGIC;
		PS_CONS_MX_28_POS:	 in STD_LOGIC;
		PS_ASSEMBLY_CH_4_BIT:	 in STD_LOGIC;
		PS_CONS_MX_24_POS:	 in STD_LOGIC;
		PS_F_CH_UNIT_NU_REG_4_BIT:	 in STD_LOGIC;
		PS_CONS_MX_29_POS:	 in STD_LOGIC;
		PS_E2_REG_4_BIT:	 in STD_LOGIC;
		PS_CONS_E2_REG_GATE:	 in STD_LOGIC;
		MS_SPECIAL_CHAR_E:	 in STD_LOGIC;
		MS_SPECIAL_CHAR_D:	 in STD_LOGIC;
		PS_CONSOLE_OUTPUT_4_BIT:	 out STD_LOGIC);
end ALD_42_10_03_1_CONSOLE_ASSEMBLY_4_BIT;

architecture behavioral of ALD_42_10_03_1_CONSOLE_ASSEMBLY_4_BIT is 

	signal OUT_5A_NoPin: STD_LOGIC;
	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_4B_F: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_3C_NoPin: STD_LOGIC;
	signal OUT_5D_NoPin: STD_LOGIC;
	signal OUT_4D_F: STD_LOGIC;
	signal OUT_3D_NoPin: STD_LOGIC;
	signal OUT_2D_F: STD_LOGIC;
	signal OUT_5E_NoPin: STD_LOGIC;
	signal OUT_3E_NoPin: STD_LOGIC;
	signal OUT_5F_NoPin: STD_LOGIC;
	signal OUT_5G_NoPin: STD_LOGIC;
	signal OUT_4G_A: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_4I_G: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;

begin

	OUT_5A_NoPin <= NOT(PS_AR_CH_4_BIT_STAR_TRANSLATOR_STAR AND PS_CONS_ADDR_REG_EXIT_GATE );
	OUT_5B_NoPin <= NOT(PS_OP_REG_4_BIT AND PS_CONS_MX_19_POS );
	OUT_4B_F <= NOT(OUT_5A_NoPin AND OUT_5B_NoPin AND OUT_5C_NoPin );
	OUT_5C_NoPin <= NOT(PS_OP_MOD_REG_4_BIT AND PS_CONS_MX_20_POS );
	OUT_3C_NoPin <= NOT(PS_E_CH_U_SEL_REG_4_BIT AND PS_CONS_MX_26_POS );
	OUT_5D_NoPin <= NOT(PS_A_DATA_REG_4_BIT AND PS_CONS_MX_22_POS );
	OUT_4D_F <= NOT(OUT_5D_NoPin AND OUT_5E_NoPin AND OUT_5F_NoPin );
	OUT_3D_NoPin <= NOT(PS_E_CH_UNIT_NU_REG_4_BIT AND PS_CONS_MX_27_POS );
	OUT_2D_F <= NOT(OUT_3C_NoPin AND OUT_3D_NoPin AND OUT_3E_NoPin );
	OUT_5E_NoPin <= NOT(PS_B_CH_4_BIT AND PS_CONS_B_DATA_CH_GATE );
	OUT_3E_NoPin <= NOT(PS_F_CH_U_SEL_REG_4_BIT AND PS_CONS_MX_28_POS );
	OUT_5F_NoPin <= NOT(PS_ASSEMBLY_CH_4_BIT AND PS_CONS_MX_24_POS );
	OUT_5G_NoPin <= NOT(PS_F_CH_UNIT_NU_REG_4_BIT AND PS_CONS_MX_29_POS );
	OUT_4G_A <= NOT(OUT_5G_NoPin AND OUT_5H_NoPin );
	OUT_5H_NoPin <= NOT(PS_E2_REG_4_BIT AND PS_CONS_E2_REG_GATE );
	OUT_4I_G <= NOT(MS_SPECIAL_CHAR_E AND MS_SPECIAL_CHAR_D );
	OUT_DOT_1D <= OUT_4B_F OR OUT_4D_F OR OUT_2D_F OR OUT_4G_A OR OUT_4I_G;

	PS_CONSOLE_OUTPUT_4_BIT <= OUT_DOT_1D;


end;