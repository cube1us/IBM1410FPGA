-- VHDL for IBM SMS ALD page 11.10.35.1
-- Title: LOGIC GATE MIX
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 12:50:42 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_10_35_1_LOGIC_GATE_MIX is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_LOGIC_GATE_B_OR_S:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_OR_T:	 in STD_LOGIC;
		PS_LOGIC_GATE_E_OR_V:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_OR_W:	 in STD_LOGIC;
		MY_LOGIC_GATE_B_OR_S:	 out STD_LOGIC;
		MY_LOGIC_GATE_C_OR_T:	 out STD_LOGIC;
		MY_LOGIC_GATE_E_OR_V:	 out STD_LOGIC;
		MY_LOGIC_GATE_F_OR_W:	 out STD_LOGIC);
end ALD_11_10_35_1_LOGIC_GATE_MIX;

architecture behavioral of ALD_11_10_35_1_LOGIC_GATE_MIX is 

	signal OUT_3A_F: STD_LOGIC;
	signal OUT_3C_R: STD_LOGIC;
	signal OUT_3E_B: STD_LOGIC;
	signal OUT_3G_R: STD_LOGIC;

begin

	OUT_3A_F <= NOT PS_LOGIC_GATE_B_OR_S;
	OUT_3C_R <= NOT PS_LOGIC_GATE_C_OR_T;
	OUT_3E_B <= NOT PS_LOGIC_GATE_E_OR_V;
	OUT_3G_R <= NOT PS_LOGIC_GATE_F_OR_W;

	MY_LOGIC_GATE_B_OR_S <= OUT_3A_F;
	MY_LOGIC_GATE_C_OR_T <= OUT_3C_R;
	MY_LOGIC_GATE_E_OR_V <= OUT_3E_B;
	MY_LOGIC_GATE_F_OR_W <= OUT_3G_R;


end;