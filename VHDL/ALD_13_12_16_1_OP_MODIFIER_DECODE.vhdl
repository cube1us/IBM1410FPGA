-- VHDL for IBM SMS ALD page 13.12.16.1
-- Title: OP MODIFIER DECODE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/20/2020 4:34:25 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_12_16_1_OP_MODIFIER_DECODE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_B_DOT_NOT_A_DOT_8_OP_MOD:	 in STD_LOGIC;
		PS_NOT_4_DOT_2_DOT_NOT_1_OP_MOD:	 in STD_LOGIC;
		PS_B_NOT_A_DOT_NOT_8_OP_MOD:	 in STD_LOGIC;
		PS_4_DOT_2_DOT_1_OP_MOD:	 in STD_LOGIC;
		PS_OP_MOD_REG_C_BIT:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_C_BIT:	 in STD_LOGIC;
		PS_NOT_4_DOT_2_DOT_1_OP_MOD:	 in STD_LOGIC;
		PS_B_DOT_A_DOT_8_OP_MOD:	 in STD_LOGIC;
		PS_EXCLAM_MK_OP_MODIFIER:	 out STD_LOGIC;
		MS_EXCLAM_MK_OP_MODIFIER:	 out STD_LOGIC;
		PS_K_SYMBOL_OP_MODIFIER:	 out STD_LOGIC;
		MS_K_SYMBOL_OP_MODIFIER:	 out STD_LOGIC;
		MS_P_SYMBOL_OP_MODIFIER:	 out STD_LOGIC;
		PS_L_SYMBOL_OP_MODIFIER:	 out STD_LOGIC;
		PS_P_SYMBOL_OP_MODIFIER:	 out STD_LOGIC;
		MS_GROUP_MARK_OP_MODIFIER:	 out STD_LOGIC);
end ALD_13_12_16_1_OP_MODIFIER_DECODE;

architecture behavioral of ALD_13_12_16_1_OP_MODIFIER_DECODE is 

	signal OUT_4A_H: STD_LOGIC;
	signal OUT_3A_A: STD_LOGIC;
	signal OUT_4D_H: STD_LOGIC;
	signal OUT_3D_A: STD_LOGIC;
	signal OUT_4E_E: STD_LOGIC;
	signal OUT_4F_NoPin: STD_LOGIC;
	signal OUT_3F_D: STD_LOGIC;
	signal OUT_2F_P: STD_LOGIC;
	signal OUT_4G_D: STD_LOGIC;

begin

	OUT_4A_H <= NOT(PS_B_DOT_NOT_A_DOT_8_OP_MOD AND PS_OP_MOD_REG_NOT_C_BIT AND PS_NOT_4_DOT_2_DOT_NOT_1_OP_MOD );
	OUT_3A_A <= NOT OUT_4A_H;
	OUT_4D_H <= NOT(PS_NOT_4_DOT_2_DOT_NOT_1_OP_MOD AND PS_OP_MOD_REG_C_BIT AND PS_B_NOT_A_DOT_NOT_8_OP_MOD );
	OUT_3D_A <= NOT OUT_4D_H;
	OUT_4E_E <= NOT(PS_B_NOT_A_DOT_NOT_8_OP_MOD AND PS_OP_MOD_REG_C_BIT AND PS_4_DOT_2_DOT_1_OP_MOD );
	OUT_4F_NoPin <= NOT(PS_B_NOT_A_DOT_NOT_8_OP_MOD AND PS_OP_MOD_REG_NOT_C_BIT AND PS_NOT_4_DOT_2_DOT_1_OP_MOD );
	OUT_3F_D <= NOT OUT_4F_NoPin;
	OUT_2F_P <= NOT(OUT_4E_E );
	OUT_4G_D <= NOT(PS_OP_MOD_REG_C_BIT AND PS_4_DOT_2_DOT_1_OP_MOD AND PS_B_DOT_A_DOT_8_OP_MOD );

	MS_EXCLAM_MK_OP_MODIFIER <= OUT_4A_H;
	PS_EXCLAM_MK_OP_MODIFIER <= OUT_3A_A;
	MS_K_SYMBOL_OP_MODIFIER <= OUT_4D_H;
	PS_K_SYMBOL_OP_MODIFIER <= OUT_3D_A;
	MS_P_SYMBOL_OP_MODIFIER <= OUT_4E_E;
	PS_L_SYMBOL_OP_MODIFIER <= OUT_3F_D;
	PS_P_SYMBOL_OP_MODIFIER <= OUT_2F_P;
	MS_GROUP_MARK_OP_MODIFIER <= OUT_4G_D;


end;
