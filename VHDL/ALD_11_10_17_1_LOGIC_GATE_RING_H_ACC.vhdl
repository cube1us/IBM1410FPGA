-- VHDL for IBM SMS ALD page 11.10.17.1
-- Title: LOGIC GATE RING H-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 12:32:44 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_10_17_1_LOGIC_GATE_RING_H_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_LOGIC_RING_ON_ADVANCE_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_G:	 in STD_LOGIC;
		PS_LOGIC_RING_OFF_ADVANCE_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_G:	 in STD_LOGIC;
		MS_PROGRAM_RESET_3:	 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_H:	 out STD_LOGIC;
		PS_LOGIC_GATE_H:	 out STD_LOGIC;
		LAMP_15A1H06:	 out STD_LOGIC);
end ALD_11_10_17_1_LOGIC_GATE_RING_H_ACC;

architecture behavioral of ALD_11_10_17_1_LOGIC_GATE_RING_H_ACC is 

	signal OUT_2A_B: STD_LOGIC;
	signal OUT_4B_F: STD_LOGIC;
	signal OUT_4B_B: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_5E_C: STD_LOGIC;
	signal OUT_4E_R: STD_LOGIC;

begin

	OUT_2A_B <= NOT OUT_3B_D;
	LAMP_15A1H06 <= OUT_2A_B;

	SMS_DEY_4B: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => PS_LOGIC_GATE_G,	-- Pin K
		ACSET => PS_LOGIC_RING_ON_ADVANCE_1,	-- Pin H
		GATEOFF => MS_LOGIC_GATE_G,	-- Pin E
		ACRESET => PS_LOGIC_RING_OFF_ADVANCE_1,	-- Pin A
		DCRESET => MS_PROGRAM_RESET_3,	-- Pin P
		DCRFORCE => OUT_4E_R,	-- Pin T
		OUTON => OUT_4B_F,
		OUTOFF => OUT_4B_B,
		GROUND => OPEN,
		DCSFORCE => OPEN );

	OUT_3B_D <= NOT OUT_4B_F;
	OUT_3C_C <= NOT OUT_4B_B;
	OUT_5E_C <= NOT(OUT_3B_D AND PS_LAST_LOGIC_GATE_1 );
	OUT_4E_R <= NOT OUT_5E_C;

	MS_LOGIC_GATE_H <= OUT_3B_D;
	PS_LOGIC_GATE_H <= OUT_3C_C;


end;
