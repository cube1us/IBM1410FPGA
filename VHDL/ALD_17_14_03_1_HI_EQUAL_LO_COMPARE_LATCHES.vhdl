-- VHDL for IBM SMS ALD page 17.14.03.1
-- Title: HI-EQUAL-LO COMPARE LATCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/10/2020 12:26:05 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_14_03_1_HI_EQUAL_LO_COMPARE_LATCHES is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_COMPUTER_RESET_1:	 in STD_LOGIC;
		PS_SET_HIGH_CY:	 in STD_LOGIC;
		MS_EQUAL_LOW_LATCHES_RESET:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_CMP_EQUAL:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		PS_EQUAL_LOW_LATCHES_SET:	 in STD_LOGIC;
		PS_CMP_EQUAL:	 in STD_LOGIC;
		MS_1401_MODE:	 in STD_LOGIC;
		MS_SET_HIGH_CY:	 in STD_LOGIC;
		PS_UNITS_LATCH:	 in STD_LOGIC;
		PS_1401_MODE:	 in STD_LOGIC;
		PS_COMPARE_OP_CODE:	 in STD_LOGIC;
		PS_I_RING_4_TIME:	 in STD_LOGIC;
		PS_EQUAL:	 out STD_LOGIC;
		MS_EQUAL:	 out STD_LOGIC;
		LAMP_15A1C12:	 out STD_LOGIC);
end ALD_17_14_03_1_HI_EQUAL_LO_COMPARE_LATCHES;

architecture behavioral of ALD_17_14_03_1_HI_EQUAL_LO_COMPARE_LATCHES is 

	signal OUT_1A_C: STD_LOGIC;
	signal OUT_4B_K: STD_LOGIC;
	signal OUT_3B_P: STD_LOGIC;
	signal OUT_3B_P_Latch: STD_LOGIC;
	signal OUT_2B_NoPin: STD_LOGIC;
	signal OUT_2B_NoPin_Latch: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_1C_B: STD_LOGIC;
	signal OUT_4D_G: STD_LOGIC;
	signal OUT_2D_B: STD_LOGIC;
	signal OUT_4E_C: STD_LOGIC;
	signal OUT_4F_G: STD_LOGIC;
	signal OUT_4G_G: STD_LOGIC;
	signal OUT_4H_E: STD_LOGIC;
	signal OUT_DOT_3B: STD_LOGIC;
	signal OUT_DOT_4D: STD_LOGIC;
	signal OUT_DOT_4F: STD_LOGIC;

begin

	OUT_1A_C <= NOT OUT_DOT_3B;
	OUT_4B_K <= NOT(PS_LOGIC_GATE_F_1 AND PS_SET_HIGH_CY );
	OUT_3B_P_Latch <= NOT(OUT_4B_K AND MS_COMPUTER_RESET_1 AND OUT_2B_NoPin );
	OUT_2B_NoPin_Latch <= NOT(OUT_DOT_3B AND OUT_DOT_4F AND OUT_4H_E );
	OUT_3C_C <= NOT(MS_EQUAL_LOW_LATCHES_RESET AND OUT_DOT_4D );
	OUT_1C_B <= NOT OUT_2B_NoPin;
	OUT_4D_G <= NOT(PS_LOGIC_GATE_F_1 AND MS_CMP_EQUAL );
	OUT_2D_B <= NOT OUT_1C_B;
	LAMP_15A1C12 <= OUT_2D_B;
	OUT_4E_C <= NOT(PS_2ND_CLOCK_PULSE_2 AND PS_EQUAL_LOW_LATCHES_SET );
	OUT_4F_G <= NOT(PS_CMP_EQUAL AND PS_EQUAL_LOW_LATCHES_SET AND PS_LOGIC_GATE_F_1 );
	OUT_4G_G <= NOT(MS_1401_MODE AND MS_SET_HIGH_CY AND PS_UNITS_LATCH );
	OUT_4H_E <= NOT(PS_1401_MODE AND PS_COMPARE_OP_CODE AND PS_I_RING_4_TIME );
	OUT_DOT_3B <= OUT_3B_P OR OUT_3C_C;
	OUT_DOT_4D <= OUT_4D_G OR OUT_4E_C;
	OUT_DOT_4F <= OUT_4F_G OR OUT_4G_G;

	PS_EQUAL <= OUT_1A_C;
	MS_EQUAL <= OUT_1C_B;

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_P_Latch,
		Q => OUT_3B_P,
		QBar => OPEN );

	Latch_2B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2B_NoPin_Latch,
		Q => OUT_2B_NoPin,
		QBar => OPEN );


end;
