-- VHDL for IBM SMS ALD page 18.14.09.1
-- Title: OP AND OP MOD REG SET CHK DEV
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/13/2020 5:07:39 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_18_14_09_1_OP_AND_OP_MOD_REG_SET_CHK_DEV is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_I_RING_1_TIME:	 in STD_LOGIC;
		PS_2_CHAR_ONLY_OP_CODES:	 in STD_LOGIC;
		PS_I_CYCLE:	 in STD_LOGIC;
		PS_1_ADDR_PLUS_MOD_OP_CODES:	 in STD_LOGIC;
		PS_I_RING_6_TIME:	 in STD_LOGIC;
		MS_STORAGE_SCAN_ROUTINE:	 in STD_LOGIC;
		PS_A_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PS_I_RING_11_TIME:	 in STD_LOGIC;
		PS_2_ADDR_PLUS_MOD_OP_CODES:	 in STD_LOGIC;
		MS_1401_DOT_I_CYCLE:	 in STD_LOGIC;
		PS_B_CH_NOT_WM_BIT:	 in STD_LOGIC;
		MS_I_RING_OP_TIME:	 in STD_LOGIC;
		PS_I_RING_OP_TIME:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_2:	 in STD_LOGIC;
		PS_OP_OR_OP_MOD_POSITION:	 out STD_LOGIC;
		MS_CHECK_OP_MOD_SET:	 out STD_LOGIC;
		MS_CHECK_OP_REG_SET:	 out STD_LOGIC);
end ALD_18_14_09_1_OP_AND_OP_MOD_REG_SET_CHK_DEV;

architecture behavioral of ALD_18_14_09_1_OP_AND_OP_MOD_REG_SET_CHK_DEV is 

	signal OUT_5A_C: STD_LOGIC;
	signal OUT_5B_G: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_2B_C: STD_LOGIC;
	signal OUT_5C_K: STD_LOGIC;
	signal OUT_3C_K: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_3D_P: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;
	signal OUT_3F_P: STD_LOGIC;
	signal OUT_DOT_3B: STD_LOGIC;
	signal OUT_DOT_1B: STD_LOGIC;
	signal OUT_DOT_1E: STD_LOGIC;

begin

	OUT_5A_C <= NOT(PS_I_RING_1_TIME AND PS_2_CHAR_ONLY_OP_CODES );
	OUT_5B_G <= NOT(PS_1_ADDR_PLUS_MOD_OP_CODES AND PS_I_RING_6_TIME );
	OUT_3B_D <= NOT(OUT_5A_C AND OUT_5B_G AND OUT_5C_K );
	OUT_2B_C <= NOT(PS_I_CYCLE AND OUT_DOT_3B AND PS_LOGIC_GATE_F_1 );
	OUT_5C_K <= NOT(PS_I_RING_11_TIME AND PS_2_ADDR_PLUS_MOD_OP_CODES );
	OUT_3C_K <= NOT(MS_1401_DOT_I_CYCLE AND MS_STORAGE_SCAN_ROUTINE );
	OUT_2C_D <= NOT(MS_I_RING_OP_TIME AND MS_STORAGE_SCAN_ROUTINE AND PS_B_CH_NOT_WM_BIT );
	OUT_3D_P <= NOT(PS_A_CH_NOT_WM_BIT AND MS_I_RING_OP_TIME );
	OUT_3E_C <= NOT(PS_I_RING_OP_TIME AND PS_I_CYCLE );
	OUT_3F_P <= NOT(PS_LOGIC_GATE_F_1 AND PS_B_CH_WM_BIT_2 );
	OUT_DOT_3B <= OUT_3B_D OR OUT_3C_K OR OUT_3D_P;
	OUT_DOT_1B <= OUT_2B_C OR OUT_2C_D;
	OUT_DOT_1E <= OUT_3E_C OR OUT_3F_P;

	PS_OP_OR_OP_MOD_POSITION <= OUT_DOT_3B;
	MS_CHECK_OP_MOD_SET <= OUT_DOT_1B;
	MS_CHECK_OP_REG_SET <= OUT_DOT_1E;


end;
