-- VHDL for IBM SMS ALD page 45.50.06.1
-- Title: CONSOLE PRINTER ROTATE CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/2/2020 2:15:26 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_50_06_1_CONSOLE_PRINTER_ROTATE_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_CONSOLE_OUTPUT_2_BIT:	 in STD_LOGIC;
		PP_SPECIAL_OR_12V_FOR_REL_DRIVERS:	 in STD_LOGIC;
		PS_CONSOLE_OUTPUT_4_BIT:	 in STD_LOGIC;
		PS_SOLENOID_DRIVER_STROBE:	 in STD_LOGIC;
		PS_CONS_CHAR_CONTROL:	 in STD_LOGIC;
		PS_CONSOLE_OUTPUT_8_BIT:	 in STD_LOGIC;
		PS_CONSOLE_OUTPUT_1_BIT:	 in STD_LOGIC;
		MS_CONSOLE_OUTPUT_2_BIT:	 out STD_LOGIC;
		PW_CONS_PRINTER_R1_SOLENOID:	 out STD_LOGIC;
		PW_CONS_PRINTER_R2A_SOLENOID:	 out STD_LOGIC;
		MS_CONSOLE_OUTPUT_4_BIT:	 out STD_LOGIC;
		MS_CONSOLE_OUTPUT_8_BIT:	 out STD_LOGIC;
		PW_CONS_PRINTER_R2_SOLENOID:	 out STD_LOGIC;
		MS_CONSOLE_OUTPUT_1_BIT:	 out STD_LOGIC;
		PW_CONS_PRINTER_R5_SOLENOID:	 out STD_LOGIC);
end ALD_45_50_06_1_CONSOLE_PRINTER_ROTATE_CONTROLS;

architecture behavioral of ALD_45_50_06_1_CONSOLE_PRINTER_ROTATE_CONTROLS is 

	signal OUT_5B_G: STD_LOGIC;
	signal OUT_2B_D: STD_LOGIC;
	signal OUT_1B_B: STD_LOGIC;
	signal OUT_4D_C: STD_LOGIC;
	signal OUT_2D_E: STD_LOGIC;
	signal OUT_1D_G: STD_LOGIC;
	signal OUT_5E_F: STD_LOGIC;
	signal OUT_2E_K: STD_LOGIC;
	signal OUT_5F_D: STD_LOGIC;
	signal OUT_2F_P: STD_LOGIC;
	signal OUT_1F_A: STD_LOGIC;
	signal OUT_4G_NoPin: STD_LOGIC;
	signal OUT_5H_B: STD_LOGIC;
	signal OUT_4H_NoPin: STD_LOGIC;
	signal OUT_3H_A: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_1H_C: STD_LOGIC;
	signal OUT_DOT_2F: STD_LOGIC;

begin

	OUT_5B_G <= NOT(PS_CONSOLE_OUTPUT_2_BIT );
	OUT_2B_D <= NOT(OUT_5B_G AND PS_CONS_CHAR_CONTROL AND PS_SOLENOID_DRIVER_STROBE );
	OUT_1B_B <= NOT(OUT_2B_D AND PP_SPECIAL_OR_12V_FOR_REL_DRIVERS );
	OUT_4D_C <= NOT(PS_CONSOLE_OUTPUT_8_BIT AND OUT_5E_F );
	OUT_2D_E <= NOT(OUT_4D_C AND PS_CONS_CHAR_CONTROL AND PS_SOLENOID_DRIVER_STROBE );
	OUT_1D_G <= NOT(OUT_2D_E AND PP_SPECIAL_OR_12V_FOR_REL_DRIVERS );
	OUT_5E_F <= NOT PS_CONSOLE_OUTPUT_4_BIT;
	OUT_2E_K <= NOT(OUT_5E_F AND PS_CONS_CHAR_CONTROL );
	OUT_5F_D <= NOT(PS_CONSOLE_OUTPUT_8_BIT );
	OUT_2F_P <= NOT(OUT_5F_D AND PS_SOLENOID_DRIVER_STROBE );
	OUT_1F_A <= NOT(OUT_DOT_2F AND PP_SPECIAL_OR_12V_FOR_REL_DRIVERS );
	OUT_4G_NoPin <= NOT(OUT_5F_D AND PS_CONSOLE_OUTPUT_1_BIT );
	OUT_5H_B <= NOT(PS_CONSOLE_OUTPUT_1_BIT );
	OUT_4H_NoPin <= NOT(OUT_5H_B AND PS_CONSOLE_OUTPUT_8_BIT );
	OUT_3H_A <= NOT(OUT_4G_NoPin AND OUT_4H_NoPin );
	OUT_2H_C <= NOT(OUT_3H_A AND PS_SOLENOID_DRIVER_STROBE AND PS_CONS_CHAR_CONTROL );
	OUT_1H_C <= NOT(OUT_2H_C AND PP_SPECIAL_OR_12V_FOR_REL_DRIVERS );
	OUT_DOT_2F <= OUT_2E_K OR OUT_2F_P;

	MS_CONSOLE_OUTPUT_2_BIT <= OUT_5B_G;
	PW_CONS_PRINTER_R1_SOLENOID <= OUT_1B_B;
	PW_CONS_PRINTER_R2A_SOLENOID <= OUT_1D_G;
	MS_CONSOLE_OUTPUT_4_BIT <= OUT_5E_F;
	MS_CONSOLE_OUTPUT_8_BIT <= OUT_5F_D;
	PW_CONS_PRINTER_R2_SOLENOID <= OUT_1F_A;
	MS_CONSOLE_OUTPUT_1_BIT <= OUT_5H_B;
	PW_CONS_PRINTER_R5_SOLENOID <= OUT_1H_C;


end;