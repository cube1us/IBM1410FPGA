-- VHDL for IBM SMS ALD page 17.15.05.1
-- Title: COMPARE MATRIX
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/10/2020 6:22:56 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_15_05_1_COMPARE_MATRIX is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ADDER_MX_CARRY_OUT:	 in STD_LOGIC;
		PS_B3_SHIFT:	 in STD_LOGIC;
		PS_B2_SHIFT:	 in STD_LOGIC;
		PS_ADDER_MX_Q8:	 in STD_LOGIC;
		PS_ALPH_OR_SPL_CHAR:	 in STD_LOGIC;
		PS_CMP_ZONE_EQUAL:	 in STD_LOGIC;
		PS_B1_SHIFT:	 in STD_LOGIC;
		PS_ADDER_MX_NO_CARRY_OUT:	 in STD_LOGIC;
		MS_HIGH_ADDER_CARRY:	 out STD_LOGIC;
		MS_ADDER_HIGH:	 out STD_LOGIC;
		MS_ADDER_EQUAL:	 out STD_LOGIC;
		MS_ADDER_LOW:	 out STD_LOGIC;
		MS_LOW_ADDER_NO_CARRY:	 out STD_LOGIC);
end ALD_17_15_05_1_COMPARE_MATRIX;

architecture behavioral of ALD_17_15_05_1_COMPARE_MATRIX is 

	signal OUT_3A_D: STD_LOGIC;
	signal OUT_3B_P: STD_LOGIC;
	signal OUT_3C_G: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
	signal OUT_3E_P: STD_LOGIC;
	signal OUT_3F_C: STD_LOGIC;
	signal OUT_3G_K: STD_LOGIC;
	signal OUT_3H_E: STD_LOGIC;
	signal OUT_DOT_1B: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;
	signal OUT_DOT_1F: STD_LOGIC;

begin

	OUT_3A_D <= NOT(PS_ALPH_OR_SPL_CHAR AND PS_CMP_ZONE_EQUAL AND PS_ADDER_MX_CARRY_OUT );
	OUT_3B_P <= NOT(PS_ADDER_MX_Q8 AND PS_B3_SHIFT );
	OUT_3C_G <= NOT(PS_ALPH_OR_SPL_CHAR AND PS_CMP_ZONE_EQUAL );
	OUT_3D_C <= NOT(PS_ADDER_MX_Q8 AND PS_B2_SHIFT );
	OUT_3E_P <= NOT(PS_ALPH_OR_SPL_CHAR AND PS_CMP_ZONE_EQUAL );
	OUT_3F_C <= NOT(PS_ADDER_MX_Q8 AND PS_B1_SHIFT );
	OUT_3G_K <= NOT(PS_ALPH_OR_SPL_CHAR AND PS_CMP_ZONE_EQUAL );
	OUT_3H_E <= NOT(PS_ALPH_OR_SPL_CHAR AND PS_CMP_ZONE_EQUAL AND PS_ADDER_MX_NO_CARRY_OUT );
	OUT_DOT_1B <= OUT_3B_P OR OUT_3C_G;
	OUT_DOT_1D <= OUT_3D_C OR OUT_3E_P;
	OUT_DOT_1F <= OUT_3F_C OR OUT_3G_K;

	MS_HIGH_ADDER_CARRY <= OUT_3A_D;
	MS_LOW_ADDER_NO_CARRY <= OUT_3H_E;
	MS_ADDER_HIGH <= OUT_DOT_1B;
	MS_ADDER_EQUAL <= OUT_DOT_1D;
	MS_ADDER_LOW <= OUT_DOT_1F;


end;