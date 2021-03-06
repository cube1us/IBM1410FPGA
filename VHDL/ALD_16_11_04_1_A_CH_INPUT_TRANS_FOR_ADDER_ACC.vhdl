-- VHDL for IBM SMS ALD page 16.11.04.1
-- Title: A CH INPUT TRANS FOR ADDER-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/28/2020 4:39:49 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_11_04_1_A_CH_INPUT_TRANS_FOR_ADDER_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PB_TRUE_ADD_A:	 in STD_LOGIC;
		PB_A_CH_4_BIT:	 in STD_LOGIC;
		PB_A_CH_NOT_2_BIT:	 in STD_LOGIC;
		PB_COMP_ADD_A:	 in STD_LOGIC;
		MB_ADD_AQ4:	 out STD_LOGIC);
end ALD_16_11_04_1_A_CH_INPUT_TRANS_FOR_ADDER_ACC;

architecture behavioral of ALD_16_11_04_1_A_CH_INPUT_TRANS_FOR_ADDER_ACC is 

	signal OUT_4C_A: STD_LOGIC;
	signal OUT_4E_B: STD_LOGIC;
	signal OUT_DOT_1C: STD_LOGIC;

begin

	OUT_4C_A <= NOT(PB_TRUE_ADD_A AND PB_A_CH_NOT_2_BIT AND PB_A_CH_4_BIT );
	OUT_4E_B <= NOT(PB_A_CH_4_BIT AND PB_A_CH_NOT_2_BIT AND PB_COMP_ADD_A );
	OUT_DOT_1C <= OUT_4C_A AND OUT_4E_B;

	MB_ADD_AQ4 <= OUT_DOT_1C;


end;
