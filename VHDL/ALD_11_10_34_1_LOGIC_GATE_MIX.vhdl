-- VHDL for IBM SMS ALD page 11.10.34.1
-- Title: LOGIC GATE MIX
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 12:50:01 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_10_34_1_LOGIC_GATE_MIX is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_S:	 in STD_LOGIC;
		MS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_T:	 in STD_LOGIC;
		MS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_U:	 in STD_LOGIC;
		MS_LOGIC_GATE_E_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_V:	 in STD_LOGIC;
		MS_LOGIC_GATE_W:	 in STD_LOGIC;
		PS_LOGIC_GATE_B_OR_S:	 out STD_LOGIC;
		MS_LOGIC_GATE_B_OR_S:	 out STD_LOGIC;
		MS_LOGIC_GATE_C_OR_T:	 out STD_LOGIC;
		PS_LOGIC_GATE_C_OR_T:	 out STD_LOGIC;
		MY_LOGIC_GATE_D_OR_U:	 out STD_LOGIC;
		MS_LOGIC_GATE_D_OR_U:	 out STD_LOGIC;
		PS_LOGIC_GATE_E_OR_V:	 out STD_LOGIC;
		PS_LOGIC_GATE_F_OR_W:	 out STD_LOGIC);
end ALD_11_10_34_1_LOGIC_GATE_MIX;

architecture behavioral of ALD_11_10_34_1_LOGIC_GATE_MIX is 

	signal OUT_3A_D: STD_LOGIC;
	signal OUT_3B_F: STD_LOGIC;
	signal OUT_1B_C: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_1C_C: STD_LOGIC;
	signal OUT_3D_R: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_2E_B: STD_LOGIC;
	signal OUT_3F_B: STD_LOGIC;
	signal OUT_2F_D: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_3H_F: STD_LOGIC;
	signal OUT_2H_B: STD_LOGIC;
	signal OUT_2I_R: STD_LOGIC;
	signal OUT_DOT_3A: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;
	signal OUT_DOT_3E: STD_LOGIC;
	signal OUT_DOT_3G: STD_LOGIC;
	signal OUT_DOT_1H: STD_LOGIC;

begin

	OUT_3A_D <= NOT MS_LOGIC_GATE_B_1;
	OUT_3B_F <= NOT MS_LOGIC_GATE_S;
	OUT_1B_C <= NOT OUT_DOT_3A;
	OUT_3C_C <= NOT MS_LOGIC_GATE_C_1;
	OUT_1C_C <= NOT OUT_DOT_3C;
	OUT_3D_R <= NOT MS_LOGIC_GATE_T;
	OUT_3E_D <= NOT MS_LOGIC_GATE_D_1;
	OUT_2E_B <= NOT OUT_DOT_3E;
	OUT_3F_B <= NOT MS_LOGIC_GATE_U;
	OUT_2F_D <= NOT OUT_DOT_3E;
	OUT_3G_C <= NOT MS_LOGIC_GATE_E_1;
	OUT_3H_F <= NOT MS_LOGIC_GATE_V;
	OUT_2H_B <= NOT MS_LOGIC_GATE_F_1;
	OUT_2I_R <= NOT MS_LOGIC_GATE_W;
	OUT_DOT_3A <= OUT_3A_D OR OUT_3B_F;
	OUT_DOT_3C <= OUT_3C_C OR OUT_3D_R;
	OUT_DOT_3E <= OUT_3E_D OR OUT_3F_B;
	OUT_DOT_3G <= OUT_3G_C OR OUT_3H_F;
	OUT_DOT_1H <= OUT_2H_B OR OUT_2I_R;

	MS_LOGIC_GATE_B_OR_S <= OUT_1B_C;
	MS_LOGIC_GATE_C_OR_T <= OUT_1C_C;
	MY_LOGIC_GATE_D_OR_U <= OUT_2E_B;
	MS_LOGIC_GATE_D_OR_U <= OUT_2F_D;
	PS_LOGIC_GATE_B_OR_S <= OUT_DOT_3A;
	PS_LOGIC_GATE_C_OR_T <= OUT_DOT_3C;
	PS_LOGIC_GATE_E_OR_V <= OUT_DOT_3G;
	PS_LOGIC_GATE_F_OR_W <= OUT_DOT_1H;


end;
