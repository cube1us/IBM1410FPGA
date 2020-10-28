-- VHDL for IBM SMS ALD page 45.20.04.1
-- Title: CONS CYCLE CTRL MATRIX Y5+Y6-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/28/2020 4:19:57 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_20_04_1_CONS_CYCLE_CTRL_MATRIX_Y5_Y6_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_CONS_GATE_POS_30:	 in STD_LOGIC;
		PS_CONS_MX_Y_DRIVE_2:	 in STD_LOGIC;
		MS_DISPLAY_ROUTINE:	 in STD_LOGIC;
		MS_ADDRESS_SET_ROUTINE:	 in STD_LOGIC;
		PS_CONS_MX_X1A_POS:	 in STD_LOGIC;
		MS_CONS_MX_Y_DC_RESET:	 in STD_LOGIC;
		PS_DISPLAY_ROUTINE_2:	 in STD_LOGIC;
		PS_CONS_MX_Y4_POS:	 in STD_LOGIC;
		MS_CONSOLE_OP_COMPLETE:	 in STD_LOGIC;
		PS_CONS_MX_ADDR_DRIVE:	 in STD_LOGIC;
		MS_CONSOLE_CYCLE_START:	 in STD_LOGIC;
		MS_CONS_STOP_PRINT_MX_GATE:	 in STD_LOGIC;
		MS_CONS_MX_Y4_POS:	 in STD_LOGIC;
		PS_CONS_MX_X5_POS:	 in STD_LOGIC;
		PS_CONS_STOP_PRINT_LATCH:	 in STD_LOGIC;
		MS_CONS_MX_Y6_POS:	 out STD_LOGIC;
		PS_CONS_MX_Y6_POS:	 out STD_LOGIC;
		MS_ADDRESS_SET_COMPLETE:	 out STD_LOGIC;
		PS_CONS_ADDRESS_COMPLETE:	 out STD_LOGIC;
		MS_DISPLAY_ADDR_COMPLETE:	 out STD_LOGIC;
		MS_CONS_MX_Y5_POS:	 out STD_LOGIC;
		PS_CONS_MX_Y5_POS:	 out STD_LOGIC;
		MS_END_STOP_DATA:	 out STD_LOGIC);
end ALD_45_20_04_1_CONS_CYCLE_CTRL_MATRIX_Y5_Y6_ACC;

architecture behavioral of ALD_45_20_04_1_CONS_CYCLE_CTRL_MATRIX_Y5_Y6_ACC is 

	signal OUT_4A_NoPin: STD_LOGIC;
	signal OUT_3A_G: STD_LOGIC;
	signal OUT_2A_P: STD_LOGIC;
	signal OUT_2A_B: STD_LOGIC;
	signal OUT_1A_F: STD_LOGIC;
	signal OUT_4B_NoPin: STD_LOGIC;
	signal OUT_3B_F: STD_LOGIC;
	signal OUT_1B_R: STD_LOGIC;
	signal OUT_5C_P: STD_LOGIC;
	signal OUT_3D_G: STD_LOGIC;
	signal OUT_5E_NoPin: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_3F_R: STD_LOGIC;
	signal OUT_4G_C: STD_LOGIC;
	signal OUT_3G_A: STD_LOGIC;
	signal OUT_2G_P: STD_LOGIC;
	signal OUT_2G_B: STD_LOGIC;
	signal OUT_1G_C: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_1H_F: STD_LOGIC;
	signal OUT_5I_E: STD_LOGIC;

begin

	OUT_4A_NoPin <= NOT(OUT_5I_E AND OUT_5C_P );
	OUT_3A_G <= NOT(OUT_4A_NoPin );

	SMS_TAM_2A: entity SMS_TAM
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON1 => OUT_3A_G,	-- Pin A
		ACSET1 => PS_CONS_MX_Y_DRIVE_2,	-- Pin D
		GATEOFF2 => OUT_3B_F,	-- Pin K
		ACRESET2 => PS_CONS_MX_Y_DRIVE_2,	-- Pin L
		DCRESET => MS_CONS_MX_Y_DC_RESET,	-- Pin H
		OUTON => OUT_2A_P,
		OUTOFF => OUT_2A_B,
		DCSET => OPEN,
		ACRESET1 => OPEN,
		GATEOFF1 => OPEN,
		DCRFORCE => OPEN,
		DCSFORCE => OPEN,
		GATEON2 => OPEN,
		ACSET2 => OPEN );

	OUT_1A_F <= NOT OUT_2A_P;
	OUT_4B_NoPin <= NOT(OUT_3F_R AND OUT_1B_R );
	OUT_3B_F <= NOT(OUT_4B_NoPin );
	OUT_1B_R <= NOT OUT_2A_B;
	OUT_5C_P <= NOT(MS_CONS_GATE_POS_30 AND OUT_1G_C );
	OUT_3D_G <= NOT(MS_DISPLAY_ROUTINE AND OUT_4E_D );
	OUT_5E_NoPin <= NOT(OUT_1B_R AND MS_ADDRESS_SET_ROUTINE AND PS_CONS_MX_X1A_POS );
	OUT_4E_D <= NOT(OUT_5E_NoPin );
	OUT_3F_R <= NOT(OUT_4E_D AND PS_DISPLAY_ROUTINE_2 );
	OUT_4G_C <= NOT(OUT_5H_NoPin AND MS_CONSOLE_OP_COMPLETE );
	OUT_3G_A <= NOT(OUT_4G_C );

	SMS_TAM_2G: entity SMS_TAM
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON1 => OUT_3G_A,	-- Pin A
		ACSET1 => PS_CONS_MX_Y_DRIVE_2,	-- Pin D
		GATEON2 => PS_CONS_MX_Y4_POS,	-- Pin E
		ACSET2 => PS_CONS_MX_ADDR_DRIVE,	-- Pin F
		GATEOFF2 => OUT_1H_F,	-- Pin K
		ACRESET2 => PS_CONS_MX_Y_DRIVE_2,	-- Pin L
		DCRESET => MS_CONS_MX_Y_DC_RESET,	-- Pin H
		OUTON => OUT_2G_P,
		OUTOFF => OUT_2G_B,
		DCSET => OPEN,
		ACRESET1 => OPEN,
		GATEOFF1 => OPEN,
		DCRFORCE => OPEN,
		DCSFORCE => OPEN );

	OUT_1G_C <= NOT(OUT_2G_P );
	OUT_5H_NoPin <= NOT(MS_CONSOLE_CYCLE_START AND MS_CONS_STOP_PRINT_MX_GATE AND MS_CONS_MX_Y4_POS );
	OUT_1H_F <= NOT OUT_2G_B;
	OUT_5I_E <= NOT(OUT_1H_F AND PS_CONS_MX_X5_POS AND PS_CONS_STOP_PRINT_LATCH );

	MS_CONS_MX_Y6_POS <= OUT_1A_F;
	PS_CONS_MX_Y6_POS <= OUT_1B_R;
	MS_ADDRESS_SET_COMPLETE <= OUT_3D_G;
	PS_CONS_ADDRESS_COMPLETE <= OUT_4E_D;
	MS_DISPLAY_ADDR_COMPLETE <= OUT_3F_R;
	MS_CONS_MX_Y5_POS <= OUT_1G_C;
	PS_CONS_MX_Y5_POS <= OUT_1H_F;
	MS_END_STOP_DATA <= OUT_5I_E;


end;
