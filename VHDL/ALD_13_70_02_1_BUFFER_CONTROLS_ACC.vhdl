-- VHDL for IBM SMS ALD page 13.70.02.1
-- Title: BUFFER CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/10/2020 4:13:31 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_70_02_1_BUFFER_CONTROLS_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_1401_READ_TRIGGER:	 in STD_LOGIC;
		MS_1401_READ_TRIGGER:	 in STD_LOGIC;
		MS_PROGRAM_RESET_2:	 in STD_LOGIC;
		PS_1401_I_O_RING_ADVANCE:	 in STD_LOGIC;
		MC_1403_PRINT_BUFFER_BUSY:	 in STD_LOGIC;
		MS_1401_SET_CD_PRINT_IN_PROC:	 in STD_LOGIC;
		MS_PRT_CARR_BUSY:	 in STD_LOGIC;
		PS_1401_BRANCH_LATCH:	 in STD_LOGIC;
		MC_I_O_PRINTER_READY:	 in STD_LOGIC;
		MS_1401_PUNCH_TRIGGER:	 out STD_LOGIC;
		PS_1401_PUNCH_TRIGGER:	 out STD_LOGIC;
		MS_1401_I_O_END:	 out STD_LOGIC;
		PS_1401_I_O_END:	 out STD_LOGIC;
		MS_1401_CARD_PRINT_IN_PROC:	 out STD_LOGIC;
		PS_1403_PRINT_BUFFER_BUSY:	 out STD_LOGIC;
		PS_1401_CARD_PRINT_IN_PROC:	 out STD_LOGIC;
		MS_1401_I_O_SET_BRANCH_CNDS:	 out STD_LOGIC;
		PS_FORMS_OR_1403_PRT_BUFF_BUSY:	 out STD_LOGIC;
		MS_1403_PRINT_BUFFER_BUSY:	 out STD_LOGIC);
end ALD_13_70_02_1_BUFFER_CONTROLS_ACC;

architecture behavioral of ALD_13_70_02_1_BUFFER_CONTROLS_ACC is 

	signal OUT_4A_F: STD_LOGIC;
	signal OUT_4A_B: STD_LOGIC;
	signal OUT_2A_D: STD_LOGIC;
	signal OUT_2B_C: STD_LOGIC;
	signal OUT_4C_F: STD_LOGIC;
	signal OUT_4C_B: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_2D_C: STD_LOGIC;
	signal OUT_4E_B: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_2F_C: STD_LOGIC;
	signal OUT_2G_E: STD_LOGIC;
	signal OUT_1G_C: STD_LOGIC;
	signal OUT_4H_L: STD_LOGIC;
	signal OUT_2H_P: STD_LOGIC;

begin


	SMS_DEY_4A: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => PS_1401_READ_TRIGGER,	-- Pin K
		ACSET => PS_1401_I_O_RING_ADVANCE,	-- Pin H
		GATEOFF => MS_1401_READ_TRIGGER,	-- Pin E
		ACRESET => PS_1401_I_O_RING_ADVANCE,	-- Pin A
		DCRESET => MS_PROGRAM_RESET_2,	-- Pin P
		OUTON => OUT_4A_F,
		OUTOFF => OUT_4A_B,
		GROUND => OPEN,
		DCSFORCE => OPEN,
		DCRFORCE => OPEN );

	OUT_2A_D <= NOT OUT_4A_F;
	OUT_2B_C <= NOT OUT_4A_B;

	SMS_DEY_4C: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => OUT_2B_C,	-- Pin K
		ACSET => PS_1401_I_O_RING_ADVANCE,	-- Pin H
		GATEOFF => OUT_2A_D,	-- Pin E
		ACRESET => PS_1401_I_O_RING_ADVANCE,	-- Pin A
		DCRESET => MS_PROGRAM_RESET_2,	-- Pin P
		OUTON => OUT_4C_F,
		OUTOFF => OUT_4C_B,
		GROUND => OPEN,
		DCRFORCE => OPEN,
		DCSFORCE => OPEN );

	OUT_2C_D <= NOT OUT_4C_F;
	OUT_2D_C <= NOT OUT_4C_B;
	OUT_4E_B <= NOT(MC_1403_PRINT_BUFFER_BUSY );

	SMS_DEZ_3E: entity SMS_DEZ
	    port map (
		FPGA_CLK => FPGA_CLK,
		DCSET => MS_1401_SET_CD_PRINT_IN_PROC,	-- Pin K
		GATEOFF => OUT_2D_C,	-- Pin L
		ACSET => PS_1401_I_O_RING_ADVANCE,	-- Pin R
		DCRESET => MS_PROGRAM_RESET_2,	-- Pin P
		OUTON => OUT_3E_D,
		OUTOFF => OUT_3E_C,
		DCSFORCE => OPEN,
		GATEON => OPEN,
		DCRFORCE => OPEN );

	OUT_2E_D <= NOT OUT_3E_D;
	OUT_2F_C <= NOT OUT_3E_C;
	OUT_2G_E <= NOT(MS_PRT_CARR_BUSY AND OUT_4H_L AND OUT_2H_P );
	OUT_1G_C <= NOT(OUT_2D_C AND PS_1401_BRANCH_LATCH );
	OUT_4H_L <= NOT(MC_I_O_PRINTER_READY );
	OUT_2H_P <= NOT(OUT_4E_B );

	MS_1401_PUNCH_TRIGGER <= OUT_2A_D;
	PS_1401_PUNCH_TRIGGER <= OUT_2B_C;
	MS_1401_I_O_END <= OUT_2C_D;
	PS_1401_I_O_END <= OUT_2D_C;
	PS_1403_PRINT_BUFFER_BUSY <= OUT_4E_B;
	MS_1401_CARD_PRINT_IN_PROC <= OUT_2E_D;
	PS_1401_CARD_PRINT_IN_PROC <= OUT_2F_C;
	PS_FORMS_OR_1403_PRT_BUFF_BUSY <= OUT_2G_E;
	MS_1401_I_O_SET_BRANCH_CNDS <= OUT_1G_C;
	MS_1403_PRINT_BUFFER_BUSY <= OUT_2H_P;


end;