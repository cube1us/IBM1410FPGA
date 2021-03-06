-- VHDL for IBM SMS ALD page 13.13.02.1
-- Title: COMMON OP DECODE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/23/2020 4:38:58 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_13_02_1_COMMON_OP_DECODE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_OP_DCDR_NOT_B_DOT_NOT_A_DOT_8_B:	 in STD_LOGIC;
		PS_OP_DCDR_4_DOT_NOT_2_DOT_NOT_1_B:	 in STD_LOGIC;
		PS_OP_REG_COM_C_BIT:	 in STD_LOGIC;
		PS_OP_REG_COM_NOT_C_BIT:	 in STD_LOGIC;
		PS_OP_DCDR_NOT_B_DOT_A_DOT_8_B:	 in STD_LOGIC;
		PS_OP_DCDR_B_DOT_A_DOT_NOT_8_B:	 in STD_LOGIC;
		PS_OP_DCDR_4_DOT_NOT_2_DOT_1_B:	 in STD_LOGIC;
		PS_MPLY_OP_CODE:	 out STD_LOGIC;
		MS_MPLY_OP_CODE:	 out STD_LOGIC;
		PS_DIV_OP_CODE:	 out STD_LOGIC;
		MS_DIV_OP_CODE:	 out STD_LOGIC;
		PS_EDIT_OP_CODE:	 out STD_LOGIC;
		MS_EDIT_OP_CODE:	 out STD_LOGIC);
end ALD_13_13_02_1_COMMON_OP_DECODE;

architecture behavioral of ALD_13_13_02_1_COMMON_OP_DECODE is 

	signal OUT_4A_H: STD_LOGIC;
	signal OUT_2A_A: STD_LOGIC;
	signal OUT_2C_Q: STD_LOGIC;
	signal OUT_4D_H: STD_LOGIC;
	signal OUT_2D_A: STD_LOGIC;
	signal OUT_4G_H: STD_LOGIC;
	signal OUT_2G_A: STD_LOGIC;

begin

	OUT_4A_H <= NOT(PS_OP_DCDR_NOT_B_DOT_NOT_A_DOT_8_B AND PS_OP_REG_COM_C_BIT AND PS_OP_DCDR_4_DOT_NOT_2_DOT_NOT_1_B );
	OUT_2A_A <= NOT OUT_4A_H;
	OUT_2C_Q <= OUT_4A_H;
	OUT_4D_H <= NOT(PS_OP_DCDR_4_DOT_NOT_2_DOT_NOT_1_B AND PS_OP_REG_COM_NOT_C_BIT AND PS_OP_DCDR_NOT_B_DOT_A_DOT_8_B );
	OUT_2D_A <= NOT OUT_4D_H;
	OUT_4G_H <= NOT(PS_OP_REG_COM_C_BIT AND PS_OP_DCDR_B_DOT_A_DOT_NOT_8_B AND PS_OP_DCDR_4_DOT_NOT_2_DOT_1_B );
	OUT_2G_A <= NOT OUT_4G_H;

	PS_MPLY_OP_CODE <= OUT_2A_A;
	MS_MPLY_OP_CODE <= OUT_2C_Q;
	MS_DIV_OP_CODE <= OUT_4D_H;
	PS_DIV_OP_CODE <= OUT_2D_A;
	MS_EDIT_OP_CODE <= OUT_4G_H;
	PS_EDIT_OP_CODE <= OUT_2G_A;


end;
