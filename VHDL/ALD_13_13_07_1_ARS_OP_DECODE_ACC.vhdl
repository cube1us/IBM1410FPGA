-- VHDL for IBM SMS ALD page 13.13.07.1
-- Title: ARS OP DECODE-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/23/2020 4:39:12 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_13_07_1_ARS_OP_DECODE_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_OP_REG_ARS_C_BIT:	 in STD_LOGIC;
		PS_OP_DCDR_4_DOT_2_DOT_1_B:	 in STD_LOGIC;
		PS_OP_DCDR_NOT_B_DOT_A_DOT_NOT_8_B:	 in STD_LOGIC;
		PS_OP_DCDR_B_DOT_A_DOT_NOT_8_B:	 in STD_LOGIC;
		PS_OP_REG_ARS_NOT_C_BIT:	 in STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_2_DOT_1_B:	 in STD_LOGIC;
		PS_OP_DCDR_NOT_B_DOT_A_DOT_8_B:	 in STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_NOT_1_B:	 in STD_LOGIC;
		PS_BRANCH_ON_STATUS_CH_2:	 out STD_LOGIC;
		MS_BRANCH_ON_STATUS_CH_2:	 out STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_CODE:	 out STD_LOGIC;
		MS_INTERRUPT_TEST_OP_CODE:	 out STD_LOGIC;
		MS_STORE_ADDR_REGS_OP_CODE:	 out STD_LOGIC;
		PS_TABLE_SEARCH_OP_CODE:	 out STD_LOGIC;
		MS_TABLE_SEARCH_OP_CODE:	 out STD_LOGIC);
end ALD_13_13_07_1_ARS_OP_DECODE_ACC;

architecture behavioral of ALD_13_13_07_1_ARS_OP_DECODE_ACC is 

	signal OUT_4A_E: STD_LOGIC;
	signal OUT_2A_H: STD_LOGIC;
	signal OUT_4C_C: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_4E_H: STD_LOGIC;
	signal OUT_2E_L: STD_LOGIC;
	signal OUT_4F_E: STD_LOGIC;
	signal OUT_1F_C: STD_LOGIC;
	signal OUT_2H_A: STD_LOGIC;
	signal OUT_1I_K: STD_LOGIC;

begin

	OUT_4A_E <= NOT(PS_OP_REG_ARS_C_BIT AND PS_OP_DCDR_NOT_B_DOT_A_DOT_NOT_8_B AND PS_OP_DCDR_4_DOT_2_DOT_1_B );

	SMS_AEK_2A: entity SMS_AEK
	    port map (
		IN1 => OUT_4A_E,	-- Pin P
		OUT1 => OUT_2A_H,
		IN2 => OPEN );

	OUT_4C_C <= NOT(PS_OP_DCDR_4_DOT_2_DOT_1_B AND PS_OP_DCDR_B_DOT_A_DOT_NOT_8_B AND PS_OP_REG_ARS_NOT_C_BIT );

	SMS_AEK_2C: entity SMS_AEK
	    port map (
		IN1 => OUT_4C_C,	-- Pin D
		OUT1 => OUT_2C_C,
		IN2 => OPEN );

	OUT_4E_H <= NOT(PS_OP_REG_ARS_NOT_C_BIT AND PS_OP_DCDR_NOT_B_DOT_A_DOT_NOT_8_B AND PS_OP_DCDR_NOT_4_DOT_2_DOT_1_B );
	OUT_2E_L <= OUT_4F_E;
	OUT_4F_E <= NOT(PS_OP_REG_ARS_C_BIT AND PS_OP_DCDR_NOT_B_DOT_A_DOT_8_B AND PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_NOT_1_B );
	OUT_1F_C <= NOT OUT_2C_C;
	OUT_2H_A <= NOT OUT_4E_H;
	OUT_1I_K <= NOT OUT_2H_A;

	MS_BRANCH_ON_STATUS_CH_2 <= OUT_4A_E;
	PS_BRANCH_ON_STATUS_CH_2 <= OUT_2A_H;
	PS_STORE_ADDR_REGS_OP_CODE <= OUT_2C_C;
	MS_INTERRUPT_TEST_OP_CODE <= OUT_2E_L;
	MS_STORE_ADDR_REGS_OP_CODE <= OUT_1F_C;
	PS_TABLE_SEARCH_OP_CODE <= OUT_2H_A;
	MS_TABLE_SEARCH_OP_CODE <= OUT_1I_K;


end;
