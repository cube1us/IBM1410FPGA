-- VHDL for IBM SMS ALD page 42.10.10.1
-- Title: CONSOLE SPEC CHARACTER PRINTOUT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/26/2020 12:56:12 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_42_10_10_1_CONSOLE_SPEC_CHARACTER_PRINTOUT is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ALTER_ROUTINE:	 in STD_LOGIC;
		MV_CONS_ADDRESS_ENTRY_NORMAL_2:	 in STD_LOGIC;
		PS_CONS_CYCLE_STOP:	 in STD_LOGIC;
		PS_DISPLAY_ROUTINE_2:	 in STD_LOGIC;
		MS_CONS_MX_30_POS:	 in STD_LOGIC;
		PS_CONS_ERROR_STOP:	 in STD_LOGIC;
		MS_CONS_MX_35_POS:	 in STD_LOGIC;
		PS_CONSOLE_READ_OP:	 in STD_LOGIC;
		PS_CONSOLE_WRITE_OP:	 in STD_LOGIC;
		PS_CONS_NORMAL_STOP:	 in STD_LOGIC;
		PS_ADDRESS_SET_ROUTINE:	 in STD_LOGIC;
		MV_CONS_CE_POUND_PRINT:	 in STD_LOGIC;
		MS_SPECIAL_CHAR_B:	 out STD_LOGIC;
		MS_SPECIAL_CHAR_C:	 out STD_LOGIC;
		MS_SPECIAL_CHAR_D:	 out STD_LOGIC;
		MS_SPECIAL_CHAR_E:	 out STD_LOGIC;
		MS_SPECIAL_CHAR_A_C_E_I:	 out STD_LOGIC;
		MS_SPECIAL_CHAR_I:	 out STD_LOGIC;
		MS_SPECIAL_CHAR_R:	 out STD_LOGIC;
		MS_SPECIAL_CHAR_S:	 out STD_LOGIC;
		MS_SPECIAL_CHAR_POUND:	 out STD_LOGIC);
end ALD_42_10_10_1_CONSOLE_SPEC_CHARACTER_PRINTOUT;

architecture behavioral of ALD_42_10_10_1_CONSOLE_SPEC_CHARACTER_PRINTOUT is 

	signal OUT_2A_B: STD_LOGIC;
	signal OUT_3B_G: STD_LOGIC;
	signal OUT_2B_G: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_2C_F: STD_LOGIC;
	signal OUT_1C_D: STD_LOGIC;
	signal OUT_3D_R: STD_LOGIC;
	signal OUT_2D_D: STD_LOGIC;
	signal OUT_2E_E: STD_LOGIC;
	signal OUT_1E_C: STD_LOGIC;
	signal OUT_3F_B: STD_LOGIC;
	signal OUT_2F_F: STD_LOGIC;
	signal OUT_1F_B: STD_LOGIC;
	signal OUT_2G_E: STD_LOGIC;
	signal OUT_2H_D: STD_LOGIC;
	signal OUT_3I_C: STD_LOGIC;
	signal OUT_2I_C: STD_LOGIC;
	signal OUT_DOT_1B: STD_LOGIC;
	signal OUT_DOT_1E: STD_LOGIC;
	signal OUT_DOT_3D: STD_LOGIC;

begin

	OUT_2A_B <= NOT(PS_ALTER_ROUTINE AND OUT_DOT_3D );
	OUT_3B_G <= NOT(MV_CONS_ADDRESS_ENTRY_NORMAL_2 );
	OUT_2B_G <= NOT(OUT_3B_G AND OUT_DOT_3D );
	OUT_3C_C <= NOT(PS_ADDRESS_SET_ROUTINE );
	OUT_2C_F <= NOT(PS_CONS_CYCLE_STOP AND OUT_DOT_3D );
	OUT_1C_D <= NOT(OUT_2A_B AND OUT_2C_F );
	OUT_3D_R <= NOT MS_CONS_MX_30_POS;
	OUT_2D_D <= NOT(PS_DISPLAY_ROUTINE_2 AND OUT_DOT_3D );
	OUT_2E_E <= NOT(PS_CONS_ERROR_STOP AND OUT_DOT_3D );
	OUT_1E_C <= NOT(OUT_2E_E AND OUT_2F_F );
	OUT_3F_B <= NOT MS_CONS_MX_35_POS;
	OUT_2F_F <= NOT(PS_CONSOLE_READ_OP AND OUT_DOT_3D );
	OUT_1F_B <= NOT(OUT_DOT_1E );
	OUT_2G_E <= NOT(OUT_DOT_3D AND PS_CONSOLE_WRITE_OP );
	OUT_2H_D <= NOT(OUT_DOT_3D AND PS_CONS_NORMAL_STOP );
	OUT_3I_C <= NOT(MV_CONS_CE_POUND_PRINT );
	OUT_2I_C <= NOT(OUT_3I_C AND OUT_DOT_3D AND PS_ADDRESS_SET_ROUTINE );
	OUT_DOT_1B <= OUT_2B_G OR OUT_3C_C;
	OUT_DOT_1E <= OUT_1C_D OR OUT_1E_C;
	OUT_DOT_3D <= OUT_3D_R OR OUT_3F_B;

	MS_SPECIAL_CHAR_C <= OUT_2C_F;
	MS_SPECIAL_CHAR_D <= OUT_2D_D;
	MS_SPECIAL_CHAR_E <= OUT_2E_E;
	MS_SPECIAL_CHAR_I <= OUT_2F_F;
	MS_SPECIAL_CHAR_A_C_E_I <= OUT_1F_B;
	MS_SPECIAL_CHAR_R <= OUT_2G_E;
	MS_SPECIAL_CHAR_S <= OUT_2H_D;
	MS_SPECIAL_CHAR_POUND <= OUT_2I_C;
	MS_SPECIAL_CHAR_B <= OUT_DOT_1B;


end;
