-- VHDL for IBM SMS ALD page 42.10.08.1
-- Title: CONSOLE ASSEMBLY WM BIT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/25/2020 10:18:06 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_42_10_08_1_CONSOLE_ASSEMBLY_WM_BIT is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_A_DATA_REG_WM_BIT:	 in STD_LOGIC;
		PS_CONS_MX_22_POS:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_1:	 in STD_LOGIC;
		PS_CONS_B_DATA_CH_GATE:	 in STD_LOGIC;
		PS_ASSEMBLY_CH_WM_BIT:	 in STD_LOGIC;
		PS_CONS_MX_24_POS:	 in STD_LOGIC;
		PS_CONS_E2_REG_GATE:	 in STD_LOGIC;
		PS_E2_REG_WM_BIT:	 in STD_LOGIC;
		PS_CONS_OUTPUT_WM_BIT:	 out STD_LOGIC);
end ALD_42_10_08_1_CONSOLE_ASSEMBLY_WM_BIT;

architecture behavioral of ALD_42_10_08_1_CONSOLE_ASSEMBLY_WM_BIT is 

	signal OUT_4B_NoPin: STD_LOGIC;
	signal OUT_4C_NoPin: STD_LOGIC;
	signal OUT_3C_F: STD_LOGIC;
	signal OUT_4D_NoPin: STD_LOGIC;
	signal OUT_2D_L: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;
	signal OUT_DOT_3D: STD_LOGIC;

begin

	OUT_4B_NoPin <= NOT(PS_A_DATA_REG_WM_BIT AND PS_CONS_MX_22_POS );
	OUT_4C_NoPin <= NOT(PS_B_CH_WM_BIT_1 AND PS_CONS_B_DATA_CH_GATE );
	OUT_3C_F <= NOT(OUT_4B_NoPin AND OUT_4C_NoPin AND OUT_4D_NoPin );
	OUT_4D_NoPin <= NOT(PS_ASSEMBLY_CH_WM_BIT AND PS_CONS_MX_24_POS );
	OUT_2D_L <= OUT_DOT_3D;
	OUT_4E_D <= NOT(PS_CONS_E2_REG_GATE AND PS_E2_REG_WM_BIT );
	OUT_3E_C <= NOT(OUT_4E_D );
	OUT_DOT_3D <= OUT_3C_F OR OUT_3E_C;

	PS_CONS_OUTPUT_WM_BIT <= OUT_2D_L;


end;
