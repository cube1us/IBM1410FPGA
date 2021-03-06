-- VHDL for IBM SMS ALD page 14.71.11.1
-- Title: B ADDRESS REG SET CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/5/2020 9:14:06 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_71_11_1_B_ADDRESS_REG_SET_CONTROLS_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MV_CONS_ADDRESS_ENTRY_B_AR:	 in STD_LOGIC;
		MS_STOPPED_AT_CYCLE_END:	 in STD_LOGIC;
		PS_B_OR_E_OR_F_CYCLE_CTRL:	 in STD_LOGIC;
		PS_LOGIC_GATE_B_OR_C:	 in STD_LOGIC;
		PS_B_OR_E_OR_F_CYCLE:	 in STD_LOGIC;
		PS_LOGIC_GATE_D_OR_E_OR_F:	 in STD_LOGIC;
		PS_INDEX_B_AR:	 in STD_LOGIC;
		PS_INDEX_GATE:	 in STD_LOGIC;
		PS_ADDR_DOUBLE_OP_CODES:	 in STD_LOGIC;
		PS_1ST_ADDRESS:	 in STD_LOGIC;
		PS_INSN_RO_GATE:	 in STD_LOGIC;
		PS_2ND_ADDRESS:	 in STD_LOGIC;
		PS_RD_2ND_ADDR_TO_B_AND_D_AR:	 in STD_LOGIC;
		PS_SET_B_AR:	 out STD_LOGIC;
		MS_1ST_ADDR_SET_B_AND_D_AR:	 out STD_LOGIC;
		MS_2ND_ADDR_SET_B_AND_D_AR:	 out STD_LOGIC);
end ALD_14_71_11_1_B_ADDRESS_REG_SET_CONTROLS_ACC;

architecture behavioral of ALD_14_71_11_1_B_ADDRESS_REG_SET_CONTROLS_ACC is 

	signal OUT_4A_A: STD_LOGIC;
	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_4C_A: STD_LOGIC;
	signal OUT_2C_H: STD_LOGIC;
	signal OUT_5D_P: STD_LOGIC;
	signal OUT_4D_D: STD_LOGIC;
	signal OUT_5E_E: STD_LOGIC;
	signal OUT_5F_D: STD_LOGIC;
	signal OUT_DOT_4C: STD_LOGIC;

begin

	OUT_4A_A <= NOT(MV_CONS_ADDRESS_ENTRY_B_AR OR MS_STOPPED_AT_CYCLE_END );
	OUT_5B_NoPin <= NOT(PS_B_OR_E_OR_F_CYCLE_CTRL AND PS_LOGIC_GATE_B_OR_C );
	OUT_5C_NoPin <= NOT(PS_B_OR_E_OR_F_CYCLE AND PS_LOGIC_GATE_D_OR_E_OR_F );
	OUT_4C_A <= NOT(OUT_5B_NoPin AND OUT_5C_NoPin );
	OUT_2C_H <= OUT_DOT_4C;
	OUT_5D_P <= NOT(PS_INDEX_B_AR AND PS_INDEX_GATE );
	OUT_4D_D <= NOT(OUT_5D_P AND OUT_5F_D AND OUT_5E_E );
	OUT_5E_E <= NOT(PS_ADDR_DOUBLE_OP_CODES AND PS_1ST_ADDRESS AND PS_INSN_RO_GATE );
	OUT_5F_D <= NOT(PS_INSN_RO_GATE AND PS_2ND_ADDRESS AND PS_RD_2ND_ADDR_TO_B_AND_D_AR );
	OUT_DOT_4C <= OUT_4A_A OR OUT_4C_A OR OUT_4D_D;

	PS_SET_B_AR <= OUT_2C_H;
	MS_1ST_ADDR_SET_B_AND_D_AR <= OUT_5E_E;
	MS_2ND_ADDR_SET_B_AND_D_AR <= OUT_5F_D;


end;
