-- VHDL for IBM SMS ALD page 12.12.51.1
-- Title: LAST EXECUTE CYCLE-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/28/2020 12:52:54 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_51_1_LAST_EXECUTE_CYCLE_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_SET_DOLLAR_SIGN_STAR_EDIT:	 in STD_LOGIC;
		PS_B_CYCLE_1:	 in STD_LOGIC;
		PS_DATA_MOVE_LAST_EXECUTE:	 in STD_LOGIC;
		PS_DATA_MOVE_OP_CODE:	 in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_I_O:	 in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_ARITH:	 in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_TLU:	 in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_BR_CND:	 in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_EDIT:	 in STD_LOGIC;
		PS_WORD_MARK_OP_CODES:	 in STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_CODE:	 in STD_LOGIC;
		PS_A_RING_6_TIME:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		PS_A_RING_4_TIME:	 in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES:	 in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE:	 out STD_LOGIC;
		MS_DATA_MOVE_LAST_EX_CYCLE:	 out STD_LOGIC;
		MS_WORD_MARK_OP_DOT_B_CYCLE:	 out STD_LOGIC;
		MS_LAST_EXECUTE_CYCLE:	 out STD_LOGIC);
end ALD_12_12_51_1_LAST_EXECUTE_CYCLE_ACC;

architecture behavioral of ALD_12_12_51_1_LAST_EXECUTE_CYCLE_ACC is 

	signal OUT_4C_D: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_1C_B: STD_LOGIC;
	signal OUT_4D_G: STD_LOGIC;
	signal OUT_4F_E: STD_LOGIC;
	signal OUT_2F_D: STD_LOGIC;
	signal OUT_1F_C: STD_LOGIC;
	signal OUT_4G_C: STD_LOGIC;
	signal OUT_DOT_2C: STD_LOGIC;

begin

	OUT_4C_D <= NOT(PS_DATA_MOVE_OP_CODE AND PS_B_CYCLE_1 AND PS_DATA_MOVE_LAST_EXECUTE );
	OUT_2C_C <= NOT(OUT_4C_D AND MS_SET_DOLLAR_SIGN_STAR_EDIT AND OUT_4D_G );
	OUT_1C_B <= OUT_DOT_2C;
	OUT_4D_G <= NOT(PS_WORD_MARK_OP_CODES AND PS_B_CYCLE_1 );
	OUT_4F_E <= NOT(PS_STORE_ADDR_REGS_OP_CODE AND PS_A_RING_6_TIME AND PS_1ST_SCAN );
	OUT_2F_D <= NOT(OUT_4F_E AND OUT_4G_C );
	OUT_1F_C <= NOT(OUT_1C_B );
	OUT_4G_C <= NOT(PS_1ST_SCAN AND PS_A_RING_4_TIME AND PS_1401_STORE_AR_OP_CODES );
	OUT_DOT_2C <= OUT_2C_C OR PS_LAST_EXECUTE_CYCLE_STAR_I_O OR PS_LAST_EXECUTE_CYCLE_STAR_ARITH OR PS_LAST_EXECUTE_CYCLE_STAR_TLU OR PS_LAST_EXECUTE_CYCLE_STAR_BR_CND OR PS_LAST_EXECUTE_CYCLE_STAR_EDIT OR OUT_2F_D;

	MS_DATA_MOVE_LAST_EX_CYCLE <= OUT_4C_D;
	PS_LAST_EXECUTE_CYCLE <= OUT_1C_B;
	MS_WORD_MARK_OP_DOT_B_CYCLE <= OUT_4D_G;
	MS_LAST_EXECUTE_CYCLE <= OUT_1F_C;


end;
