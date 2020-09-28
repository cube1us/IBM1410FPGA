-- VHDL for IBM SMS ALD page 16.11.02.1
-- Title: A CH INPUT TRANS FOR ADDER-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/28/2020 4:39:43 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_11_02_1_A_CH_INPUT_TRANS_FOR_ADDER_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PB_A_CH_NOT_8_BIT:	 in STD_LOGIC;
		PB_A_CH_NOT_2_BIT:	 in STD_LOGIC;
		PB_A_CH_NOT_4_BIT:	 in STD_LOGIC;
		PB_COMP_ADD_A:	 in STD_LOGIC;
		PB_A_CH_8_BIT:	 in STD_LOGIC;
		PB_TRUE_ADD_A:	 in STD_LOGIC;
		PB_A_CH_NOT_1_BIT:	 in STD_LOGIC;
		PB_A_CH_2_BIT:	 in STD_LOGIC;
		PB_A_CH_INSERT_PLUS_ZERO:	 in STD_LOGIC;
		MB_ADD_AQ0:	 out STD_LOGIC);
end ALD_16_11_02_1_A_CH_INPUT_TRANS_FOR_ADDER_ACC;

architecture behavioral of ALD_16_11_02_1_A_CH_INPUT_TRANS_FOR_ADDER_ACC is 

	signal OUT_4B_B: STD_LOGIC;
	signal OUT_4D_A: STD_LOGIC;
	signal OUT_4E_B: STD_LOGIC;
	signal OUT_4G_K: STD_LOGIC;
	signal OUT_DOT_1B: STD_LOGIC;

begin

	OUT_4B_B <= NOT(PB_A_CH_NOT_8_BIT AND PB_TRUE_ADD_A AND PB_A_CH_NOT_4_BIT AND PB_A_CH_NOT_2_BIT );
	OUT_4D_A <= NOT(PB_A_CH_NOT_2_BIT AND PB_A_CH_NOT_4_BIT AND PB_A_CH_8_BIT AND PB_COMP_ADD_A );
	OUT_4E_B <= NOT(PB_A_CH_8_BIT AND PB_A_CH_2_BIT AND PB_TRUE_ADD_A AND PB_A_CH_NOT_4_BIT AND PB_A_CH_NOT_1_BIT );
	OUT_4G_K <= NOT PB_A_CH_INSERT_PLUS_ZERO;
	OUT_DOT_1B <= OUT_4B_B AND OUT_4D_A AND OUT_4E_B AND OUT_4G_K;

	MB_ADD_AQ0 <= OUT_DOT_1B;


end;
