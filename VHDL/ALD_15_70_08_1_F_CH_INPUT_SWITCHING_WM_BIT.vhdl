-- VHDL for IBM SMS ALD page 15.70.08.1
-- Title: F CH INPUT SWITCHING WM BIT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/27/2020 5:16:00 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_70_08_1_F_CH_INPUT_SWITCHING_WM_BIT is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ASSEMBLY_CH_WM_BIT:	 in STD_LOGIC;
		PS_ASSEMBLY_TO_F_CH:	 in STD_LOGIC;
		PS_F1_INPUT_WM_BIT_STAR_SIF:	 in STD_LOGIC;
		PS_F1_INPUT_WM_BIT_STAR_1412_19:	 in STD_LOGIC;
		MC_F_CH_1301_TO_CPU_WM_BIT:	 in STD_LOGIC;
		MC_F_CH_1405_TO_CPU_WM_BIT:	 in STD_LOGIC;
		MS_FILE_TO_F_CH:	 in STD_LOGIC;
		PS_F1_INPUT_WM_BIT:	 out STD_LOGIC;
		MS_F1_INPUT_WM_BIT:	 out STD_LOGIC);
end ALD_15_70_08_1_F_CH_INPUT_SWITCHING_WM_BIT;

architecture behavioral of ALD_15_70_08_1_F_CH_INPUT_SWITCHING_WM_BIT is 

	signal OUT_1C_D: STD_LOGIC;
	signal OUT_4D_G: STD_LOGIC;
	signal OUT_2D_K: STD_LOGIC;
	signal OUT_1E_D: STD_LOGIC;
	signal OUT_2F_L: STD_LOGIC;
	signal OUT_DOT_2E: STD_LOGIC;
	signal OUT_DOT_5F: STD_LOGIC;

begin

	OUT_1C_D <= NOT OUT_1E_D;
	OUT_4D_G <= NOT(PS_ASSEMBLY_CH_WM_BIT AND PS_ASSEMBLY_TO_F_CH );
	OUT_2D_K <= NOT(OUT_4D_G );
	OUT_1E_D <= NOT OUT_DOT_2E;
	OUT_2F_L <= NOT(OUT_DOT_5F OR MS_FILE_TO_F_CH );
	OUT_DOT_2E <= OUT_2D_K OR PS_F1_INPUT_WM_BIT_STAR_SIF OR PS_F1_INPUT_WM_BIT_STAR_1412_19 OR OUT_2F_L;
	OUT_DOT_5F <= MC_F_CH_1301_TO_CPU_WM_BIT AND MC_F_CH_1405_TO_CPU_WM_BIT;

	PS_F1_INPUT_WM_BIT <= OUT_1C_D;
	MS_F1_INPUT_WM_BIT <= OUT_1E_D;


end;
