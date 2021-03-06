-- Test BenchVHDL for IBM SMS ALD group IndexControls
-- Title: IndexControls
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/3/2020 9:08:51 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity IndexControls_tb is
end IndexControls_tb;

architecture behavioral of IndexControls_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component IndexControls
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_LOGIC_GATE_F_1: in STD_LOGIC;
		PS_I_RING_5_OR_10_TIME: in STD_LOGIC;
		PS_I_CYCLE: in STD_LOGIC;
		MS_STORE_AR_SET_A_CYCLE_CTRL_A: in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE_1: in STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_CODE: in STD_LOGIC;
		PS_ADDR_DOUBLE_OP_CODES: in STD_LOGIC;
		PS_INDEX_REQUIRED: in STD_LOGIC;
		MS_LOGIC_GATE_B_1: in STD_LOGIC;
		PS_LOGIC_GATE_A_OR_R: in STD_LOGIC;
		PS_I_RING_3_OR_8_TIME: in STD_LOGIC;
		PS_I_RING_4_OR_9_TIME: in STD_LOGIC;
		PS_1ST_ADDRESS: in STD_LOGIC;
		PS_I_CYCLE_1: in STD_LOGIC;
		MS_PROGRAM_RESET_1: in STD_LOGIC;
		MS_1401_MODE_1: in STD_LOGIC;
		PS_NO_INDEX_ON_1ST_ADDR_OPS: in STD_LOGIC;
		PS_X_CYCLE_CTRL: in STD_LOGIC;
		PS_1401_MODE_1: in STD_LOGIC;
		PS_LOGIC_GATE_SPECIAL_A: in STD_LOGIC;
		MS_CONSOLE_INHIBIT_AR_RO: in STD_LOGIC;
		PS_LOGIC_GATE_SPECIAL_A_1: in STD_LOGIC;
		PS_I_CYCLE_CTRL: in STD_LOGIC;
		PS_BRANCH_TO_00001_ADDR_LAT: in STD_LOGIC;
		PS_1401_PRINT_TRIGGER: in STD_LOGIC;
		PS_1401_READ_TRIGGER: in STD_LOGIC;
		PS_1401_PUNCH_TRIGGER: in STD_LOGIC;
		PS_1ST_I_O_CYCLE_CONTROL: in STD_LOGIC;
		PS_INTERRUPT_BRANCH: in STD_LOGIC;
		PS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (12 downTo 0);
		PS_B_CH_NOT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (11 downTo 0);
		MS_SET_X_CYCLE_CTRL_A: out STD_LOGIC;
		MS_SET_A_RING_1_TRIG: out STD_LOGIC;
		PS_INDEX_A_AR: out STD_LOGIC;
		PS_INDEX_B_AR: out STD_LOGIC;
		PS_A_RING_ADV_B: out STD_LOGIC;
		PS_A_RING_ADV_A: out STD_LOGIC;
		MS_RESET_INDEX_TAG_LATCHES: out STD_LOGIC;
		PS_SET_H_POS_INDEX_TAGS: out STD_LOGIC;
		PS_SET_T_POS_INDEX_TAGS: out STD_LOGIC;
		MS_RO_INDEX_AR: out STD_LOGIC;
		MS_SET_H_POS_INDEX_LAT_B: out STD_LOGIC;
		MS_SET_H_POS_INDEX_LAT_A: out STD_LOGIC;
		PS_RO_INDEX_AR: out STD_LOGIC;
		MS_RO_FIXED_ADDR: out STD_LOGIC;
		MS_RO_00201_INDEX_ADDR: out STD_LOGIC;
		MS_RO_00101_INDEX_ADDR: out STD_LOGIC;
		MS_RO_00001_INDEX_ADDR: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_F_1: STD_LOGIC := '0';
	signal PS_I_RING_5_OR_10_TIME: STD_LOGIC := '0';
	signal PS_I_CYCLE: STD_LOGIC := '0';
	signal MS_STORE_AR_SET_A_CYCLE_CTRL_A: STD_LOGIC := '1';
	signal PS_LAST_INSN_RO_CYCLE_1: STD_LOGIC := '0';
	signal PS_STORE_ADDR_REGS_OP_CODE: STD_LOGIC := '0';
	signal PS_ADDR_DOUBLE_OP_CODES: STD_LOGIC := '0';
	signal PS_INDEX_REQUIRED: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_B_1: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_A_OR_R: STD_LOGIC := '0';
	signal PS_I_RING_3_OR_8_TIME: STD_LOGIC := '0';
	signal PS_I_RING_4_OR_9_TIME: STD_LOGIC := '0';
	signal PS_1ST_ADDRESS: STD_LOGIC := '0';
	signal PS_I_CYCLE_1: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_1: STD_LOGIC := '1';
	signal MS_1401_MODE_1: STD_LOGIC := '1';
	signal PS_NO_INDEX_ON_1ST_ADDR_OPS: STD_LOGIC := '0';
	signal PS_X_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_1401_MODE_1: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_SPECIAL_A: STD_LOGIC := '0';
	signal MS_CONSOLE_INHIBIT_AR_RO: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_SPECIAL_A_1: STD_LOGIC := '0';
	signal PS_I_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_BRANCH_TO_00001_ADDR_LAT: STD_LOGIC := '0';
	signal PS_1401_PRINT_TRIGGER: STD_LOGIC := '0';
	signal PS_1401_READ_TRIGGER: STD_LOGIC := '0';
	signal PS_1401_PUNCH_TRIGGER: STD_LOGIC := '0';
	signal PS_1ST_I_O_CYCLE_CONTROL: STD_LOGIC := '0';
	signal PS_INTERRUPT_BRANCH: STD_LOGIC := '0';
	signal PS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (12 downTo 0) := "0000000000000";
	signal PS_B_CH_NOT_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal MS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (11 downTo 0) := "111111111111";

	-- Outputs

	signal MS_SET_X_CYCLE_CTRL_A: STD_LOGIC;
	signal MS_SET_A_RING_1_TRIG: STD_LOGIC;
	signal PS_INDEX_A_AR: STD_LOGIC;
	signal PS_INDEX_B_AR: STD_LOGIC;
	signal PS_A_RING_ADV_B: STD_LOGIC;
	signal PS_A_RING_ADV_A: STD_LOGIC;
	signal MS_RESET_INDEX_TAG_LATCHES: STD_LOGIC;
	signal PS_SET_H_POS_INDEX_TAGS: STD_LOGIC;
	signal PS_SET_T_POS_INDEX_TAGS: STD_LOGIC;
	signal MS_RO_INDEX_AR: STD_LOGIC;
	signal MS_SET_H_POS_INDEX_LAT_B: STD_LOGIC;
	signal MS_SET_H_POS_INDEX_LAT_A: STD_LOGIC;
	signal PS_RO_INDEX_AR: STD_LOGIC;
	signal MS_RO_FIXED_ADDR: STD_LOGIC;
	signal MS_RO_00201_INDEX_ADDR: STD_LOGIC;
	signal MS_RO_00101_INDEX_ADDR: STD_LOGIC;
	signal MS_RO_00001_INDEX_ADDR: STD_LOGIC;

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

	UUT: IndexControls port map(
		FPGA_CLK => FPGA_CLK,
		PS_LOGIC_GATE_F_1 => PS_LOGIC_GATE_F_1,
		PS_I_RING_5_OR_10_TIME => PS_I_RING_5_OR_10_TIME,
		PS_I_CYCLE => PS_I_CYCLE,
		MS_STORE_AR_SET_A_CYCLE_CTRL_A => MS_STORE_AR_SET_A_CYCLE_CTRL_A,
		PS_LAST_INSN_RO_CYCLE_1 => PS_LAST_INSN_RO_CYCLE_1,
		PS_STORE_ADDR_REGS_OP_CODE => PS_STORE_ADDR_REGS_OP_CODE,
		PS_ADDR_DOUBLE_OP_CODES => PS_ADDR_DOUBLE_OP_CODES,
		PS_INDEX_REQUIRED => PS_INDEX_REQUIRED,
		MS_LOGIC_GATE_B_1 => MS_LOGIC_GATE_B_1,
		PS_LOGIC_GATE_A_OR_R => PS_LOGIC_GATE_A_OR_R,
		PS_I_RING_3_OR_8_TIME => PS_I_RING_3_OR_8_TIME,
		PS_I_RING_4_OR_9_TIME => PS_I_RING_4_OR_9_TIME,
		PS_1ST_ADDRESS => PS_1ST_ADDRESS,
		PS_I_CYCLE_1 => PS_I_CYCLE_1,
		MS_PROGRAM_RESET_1 => MS_PROGRAM_RESET_1,
		MS_1401_MODE_1 => MS_1401_MODE_1,
		PS_NO_INDEX_ON_1ST_ADDR_OPS => PS_NO_INDEX_ON_1ST_ADDR_OPS,
		PS_X_CYCLE_CTRL => PS_X_CYCLE_CTRL,
		PS_1401_MODE_1 => PS_1401_MODE_1,
		PS_LOGIC_GATE_SPECIAL_A => PS_LOGIC_GATE_SPECIAL_A,
		MS_CONSOLE_INHIBIT_AR_RO => MS_CONSOLE_INHIBIT_AR_RO,
		PS_LOGIC_GATE_SPECIAL_A_1 => PS_LOGIC_GATE_SPECIAL_A_1,
		PS_I_CYCLE_CTRL => PS_I_CYCLE_CTRL,
		PS_BRANCH_TO_00001_ADDR_LAT => PS_BRANCH_TO_00001_ADDR_LAT,
		PS_1401_PRINT_TRIGGER => PS_1401_PRINT_TRIGGER,
		PS_1401_READ_TRIGGER => PS_1401_READ_TRIGGER,
		PS_1401_PUNCH_TRIGGER => PS_1401_PUNCH_TRIGGER,
		PS_1ST_I_O_CYCLE_CONTROL => PS_1ST_I_O_CYCLE_CONTROL,
		PS_INTERRUPT_BRANCH => PS_INTERRUPT_BRANCH,
		PS_I_RING_HDL_BUS => PS_I_RING_HDL_BUS,
		PS_B_CH_NOT_BUS => PS_B_CH_NOT_BUS,
		MS_I_RING_HDL_BUS => MS_I_RING_HDL_BUS,
		MS_SET_X_CYCLE_CTRL_A => MS_SET_X_CYCLE_CTRL_A,
		MS_SET_A_RING_1_TRIG => MS_SET_A_RING_1_TRIG,
		PS_INDEX_A_AR => PS_INDEX_A_AR,
		PS_INDEX_B_AR => PS_INDEX_B_AR,
		PS_A_RING_ADV_B => PS_A_RING_ADV_B,
		PS_A_RING_ADV_A => PS_A_RING_ADV_A,
		MS_RESET_INDEX_TAG_LATCHES => MS_RESET_INDEX_TAG_LATCHES,
		PS_SET_H_POS_INDEX_TAGS => PS_SET_H_POS_INDEX_TAGS,
		PS_SET_T_POS_INDEX_TAGS => PS_SET_T_POS_INDEX_TAGS,
		MS_RO_INDEX_AR => MS_RO_INDEX_AR,
		MS_SET_H_POS_INDEX_LAT_B => MS_SET_H_POS_INDEX_LAT_B,
		MS_SET_H_POS_INDEX_LAT_A => MS_SET_H_POS_INDEX_LAT_A,
		PS_RO_INDEX_AR => PS_RO_INDEX_AR,
		MS_RO_FIXED_ADDR => MS_RO_FIXED_ADDR,
		MS_RO_00201_INDEX_ADDR => MS_RO_00201_INDEX_ADDR,
		MS_RO_00101_INDEX_ADDR => MS_RO_00101_INDEX_ADDR,
		MS_RO_00001_INDEX_ADDR => MS_RO_00001_INDEX_ADDR);

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
   variable tv: std_logic_vector(12 downto 0);
   variable a, b, c, d, e, f, g, h, i, j, k: std_logic;
   variable g1, g2, g3, g4: std_logic;

   begin

   -- Your test bench code
   
   testName := "14.70.10.1        ";
   
   for t in 0 to 255 loop
      tv := std_logic_vector(to_unsigned(t,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      i := tv(7);
      PS_B_CH_NOT_BUS(HDL_WM_BIT) <= a;
      PS_I_CYCLE <= b;
      PS_I_RING_5_OR_10_TIME <= c;
      MS_STORE_AR_SET_A_CYCLE_CTRL_A <= not d;
      PS_LOGIC_GATE_F_1 <= e;
      PS_STORE_ADDR_REGS_OP_CODE <= f;
      PS_LAST_INSN_RO_CYCLE_1 <= g;
      PS_INDEX_REQUIRED <= i;
      g1 := a and b and i and c;
      wait for 30 ns;
      check1(MS_SET_X_CYCLE_CTRL_A,not g1,testName,"X Cycle Ctrl");
      check1(MS_SET_A_RING_1_TRIG,not((g1 or (f and g) or d) and e),testName,"Set A Ring 1 Trig");          
   end loop;

   PS_B_CH_NOT_BUS(HDL_WM_BIT) <= '0';
   PS_I_CYCLE <= '0';
   PS_I_RING_5_OR_10_TIME <= '0';
   MS_STORE_AR_SET_A_CYCLE_CTRL_A <= not '0';
   PS_LOGIC_GATE_F_1 <= '0';
   PS_STORE_ADDR_REGS_OP_CODE <= '0';
   PS_LAST_INSN_RO_CYCLE_1 <= '0';
   
   PS_INDEX_REQUIRED <= '0';
   PS_I_RING_HDL_BUS(5) <= '1';
   wait for 30 ns;
   check1(PS_INDEX_A_AR,'0',testName,"2A");
   PS_INDEX_REQUIRED <= '1';
   PS_I_RING_HDL_BUS(5) <= '0';
   wait for 30 ns;
   check1(PS_INDEX_A_AR,'0',testName,"2B");
   PS_INDEX_REQUIRED <= '1';
   PS_I_RING_HDL_BUS(5) <= '1';
   wait for 30 ns;
   check1(PS_INDEX_A_AR,'1',testName,"2C");
   PS_INDEX_REQUIRED <= '0';
   PS_I_RING_HDL_BUS(5) <= '0';
   
   for t in 0 to 15 loop
      tv := std_logic_vector(to_unsigned(t,tv'Length));
      h := tv(0);
      i := tv(1);
      j := tv(2);
      k := tv(3);
      PS_I_RING_HDL_BUS(5) <= h;
      PS_ADDR_DOUBLE_OP_CODES <= j;
      PS_INDEX_REQUIRED <= i;
      PS_I_RING_HDL_BUS(10) <= k;
      wait for 30 ns;
      check1(PS_INDEX_B_AR,(h and j and i) or (i and k),testName,"Index B AR");
   end loop;

   PS_I_RING_HDL_BUS(5) <= '0';
   PS_ADDR_DOUBLE_OP_CODES <= '0';
   PS_INDEX_REQUIRED <= '0';
   PS_I_RING_HDL_BUS(10) <= '0';
   
   testName := "14.70.11.1        ";
   
   check1(PS_A_RING_ADV_A,'0',testName,"3A");
   check1(PS_A_RING_ADV_B,'0',testName,"3B");
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   check1(PS_A_RING_ADV_A,'1',testName,"3C");
   check1(PS_A_RING_ADV_B,'1',testName,"3D");
   MS_LOGIC_GATE_B_1 <= '1';
    
   testName := "14.70.12.1        ";
   
   for t in 0 to 255 loop
      tv := std_logic_vector(to_unsigned(t,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      MS_1401_MODE_1 <= not a;
      PS_I_RING_3_OR_8_TIME <= b;
      PS_LOGIC_GATE_A_OR_R <= c;
      PS_I_CYCLE_1 <= d;
      PS_I_RING_4_OR_9_TIME <= e;
      PS_NO_INDEX_ON_1ST_ADDR_OPS <= f;
      PS_1ST_ADDRESS <= g;
      PS_B_CH_NOT_BUS(HDL_WM_BIT) <= h;
      wait for 30 ns;
      check1(PS_SET_H_POS_INDEX_TAGS,
         not a and b and c and d and not(f and g),testName,"H Pos Index Tags");
      check1(PS_SET_T_POS_INDEX_TAGS, 
         c and d and not(f and g) and h and e,testName,"T Pos Index Tags");
   end loop;
   
   for t in 0 to 7 loop
      tv := std_logic_vector(to_unsigned(t,tv'Length));
      i := tv(0);
      j := tv(1);
      k := tv(2);
      MS_PROGRAM_RESET_1 <= not i;
      MS_I_RING_HDL_BUS(1) <= not j;
      MS_I_RING_HDL_BUS(6) <= not k;
      wait for 30 ns;
      check1(MS_RESET_INDEX_TAG_LATCHES,not(i or j or k),testName,"Reset Index Tag Latches");
   end loop;
   
   testName := "14.70.13.1        ";
    
   for t in 0 to 7 loop
      a := tv(0);
      b := tv(1);
      c := tv(2);
      PS_X_CYCLE_CTRL <= a;
      PS_LOGIC_GATE_SPECIAL_A <= b;
      MS_CONSOLE_INHIBIT_AR_RO <= not c;
      wait for 30 ns;
      check1(PS_RO_INDEX_AR,a and b and not c,testName,"+S RO Index AR");
      check1(MS_RO_INDEX_AR,not PS_RO_INDEX_AR,testName,"-S RO Index AR");      
   end loop; 
   
   for t in 0 to 15 loop
      d := tv(0);
      e := tv(1);
      f := tv(2);
      g := tv(3);
      PS_1401_MODE_1 <= d;
      PS_INDEX_REQUIRED <= e;
      PS_I_RING_5_OR_10_TIME <= f;
      PS_LOGIC_GATE_F_1 <= g;
      check1(MS_SET_H_POS_INDEX_LAT_A,not(d and e and f and g),testName,"SET H POS Index Latch A");
      check1(MS_SET_H_POS_INDEX_LAT_B,MS_SET_H_POS_INDEX_LAT_A,testName,"SET H POS Index Latch B"); 
   end loop; 

   testName := "14.70.14.1        ";

   for t in 0 to 511 loop
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      i := tv(8);
      g1 := (a and b and c) or (d and e);
      g2 := (b and c and h) or (d and g);
      g3 := not f and d and i;
      PS_BRANCH_TO_00001_ADDR_LAT <= a;
      PS_I_CYCLE_CTRL <= b;
      PS_LOGIC_GATE_SPECIAL_A_1 <= c;
      PS_1ST_I_O_CYCLE_CONTROL <= d;
      PS_1401_READ_TRIGGER <= e;
      MS_CONSOLE_INHIBIT_AR_RO <= not f;
      PS_1401_PUNCH_TRIGGER <= g;
      PS_INTERRUPT_BRANCH <= h;
      PS_1401_PRINT_TRIGGER <= i;
      wait for 30 ns;
      check1(MS_RO_00001_INDEX_ADDR,not(g1 and not f),testName,"RO 00001");
      check1(MS_RO_00101_INDEX_ADDR,not(g2 and not f),testName,"RO 00101");
      check1(MS_RO_00201_INDEX_ADDR,not(g3),testName,"RO 00201");
      check1(MS_RO_FIXED_ADDR,
        not (not MS_RO_00001_INDEX_ADDR or not MS_RO_00101_INDEX_ADDR or not MS_RO_00201_INDEX_ADDR),
        testName,"RO Fixed Addr");
   end loop; 

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 100 us;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

END;
