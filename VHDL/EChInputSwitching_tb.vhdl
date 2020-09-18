-- Test BenchVHDL for IBM SMS ALD group EChInputSwitching
-- Title: EChInputSwitching
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/18/2020 10:43:56 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity EChInputSwitching_tb is
end EChInputSwitching_tb;

architecture behavioral of EChInputSwitching_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component EChInputSwitching
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_GATE_BIT_SENSE_SWITCH: in STD_LOGIC;
		PS_GATE_ASM_CH_TO_E1_INPUT: in STD_LOGIC;
		MS_GATE_TAPE_TO_E1_INPUT: in STD_LOGIC;
		MS_GATE_I_O_SYNC_TO_E1_IN: in STD_LOGIC;
		MS_GATE_E_CH_FILE_TO_E1_IN: in STD_LOGIC;
		MS_GATE_CONSOLE_PRTR_TO_E1_IN: in STD_LOGIC;
		MV_36_VOLTS: in STD_LOGIC;
		GROUND: in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_U: in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_B: in STD_LOGIC;
		PS_ASSEMBLY_CH_C_CHAR_BIT: in STD_LOGIC;
		MS_CONSOLE_WM_DOT_NOT_C_INPUT: in STD_LOGIC;
		MS_CONSOLE_NOT_WM_DOT_C_INPUT: in STD_LOGIC;
		PS_CONSOLE_WM_CHARACTER: in STD_LOGIC;
		PS_GATE_CONSOLE_PRTR_TO_E1_IN: in STD_LOGIC;
		PS_ASSEMBLY_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		PS_E1_INPUT_STAR_SIF_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_E1_INPUT_STAR_1412_19_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MC_E_CH_TAU_TO_CPU_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MC_I_O_SYNC_TO_CPU_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MC_E_CH_1301_TO_CPU_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MC_E_CH_1405_TO_CPU_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MV_CONS_PRTR_TO_CPU_BUS: in STD_LOGIC_VECTOR (5 downTo 0);
		SWITCH_TOG_SENSE_SW_1: in STD_LOGIC;
		SWITCH_TOG_SENSE_SW_2: in STD_LOGIC;
		SWITCH_TOG_SENSE_SW_4: in STD_LOGIC;
		SWITCH_TOG_SENSE_SW_8: in STD_LOGIC;
		SWITCH_TOG_SENSE_SW_A: in STD_LOGIC;
		SWITCH_TOG_SENSE_SW_B: in STD_LOGIC;
		SWITCH_TOG_SENSE_SW_C: in STD_LOGIC;
		SWITCH_TOG_SENSE_SW_W: in STD_LOGIC;
		PS_E1_INPUT_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MS_E1_INPUT_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_GATE_BIT_SENSE_SWITCH: STD_LOGIC := '1';
	signal PS_GATE_ASM_CH_TO_E1_INPUT: STD_LOGIC := '0';
	signal MS_GATE_TAPE_TO_E1_INPUT: STD_LOGIC := '1';
	signal MS_GATE_I_O_SYNC_TO_E1_IN: STD_LOGIC := '1';
	signal MS_GATE_E_CH_FILE_TO_E1_IN: STD_LOGIC := '1';
	signal MS_GATE_CONSOLE_PRTR_TO_E1_IN: STD_LOGIC := '1';
	signal MV_36_VOLTS: STD_LOGIC := '1';
	signal GROUND: STD_LOGIC := '0';
	signal PS_E_CH_SELECT_UNIT_U: STD_LOGIC := '0';
	signal PS_E_CH_SELECT_UNIT_B: STD_LOGIC := '0';
	signal PS_ASSEMBLY_CH_C_CHAR_BIT: STD_LOGIC := '0';
	signal MS_CONSOLE_WM_DOT_NOT_C_INPUT: STD_LOGIC := '1';
	signal MS_CONSOLE_NOT_WM_DOT_C_INPUT: STD_LOGIC := '1';
	signal PS_CONSOLE_WM_CHARACTER: STD_LOGIC := '0';
	signal PS_GATE_CONSOLE_PRTR_TO_E1_IN: STD_LOGIC := '0';
	signal PS_ASSEMBLY_CH_BUS: STD_LOGIC_VECTOR (6 downTo 0) := "0000000";
	signal PS_E1_INPUT_STAR_SIF_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_E1_INPUT_STAR_1412_19_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal MC_E_CH_TAU_TO_CPU_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "11111111";
	signal MC_I_O_SYNC_TO_CPU_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "11111111";
	signal MC_E_CH_1301_TO_CPU_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "11111111";
	signal MC_E_CH_1405_TO_CPU_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "11111111";
	signal MV_CONS_PRTR_TO_CPU_BUS: STD_LOGIC_VECTOR (5 downTo 0) := "111111";
	signal SWITCH_TOG_SENSE_SW_1: STD_LOGIC := '0';
	signal SWITCH_TOG_SENSE_SW_2: STD_LOGIC := '0';
	signal SWITCH_TOG_SENSE_SW_4: STD_LOGIC := '0';
	signal SWITCH_TOG_SENSE_SW_8: STD_LOGIC := '0';
	signal SWITCH_TOG_SENSE_SW_A: STD_LOGIC := '0';
	signal SWITCH_TOG_SENSE_SW_B: STD_LOGIC := '0';
	signal SWITCH_TOG_SENSE_SW_C: STD_LOGIC := '0';
	signal SWITCH_TOG_SENSE_SW_W: STD_LOGIC := '0';

	-- Outputs

	signal PS_E1_INPUT_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal MS_E1_INPUT_BUS: STD_LOGIC_VECTOR (7 downTo 0);

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

	UUT: EChInputSwitching port map(
		FPGA_CLK => FPGA_CLK,
		MS_GATE_BIT_SENSE_SWITCH => MS_GATE_BIT_SENSE_SWITCH,
		PS_GATE_ASM_CH_TO_E1_INPUT => PS_GATE_ASM_CH_TO_E1_INPUT,
		MS_GATE_TAPE_TO_E1_INPUT => MS_GATE_TAPE_TO_E1_INPUT,
		MS_GATE_I_O_SYNC_TO_E1_IN => MS_GATE_I_O_SYNC_TO_E1_IN,
		MS_GATE_E_CH_FILE_TO_E1_IN => MS_GATE_E_CH_FILE_TO_E1_IN,
		MS_GATE_CONSOLE_PRTR_TO_E1_IN => MS_GATE_CONSOLE_PRTR_TO_E1_IN,
		MV_36_VOLTS => MV_36_VOLTS,
		GROUND => GROUND,
		PS_E_CH_SELECT_UNIT_U => PS_E_CH_SELECT_UNIT_U,
		PS_E_CH_SELECT_UNIT_B => PS_E_CH_SELECT_UNIT_B,
		PS_ASSEMBLY_CH_C_CHAR_BIT => PS_ASSEMBLY_CH_C_CHAR_BIT,
		MS_CONSOLE_WM_DOT_NOT_C_INPUT => MS_CONSOLE_WM_DOT_NOT_C_INPUT,
		MS_CONSOLE_NOT_WM_DOT_C_INPUT => MS_CONSOLE_NOT_WM_DOT_C_INPUT,
		PS_CONSOLE_WM_CHARACTER => PS_CONSOLE_WM_CHARACTER,
		PS_GATE_CONSOLE_PRTR_TO_E1_IN => PS_GATE_CONSOLE_PRTR_TO_E1_IN,
		PS_ASSEMBLY_CH_BUS => PS_ASSEMBLY_CH_BUS,
		PS_E1_INPUT_STAR_SIF_BUS => PS_E1_INPUT_STAR_SIF_BUS,
		PS_E1_INPUT_STAR_1412_19_BUS => PS_E1_INPUT_STAR_1412_19_BUS,
		MC_E_CH_TAU_TO_CPU_BUS => MC_E_CH_TAU_TO_CPU_BUS,
		MC_I_O_SYNC_TO_CPU_BUS => MC_I_O_SYNC_TO_CPU_BUS,
		MC_E_CH_1301_TO_CPU_BUS => MC_E_CH_1301_TO_CPU_BUS,
		MC_E_CH_1405_TO_CPU_BUS => MC_E_CH_1405_TO_CPU_BUS,
		MV_CONS_PRTR_TO_CPU_BUS => MV_CONS_PRTR_TO_CPU_BUS,
		SWITCH_TOG_SENSE_SW_1 => SWITCH_TOG_SENSE_SW_1,
		SWITCH_TOG_SENSE_SW_2 => SWITCH_TOG_SENSE_SW_2,
		SWITCH_TOG_SENSE_SW_4 => SWITCH_TOG_SENSE_SW_4,
		SWITCH_TOG_SENSE_SW_8 => SWITCH_TOG_SENSE_SW_8,
		SWITCH_TOG_SENSE_SW_A => SWITCH_TOG_SENSE_SW_A,
		SWITCH_TOG_SENSE_SW_B => SWITCH_TOG_SENSE_SW_B,
		SWITCH_TOG_SENSE_SW_C => SWITCH_TOG_SENSE_SW_C,
		SWITCH_TOG_SENSE_SW_W => SWITCH_TOG_SENSE_SW_W,
		PS_E1_INPUT_BUS => PS_E1_INPUT_BUS,
		MS_E1_INPUT_BUS => MS_E1_INPUT_BUS);

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

END;
