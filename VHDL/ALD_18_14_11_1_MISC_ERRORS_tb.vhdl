-- Test Bench VHDL for IBM SMS ALD page 18.14.11.1
-- Title: MISC ERRORS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/13/2020 8:57:03 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_18_14_11_1_MISC_ERRORS_tb is
end ALD_18_14_11_1_MISC_ERRORS_tb;

architecture behavioral of ALD_18_14_11_1_MISC_ERRORS_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_18_14_11_1_MISC_ERRORS
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_1401_MODE:	 in STD_LOGIC;
		PS_I_RING_1_OR_2_OR_5_OR_6_OR_10_TIME:	 in STD_LOGIC;
		PS_I_CYCLE:	 in STD_LOGIC;
		PS_B_CH_NOT_WM_BIT:	 in STD_LOGIC;
		MS_START_RESET:	 in STD_LOGIC;
		PS_ASSEMBLY_CH_A_OR_B_BITS:	 in STD_LOGIC;
		MS_OP_MOD_CHAR_TIME_STAR_ARS:	 in STD_LOGIC;
		PS_M_OR_L_OP_CODES:	 in STD_LOGIC;
		PS_B_OR_E_OR_F_CYCLE:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		PS_WRAP_AROUND_CONDITIONS:	 in STD_LOGIC;
		PS_B_CYCLE:	 in STD_LOGIC;
		PS_CLEAR_OP_CODE:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		MS_STORAGE_SCAN_ROUTINE:	 in STD_LOGIC;
		PS_I_RING_OP_TIME:	 in STD_LOGIC;
		PS_E_CH_2_CHAR_ONLY_OP_CODES:	 in STD_LOGIC;
		PS_INTERLOCK_F_CH_STAR_1414_STAR:	 in STD_LOGIC;
		PS_PERCENT_OR_COML_AT:	 in STD_LOGIC;
		PS_E_CH_INTERLOCK:	 in STD_LOGIC;
		PS_I_RING_3_TIME:	 in STD_LOGIC;
		PS_ERROR_SAMPLE:	 in STD_LOGIC;
		PS_F_CH_INTERLOCK:	 in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK:	 in STD_LOGIC;
		MS_DISPLAY_OR_ALTER:	 in STD_LOGIC;
		PS_INSTRUCTION_CHECK_GATE:	 in STD_LOGIC;
		MS_ADDRESS_CHECK:	 out STD_LOGIC;
		MS_I_O_INTERLOCK_CHECK:	 out STD_LOGIC;
		MS_INSTRUCTION_CHECK:	 out STD_LOGIC;
		LAMP_15A1B15:	 out STD_LOGIC;
		LAMP_15A1W01:	 out STD_LOGIC;
		LAMP_15A1W04:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_1401_MODE: STD_LOGIC := '1';
	signal PS_I_RING_1_OR_2_OR_5_OR_6_OR_10_TIME: STD_LOGIC := '0';
	signal PS_I_CYCLE: STD_LOGIC := '0';
	signal PS_B_CH_NOT_WM_BIT: STD_LOGIC := '0';
	signal MS_START_RESET: STD_LOGIC := '1';
	signal PS_ASSEMBLY_CH_A_OR_B_BITS: STD_LOGIC := '0';
	signal MS_OP_MOD_CHAR_TIME_STAR_ARS: STD_LOGIC := '1';
	signal PS_M_OR_L_OP_CODES: STD_LOGIC := '0';
	signal PS_B_OR_E_OR_F_CYCLE: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_F_1: STD_LOGIC := '0';
	signal PS_WRAP_AROUND_CONDITIONS: STD_LOGIC := '0';
	signal PS_B_CYCLE: STD_LOGIC := '0';
	signal PS_CLEAR_OP_CODE: STD_LOGIC := '0';
	signal PS_2ND_CLOCK_PULSE_2: STD_LOGIC := '0';
	signal MS_STORAGE_SCAN_ROUTINE: STD_LOGIC := '1';
	signal PS_I_RING_OP_TIME: STD_LOGIC := '0';
	signal PS_E_CH_2_CHAR_ONLY_OP_CODES: STD_LOGIC := '0';
	signal PS_INTERLOCK_F_CH_STAR_1414_STAR: STD_LOGIC := '0';
	signal PS_PERCENT_OR_COML_AT: STD_LOGIC := '0';
	signal PS_E_CH_INTERLOCK: STD_LOGIC := '0';
	signal PS_I_RING_3_TIME: STD_LOGIC := '0';
	signal PS_ERROR_SAMPLE: STD_LOGIC := '0';
	signal PS_F_CH_INTERLOCK: STD_LOGIC := '0';
	signal PS_LOZENGE_OR_ASTERISK: STD_LOGIC := '0';
	signal MS_DISPLAY_OR_ALTER: STD_LOGIC := '1';
	signal PS_INSTRUCTION_CHECK_GATE: STD_LOGIC := '0';

	-- Outputs

	signal MS_ADDRESS_CHECK: STD_LOGIC;
	signal MS_I_O_INTERLOCK_CHECK: STD_LOGIC;
	signal MS_INSTRUCTION_CHECK: STD_LOGIC;
	signal LAMP_15A1B15: STD_LOGIC;
	signal LAMP_15A1W01: STD_LOGIC;
	signal LAMP_15A1W04: STD_LOGIC;

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

	UUT: ALD_18_14_11_1_MISC_ERRORS port map(
		FPGA_CLK => FPGA_CLK,
		MS_1401_MODE => MS_1401_MODE,
		PS_I_RING_1_OR_2_OR_5_OR_6_OR_10_TIME => PS_I_RING_1_OR_2_OR_5_OR_6_OR_10_TIME,
		PS_I_CYCLE => PS_I_CYCLE,
		PS_B_CH_NOT_WM_BIT => PS_B_CH_NOT_WM_BIT,
		MS_START_RESET => MS_START_RESET,
		PS_ASSEMBLY_CH_A_OR_B_BITS => PS_ASSEMBLY_CH_A_OR_B_BITS,
		MS_OP_MOD_CHAR_TIME_STAR_ARS => MS_OP_MOD_CHAR_TIME_STAR_ARS,
		PS_M_OR_L_OP_CODES => PS_M_OR_L_OP_CODES,
		PS_B_OR_E_OR_F_CYCLE => PS_B_OR_E_OR_F_CYCLE,
		PS_LOGIC_GATE_F_1 => PS_LOGIC_GATE_F_1,
		PS_WRAP_AROUND_CONDITIONS => PS_WRAP_AROUND_CONDITIONS,
		PS_B_CYCLE => PS_B_CYCLE,
		PS_CLEAR_OP_CODE => PS_CLEAR_OP_CODE,
		PS_2ND_CLOCK_PULSE_2 => PS_2ND_CLOCK_PULSE_2,
		MS_STORAGE_SCAN_ROUTINE => MS_STORAGE_SCAN_ROUTINE,
		PS_I_RING_OP_TIME => PS_I_RING_OP_TIME,
		PS_E_CH_2_CHAR_ONLY_OP_CODES => PS_E_CH_2_CHAR_ONLY_OP_CODES,
		PS_INTERLOCK_F_CH_STAR_1414_STAR => PS_INTERLOCK_F_CH_STAR_1414_STAR,
		PS_PERCENT_OR_COML_AT => PS_PERCENT_OR_COML_AT,
		PS_E_CH_INTERLOCK => PS_E_CH_INTERLOCK,
		PS_I_RING_3_TIME => PS_I_RING_3_TIME,
		PS_ERROR_SAMPLE => PS_ERROR_SAMPLE,
		PS_F_CH_INTERLOCK => PS_F_CH_INTERLOCK,
		PS_LOZENGE_OR_ASTERISK => PS_LOZENGE_OR_ASTERISK,
		MS_DISPLAY_OR_ALTER => MS_DISPLAY_OR_ALTER,
		PS_INSTRUCTION_CHECK_GATE => PS_INSTRUCTION_CHECK_GATE,
		MS_ADDRESS_CHECK => MS_ADDRESS_CHECK,
		MS_I_O_INTERLOCK_CHECK => MS_I_O_INTERLOCK_CHECK,
		MS_INSTRUCTION_CHECK => MS_INSTRUCTION_CHECK,
		LAMP_15A1B15 => LAMP_15A1B15,
		LAMP_15A1W01 => LAMP_15A1W01,
		LAMP_15A1W04 => LAMP_15A1W04);

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
   variable a,b,c,d,e,f,g,h,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;

   begin

   -- Your test bench code

   testName := "15.49.04.1        X";  -- NOTE:  Remove X when editing to set correct length!

   for tt in 0 to 2**25 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      j := tv(8);
      k := tv(9);
      l := tv(10);
      m := tv(11);
      n := tv(12);
      o := tv(13);
      p := tv(14);
      q := tv(15);
      r := tv(16);
      s := tv(17);
      t := tv(18);
      u := tv(19);
      v := tv(20);
      w := tv(21);
      x := tv(22);
      y := tv(23);
      z := tv(24);

      
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
