-- VHDL for IBM SMS ALD page 41.30.02.1
-- Title: CONSOLE INQUIRY CONTROL
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/24/2020 6:11:21 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_41_30_02_1_CONSOLE_INQUIRY_CONTROL is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_MASTER_ERROR:	 in STD_LOGIC;
		PS_E_CH_IN_PROCESS:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_T_DOT_INPUT:	 in STD_LOGIC;
		PS_E_CH_MOVE_MODE:	 in STD_LOGIC;
		PS_CONS_MX_32_POS:	 in STD_LOGIC;
		PS_CONSOLE_HOME_POSITION:	 in STD_LOGIC;
		MS_LAST_INSN_RO_CYCLE:	 in STD_LOGIC;
		PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC:	 in STD_LOGIC;
		MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO:	 in STD_LOGIC;
		PS_CONSOLE_READ_OP:	 out STD_LOGIC;
		MS_CONSOLE_READ_OP:	 out STD_LOGIC;
		MS_CONS_MOVE_READ_OP:	 out STD_LOGIC;
		MS_INQUIRY_KEYBOARD_UNLOCK:	 out STD_LOGIC;
		MS_CONS_CANCEL_KEY_RESET:	 out STD_LOGIC;
		MS_CONS_INQUIRY_MX_GATE:	 out STD_LOGIC;
		PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC:	 out STD_LOGIC;
		PS_CONS_RELEASE_OR_CANCEL:	 out STD_LOGIC);
end ALD_41_30_02_1_CONSOLE_INQUIRY_CONTROL;

architecture behavioral of ALD_41_30_02_1_CONSOLE_INQUIRY_CONTROL is 

	signal OUT_4A_R: STD_LOGIC;
	signal OUT_3A_G: STD_LOGIC;
	signal OUT_5B_C: STD_LOGIC;
	signal OUT_5B_C_Latch: STD_LOGIC;
	signal OUT_4B_D: STD_LOGIC;
	signal OUT_4B_D_Latch: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_3D_K: STD_LOGIC;
	signal OUT_3E_B: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_3F_X: STD_LOGIC;
	signal OUT_2F_P: STD_LOGIC;
	signal OUT_1F_C: STD_LOGIC;
	signal OUT_3H_X: STD_LOGIC;

begin

	OUT_4A_R <= NOT OUT_5B_C;
	OUT_3A_G <= NOT(OUT_4A_R );
	OUT_5B_C_Latch <= NOT(OUT_4B_D AND MS_MASTER_ERROR AND PS_E_CH_IN_PROCESS );
	OUT_4B_D_Latch <= NOT(OUT_5B_C AND OUT_5C_NoPin );
	OUT_5C_NoPin <= NOT(PS_E_CH_IN_PROCESS AND PS_E_CH_SELECT_UNIT_T_DOT_INPUT AND PS_CONSOLE_HOME_POSITION );
	OUT_3C_C <= NOT(OUT_4A_R AND PS_E_CH_MOVE_MODE );
	OUT_3D_K <= NOT(OUT_4A_R AND PS_CONS_MX_32_POS );
	OUT_3E_B <= NOT(OUT_4A_R AND PS_CONSOLE_HOME_POSITION );
	OUT_2E_D <= NOT(MS_LAST_INSN_RO_CYCLE AND PS_E_CH_IN_PROCESS AND OUT_3F_X );
	OUT_3F_X <= PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC;
	OUT_2F_P <= NOT(OUT_3F_X );
	OUT_1F_C <= NOT(OUT_2F_P AND OUT_3H_X );
	OUT_3H_X <= MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO;

	PS_CONSOLE_READ_OP <= OUT_4A_R;
	MS_CONSOLE_READ_OP <= OUT_3A_G;
	MS_CONS_MOVE_READ_OP <= OUT_3C_C;
	MS_INQUIRY_KEYBOARD_UNLOCK <= OUT_3D_K;
	MS_CONS_INQUIRY_MX_GATE <= OUT_3E_B;
	MS_CONS_CANCEL_KEY_RESET <= OUT_2E_D;
	PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC <= OUT_3F_X;
	PS_CONS_RELEASE_OR_CANCEL <= OUT_1F_C;

	Latch_5B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5B_C_Latch,
		Q => OUT_5B_C,
		QBar => OPEN );

	Latch_4B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4B_D_Latch,
		Q => OUT_4B_D,
		QBar => OPEN );


end;
