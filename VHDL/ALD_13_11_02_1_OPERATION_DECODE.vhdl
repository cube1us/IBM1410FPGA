-- VHDL for IBM SMS ALD page 13.11.02.1
-- Title: OPERATION DECODE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/19/2020 5:11:43 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_11_02_1_OPERATION_DECODE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_OP_REG_NOT_4_BIT:	 in STD_LOGIC;
		PS_OP_REG_NOT_2_BIT:	 in STD_LOGIC;
		PS_OP_REG_NOT_1_BIT:	 in STD_LOGIC;
		PS_OP_REG_1_BIT:	 in STD_LOGIC;
		PS_OP_REG_2_BIT:	 in STD_LOGIC;
		PS_OP_REG_4_BIT:	 in STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_NOT_1_B:	 out STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_1_B:	 out STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_2_DOT_1_B:	 out STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_2_DOT_NOT_1_B:	 out STD_LOGIC;
		PS_OP_DCDR_4_DOT_2_DOT_NOT_1_B:	 out STD_LOGIC;
		PS_OP_DCDR_4_DOT_NOT_2_DOT_1_B:	 out STD_LOGIC;
		PS_OP_DCDR_4_DOT_NOT_2_DOT_NOT_1_B:	 out STD_LOGIC;
		PS_OP_DCDR_4_DOT_2_DOT_1_B:	 out STD_LOGIC);
end ALD_13_11_02_1_OPERATION_DECODE;

architecture behavioral of ALD_13_11_02_1_OPERATION_DECODE is 

	signal OUT_4A_NoPin: STD_LOGIC;
	signal OUT_2A_R: STD_LOGIC;
	signal OUT_4B_NoPin: STD_LOGIC;
	signal OUT_2B_D: STD_LOGIC;
	signal OUT_4C_H: STD_LOGIC;
	signal OUT_2C_A: STD_LOGIC;
	signal OUT_4D_NoPin: STD_LOGIC;
	signal OUT_2D_R: STD_LOGIC;
	signal OUT_4F_NoPin: STD_LOGIC;
	signal OUT_2F_D: STD_LOGIC;
	signal OUT_4G_H: STD_LOGIC;
	signal OUT_2G_A: STD_LOGIC;
	signal OUT_4H_NoPin: STD_LOGIC;
	signal OUT_2H_D: STD_LOGIC;
	signal OUT_4I_H: STD_LOGIC;
	signal OUT_2I_A: STD_LOGIC;

begin

	OUT_4A_NoPin <= NOT(PS_OP_REG_NOT_1_BIT AND PS_OP_REG_NOT_2_BIT AND PS_OP_REG_NOT_4_BIT );
	OUT_2A_R <= NOT OUT_4A_NoPin;
	OUT_4B_NoPin <= NOT(PS_OP_REG_NOT_2_BIT AND PS_OP_REG_NOT_4_BIT AND PS_OP_REG_1_BIT );
	OUT_2B_D <= NOT OUT_4B_NoPin;
	OUT_4C_H <= NOT(PS_OP_REG_NOT_4_BIT AND PS_OP_REG_2_BIT AND PS_OP_REG_1_BIT );
	OUT_2C_A <= NOT OUT_4C_H;
	OUT_4D_NoPin <= NOT(PS_OP_REG_NOT_1_BIT AND PS_OP_REG_2_BIT AND PS_OP_REG_NOT_4_BIT );
	OUT_2D_R <= NOT OUT_4D_NoPin;
	OUT_4F_NoPin <= NOT(PS_OP_REG_2_BIT AND PS_OP_REG_4_BIT AND PS_OP_REG_NOT_1_BIT );
	OUT_2F_D <= NOT OUT_4F_NoPin;
	OUT_4G_H <= NOT(PS_OP_REG_4_BIT AND PS_OP_REG_NOT_2_BIT AND PS_OP_REG_1_BIT );
	OUT_2G_A <= NOT OUT_4G_H;
	OUT_4H_NoPin <= NOT(PS_OP_REG_NOT_1_BIT AND PS_OP_REG_4_BIT AND PS_OP_REG_NOT_2_BIT );
	OUT_2H_D <= NOT OUT_4H_NoPin;
	OUT_4I_H <= NOT(PS_OP_REG_1_BIT AND PS_OP_REG_4_BIT AND PS_OP_REG_2_BIT );
	OUT_2I_A <= NOT OUT_4I_H;

	PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_NOT_1_B <= OUT_2A_R;
	PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_1_B <= OUT_2B_D;
	PS_OP_DCDR_NOT_4_DOT_2_DOT_1_B <= OUT_2C_A;
	PS_OP_DCDR_NOT_4_DOT_2_DOT_NOT_1_B <= OUT_2D_R;
	PS_OP_DCDR_4_DOT_2_DOT_NOT_1_B <= OUT_2F_D;
	PS_OP_DCDR_4_DOT_NOT_2_DOT_1_B <= OUT_2G_A;
	PS_OP_DCDR_4_DOT_NOT_2_DOT_NOT_1_B <= OUT_2H_D;
	PS_OP_DCDR_4_DOT_2_DOT_1_B <= OUT_2I_A;


end;
