-- VHDL for IBM SMS ALD page 14.70.03.1
-- Title: A RING 3 TIME
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/2/2020 11:13:18 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_70_03_1_A_RING_3_TIME is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_CONS_ADDR_REG_EXIT_GATE:	 in STD_LOGIC;
		PS_CONS_MX_Y4_POS:	 in STD_LOGIC;
		MS_CONS_ADDR_REG_EXIT_GATE:	 in STD_LOGIC;
		PS_A_RING_2_TIME:	 in STD_LOGIC;
		PS_A_RING_ADV_A:	 in STD_LOGIC;
		MS_A_RING_2_TIME:	 in STD_LOGIC;
		PS_A_RING_ADV_B:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		PS_ADDR_SCNR_3_POS:	 out STD_LOGIC;
		MS_A_RING_3_TIME:	 out STD_LOGIC;
		PS_A_RING_3_TIME:	 out STD_LOGIC;
		LAMP_15A1C04:	 out STD_LOGIC);
end ALD_14_70_03_1_A_RING_3_TIME;

architecture behavioral of ALD_14_70_03_1_A_RING_3_TIME is 

	signal OUT_3D_NoPin: STD_LOGIC;
	signal OUT_2D_A: STD_LOGIC;
	signal OUT_1D_B: STD_LOGIC;
	signal OUT_3E_NoPin: STD_LOGIC;
	signal OUT_2F_B: STD_LOGIC;
	signal OUT_5G_F: STD_LOGIC;
	signal OUT_5G_B: STD_LOGIC;
	signal OUT_4G_D: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;

begin

	OUT_3D_NoPin <= NOT(PS_CONS_ADDR_REG_EXIT_GATE AND PS_CONS_MX_Y4_POS );
	OUT_2D_A <= NOT(OUT_3D_NoPin AND OUT_3E_NoPin );
	OUT_1D_B <= OUT_2D_A;
	OUT_3E_NoPin <= NOT(MS_CONS_ADDR_REG_EXIT_GATE AND OUT_4H_C );
	OUT_2F_B <= NOT OUT_4G_D;
	LAMP_15A1C04 <= OUT_2F_B;

	SMS_DEY_5G: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => PS_A_RING_2_TIME,	-- Pin K
		ACSET => PS_A_RING_ADV_A,	-- Pin H
		GATEOFF => MS_A_RING_2_TIME,	-- Pin E
		ACRESET => PS_A_RING_ADV_B,	-- Pin A
		DCRESET => MS_PROGRAM_RESET_1,	-- Pin P
		OUTON => OUT_5G_F,
		OUTOFF => OUT_5G_B,
		GROUND => OPEN,
		DCSFORCE => OPEN,
		DCRFORCE => OPEN );

	OUT_4G_D <= NOT OUT_5G_F;
	OUT_4H_C <= NOT OUT_5G_B;

	PS_ADDR_SCNR_3_POS <= OUT_1D_B;
	MS_A_RING_3_TIME <= OUT_4G_D;
	PS_A_RING_3_TIME <= OUT_4H_C;


end;
