-- Test Bench VHDL for IBM SMS ALD page 15.49.06.1
-- Title: SPECIAL CHAR ASS CONT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/13/2020 4:21:42 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_49_06_1_SPECIAL_CHAR_ASS_CONT_ACC_tb is
end ALD_15_49_06_1_SPECIAL_CHAR_ASS_CONT_ACC_tb;

architecture behavioral of ALD_15_49_06_1_SPECIAL_CHAR_ASS_CONT_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_15_49_06_1_SPECIAL_CHAR_ASS_CONT_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_B_CH_WM_BIT_2:	 in STD_LOGIC;
		MV_36_VOLTS:	 in STD_LOGIC;
		GROUND:	 in STD_LOGIC;
		MS_MASTER_ERROR:	 in STD_LOGIC;
		MS_WRITE_EDIT_ASTERISK:	 in STD_LOGIC;
		PS_INPUT_CYCLE_NOT_LAST_INPUT:	 in STD_LOGIC;
		PS_A_CH_INVALID:	 in STD_LOGIC;
		PS_EVEN_PARITY_CYCLE:	 in STD_LOGIC;
		PB_B_CH_BLANK:	 in STD_LOGIC;
		MS_OUTPUT_CYCLE:	 in STD_LOGIC;
		PB_OUTPUT_WM_CYCLE:	 in STD_LOGIC;
		PB_B_CH_WM_BIT:	 in STD_LOGIC;
		PS_ANY_LAST_INPUT_CYCLE:	 in STD_LOGIC;
		PS_1401_MODE:	 in STD_LOGIC;
		PS_M_OR_L_OP_CODES:	 in STD_LOGIC;
		MS_E_CH_FILE_DOT_NO_TRANSFER_BUS:	 in STD_LOGIC;
		SWITCH_TOG_ASTERISK:	 in STD_LOGIC;
		MV_ASTERISK_INS_CONSOLE_SW_OFF:	 out STD_LOGIC;
		PS_I_O_CHECK:	 out STD_LOGIC;
		MS_SET_ASTERISK:	 out STD_LOGIC;
		MS_ASTERISK_A_CH_CHECK_CTRL:	 out STD_LOGIC;
		MB_ASSEMBLY_CH_A_BIT_INSERT:	 out STD_LOGIC;
		PB_OUTPUT_CYCLE:	 out STD_LOGIC;
		MB_ASSEMBLY_CH_NU_ONE_INSERT:	 out STD_LOGIC;
		MS_SET_GROUP_MARK:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_B_CH_WM_BIT_2: STD_LOGIC := '0';
	signal MV_36_VOLTS: STD_LOGIC := '1';
	signal GROUND: STD_LOGIC := '0';
	signal MS_MASTER_ERROR: STD_LOGIC := '1';
	signal MS_WRITE_EDIT_ASTERISK: STD_LOGIC := '1';
	signal PS_INPUT_CYCLE_NOT_LAST_INPUT: STD_LOGIC := '0';
	signal PS_A_CH_INVALID: STD_LOGIC := '0';
	signal PS_EVEN_PARITY_CYCLE: STD_LOGIC := '0';
	signal PB_B_CH_BLANK: STD_LOGIC := '0';
	signal MS_OUTPUT_CYCLE: STD_LOGIC := '1';
	signal PB_OUTPUT_WM_CYCLE: STD_LOGIC := '0';
	signal PB_B_CH_WM_BIT: STD_LOGIC := '0';
	signal PS_ANY_LAST_INPUT_CYCLE: STD_LOGIC := '0';
	signal PS_1401_MODE: STD_LOGIC := '0';
	signal PS_M_OR_L_OP_CODES: STD_LOGIC := '0';
	signal MS_E_CH_FILE_DOT_NO_TRANSFER_BUS: STD_LOGIC := '1';
	signal SWITCH_TOG_ASTERISK: STD_LOGIC := '0';

	-- Outputs

	signal MV_ASTERISK_INS_CONSOLE_SW_OFF: STD_LOGIC;
	signal PS_I_O_CHECK: STD_LOGIC;
	signal MS_SET_ASTERISK: STD_LOGIC;
	signal MS_ASTERISK_A_CH_CHECK_CTRL: STD_LOGIC;
	signal MB_ASSEMBLY_CH_A_BIT_INSERT: STD_LOGIC;
	signal PB_OUTPUT_CYCLE: STD_LOGIC;
	signal MB_ASSEMBLY_CH_NU_ONE_INSERT: STD_LOGIC;
	signal MS_SET_GROUP_MARK: STD_LOGIC;

-- START USER TEST BENCH DECLARATIONS

