-- VHDL for IBM SMS ALD page 14.17.07.1
-- Title: MEM AR HUNDREDS POS 0+1 BITS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/22/2020 2:17:17 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_17_07_1_MEM_AR_HUNDREDS_POS_0_1_BITS_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_AR_BUS_HP0B:	 in STD_LOGIC;
		PS_SET_MEM_AR_TO_I_AR:	 in STD_LOGIC;
		PS_SET_MEM_AR_1_GATED:	 in STD_LOGIC;
		PS_ADDR_SCNR_4_POS:	 in STD_LOGIC;
		MY_LOGIC_GATE_D_OR_U:	 in STD_LOGIC;
		PS_SET_MEM_AR_2_GATED:	 in STD_LOGIC;
		PS_AR_BUS_HP1B:	 in STD_LOGIC;
		MS_MEM_AR_TO_I_AR_HP0B:	 out STD_LOGIC;
		MY_MEM_AR_NOT_HP0B:	 out STD_LOGIC;
		MS_AR_BUS_GTD_OUT_HP0B:	 out STD_LOGIC;
		PY_MEM_AR_HP0B_TO_ADDR_MOD:	 out STD_LOGIC;
		MY_MEM_AR_HP0B:	 out STD_LOGIC;
		MS_AR_BUS_GTD_OUT_HP1B:	 out STD_LOGIC;
		MS_MEM_AR_TO_I_AR_HP1B:	 out STD_LOGIC;
		MY_MEM_AR_NOT_HP1B:	 out STD_LOGIC;
		PY_MEM_AR_HP1B_TO_ADDR_MOD:	 out STD_LOGIC;
		MY_MEM_AR_HP1B:	 out STD_LOGIC;
		LAMP_11C8K03:	 out STD_LOGIC;
		LAMP_11C8J03:	 out STD_LOGIC);
end ALD_14_17_07_1_MEM_AR_HUNDREDS_POS_0_1_BITS_ACC;

architecture behavioral of ALD_14_17_07_1_MEM_AR_HUNDREDS_POS_0_1_BITS_ACC is 

	signal OUT_1A_D: STD_LOGIC;
	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_4B_NoPin: STD_LOGIC;
	signal OUT_3B_NoPin: STD_LOGIC;
	signal OUT_3B_NoPin_Latch: STD_LOGIC;
	signal OUT_2B_K: STD_LOGIC;
	signal OUT_2B_K_Latch: STD_LOGIC;
	signal OUT_1B_E: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_4C_NoPin: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_5D_C: STD_LOGIC;
	signal OUT_2D_R: STD_LOGIC;
	signal OUT_1D_A: STD_LOGIC;
	signal OUT_5E_C: STD_LOGIC;
	signal OUT_1F_D: STD_LOGIC;
	signal OUT_5G_NoPin: STD_LOGIC;
	signal OUT_4G_NoPin: STD_LOGIC;
	signal OUT_3G_NoPin: STD_LOGIC;
	signal OUT_3G_NoPin_Latch: STD_LOGIC;
	signal OUT_2G_K: STD_LOGIC;
	signal OUT_2G_K_Latch: STD_LOGIC;
	signal OUT_1G_E: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_4H_NoPin: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_2I_R: STD_LOGIC;
	signal OUT_1I_A: STD_LOGIC;

begin

	OUT_1A_D <= NOT(PS_SET_MEM_AR_TO_I_AR AND OUT_3B_NoPin );
	OUT_5B_NoPin <= NOT PS_AR_BUS_HP0B;
	OUT_4B_NoPin <= OUT_5B_NoPin AND PS_SET_MEM_AR_2_GATED;
	OUT_3B_NoPin_Latch <= NOT(OUT_4B_NoPin OR OUT_2B_K );
	OUT_2B_K_Latch <= NOT(OUT_3B_NoPin OR OUT_4C_NoPin );
	OUT_1B_E <= OUT_3B_NoPin;
	OUT_5C_NoPin <= PS_AR_BUS_HP0B;
	OUT_4C_NoPin <= OUT_5C_NoPin AND PS_SET_MEM_AR_1_GATED;
	OUT_2C_D <= NOT OUT_2B_K;
	LAMP_11C8K03 <= OUT_2C_D;
	OUT_5D_C <= NOT(PS_ADDR_SCNR_4_POS AND PS_AR_BUS_HP0B );
	OUT_2D_R <= OUT_2B_K;
	OUT_1D_A <= NOT(OUT_2D_R OR MY_LOGIC_GATE_D_OR_U );
	OUT_5E_C <= NOT(PS_ADDR_SCNR_4_POS AND PS_AR_BUS_HP1B );
	OUT_1F_D <= NOT(PS_SET_MEM_AR_TO_I_AR AND OUT_3G_NoPin );
	OUT_5G_NoPin <= NOT PS_AR_BUS_HP1B;
	OUT_4G_NoPin <= OUT_5G_NoPin AND PS_SET_MEM_AR_2_GATED;
	OUT_3G_NoPin_Latch <= NOT(OUT_4G_NoPin OR OUT_2G_K );
	OUT_2G_K_Latch <= NOT(OUT_3G_NoPin OR OUT_4H_NoPin );
	OUT_1G_E <= OUT_3G_NoPin;
	OUT_5H_NoPin <= PS_AR_BUS_HP1B;
	OUT_4H_NoPin <= OUT_5H_NoPin AND PS_SET_MEM_AR_1_GATED;
	OUT_2H_C <= NOT OUT_2G_K;
	LAMP_11C8J03 <= OUT_2H_C;
	OUT_2I_R <= OUT_2G_K;
	OUT_1I_A <= NOT(OUT_2I_R OR MY_LOGIC_GATE_D_OR_U );

	MS_MEM_AR_TO_I_AR_HP0B <= OUT_1A_D;
	MY_MEM_AR_NOT_HP0B <= OUT_1B_E;
	MS_AR_BUS_GTD_OUT_HP0B <= OUT_5D_C;
	MY_MEM_AR_HP0B <= OUT_2D_R;
	PY_MEM_AR_HP0B_TO_ADDR_MOD <= OUT_1D_A;
	MS_AR_BUS_GTD_OUT_HP1B <= OUT_5E_C;
	MS_MEM_AR_TO_I_AR_HP1B <= OUT_1F_D;
	MY_MEM_AR_NOT_HP1B <= OUT_1G_E;
	MY_MEM_AR_HP1B <= OUT_2I_R;
	PY_MEM_AR_HP1B_TO_ADDR_MOD <= OUT_1I_A;

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_NoPin_Latch,
		Q => OUT_3B_NoPin,
		QBar => OPEN );

	Latch_2B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2B_K_Latch,
		Q => OUT_2B_K,
		QBar => OPEN );

	Latch_3G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3G_NoPin_Latch,
		Q => OUT_3G_NoPin,
		QBar => OPEN );

	Latch_2G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2G_K_Latch,
		Q => OUT_2G_K,
		QBar => OPEN );


end;
