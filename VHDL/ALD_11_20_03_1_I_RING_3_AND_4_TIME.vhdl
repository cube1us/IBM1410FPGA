-- VHDL for IBM SMS ALD page 11.20.03.1
-- Title: I RING 3 AND 4 TIME
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 12:59:58 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_20_03_1_I_RING_3_AND_4_TIME is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_I_RING_2_TIME:	 in STD_LOGIC;
		PS_I_RING_OFF_ADVANCE_1:	 in STD_LOGIC;
		MS_I_RING_RESET_1:	 in STD_LOGIC;
		MS_I_RING_2_TIME:	 in STD_LOGIC;
		PS_I_RING_ON_ADVANCE_1:	 in STD_LOGIC;
		MS_I_RING_3_TIME:	 out STD_LOGIC;
		PS_I_RING_3_TIME:	 out STD_LOGIC;
		MS_I_RING_4_TIME:	 out STD_LOGIC;
		PS_I_RING_4_TIME:	 out STD_LOGIC;
		LAMP_15A1D01:	 out STD_LOGIC;
		LAMP_15A1E01:	 out STD_LOGIC);
end ALD_11_20_03_1_I_RING_3_AND_4_TIME;

architecture behavioral of ALD_11_20_03_1_I_RING_3_AND_4_TIME is 

	signal OUT_2A_A: STD_LOGIC;
	signal OUT_5B_F: STD_LOGIC;
	signal OUT_5B_B: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_5F_F: STD_LOGIC;
	signal OUT_5F_B: STD_LOGIC;
	signal OUT_3F_D: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;

begin

	OUT_2A_A <= NOT OUT_3B_D;
	LAMP_15A1D01 <= OUT_2A_A;

	SMS_DEY_5B: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => PS_I_RING_2_TIME,	-- Pin K
		ACSET => PS_I_RING_ON_ADVANCE_1,	-- Pin H
		GATEOFF => MS_I_RING_2_TIME,	-- Pin E
		ACRESET => PS_I_RING_OFF_ADVANCE_1,	-- Pin A
		DCRESET => MS_I_RING_RESET_1,	-- Pin P
		OUTON => OUT_5B_F,
		OUTOFF => OUT_5B_B,
		GROUND => OPEN,
		DCSFORCE => OPEN,
		DCRFORCE => OPEN );

	OUT_3B_D <= NOT OUT_5B_F;
	OUT_3C_C <= NOT OUT_5B_B;
	OUT_2E_D <= NOT OUT_3F_D;
	LAMP_15A1E01 <= OUT_2E_D;

	SMS_DEY_5F: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => OUT_3C_C,	-- Pin K
		ACSET => PS_I_RING_ON_ADVANCE_1,	-- Pin H
		GATEOFF => OUT_3B_D,	-- Pin E
		ACRESET => PS_I_RING_OFF_ADVANCE_1,	-- Pin A
		DCRESET => MS_I_RING_RESET_1,	-- Pin P
		OUTON => OUT_5F_F,
		OUTOFF => OUT_5F_B,
		GROUND => OPEN,
		DCSFORCE => OPEN,
		DCRFORCE => OPEN );

	OUT_3F_D <= NOT OUT_5F_F;
	OUT_3G_C <= NOT OUT_5F_B;

	MS_I_RING_3_TIME <= OUT_3B_D;
	PS_I_RING_3_TIME <= OUT_3C_C;
	MS_I_RING_4_TIME <= OUT_3F_D;
	PS_I_RING_4_TIME <= OUT_3G_C;


end;