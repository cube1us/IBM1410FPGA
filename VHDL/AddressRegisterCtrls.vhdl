-- VHDL for IBM SMS ALD group AddressRegisterCtrls
-- Title: AddressRegisterCtrls
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 10/5/2020 12:33:59 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AddressRegisterCtrls is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_A_CYCLE_CTRL: in STD_LOGIC;
		PS_C_CYCLE_CTRL: in STD_LOGIC;
		PS_B_CYCLE_CTRL: in STD_LOGIC;
		PS_D_CYCLE_CTRL: in STD_LOGIC;
		PS_NO_SCAN_CTRL: in STD_LOGIC;
		PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL: in STD_LOGIC;
		PS_MPLY_OP_CODE: in STD_LOGIC;
		PS_MPLY_OR_DIV_OP_CODES: in STD_LOGIC;
		PS_ARITH_TYPE_OP_CODES: in STD_LOGIC;
		MS_TABLE_SEARCH_A_CYCLE_U_CTRL: in STD_LOGIC;
		PS_UNITS_CTRL_LATCH: in STD_LOGIC;
		MS_BODY_CTRL_LATCH: in STD_LOGIC;
		PS_BODY_CTRL_LATCH: in STD_LOGIC;
		MS_EXTENSION_CTRL_LATCH: in STD_LOGIC;
		MS_MQ_CTRL_LATCH: in STD_LOGIC;
		PS_FILE_OP: in STD_LOGIC;
		MS_A_AR_RO_CTRL_STAR_ARITH: out STD_LOGIC;
		MS_B_AR_RO_CTRL_STAR_ARITH: out STD_LOGIC;
		PS_C_AR_RO_CTRL_STAR_ARITH: out STD_LOGIC;
		PS_D_AR_RO_CTRL_STAR_ARITH: out STD_LOGIC;
		MS_MPLY_DOT_NO_SCAN_CTRL_DOT_C_CY_CTRL: out STD_LOGIC);
end AddressRegisterCtrls;


ARCHITECTURE structural of AddressRegisterCtrls is

	 signal PS_D_AR_RO_CTRL_STAR_FILE_CTRL: STD_LOGIC;

BEGIN

Page_16_41_01_1: ENTITY ALD_16_41_01_1_ADDRESS_REGISTER_CTRLS_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_MPLY_OR_DIV_OP_CODES =>
		PS_MPLY_OR_DIV_OP_CODES,
	PS_BODY_CTRL_LATCH =>
		PS_BODY_CTRL_LATCH,
	PS_A_CYCLE_CTRL =>
		PS_A_CYCLE_CTRL,
	MS_EXTENSION_CTRL_LATCH =>
		MS_EXTENSION_CTRL_LATCH,
	MS_BODY_CTRL_LATCH =>
		MS_BODY_CTRL_LATCH,
	MS_MQ_CTRL_LATCH =>
		MS_MQ_CTRL_LATCH,
	PS_UNITS_CTRL_LATCH =>
		PS_UNITS_CTRL_LATCH,
	MS_TABLE_SEARCH_A_CYCLE_U_CTRL =>
		MS_TABLE_SEARCH_A_CYCLE_U_CTRL,
	PS_B_CYCLE_CTRL =>
		PS_B_CYCLE_CTRL,
	PS_ARITH_TYPE_OP_CODES =>
		PS_ARITH_TYPE_OP_CODES,
	PS_C_CYCLE_CTRL =>
		PS_C_CYCLE_CTRL,
	PS_NO_SCAN_CTRL =>
		PS_NO_SCAN_CTRL,
	PS_MPLY_OP_CODE =>
		PS_MPLY_OP_CODE,
	PS_D_AR_RO_CTRL_STAR_FILE_CTRL =>
		PS_D_AR_RO_CTRL_STAR_FILE_CTRL,
	PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL =>
		PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL,
	PS_D_CYCLE_CTRL =>
		PS_D_CYCLE_CTRL,
	MS_A_AR_RO_CTRL_STAR_ARITH =>
		MS_A_AR_RO_CTRL_STAR_ARITH,
	MS_B_AR_RO_CTRL_STAR_ARITH =>
		MS_B_AR_RO_CTRL_STAR_ARITH,
	PS_C_AR_RO_CTRL_STAR_ARITH =>
		PS_C_AR_RO_CTRL_STAR_ARITH,
	MS_MPLY_DOT_NO_SCAN_CTRL_DOT_C_CY_CTRL =>
		MS_MPLY_DOT_NO_SCAN_CTRL_DOT_C_CY_CTRL,
	PS_D_AR_RO_CTRL_STAR_ARITH =>
		PS_D_AR_RO_CTRL_STAR_ARITH
	);

Page_16_41_02_1: ENTITY ALD_16_41_02_1_ADDRESS_REGISTER_CTRLS_FOR_FILE
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_FILE_OP =>
		PS_FILE_OP,
	PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL =>
		PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL,
	PS_D_CYCLE_CTRL =>
		PS_D_CYCLE_CTRL,
	PS_D_AR_RO_CTRL_STAR_FILE_CTRL =>
		PS_D_AR_RO_CTRL_STAR_FILE_CTRL
	);


END;
