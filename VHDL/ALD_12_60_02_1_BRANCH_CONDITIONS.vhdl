-- VHDL for IBM SMS ALD page 12.60.02.1
-- Title: BRANCH CONDITIONS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/11/2020 1:15:32 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_60_02_1_BRANCH_CONDITIONS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_OVERFLOW:	 in STD_LOGIC;
		PS_Z_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_COND_TEST_BRANCH_OP_CODE:	 in STD_LOGIC;
		PS_2ND_CND_A_BRANCH:	 in STD_LOGIC;
		PS_BLANK_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_2ND_CND_A_BRANCH_STAR_INTR:	 in STD_LOGIC;
		PS_2ND_CND_A_BRANCH_JRJ:	 in STD_LOGIC;
		PS_OP_MOD_REG_1_BIT:	 in STD_LOGIC;
		PS_E_CH_NOT_READY:	 in STD_LOGIC;
		PS_BRANCH_ON_STATUS_CH_1:	 in STD_LOGIC;
		PS_OP_MOD_REG_2_BIT:	 in STD_LOGIC;
		PS_E_CH_BUSY:	 in STD_LOGIC;
		PS_OP_MOD_REG_4_BIT:	 in STD_LOGIC;
		PS_E_CH_CHECK:	 in STD_LOGIC;
		PS_OP_MOD_REG_8_BIT:	 in STD_LOGIC;
		PS_E_CH_CONDITION:	 in STD_LOGIC;
		MS_GROUP_MARK_OP_MODIFIER:	 in STD_LOGIC;
		PS_OP_MOD_REG_B_BIT:	 in STD_LOGIC;
		PS_E_CH_WRONG_LENGTH_RECORD:	 in STD_LOGIC;
		PS_I_RING_6_TIME:	 in STD_LOGIC;
		PS_STOP_DOT_BRANCH_OP_CODE:	 in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE:	 in STD_LOGIC;
		PS_OP_MOD_REG_A_BIT:	 in STD_LOGIC;
		PS_E_CH_NO_TRANSFER_LATCH:	 in STD_LOGIC;
		PS_I_O_INTLK_RESET_CONDITION:	 out STD_LOGIC;
		MS_J_TYPE_BRANCH_COND:	 out STD_LOGIC;
		MS_2ND_CND_A_BRANCH_GATED:	 out STD_LOGIC);
end ALD_12_60_02_1_BRANCH_CONDITIONS;

architecture behavioral of ALD_12_60_02_1_BRANCH_CONDITIONS is 

	signal OUT_5A_NoPin: STD_LOGIC;
	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_5D_NoPin: STD_LOGIC;
	signal OUT_5E_NoPin: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_5F_NoPin: STD_LOGIC;
	signal OUT_1F_D: STD_LOGIC;
	signal OUT_5G_NoPin: STD_LOGIC;
	signal OUT_2G_D: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;
	signal OUT_5I_NoPin: STD_LOGIC;
	signal OUT_1I_R: STD_LOGIC;
	signal OUT_DOT_3B: STD_LOGIC;

begin

	OUT_5A_NoPin <= NOT(PS_OVERFLOW AND PS_Z_SYMBOL_OP_MODIFIER AND PS_COND_TEST_BRANCH_OP_CODE );
	OUT_5B_NoPin <= NOT(PS_BLANK_SYMBOL_OP_MODIFIER AND PS_COND_TEST_BRANCH_OP_CODE );
	OUT_3B_D <= NOT(OUT_5A_NoPin AND OUT_5B_NoPin AND OUT_5C_NoPin );
	OUT_5C_NoPin <= NOT(PS_OP_MOD_REG_1_BIT AND PS_E_CH_NOT_READY AND PS_BRANCH_ON_STATUS_CH_1 );
	OUT_5D_NoPin <= NOT(PS_OP_MOD_REG_2_BIT AND PS_E_CH_BUSY AND PS_BRANCH_ON_STATUS_CH_1 );
	OUT_5E_NoPin <= NOT(PS_OP_MOD_REG_4_BIT AND PS_E_CH_CHECK AND PS_BRANCH_ON_STATUS_CH_1 );
	OUT_3E_D <= NOT(OUT_5D_NoPin AND OUT_5E_NoPin AND OUT_5F_NoPin );
	OUT_5F_NoPin <= NOT(PS_OP_MOD_REG_8_BIT AND PS_E_CH_CONDITION AND PS_BRANCH_ON_STATUS_CH_1 );
	OUT_1F_D <= NOT(MS_GROUP_MARK_OP_MODIFIER AND OUT_2G_D );
	OUT_5G_NoPin <= NOT(PS_OP_MOD_REG_B_BIT AND PS_E_CH_WRONG_LENGTH_RECORD AND PS_BRANCH_ON_STATUS_CH_1 );
	OUT_2G_D <= NOT(OUT_DOT_3B );
	OUT_5H_NoPin <= NOT(PS_I_RING_6_TIME AND PS_STOP_DOT_BRANCH_OP_CODE );
	OUT_3H_D <= NOT(OUT_5G_NoPin AND OUT_5H_NoPin AND OUT_5I_NoPin );
	OUT_5I_NoPin <= NOT(PS_BRANCH_ON_STATUS_CH_1 AND PS_E_CH_NO_TRANSFER_LATCH AND PS_OP_MOD_REG_A_BIT );
	OUT_1I_R <= NOT(OUT_DOT_3B AND PS_LAST_INSN_RO_CYCLE );
	OUT_DOT_3B <= OUT_3B_D OR PS_2ND_CND_A_BRANCH_STAR_INTR OR PS_2ND_CND_A_BRANCH_JRJ OR PS_2ND_CND_A_BRANCH OR OUT_3E_D OR OUT_3H_D;

	PS_I_O_INTLK_RESET_CONDITION <= OUT_1F_D;
	MS_J_TYPE_BRANCH_COND <= OUT_2G_D;
	MS_2ND_CND_A_BRANCH_GATED <= OUT_1I_R;


end;
