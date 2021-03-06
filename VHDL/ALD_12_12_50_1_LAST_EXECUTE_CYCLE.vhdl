-- VHDL for IBM SMS ALD page 12.12.50.1
-- Title: LAST EXECUTE CYCLE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/28/2020 12:52:40 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_50_1_LAST_EXECUTE_CYCLE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_A_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_A_BIT:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_B_BIT:	 in STD_LOGIC;
		PS_OP_MOD_REG_8_BIT:	 in STD_LOGIC;
		PS_OP_MOD_REG_A_BIT:	 in STD_LOGIC;
		PS_A_CH_RECORD_MARK:	 in STD_LOGIC;
		PS_A_CH_GROUP_MARK_DOT_WM:	 in STD_LOGIC;
		MS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD:	 in STD_LOGIC;
		PS_A_CH_WM_BIT:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_8_BIT:	 in STD_LOGIC;
		PS_OP_MOD_REG_B_BIT:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_2:	 in STD_LOGIC;
		PS_DATA_MOVE_LAST_EXECUTE:	 out STD_LOGIC);
end ALD_12_12_50_1_LAST_EXECUTE_CYCLE;

architecture behavioral of ALD_12_12_50_1_LAST_EXECUTE_CYCLE is 

	signal OUT_5A_NoPin: STD_LOGIC;
	signal OUT_3B_F: STD_LOGIC;
	signal OUT_3C_K: STD_LOGIC;
	signal OUT_3D_E: STD_LOGIC;
	signal OUT_1D_G: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_3H_C: STD_LOGIC;
	signal OUT_1H_G: STD_LOGIC;
	signal OUT_3I_D: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;

begin

	OUT_5A_NoPin <= NOT(PS_A_CH_NOT_WM_BIT AND PS_B_CH_NOT_WM_BIT );
	OUT_3B_F <= NOT(OUT_5A_NoPin AND PS_OP_MOD_REG_8_BIT );
	OUT_3C_K <= NOT(PS_OP_MOD_REG_NOT_A_BIT AND PS_OP_MOD_REG_NOT_B_BIT );
	OUT_3D_E <= NOT(PS_OP_MOD_REG_A_BIT AND PS_OP_MOD_REG_8_BIT AND PS_A_CH_RECORD_MARK );
	OUT_1D_G <= NOT(OUT_3D_E AND OUT_DOT_3C AND OUT_3E_D );
	OUT_3E_D <= NOT(PS_OP_MOD_REG_B_BIT AND PS_A_CH_GROUP_MARK_DOT_WM AND PS_OP_MOD_REG_8_BIT );
	OUT_3H_C <= NOT(PS_OP_MOD_REG_A_BIT AND PS_OP_MOD_REG_NOT_8_BIT AND PS_A_CH_WM_BIT );
	OUT_1H_G <= NOT(OUT_3H_C AND MS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD AND OUT_3I_D );
	OUT_3I_D <= NOT(PS_OP_MOD_REG_B_BIT AND PS_OP_MOD_REG_NOT_8_BIT AND PS_B_CH_WM_BIT_2 );
	OUT_DOT_3C <= OUT_3B_F OR OUT_3C_K;
	OUT_DOT_1D <= OUT_1D_G OR OUT_1H_G;

	PS_DATA_MOVE_LAST_EXECUTE <= OUT_DOT_1D;


end;
