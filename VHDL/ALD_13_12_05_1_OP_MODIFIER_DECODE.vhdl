-- VHDL for IBM SMS ALD page 13.12.05.1
-- Title: OP MODIFIER DECODE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/20/2020 4:34:05 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_12_05_1_OP_MODIFIER_DECODE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_A_BIT:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_8_BIT:	 in STD_LOGIC;
		PS_OP_MOD_REG_8_BIT:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_B_BIT:	 in STD_LOGIC;
		PS_OP_MOD_REG_A_BIT:	 in STD_LOGIC;
		MS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD:	 out STD_LOGIC;
		PS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD:	 out STD_LOGIC;
		PS_NOT_B_DOT_NOT_A_DOT_8_OP_MOD:	 out STD_LOGIC;
		PS_NOT_B_DOT_A_DOT_8_OP_MOD:	 out STD_LOGIC;
		PS_NOT_B_DOT_A_DOT_NOT_8_OP_MOD:	 out STD_LOGIC);
end ALD_13_12_05_1_OP_MODIFIER_DECODE;

architecture behavioral of ALD_13_12_05_1_OP_MODIFIER_DECODE is 

	signal OUT_3B_H: STD_LOGIC;
	signal OUT_2B_A: STD_LOGIC;
	signal OUT_3D_NoPin: STD_LOGIC;
	signal OUT_2D_D: STD_LOGIC;
	signal OUT_3F_NoPin: STD_LOGIC;
	signal OUT_2F_R: STD_LOGIC;
	signal OUT_3H_NoPin: STD_LOGIC;
	signal OUT_2H_R: STD_LOGIC;

begin

	OUT_3B_H <= NOT(PS_OP_MOD_REG_NOT_A_BIT AND PS_OP_MOD_REG_NOT_8_BIT AND PS_OP_MOD_REG_NOT_B_BIT );
	OUT_2B_A <= NOT OUT_3B_H;
	OUT_3D_NoPin <= NOT(PS_OP_MOD_REG_NOT_B_BIT AND PS_OP_MOD_REG_NOT_A_BIT AND PS_OP_MOD_REG_8_BIT );
	OUT_2D_D <= NOT OUT_3D_NoPin;
	OUT_3F_NoPin <= NOT(PS_OP_MOD_REG_A_BIT AND PS_OP_MOD_REG_NOT_B_BIT AND PS_OP_MOD_REG_8_BIT );
	OUT_2F_R <= NOT OUT_3F_NoPin;
	OUT_3H_NoPin <= NOT(PS_OP_MOD_REG_NOT_B_BIT AND PS_OP_MOD_REG_NOT_8_BIT AND PS_OP_MOD_REG_A_BIT );
	OUT_2H_R <= NOT OUT_3H_NoPin;

	MS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD <= OUT_3B_H;
	PS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD <= OUT_2B_A;
	PS_NOT_B_DOT_NOT_A_DOT_8_OP_MOD <= OUT_2D_D;
	PS_NOT_B_DOT_A_DOT_8_OP_MOD <= OUT_2F_R;
	PS_NOT_B_DOT_A_DOT_NOT_8_OP_MOD <= OUT_2H_R;


end;
