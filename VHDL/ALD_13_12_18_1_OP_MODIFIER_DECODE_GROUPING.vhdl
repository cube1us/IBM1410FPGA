-- VHDL for IBM SMS ALD page 13.12.18.1
-- Title: OP MODIFIER DECODE GROUPING
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/20/2020 4:34:28 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_12_18_1_OP_MODIFIER_DECODE_GROUPING is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_DOLLAR_SIGN_SYM_OP_MODIFIER:	 in STD_LOGIC;
		MS_R_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		MS_1401_READ_TRIGGER:	 in STD_LOGIC;
		PS_R_OR_DOLL_SGN_OP_MOD_STAR_SIF:	 in STD_LOGIC;
		PS_R_OR_DOLL_SGN_OP_MOD_STAR_SIF_JRJ:	 in STD_LOGIC;
		MS_Q_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		MS_V_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		MS_W_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		MS_X_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_W_OR_X_SYMBOL_OP_MOD_STAR_SIF:	 in STD_LOGIC;
		PS_W_OR_X_SYMBOL_OP_MOD_STAR_SIF_JRJ:	 in STD_LOGIC;
		MS_1401_PRINT_TRIGGER:	 in STD_LOGIC;
		MS_1401_PUNCH_TRIGGER:	 in STD_LOGIC;
		PS_DOLLAR_SIGN_OR_R_SYMBOL_OP_MOD:	 out STD_LOGIC;
		PS_Q_OR_V_SYMBOL_OP_MODIFIER:	 out STD_LOGIC;
		MS_Q_OR_V_SYMBOL_OP_MODIFIER:	 out STD_LOGIC;
		PS_W_OR_X_SYMBOL_OP_MODIFIER:	 out STD_LOGIC);
end ALD_13_12_18_1_OP_MODIFIER_DECODE_GROUPING;

architecture behavioral of ALD_13_12_18_1_OP_MODIFIER_DECODE_GROUPING is 

	signal OUT_3A_C: STD_LOGIC;
	signal OUT_2A_B: STD_LOGIC;
	signal OUT_3B_P: STD_LOGIC;
	signal OUT_1B_D: STD_LOGIC;
	signal OUT_3C_K: STD_LOGIC;
	signal OUT_2C_B: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_2D_A: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;
	signal OUT_DOT_3B: STD_LOGIC;
	signal OUT_DOT_3E: STD_LOGIC;

begin

	OUT_3A_C <= NOT(MS_DOLLAR_SIGN_SYM_OP_MODIFIER AND MS_R_SYMBOL_OP_MODIFIER AND MS_1401_READ_TRIGGER );
	OUT_2A_B <= OUT_DOT_3B;
	OUT_3B_P <= NOT(MS_Q_SYMBOL_OP_MODIFIER );
	OUT_1B_D <= NOT OUT_2C_B;
	OUT_3C_K <= NOT(MS_V_SYMBOL_OP_MODIFIER AND MS_Q_SYMBOL_OP_MODIFIER );
	OUT_2C_B <= NOT OUT_3C_K;
	OUT_3D_D <= NOT(MS_V_SYMBOL_OP_MODIFIER AND MS_W_SYMBOL_OP_MODIFIER AND MS_X_SYMBOL_OP_MODIFIER );
	OUT_2D_A <= OUT_DOT_3E;
	OUT_3E_C <= NOT(MS_1401_PRINT_TRIGGER AND MS_1401_PUNCH_TRIGGER );
	OUT_DOT_3B <= OUT_3A_C OR OUT_3B_P OR PS_R_OR_DOLL_SGN_OP_MOD_STAR_SIF OR PS_R_OR_DOLL_SGN_OP_MOD_STAR_SIF_JRJ;
	OUT_DOT_3E <= OUT_3D_D OR OUT_3E_C OR PS_W_OR_X_SYMBOL_OP_MOD_STAR_SIF OR PS_W_OR_X_SYMBOL_OP_MOD_STAR_SIF_JRJ;

	PS_DOLLAR_SIGN_OR_R_SYMBOL_OP_MOD <= OUT_2A_B;
	PS_Q_OR_V_SYMBOL_OP_MODIFIER <= OUT_1B_D;
	MS_Q_OR_V_SYMBOL_OP_MODIFIER <= OUT_2C_B;
	PS_W_OR_X_SYMBOL_OP_MODIFIER <= OUT_2D_A;


end;
