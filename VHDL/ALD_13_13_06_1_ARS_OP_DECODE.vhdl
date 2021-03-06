-- VHDL for IBM SMS ALD page 13.13.06.1
-- Title: ARS OP DECODE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/23/2020 4:39:09 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_13_06_1_ARS_OP_DECODE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_OP_REG_ARS_C_BIT:	 in STD_LOGIC;
		PS_OP_DCDR_4_DOT_NOT_2_DOT_NOT_1_B:	 in STD_LOGIC;
		MS_1401_I_O_MOVE_OP:	 in STD_LOGIC;
		PS_OP_DCDR_B_DOT_NOT_A_DOT_NOT_8_B:	 in STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_2_DOT_1_B:	 in STD_LOGIC;
		MS_1401_I_O_LOAD_OP:	 in STD_LOGIC;
		MS_UNIT_CTRL_OP_CODE:	 in STD_LOGIC;
		PS_OP_REG_ARS_NOT_C_BIT:	 in STD_LOGIC;
		MS_1401_M_OP_CODE:	 in STD_LOGIC;
		PS_OP_DCDR_B_DOT_NOT_A_DOT_8_B:	 in STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_1_B:	 in STD_LOGIC;
		MS_1401_L_OP_CODE:	 in STD_LOGIC;
		MS_I_O_MOVE_OP_CODE:	 out STD_LOGIC;
		PS_I_O_MOVE_OR_I_O_LOAD_OP_CODE:	 out STD_LOGIC;
		MS_I_O_LOAD_OP_CODE:	 out STD_LOGIC;
		PS_I_O_LOAD_OP_CODE:	 out STD_LOGIC;
		PS_ANY_M_OR_L_OR_U_OP:	 out STD_LOGIC;
		PS_BRANCH_ON_STATUS_CH_1:	 out STD_LOGIC;
		MS_BRANCH_ON_STATUS_CH_1:	 out STD_LOGIC);
end ALD_13_13_06_1_ARS_OP_DECODE;

architecture behavioral of ALD_13_13_06_1_ARS_OP_DECODE is 

	signal OUT_4A_NoPin: STD_LOGIC;
	signal OUT_3A_R: STD_LOGIC;
	signal OUT_1A_K: STD_LOGIC;
	signal OUT_3B_F: STD_LOGIC;
	signal OUT_1B_P: STD_LOGIC;
	signal OUT_4C_NoPin: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_1C_K: STD_LOGIC;
	signal OUT_3D_R: STD_LOGIC;
	signal OUT_1D_C: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_2E_C: STD_LOGIC;
	signal OUT_1E_D: STD_LOGIC;
	signal OUT_DOT_3A: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;

begin

	OUT_4A_NoPin <= NOT(PS_OP_REG_ARS_C_BIT AND PS_OP_DCDR_4_DOT_NOT_2_DOT_NOT_1_B AND PS_OP_DCDR_B_DOT_NOT_A_DOT_NOT_8_B );
	OUT_3A_R <= NOT OUT_4A_NoPin;
	OUT_1A_K <= NOT OUT_DOT_3A;
	OUT_3B_F <= NOT MS_1401_I_O_MOVE_OP;
	OUT_1B_P <= NOT(OUT_1A_K AND OUT_1C_K );
	OUT_4C_NoPin <= NOT(PS_OP_DCDR_B_DOT_NOT_A_DOT_NOT_8_B AND PS_OP_DCDR_NOT_4_DOT_2_DOT_1_B AND PS_OP_REG_ARS_NOT_C_BIT );
	OUT_3C_D <= NOT OUT_4C_NoPin;
	OUT_1C_K <= NOT OUT_DOT_3C;
	OUT_3D_R <= NOT MS_1401_I_O_LOAD_OP;
	OUT_1D_C <= NOT(OUT_1A_K AND OUT_1C_K AND MS_UNIT_CTRL_OP_CODE );
	OUT_4E_D <= NOT(PS_OP_REG_ARS_NOT_C_BIT AND PS_OP_DCDR_B_DOT_NOT_A_DOT_8_B AND PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_1_B );

	SMS_AEK_2E: entity SMS_AEK
	    port map (
		IN1 => OUT_4E_D,	-- Pin D
		OUT1 => OUT_2E_C,
		IN2 => OPEN );

	OUT_1E_D <= NOT(MS_1401_M_OP_CODE AND MS_1401_L_OP_CODE );
	OUT_DOT_3A <= OUT_3A_R OR OUT_3B_F;
	OUT_DOT_3C <= OUT_3C_D OR OUT_3D_R;
	OUT_DOT_1D <= OUT_1D_C OR OUT_1E_D;

	MS_I_O_MOVE_OP_CODE <= OUT_1A_K;
	PS_I_O_MOVE_OR_I_O_LOAD_OP_CODE <= OUT_1B_P;
	MS_I_O_LOAD_OP_CODE <= OUT_1C_K;
	MS_BRANCH_ON_STATUS_CH_1 <= OUT_4E_D;
	PS_BRANCH_ON_STATUS_CH_1 <= OUT_2E_C;
	PS_I_O_LOAD_OP_CODE <= OUT_DOT_3C;
	PS_ANY_M_OR_L_OR_U_OP <= OUT_DOT_1D;


end;
