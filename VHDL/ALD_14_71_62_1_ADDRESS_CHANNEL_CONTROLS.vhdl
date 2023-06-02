-- VHDL for IBM SMS ALD page 14.71.62.1
-- Title: ADDRESS CHANNEL CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/16/2022 1:53:51 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_71_62_1_ADDRESS_CHANNEL_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_LOGIC_GATE_J:	 in STD_LOGIC;
		MS_1401_DOT_X_CYCLE_DOT_A_RING_4_TIME:	 in STD_LOGIC;
		MS_1401_DOT_I_CYCLE_DOT_I_RING_5_OR_10:	 in STD_LOGIC;
		MS_ADDRESS_SET_ROUTINE:	 in STD_LOGIC;
		PS_LOGIC_GATE_K:	 in STD_LOGIC;
		MS_1401_MODE_1:	 in STD_LOGIC;
		PS_OP_OR_OP_MOD_POSITION:	 in STD_LOGIC;
		PS_A_RING_4_TIME:	 in STD_LOGIC;
		PS_X_CYCLE:	 in STD_LOGIC;
		PS_A_RING_6_TIME:	 in STD_LOGIC;
		PS_I_RING_1_OR_6_TIME:	 in STD_LOGIC;
		PS_LOGIC_GATE_H:	 in STD_LOGIC;
		MS_I_CYCLE:	 in STD_LOGIC;
		PS_LOGIC_GATE_A_OR_R:	 in STD_LOGIC;
		PS_ZERO_TO_ADDR_CH:	 out STD_LOGIC);
end ALD_14_71_62_1_ADDRESS_CHANNEL_CONTROLS;

architecture behavioral of ALD_14_71_62_1_ADDRESS_CHANNEL_CONTROLS is 

	signal OUT_4A_B: STD_LOGIC;
	signal OUT_4B_G: STD_LOGIC;
	signal OUT_4C_C: STD_LOGIC;
	signal OUT_2C_G: STD_LOGIC;
	signal OUT_4D_F: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;
	signal OUT_3F_F: STD_LOGIC;
	signal OUT_2G_E: STD_LOGIC;
	signal OUT_3H_R: STD_LOGIC;
	signal OUT_3I_C: STD_LOGIC;
	signal OUT_2I_B: STD_LOGIC;
	signal OUT_DOT_4B: STD_LOGIC;
	signal OUT_DOT_4C: STD_LOGIC;
	signal OUT_DOT_3F: STD_LOGIC;
	signal OUT_DOT_1C: STD_LOGIC;
	signal OUT_DOT_3H: STD_LOGIC;

begin

	OUT_4A_B <= NOT PS_LOGIC_GATE_J;
	OUT_4B_G <= NOT(MS_1401_DOT_X_CYCLE_DOT_A_RING_4_TIME AND MS_1401_DOT_I_CYCLE_DOT_I_RING_5_OR_10 );
	OUT_4C_C <= NOT(MS_1401_DOT_I_CYCLE_DOT_I_RING_5_OR_10 AND MS_1401_DOT_X_CYCLE_DOT_A_RING_4_TIME );
	OUT_2C_G <= NOT(OUT_DOT_4B AND OUT_DOT_4C );
	OUT_4D_F <= NOT PS_LOGIC_GATE_K;
	OUT_3E_C <= NOT(MS_1401_MODE_1 AND PS_OP_OR_OP_MOD_POSITION AND MS_ADDRESS_SET_ROUTINE );
	OUT_3F_F <= NOT PS_LOGIC_GATE_A_OR_R;
	OUT_2G_E <= NOT(OUT_DOT_3F AND OUT_DOT_3H );
	OUT_3H_R <= NOT MS_I_CYCLE;
	OUT_3I_C <= NOT PS_LOGIC_GATE_A_OR_R;
	OUT_2I_B <= NOT MS_ADDRESS_SET_ROUTINE;
	OUT_DOT_4B <= OUT_4A_B OR OUT_4B_G;
	OUT_DOT_4C <= OUT_4C_C OR OUT_4D_F;
	OUT_DOT_3F <= OUT_3E_C OR OUT_3F_F;
	OUT_DOT_1C <= OUT_2C_G OR OUT_2G_E;
	OUT_DOT_3H <= OUT_3H_R OR OUT_3I_C OR OUT_2I_B;

	PS_ZERO_TO_ADDR_CH <= OUT_DOT_1C;


end;
