-- VHDL for IBM SMS ALD page 11.20.01.1
-- Title: I RING OP TIME
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 12:57:54 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_20_01_1_I_RING_OP_TIME is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_I_RING_CTRL:	 in STD_LOGIC;
		MS_I_RING_CTRL:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		MS_I_RING_ADV:	 in STD_LOGIC;
		PS_I_RING_RESET:	 in STD_LOGIC;
		MS_I_RING_OP_TIME:	 out STD_LOGIC;
		PS_I_RING_OP_TIME:	 out STD_LOGIC;
		PS_I_RING_OFF_ADVANCE_1:	 out STD_LOGIC;
		PS_I_RING_OFF_ADVANCE_2:	 out STD_LOGIC;
		PS_I_RING_ON_ADVANCE_1:	 out STD_LOGIC;
		MS_I_RING_RESET_1:	 out STD_LOGIC;
		PS_I_RING_ON_ADVANCE_2:	 out STD_LOGIC;
		MS_I_RING_RESET_2:	 out STD_LOGIC;
		LAMP_15A1A01:	 out STD_LOGIC);
end ALD_11_20_01_1_I_RING_OP_TIME;

architecture behavioral of ALD_11_20_01_1_I_RING_OP_TIME is 

	signal OUT_2A_K: STD_LOGIC;
	signal OUT_5B_H: STD_LOGIC;
	signal OUT_5B_E: STD_LOGIC;
	signal OUT_3B_H: STD_LOGIC;
	signal OUT_3C_A: STD_LOGIC;
	signal OUT_5D_R: STD_LOGIC;
	signal OUT_5E_F: STD_LOGIC;
	signal OUT_5F_B: STD_LOGIC;
	signal OUT_5G_D: STD_LOGIC;
	signal OUT_3G_R: STD_LOGIC;
	signal OUT_3H_C: STD_LOGIC;

begin

	OUT_2A_K <= NOT OUT_3B_H;
	LAMP_15A1A01 <= OUT_2A_K;

	SMS_DEZ_5B: entity SMS_DEZ
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => PS_I_RING_CTRL,	-- Pin A
		ACSET => OUT_5F_B,	-- Pin G
		GATEOFF => MS_I_RING_CTRL,	-- Pin F
		DCRESET => MS_PROGRAM_RESET_1,	-- Pin B
		OUTON => OUT_5B_H,
		OUTOFF => OUT_5B_E,
		DCRFORCE => OPEN );


	SMS_AEK_3B: entity SMS_AEK
	    port map (
		IN1 => OUT_5B_H,	-- Pin P
		OUT1 => OUT_3B_H,
		IN2 => OPEN );


	SMS_AEK_3C: entity SMS_AEK
	    port map (
		IN1 => OUT_5B_E,	-- Pin F
		OUT1 => OUT_3C_A,
		IN2 => OPEN );

	OUT_5D_R <= NOT MS_I_RING_ADV;
	OUT_5E_F <= NOT MS_I_RING_ADV;
	OUT_5F_B <= NOT MS_I_RING_ADV;
	OUT_5G_D <= NOT MS_I_RING_ADV;
	OUT_3G_R <= NOT PS_I_RING_RESET;
	OUT_3H_C <= NOT PS_I_RING_RESET;

	MS_I_RING_OP_TIME <= OUT_3B_H;
	PS_I_RING_OP_TIME <= OUT_3C_A;
	PS_I_RING_OFF_ADVANCE_1 <= OUT_5D_R;
	PS_I_RING_OFF_ADVANCE_2 <= OUT_5E_F;
	PS_I_RING_ON_ADVANCE_1 <= OUT_5F_B;
	PS_I_RING_ON_ADVANCE_2 <= OUT_5G_D;
	MS_I_RING_RESET_1 <= OUT_3G_R;
	MS_I_RING_RESET_2 <= OUT_3H_C;


end;