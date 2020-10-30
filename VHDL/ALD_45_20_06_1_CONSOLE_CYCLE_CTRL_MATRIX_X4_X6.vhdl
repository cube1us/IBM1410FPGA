-- VHDL for IBM SMS ALD page 45.20.06.1
-- Title: CONSOLE CYCLE CTRL MATRIX X4-X6
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/29/2020 8:11:39 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_20_06_1_CONSOLE_CYCLE_CTRL_MATRIX_X4_X6 is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_ADDRESS_SET_COMPLETE:	 in STD_LOGIC;
		PS_CONS_MX_Y_DRIVE_2:	 in STD_LOGIC;
		MS_END_STOP_DATA:	 in STD_LOGIC;
		PS_CONS_MX_X_DRIVE_1:	 in STD_LOGIC;
		MS_CONS_MX_X_DC_RESET:	 in STD_LOGIC;
		MS_DISPLAY_ADDR_COMPLETE:	 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		MS_CONS_MX_30_POS:	 in STD_LOGIC;
		PS_CONS_MX_X3_POS:	 in STD_LOGIC;
		MS_CONS_ALTER_MX_GATE:	 in STD_LOGIC;
		MS_CONS_INQUIRY_MX_GATE:	 in STD_LOGIC;
		MS_CONS_PRG_PRT_OUT_MX_GATE:	 in STD_LOGIC;
		PS_CONS_CLOCK_4_POS:	 in STD_LOGIC;
		MS_CONS_MX_X6_POS:	 out STD_LOGIC;
		PS_CONS_MX_X6_POS:	 out STD_LOGIC;
		PS_CONS_MX_X5_POS:	 out STD_LOGIC;
		MS_CONS_GATE_POS_30:	 out STD_LOGIC;
		PS_CONS_MX_X4_POS:	 out STD_LOGIC);
end ALD_45_20_06_1_CONSOLE_CYCLE_CTRL_MATRIX_X4_X6;

architecture behavioral of ALD_45_20_06_1_CONSOLE_CYCLE_CTRL_MATRIX_X4_X6 is 

	signal OUT_5A_F: STD_LOGIC;
	signal OUT_3A_P: STD_LOGIC;
	signal OUT_3A_B: STD_LOGIC;
	signal OUT_1A_C: STD_LOGIC;
	signal OUT_5B_G: STD_LOGIC;
	signal OUT_1B_A: STD_LOGIC;
	signal OUT_3D_P: STD_LOGIC;
	signal OUT_3D_B: STD_LOGIC;
	signal OUT_1D_NoPin: STD_LOGIC;
	signal OUT_1E_R: STD_LOGIC;
	signal OUT_5F_G: STD_LOGIC;
	signal OUT_5G_E: STD_LOGIC;
	signal OUT_5G_E_Latch: STD_LOGIC;
	signal OUT_4G_F: STD_LOGIC;
	signal OUT_4G_F_Latch: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_5H_C: STD_LOGIC;
	signal OUT_4H_NoPin: STD_LOGIC;
	signal OUT_1H_B: STD_LOGIC;

begin

	OUT_5A_F <= NOT(MS_ADDRESS_SET_COMPLETE AND OUT_1D_NoPin );

	SMS_TAM_3A: entity SMS_TAM
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON1 => OUT_5A_F,	-- Pin A
		ACSET1 => PS_CONS_MX_X_DRIVE_1,	-- Pin D
		GATEON2 => OUT_5B_G,	-- Pin E
		ACSET2 => PS_CONS_MX_Y_DRIVE_2,	-- Pin F
		DCSET => MS_CONS_MX_X_DC_RESET,	-- Pin C
		GATEOFF2 => OUT_1B_A,	-- Pin K
		ACRESET2 => PS_CONS_MX_X_DRIVE_1,	-- Pin L
		GATEOFF1 => OUT_5F_G,	-- Pin R
		ACRESET1 => PS_CONS_MX_Y_DRIVE_2,	-- Pin Q
		OUTON => OUT_3A_P,
		OUTOFF => OUT_3A_B,
		DCRFORCE => OPEN,
		DCSFORCE => OPEN,
		DCRESET => OPEN );

	OUT_1A_C <= NOT(OUT_3A_P );
	OUT_5B_G <= NOT(MS_END_STOP_DATA );

	SMS_AEK_1B: entity SMS_AEK
	    port map (
		IN1 => OUT_3A_B,	-- Pin F
		OUT1 => OUT_1B_A,
		IN2 => OPEN );


	SMS_TAM_3D: entity SMS_TAM
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON1 => OUT_1H_B,	-- Pin A
		ACSET1 => PS_CONS_MX_X_DRIVE_1,	-- Pin D
		GATEON2 => OUT_5F_G,	-- Pin E
		ACSET2 => PS_CONS_MX_Y_DRIVE_2,	-- Pin F
		GATEOFF1 => OUT_5B_G,	-- Pin R
		GATEOFF2 => OUT_1E_R,	-- Pin K
		ACRESET2 => PS_CONS_MX_X_DRIVE_1,	-- Pin L
		ACRESET1 => PS_CONS_MX_Y_DRIVE_2,	-- Pin Q
		DCRESET => MS_CONS_MX_X_DC_RESET,	-- Pin H
		OUTON => OUT_3D_P,
		OUTOFF => OUT_3D_B,
		DCSET => OPEN,
		DCRFORCE => OPEN,
		DCSFORCE => OPEN );

	OUT_1D_NoPin <= NOT(OUT_3D_P );
	OUT_1E_R <= NOT OUT_3D_B;
	OUT_5F_G <= NOT(OUT_5G_E AND MS_DISPLAY_ADDR_COMPLETE );
	OUT_5G_E_Latch <= NOT(OUT_4G_F AND MS_PROGRAM_RESET_4 AND MS_CONS_MX_30_POS );
	OUT_4G_F_Latch <= NOT(OUT_5G_E AND OUT_4H_NoPin );

	SMS_DEZ_3G: entity SMS_DEZ
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => PS_CONS_MX_X3_POS,	-- Pin Q
		ACSET => PS_CONS_MX_X_DRIVE_1,	-- Pin R
		GATEOFF => OUT_1H_B,	-- Pin L
		DCRESET => MS_CONS_MX_X_DC_RESET,	-- Pin P
		OUTOFF => OUT_3G_C,
		DCRFORCE => OPEN,
		OUTON => OPEN,
		DCSET => OPEN,
		DCSFORCE => OPEN );

	OUT_5H_C <= NOT(MS_CONS_ALTER_MX_GATE AND MS_CONS_INQUIRY_MX_GATE AND MS_CONS_PRG_PRT_OUT_MX_GATE );
	OUT_4H_NoPin <= NOT(OUT_5H_C AND PS_CONS_CLOCK_4_POS );
	OUT_1H_B <= NOT OUT_3G_C;

	MS_CONS_MX_X6_POS <= OUT_1A_C;
	PS_CONS_MX_X6_POS <= OUT_1B_A;
	PS_CONS_MX_X5_POS <= OUT_1E_R;
	MS_CONS_GATE_POS_30 <= OUT_5G_E;
	PS_CONS_MX_X4_POS <= OUT_1H_B;

	Latch_5G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5G_E_Latch,
		Q => OUT_5G_E,
		QBar => OPEN );

	Latch_4G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4G_F_Latch,
		Q => OUT_4G_F,
		QBar => OPEN );


end;