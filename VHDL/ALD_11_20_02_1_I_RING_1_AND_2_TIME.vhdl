-- VHDL for IBM SMS ALD page 11.20.02.1
-- Title: I RING 1 AND 2 TIME
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 12:59:13 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_20_02_1_I_RING_1_AND_2_TIME is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_I_RING_OP_TIME:	 in STD_LOGIC;
		PS_I_RING_OFF_ADVANCE_1:	 in STD_LOGIC;
		MS_I_RING_OP_TIME:	 in STD_LOGIC;
		MS_I_RING_RESET_1:	 in STD_LOGIC;
		PS_I_RING_ON_ADVANCE_1:	 in STD_LOGIC;
		MS_I_RING_1_TIME:	 out STD_LOGIC;
		MS_I_RING_1_TIME_1:	 out STD_LOGIC;
		PS_I_RING_1_TIME:	 out STD_LOGIC;
		MS_I_RING_2_TIME:	 out STD_LOGIC;
		PS_I_RING_2_TIME:	 out STD_LOGIC;
		LAMP_15A1B01:	 out STD_LOGIC;
		LAMP_15A1C01:	 out STD_LOGIC);
end ALD_11_20_02_1_I_RING_1_AND_2_TIME;

architecture behavioral of ALD_11_20_02_1_I_RING_1_AND_2_TIME is 

	signal OUT_2A_Q: STD_LOGIC;
	signal OUT_5B_D: STD_LOGIC;
	signal OUT_5B_C: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_3C_A: STD_LOGIC;
	signal OUT_2D_E: STD_LOGIC;
	signal OUT_2F_B: STD_LOGIC;
	signal OUT_5G_F: STD_LOGIC;
	signal OUT_5G_B: STD_LOGIC;
	signal OUT_3G_D: STD_LOGIC;
	signal OUT_3H_C: STD_LOGIC;

begin

	OUT_2A_Q <= OUT_3B_D;

	SMS_DEZ_5B: entity SMS_DEZ
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => PS_I_RING_OP_TIME,	-- Pin Q
		ACSET => PS_I_RING_OFF_ADVANCE_1,	-- Pin R
		GATEOFF => MS_I_RING_OP_TIME,	-- Pin L
		DCRESET => MS_I_RING_RESET_1,	-- Pin P
		OUTON => OUT_5B_D,
		OUTOFF => OUT_5B_C,
		DCSET => OPEN,
		DCSFORCE => OPEN,
		DCRFORCE => OPEN );

	OUT_3B_D <= NOT OUT_5B_D;

	SMS_AEK_3C: entity SMS_AEK
	    port map (
		IN1 => OUT_5B_C,	-- Pin F
		OUT1 => OUT_3C_A,
		IN2 => OPEN );

	OUT_2D_E <= NOT OUT_3B_D;
	LAMP_15A1B01 <= OUT_2D_E;
	OUT_2F_B <= NOT OUT_3G_D;
	LAMP_15A1C01 <= OUT_2F_B;

	SMS_DEY_5G: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => OUT_3C_A,	-- Pin K
		ACSET => PS_I_RING_ON_ADVANCE_1,	-- Pin H
		GATEOFF => OUT_3B_D,	-- Pin E
		ACRESET => PS_I_RING_OFF_ADVANCE_1,	-- Pin A
		DCRESET => MS_I_RING_RESET_1,	-- Pin P
		OUTON => OUT_5G_F,
		OUTOFF => OUT_5G_B,
		GROUND => OPEN,
		DCSFORCE => OPEN,
		DCRFORCE => OPEN );

	OUT_3G_D <= NOT OUT_5G_F;
	OUT_3H_C <= NOT OUT_5G_B;

	MS_I_RING_1_TIME <= OUT_2A_Q;
	MS_I_RING_1_TIME_1 <= OUT_3B_D;
	PS_I_RING_1_TIME <= OUT_3C_A;
	MS_I_RING_2_TIME <= OUT_3G_D;
	PS_I_RING_2_TIME <= OUT_3H_C;


end;