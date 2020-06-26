-- VHDL for IBM SMS ALD page 11.10.11.1
-- Title: LOGIC GATE RING B-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 12:27:43 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_10_11_1_LOGIC_GATE_RING_B_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_LOGIC_RING_ON_ADVANCE_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_A:	 in STD_LOGIC;
		PS_LOGIC_RING_OFF_ADVANCE_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_A:	 in STD_LOGIC;
		MS_PROGRAM_RESET_3:	 in STD_LOGIC;
		PS_LOGIC_GATE_B_1:	 out STD_LOGIC;
		MS_LOGIC_GATE_B:	 out STD_LOGIC;
		PS_LOGIC_GATE_B:	 out STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 out STD_LOGIC;
		LAMP_15A1B06:	 out STD_LOGIC);
end ALD_11_10_11_1_LOGIC_GATE_RING_B_ACC;

architecture behavioral of ALD_11_10_11_1_LOGIC_GATE_RING_B_ACC is 

	signal OUT_2A_E: STD_LOGIC;
	signal OUT_4B_F: STD_LOGIC;
	signal OUT_4B_B: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_1B_C: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_1E_H: STD_LOGIC;

begin

	OUT_2A_E <= NOT OUT_3B_D;
	LAMP_15A1B06 <= OUT_2A_E;

	SMS_DEY_4B: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => PS_LOGIC_GATE_A,	-- Pin K
		ACSET => PS_LOGIC_RING_ON_ADVANCE_1,	-- Pin H
		GATEOFF => MS_LOGIC_GATE_A,	-- Pin E
		ACRESET => PS_LOGIC_RING_OFF_ADVANCE_1,	-- Pin A
		DCRESET => MS_PROGRAM_RESET_3,	-- Pin P
		OUTON => OUT_4B_F,
		OUTOFF => OUT_4B_B,
		GROUND => OPEN,
		DCSFORCE => OPEN,
		DCRFORCE => OPEN );

	OUT_3B_D <= NOT OUT_4B_F;

	SMS_AEK_1B: entity SMS_AEK
	    port map (
		IN1 => OUT_3B_D,	-- Pin D
		OUT1 => OUT_1B_C,
		IN2 => OPEN );

	OUT_3C_C <= NOT OUT_4B_B;

	SMS_AEK_1E: entity SMS_AEK
	    port map (
		IN1 => OUT_3C_C,	-- Pin P
		OUT1 => OUT_1E_H,
		IN2 => OPEN );


	MS_LOGIC_GATE_B <= OUT_3B_D;
	PS_LOGIC_GATE_B_1 <= OUT_1B_C;
	PS_LOGIC_GATE_B <= OUT_3C_C;
	MS_LOGIC_GATE_B_1 <= OUT_1E_H;


end;
