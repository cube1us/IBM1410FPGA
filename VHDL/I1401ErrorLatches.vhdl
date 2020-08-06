-- VHDL for IBM SMS ALD group I1401ErrorLatches
-- Title: I1401ErrorLatches
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/6/2020 12:38:07 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity I1401ErrorLatches is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_RESET_READER_ERROR_LATCH: in STD_LOGIC;
		PS_E_CH_CHECK_BUS: in STD_LOGIC;
		MS_PROGRAM_RESET_2: in STD_LOGIC;
		MV_1401_MODE: in STD_LOGIC;
		PS_1401_READ_TRIGGER: in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_B: in STD_LOGIC;
		PS_LOGIC_GATE_E_1: in STD_LOGIC;
		MS_E_CH_READY_BUS: in STD_LOGIC;
		PS_E_CH_BUSY_BUS: in STD_LOGIC;
		PS_E_CH_CONDITION_BUS: in STD_LOGIC;
		PS_1401_MODE: in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_F: in STD_LOGIC;
		PS_E_CH_WRONG_LENGTH_REC_COND: in STD_LOGIC;
		PS_FILE_WRONG_LENGTH_ADDR_CON: in STD_LOGIC;
		PS_E_CH_WLR_STAR_1311_1401: in STD_LOGIC;
		PS_FILE_OP: in STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_EXTENSION: in STD_LOGIC;
		MC_FILE_INVALID_ADDRESS_1405: in STD_LOGIC;
		MS_RESET_PROCESS_CK_LAT: in STD_LOGIC;
		MS_MASTER_ERROR: in STD_LOGIC;
		PS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (12 downTo 0);
		SWITCH_MOM_IO_CHK_RST: in STD_LOGIC;
		PS_1401_READ_ERROR: out STD_LOGIC;
		MS_1401_I_O_CHECK_RESET: out STD_LOGIC;
		PS_FILE_INVALID_ADDRESS: out STD_LOGIC;
		PS_1401_FILE_VALIDITY_CK: out STD_LOGIC;
		PS_1401_FILE_WRONG_LENG_REC: out STD_LOGIC;
		PS_1401_FILE_ADDR_COMPARE: out STD_LOGIC;
		PS_1401_ANY_FILE_CHECK: out STD_LOGIC;
		PS_FILE_BUSY_LATCH: out STD_LOGIC;
		PS_1401_PROCESS_CHECK: out STD_LOGIC);
end I1401ErrorLatches;


ARCHITECTURE structural of I1401ErrorLatches is

BEGIN

Page_13_65_01_1: ENTITY ALD_13_65_01_1_1401_ERROR_LATCHES
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_RESET_READER_ERROR_LATCH =>
		MS_RESET_READER_ERROR_LATCH,
	PS_1401_READ_TRIGGER =>
		PS_1401_READ_TRIGGER,
	PS_E_CH_CHECK_BUS =>
		PS_E_CH_CHECK_BUS,
	PS_E_CH_STATUS_SAMPLE_B =>
		PS_E_CH_STATUS_SAMPLE_B,
	MS_PROGRAM_RESET_2 =>
		MS_PROGRAM_RESET_2,
	MV_1401_MODE =>
		MV_1401_MODE,
	SWITCH_MOM_IO_CHK_RST =>
		SWITCH_MOM_IO_CHK_RST,
	PS_1401_READ_ERROR =>
		PS_1401_READ_ERROR,
	MS_1401_I_O_CHECK_RESET =>
		MS_1401_I_O_CHECK_RESET
	);

Page_13_65_02_1: ENTITY ALD_13_65_02_1_1401_ERROR_LATCHES_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_E_CH_WLR_STAR_1311_1401 =>
		PS_E_CH_WLR_STAR_1311_1401,
	PS_FILE_OP =>
		PS_FILE_OP,
	PS_I_RING_9_TIME =>
		PS_I_RING_HDL_BUS(9),
	PS_FILE_OP_DOT_D_CY_DOT_EXTENSION =>
		PS_FILE_OP_DOT_D_CY_DOT_EXTENSION,
	PS_E_CH_CHECK_BUS =>
		PS_E_CH_CHECK_BUS,
	PS_E_CH_SELECT_UNIT_F =>
		PS_E_CH_SELECT_UNIT_F,
	MS_PROGRAM_RESET_2 =>
		MS_PROGRAM_RESET_2,
	PS_FILE_WRONG_LENGTH_ADDR_CON =>
		PS_FILE_WRONG_LENGTH_ADDR_CON,
	PS_LOGIC_GATE_E_1 =>
		PS_LOGIC_GATE_E_1,
	PS_E_CH_WRONG_LENGTH_REC_COND =>
		PS_E_CH_WRONG_LENGTH_REC_COND,
	PS_E_CH_STATUS_SAMPLE_B =>
		PS_E_CH_STATUS_SAMPLE_B,
	MS_E_CH_READY_BUS =>
		MS_E_CH_READY_BUS,
	PS_E_CH_CONDITION_BUS =>
		PS_E_CH_CONDITION_BUS,
	MC_FILE_INVALID_ADDRESS_1405 =>
		MC_FILE_INVALID_ADDRESS_1405,
	PS_E_CH_BUSY_BUS =>
		PS_E_CH_BUSY_BUS,
	PS_1401_MODE =>
		PS_1401_MODE,
	PS_1401_FILE_VALIDITY_CK =>
		PS_1401_FILE_VALIDITY_CK,
	PS_1401_FILE_WRONG_LENG_REC =>
		PS_1401_FILE_WRONG_LENG_REC,
	PS_1401_FILE_ADDR_COMPARE =>
		PS_1401_FILE_ADDR_COMPARE,
	PS_FILE_INVALID_ADDRESS =>
		PS_FILE_INVALID_ADDRESS,
	PS_1401_ANY_FILE_CHECK =>
		PS_1401_ANY_FILE_CHECK,
	PS_FILE_BUSY_LATCH =>
		PS_FILE_BUSY_LATCH
	);

Page_13_65_03_1: ENTITY ALD_13_65_03_1_1401_ERROR_LATCHES
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_PROGRAM_RESET_2 =>
		MS_PROGRAM_RESET_2,
	MS_RESET_PROCESS_CK_LAT =>
		MS_RESET_PROCESS_CK_LAT,
	MS_MASTER_ERROR =>
		MS_MASTER_ERROR,
	PS_1401_PROCESS_CHECK =>
		PS_1401_PROCESS_CHECK
	);


END;
