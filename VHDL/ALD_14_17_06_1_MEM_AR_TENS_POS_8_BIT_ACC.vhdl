-- VHDL for IBM SMS ALD page 14.17.06.1
-- Title: MEM AR TENS POS 8 BIT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/22/2020 2:17:09 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_17_06_1_MEM_AR_TENS_POS_8_BIT_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_SET_MEM_AR_TO_I_AR:	 in STD_LOGIC;
		PS_SET_MEM_AR_2_GATED:	 in STD_LOGIC;
		PS_SET_MEM_AR_1_GATED:	 in STD_LOGIC;
		PS_AR_BUS_TP8B:	 in STD_LOGIC;
		PS_ADDR_SCNR_3_POS:	 in STD_LOGIC;
		MY_LOGIC_GATE_C_OR_T:	 in STD_LOGIC;
		MS_MEM_AR_TO_I_AR_TP8B:	 out STD_LOGIC;
		MY_MEM_AR_NOT_TP8B:	 out STD_LOGIC;
		MS_AR_BUS_GTD_OUT_TP8B:	 out STD_LOGIC;
		PY_MEM_AR_TP8B_TO_ADDR_MOD:	 out STD_LOGIC;
		MY_MEM_AR_TP8B:	 out STD_LOGIC;
		LAMP_11C8F02:	 out STD_LOGIC);
end ALD_14_17_06_1_MEM_AR_TENS_POS_8_BIT_ACC;

architecture behavioral of ALD_14_17_06_1_MEM_AR_TENS_POS_8_BIT_ACC is 

	signal OUT_1C_D: STD_LOGIC;
	signal OUT_5D_NoPin: STD_LOGIC;
	signal OUT_4D_NoPin: STD_LOGIC;
	signal OUT_3D_NoPin: STD_LOGIC;
	signal OUT_3D_NoPin_Latch: STD_LOGIC;
	signal OUT_2D_K: STD_LOGIC;
	signal OUT_2D_K_Latch: STD_LOGIC;
	signal OUT_1D_E: STD_LOGIC;
	signal OUT_5E_NoPin: STD_LOGIC;
	signal OUT_4E_NoPin: STD_LOGIC;
	signal OUT_2E_A: STD_LOGIC;
	signal OUT_5F_C: STD_LOGIC;
	signal OUT_2F_R: STD_LOGIC;
	signal OUT_1F_A: STD_LOGIC;

begin

	OUT_1C_D <= NOT(PS_SET_MEM_AR_TO_I_AR AND OUT_3D_NoPin );
	OUT_5D_NoPin <= NOT PS_AR_BUS_TP8B;
	OUT_4D_NoPin <= OUT_5D_NoPin AND PS_SET_MEM_AR_2_GATED;
	OUT_3D_NoPin_Latch <= NOT(OUT_4D_NoPin OR OUT_2D_K );
	OUT_2D_K_Latch <= NOT(OUT_3D_NoPin OR OUT_4E_NoPin );
	OUT_1D_E <= OUT_3D_NoPin;
	OUT_5E_NoPin <= PS_AR_BUS_TP8B;
	OUT_4E_NoPin <= OUT_5E_NoPin AND PS_SET_MEM_AR_1_GATED;
	OUT_2E_A <= NOT OUT_2D_K;
	LAMP_11C8F02 <= OUT_2E_A;
	OUT_5F_C <= NOT(PS_ADDR_SCNR_3_POS AND PS_AR_BUS_TP8B );
	OUT_2F_R <= OUT_2D_K;
	OUT_1F_A <= NOT(OUT_2F_R OR MY_LOGIC_GATE_C_OR_T );

	MS_MEM_AR_TO_I_AR_TP8B <= OUT_1C_D;
	MY_MEM_AR_NOT_TP8B <= OUT_1D_E;
	MS_AR_BUS_GTD_OUT_TP8B <= OUT_5F_C;
	MY_MEM_AR_TP8B <= OUT_2F_R;
	PY_MEM_AR_TP8B_TO_ADDR_MOD <= OUT_1F_A;

	Latch_3D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3D_NoPin_Latch,
		Q => OUT_3D_NoPin,
		QBar => OPEN );

	Latch_2D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2D_K_Latch,
		Q => OUT_2D_K,
		QBar => OPEN );


end;
