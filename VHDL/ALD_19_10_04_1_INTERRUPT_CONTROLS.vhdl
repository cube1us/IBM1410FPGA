-- VHDL for IBM SMS ALD page 19.10.04.1
-- Title: INTERRUPT CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/14/2020 7:46:02 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_19_10_04_1_INTERRUPT_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_INTERRUPT_BRANCH:	 in STD_LOGIC;
		PS_B_CYCLE_1:	 in STD_LOGIC;
		MS_CONTROL_REG_DISABLE:	 in STD_LOGIC;
		MS_INTERRUPT_TEST_OP_CODE:	 in STD_LOGIC;
		MS_INTERRUPT_DOT_B_CYCLE:	 out STD_LOGIC;
		PS_INTERRUPT_TEST_OP_CODE:	 out STD_LOGIC;
		PS_INTERRUPT_TEST_OP_CODE_1:	 out STD_LOGIC);
end ALD_19_10_04_1_INTERRUPT_CONTROLS;

architecture behavioral of ALD_19_10_04_1_INTERRUPT_CONTROLS is 

	signal OUT_5E_D: STD_LOGIC;
	signal OUT_4E_B: STD_LOGIC;
	signal OUT_3H_K: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;

begin

	OUT_5E_D <= NOT(PS_INTERRUPT_BRANCH AND PS_B_CYCLE_1 AND MS_CONTROL_REG_DISABLE );
	OUT_4E_B <= OUT_5E_D;
	OUT_3H_K <= NOT MS_INTERRUPT_TEST_OP_CODE;
	OUT_2H_C <= OUT_3H_K;

	MS_INTERRUPT_DOT_B_CYCLE <= OUT_4E_B;
	PS_INTERRUPT_TEST_OP_CODE <= OUT_3H_K;
	PS_INTERRUPT_TEST_OP_CODE_1 <= OUT_2H_C;


end;
