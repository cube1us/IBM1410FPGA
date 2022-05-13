-- VHDL for IBM SMS ALD page 15.38.03.1
-- Title: A CHANNEL DATA CONTROL E2
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 5/13/2022 2:33:32 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_38_03_1_A_CHANNEL_DATA_CONTROL_E2 is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_GATE_CONSOLE_TO_ASSEMBLY:	 in STD_LOGIC;
		PS_E_CH_INPUT_MODE:	 in STD_LOGIC;
		MS_CONTROL_REG_DISABLE:	 in STD_LOGIC;
		PS_E_CYCLE:	 in STD_LOGIC;
		PS_GATE_E2_DATA_REG_TO_A_CH:	 out STD_LOGIC;
		LAMP_11C8E14:	 out STD_LOGIC);
end ALD_15_38_03_1_A_CHANNEL_DATA_CONTROL_E2;

architecture behavioral of ALD_15_38_03_1_A_CHANNEL_DATA_CONTROL_E2 is 

	signal OUT_5B_R: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_3B_D_Latch: STD_LOGIC;
	signal OUT_5C_F: STD_LOGIC;
	signal OUT_4C_B: STD_LOGIC;
	signal OUT_4C_B_Latch: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
	signal OUT_2D_K: STD_LOGIC;
	signal OUT_DOT_1B: STD_LOGIC;
	signal OUT_DOT_5C: STD_LOGIC;

begin

	OUT_5B_R <= NOT(PS_E_CH_INPUT_MODE AND MS_CONTROL_REG_DISABLE );
	OUT_3B_D_Latch <= NOT MS_GATE_CONSOLE_TO_ASSEMBLY;
	OUT_5C_F <= NOT PS_E_CYCLE;
	OUT_4C_B_Latch <= NOT OUT_DOT_5C;
	OUT_3D_C <= NOT(OUT_DOT_1B );
	OUT_2D_K <= NOT OUT_3D_C;
	LAMP_11C8E14 <= OUT_2D_K;
	OUT_DOT_1B <= OUT_3B_D OR OUT_4C_B;
	OUT_DOT_5C <= OUT_5B_R OR OUT_5C_F;

	PS_GATE_E2_DATA_REG_TO_A_CH <= OUT_DOT_1B;

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_D_Latch,
		Q => OUT_3B_D,
		QBar => OPEN );

	Latch_4C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4C_B_Latch,
		Q => OUT_4C_B,
		QBar => OPEN );


end;
