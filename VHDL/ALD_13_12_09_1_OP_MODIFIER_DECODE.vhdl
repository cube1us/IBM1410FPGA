-- VHDL for IBM SMS ALD page 13.12.09.1
-- Title: OP MODIFIER DECODE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/20/2020 4:40:19 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_12_09_1_OP_MODIFIER_DECODE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_NOT_4_DOT_NOT_2_DOT_NOT_1_OP_MOD:	 in STD_LOGIC;
		PS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD:	 in STD_LOGIC;
		PS_OP_MOD_REG_C_BIT:	 in STD_LOGIC;
		PS_NOT_B_DOT_NOT_A_DOT_8_OP_MOD:	 in STD_LOGIC;
		PS_4_DOT_NOT_2_DOT_NOT_1_OP_MOD:	 in STD_LOGIC;
		PS_NOT_4_DOT_NOT_2_DOT_1_OP_MOD:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_C_BIT:	 in STD_LOGIC;
		PS_NOT_B_DOT_A_DOT_8_OP_MOD:	 in STD_LOGIC;
		PS_BLANK_SYMBOL_OP_MODIFIER:	 out STD_LOGIC;
		MS_9_SYMBOL_OP_MODIFIER:	 out STD_LOGIC;
		MS_COML_AT_SYM_OP_MODIFIER:	 out STD_LOGIC;
		PS_Z_SYMBOL_OP_MODIFIER:	 out STD_LOGIC);
end ALD_13_12_09_1_OP_MODIFIER_DECODE;

architecture behavioral of ALD_13_12_09_1_OP_MODIFIER_DECODE is 

	signal OUT_4A_D: STD_LOGIC;
	signal OUT_3A_K: STD_LOGIC;
	signal OUT_4C_E: STD_LOGIC;
	signal OUT_4E_C: STD_LOGIC;
	signal OUT_4G_NoPin: STD_LOGIC;
	signal OUT_3G_D: STD_LOGIC;

begin

	OUT_4A_D <= NOT(PS_NOT_4_DOT_NOT_2_DOT_NOT_1_OP_MOD AND PS_OP_MOD_REG_C_BIT AND PS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD );
	OUT_3A_K <= NOT OUT_4A_D;
	OUT_4C_E <= NOT(PS_OP_MOD_REG_C_BIT AND PS_NOT_4_DOT_NOT_2_DOT_1_OP_MOD AND PS_NOT_B_DOT_NOT_A_DOT_8_OP_MOD );
	OUT_4E_C <= NOT(PS_OP_MOD_REG_C_BIT AND PS_NOT_B_DOT_NOT_A_DOT_8_OP_MOD AND PS_4_DOT_NOT_2_DOT_NOT_1_OP_MOD );
	OUT_4G_NoPin <= NOT(PS_NOT_4_DOT_NOT_2_DOT_1_OP_MOD AND PS_OP_MOD_REG_NOT_C_BIT AND PS_NOT_B_DOT_A_DOT_8_OP_MOD );
	OUT_3G_D <= NOT OUT_4G_NoPin;

	PS_BLANK_SYMBOL_OP_MODIFIER <= OUT_3A_K;
	MS_9_SYMBOL_OP_MODIFIER <= OUT_4C_E;
	MS_COML_AT_SYM_OP_MODIFIER <= OUT_4E_C;
	PS_Z_SYMBOL_OP_MODIFIER <= OUT_3G_D;


end;