-- The user test bench declarations, if any, must be
-- placed AFTER the line starts with the first line of text 
-- with -- START USER TEST BENCH DECLARATIONS and ends
-- with the line containing -- END (and the rest of the line) below.
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

   constant HDL_C_BIT: integer := 7;
   constant HDL_WM_BIT: integer := 6;
   constant HDL_B_BIT: integer := 5;
   constant HDL_A_BIT: integer := 4;
   constant HDL_8_BIT: integer := 3;
   constant HDL_4_BIT: integer := 2;
   constant HDL_2_BIT: integer := 1;
   constant HDL_1_BIT: integer := 0;

   constant MX_X1A_POS: integer := 7;
   constant MX_X6A_POS: integer := 8;

procedure check1(
    checked: in STD_LOGIC;
    val: in STD_LOGIC;
    testname: in string;
    test: in string) is
    begin    
    assert checked = val report testname & " (" & test & ") failed." severity failure;
    end procedure;
      


   -- Your test bench declarations go here

-- END USER TEST BENCH DECLARATIONS
   

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ALD_15_49_06_1_SPECIAL_CHAR_ASS_CONT_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_B_CH_WM_BIT_2 => PS_B_CH_WM_BIT_2,
		MV_36_VOLTS => MV_36_VOLTS,
		GROUND => GROUND,
		MS_MASTER_ERROR => MS_MASTER_ERROR,
		MS_WRITE_EDIT_ASTERISK => MS_WRITE_EDIT_ASTERISK,
		PS_INPUT_CYCLE_NOT_LAST_INPUT => PS_INPUT_CYCLE_NOT_LAST_INPUT,
		PS_A_CH_INVALID => PS_A_CH_INVALID,
		PS_EVEN_PARITY_CYCLE => PS_EVEN_PARITY_CYCLE,
		PB_B_CH_BLANK => PB_B_CH_BLANK,
		MS_OUTPUT_CYCLE => MS_OUTPUT_CYCLE,
		PB_OUTPUT_WM_CYCLE => PB_OUTPUT_WM_CYCLE,
		PB_B_CH_WM_BIT => PB_B_CH_WM_BIT,
		PS_ANY_LAST_INPUT_CYCLE => PS_ANY_LAST_INPUT_CYCLE,
		PS_1401_MODE => PS_1401_MODE,
		PS_M_OR_L_OP_CODES => PS_M_OR_L_OP_CODES,
		MS_E_CH_FILE_DOT_NO_TRANSFER_BUS => MS_E_CH_FILE_DOT_NO_TRANSFER_BUS,
		SWITCH_TOG_ASTERISK => SWITCH_TOG_ASTERISK,
		MV_ASTERISK_INS_CONSOLE_SW_OFF => MV_ASTERISK_INS_CONSOLE_SW_OFF,
		PS_I_O_CHECK => PS_I_O_CHECK,
		MS_SET_ASTERISK => MS_SET_ASTERISK,
		MS_ASTERISK_A_CH_CHECK_CTRL => MS_ASTERISK_A_CH_CHECK_CTRL,
		MB_ASSEMBLY_CH_A_BIT_INSERT => MB_ASSEMBLY_CH_A_BIT_INSERT,
		PB_OUTPUT_CYCLE => PB_OUTPUT_CYCLE,
		MB_ASSEMBLY_CH_NU_ONE_INSERT => MB_ASSEMBLY_CH_NU_ONE_INSERT,
		MS_SET_GROUP_MARK => MS_SET_GROUP_MARK);

-- START USER TEST BENCH PROCESS

-- The user test bench code MUST be placed between the
-- line that starts with the first line of text that
-- begins with "-- START USERS TEST BENCH PROCESS" 
-- and ends with "-- END"
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

-- 
-- TestBenchFPGAClock.vhdl
--
-- Process to simulate the FPGA clock for a VHDL test bench
--

fpga_clk_process: process

   constant clk_period : time := 10 ns;

   begin
      fpga_clk <= '0';
      wait for clk_period / 2;
      fpga_clk <= '1';
      wait for clk_period / 2;
   end process;

--
-- End of TestBenchFPGAClock.vhdl
--   

-- Place your test bench code in the uut_process

uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;
   variable tv: std_logic_vector(25 downto 0);
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;

   begin

   -- Your test bench code

   testName := "15.49.04.1        ";

   for tt in 0 to 2**23 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      i := tv(8);
      j := tv(9);
      k := tv(10);
      l := tv(11);
      m := tv(12);
      n := tv(13);
      o := tv(14);
      p := tv(15);
      q := tv(16);
      r := tv(17);
      s := tv(18);
      t := tv(19);
      u := tv(20);
      v := tv(21);
      w := tv(22);
      x := tv(23);
      y := tv(24);
      z := tv(25);

      
      wait for 30 ns;
      
      
   end loop;

   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 2 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

end;
