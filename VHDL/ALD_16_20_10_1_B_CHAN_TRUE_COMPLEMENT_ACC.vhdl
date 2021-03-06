-- VHDL for IBM SMS ALD page 16.20.10.1
-- Title: B CHAN TRUE-COMPLEMENT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/3/2020 2:25:59 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_20_10_1_B_CHAN_TRUE_COMPLEMENT_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ADD_OR_SUBT_OP_CODES:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		PS_MPLY_OR_DIV_OP_CODES:	 in STD_LOGIC;
		PS_1ST_OR_3RD_SCAN:	 in STD_LOGIC;
		MS_CMP_OP_CODES_DOT_1ST_SCAN:	 in STD_LOGIC;
		MS_X_CYCLE_CTRL:	 in STD_LOGIC;
		MS_X_CYCLE:	 in STD_LOGIC;
		MB_START_1401_INDEX:	 in STD_LOGIC;
		MB_START_TRUE_INDEX:	 in STD_LOGIC;
		MS_LB_DOT_B_CYCLE_DOT_1ST_SCAN:	 in STD_LOGIC;
		PS_3RD_SCAN:	 in STD_LOGIC;
		MB_START_COMPL_INDEX:	 in STD_LOGIC;
		MS_TRUE_ADD_B:	 out STD_LOGIC;
		PS_COMP_ADD_B:	 out STD_LOGIC;
		LAMP_15A1F11:	 out STD_LOGIC);
end ALD_16_20_10_1_B_CHAN_TRUE_COMPLEMENT_ACC;

architecture behavioral of ALD_16_20_10_1_B_CHAN_TRUE_COMPLEMENT_ACC is 

	signal OUT_4B_C: STD_LOGIC;
	signal OUT_4C_G: STD_LOGIC;
	signal OUT_3D_E: STD_LOGIC;
	signal OUT_2D_G: STD_LOGIC;
	signal OUT_5E_C: STD_LOGIC;
	signal OUT_4E_R: STD_LOGIC;
	signal OUT_4E_R_Latch: STD_LOGIC;
	signal OUT_3E_B: STD_LOGIC;
	signal OUT_3F_K: STD_LOGIC;
	signal OUT_3F_K_Latch: STD_LOGIC;
	signal OUT_4G_C: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;
	signal OUT_4H_C_Latch: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;
	signal OUT_3H_D_Latch: STD_LOGIC;
	signal OUT_2I_C: STD_LOGIC;
	signal OUT_DOT_3D: STD_LOGIC;
	signal OUT_DOT_3G: STD_LOGIC;

begin

	OUT_4B_C <= NOT(PS_ADD_OR_SUBT_OP_CODES AND PS_1ST_SCAN );
	OUT_4C_G <= NOT(PS_MPLY_OR_DIV_OP_CODES AND PS_1ST_OR_3RD_SCAN );
	OUT_3D_E <= NOT(OUT_4B_C AND OUT_4C_G AND MS_CMP_OP_CODES_DOT_1ST_SCAN );
	OUT_2D_G <= NOT(OUT_DOT_3D );
	OUT_5E_C <= NOT(MS_X_CYCLE_CTRL AND MS_X_CYCLE );
	OUT_4E_R_Latch <= NOT(OUT_5E_C AND OUT_DOT_3D );
	OUT_3E_B <= NOT(MB_START_1401_INDEX AND MB_START_TRUE_INDEX );
	OUT_3F_K_Latch <= NOT(OUT_4E_R AND MS_LB_DOT_B_CYCLE_DOT_1ST_SCAN );
	OUT_4G_C <= NOT(PS_ADD_OR_SUBT_OP_CODES AND PS_3RD_SCAN );
	OUT_3G_C <= NOT MB_START_COMPL_INDEX;
	OUT_4H_C_Latch <= NOT(OUT_5E_C AND OUT_DOT_3G );
	OUT_3H_D_Latch <= NOT(OUT_4G_C AND OUT_4H_C );
	OUT_2I_C <= NOT OUT_4H_C;
	LAMP_15A1F11 <= OUT_2I_C;
	OUT_DOT_3D <= OUT_3D_E OR OUT_3E_B OR OUT_3F_K;
	OUT_DOT_3G <= OUT_3G_C OR OUT_3H_D;

	MS_TRUE_ADD_B <= OUT_2D_G;
	PS_COMP_ADD_B <= OUT_DOT_3G;

	Latch_4E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4E_R_Latch,
		Q => OUT_4E_R,
		QBar => OPEN );

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_K_Latch,
		Q => OUT_3F_K,
		QBar => OPEN );

	Latch_4H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4H_C_Latch,
		Q => OUT_4H_C,
		QBar => OPEN );

	Latch_3H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3H_D_Latch,
		Q => OUT_3H_D,
		QBar => OPEN );


end;
