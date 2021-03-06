-- Test Bench VHDL for IBM SMS ALD page 15.49.05.1
-- Title: B CHANNEL ASSEMBLY CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/13/2020 10:51:01 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_49_05_1_B_CHANNEL_ASSEMBLY_CONTROL_ACC_tb is
end ALD_15_49_05_1_B_CHANNEL_ASSEMBLY_CONTROL_ACC_tb;

architecture behavioral of ALD_15_49_05_1_B_CHANNEL_ASSEMBLY_CONTROL_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_15_49_05_1_B_CHANNEL_ASSEMBLY_CONTROL_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_ODD_PARITY_CYCLE:	 in STD_LOGIC;
		PB_OUTPUT_CYCLE:	 in STD_LOGIC;
		PS_OUTPUT_CYCLE:	 in STD_LOGIC;
		MB_B_CH_NOT_BLANK:	 in STD_LOGIC;
		PS_OUTPUT_FIELD_CYCLE:	 in STD_LOGIC;
		MS_LB_DOT_B_CYCLE_DOT_BODY_LATCH:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_2_BIT:	 in STD_LOGIC;
		PS_B_CYCLE_1:	 in STD_LOGIC;
		MS_INPUT_CYCLE:	 in STD_LOGIC;
		PS_DATA_MOVE_OP_CODE:	 in STD_LOGIC;
		PB_B_CH_GROUP_MARK_WM:	 in STD_LOGIC;
		MS_G_OP_DOT_C_CYCLE:	 in STD_LOGIC;
		PS_1401_CARD_PRINT_IN_PROC:	 in STD_LOGIC;
		MS_FILE_OP_DOT_D_CYCLE:	 in STD_LOGIC;
		PS_I_O_GRP_MK_WM_STOP_CTRL:	 in STD_LOGIC;
		MS_INTERRUPT_DOT_B_CYCLE:	 in STD_LOGIC;
		PS_USE_B_CH_ZONES_STAR_ARITH:	 in STD_LOGIC;
		MS_STORE_B_CH_CHARACTER:	 in STD_LOGIC;
		MB_USE_B_CH_NU_STAR_ARITH:	 in STD_LOGIC;
		PS_WORD_MARK_OP_CODES:	 in STD_LOGIC;
		PS_A_OR_B_CYCLE:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_1_BIT:	 in STD_LOGIC;
		MS_E_CH_FILE_DOT_NO_TRANSFER_BUS:	 in STD_LOGIC;
		MS_LB_DOT_B_CYCLE_DOT_3RD_SCAN_DOT_UNITS:	 in STD_LOGIC;
		PS_M_OR_L_OP_CODES:	 in STD_LOGIC;
		PS_ANY_LAST_INPUT_CYCLE:	 in STD_LOGIC;
		PB_B_CH_NOT_GROUP_MARK_WM:	 in STD_LOGIC;
		PB_1401_MODE:	 in STD_LOGIC;
		PB_USE_B_CH_ZONES:	 out STD_LOGIC;
		MS_INPUT_CYCLE_GRP_MK_WM_INSRT:	 out STD_LOGIC;
		PB_USE_B_CH_NU:	 out STD_LOGIC;
		MB_ANY_LAST_IN_CYCLE_NOT_1401:	 out STD_LOGIC;
		PB_ANY_LAST_INPUT_CYCLE:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_ODD_PARITY_CYCLE: STD_LOGIC := '1';
	signal PB_OUTPUT_CYCLE: STD_LOGIC := '0';
	signal PS_OUTPUT_CYCLE: STD_LOGIC := '0';
	signal MB_B_CH_NOT_BLANK: STD_LOGIC := '1';
	signal PS_OUTPUT_FIELD_CYCLE: STD_LOGIC := '0';
	signal MS_LB_DOT_B_CYCLE_DOT_BODY_LATCH: STD_LOGIC := '1';
	signal PS_OP_MOD_REG_NOT_2_BIT: STD_LOGIC := '0';
	signal PS_B_CYCLE_1: STD_LOGIC := '0';
	signal MS_INPUT_CYCLE: STD_LOGIC := '1';
	signal PS_DATA_MOVE_OP_CODE: STD_LOGIC := '0';
	signal PB_B_CH_GROUP_MARK_WM: STD_LOGIC := '0';
	signal MS_G_OP_DOT_C_CYCLE: STD_LOGIC := '1';
	signal PS_1401_CARD_PRINT_IN_PROC: STD_LOGIC := '0';
	signal MS_FILE_OP_DOT_D_CYCLE: STD_LOGIC := '1';
	signal PS_I_O_GRP_MK_WM_STOP_CTRL: STD_LOGIC := '0';
	signal MS_INTERRUPT_DOT_B_CYCLE: STD_LOGIC := '1';
	signal PS_USE_B_CH_ZONES_STAR_ARITH: STD_LOGIC := '0';
	signal MS_STORE_B_CH_CHARACTER: STD_LOGIC := '1';
	signal MB_USE_B_CH_NU_STAR_ARITH: STD_LOGIC := '1';
	signal PS_WORD_MARK_OP_CODES: STD_LOGIC := '0';
	signal PS_A_OR_B_CYCLE: STD_LOGIC := '0';
	signal PS_OP_MOD_REG_NOT_1_BIT: STD_LOGIC := '0';
	signal MS_E_CH_FILE_DOT_NO_TRANSFER_BUS: STD_LOGIC := '1';
	signal MS_LB_DOT_B_CYCLE_DOT_3RD_SCAN_DOT_UNITS: STD_LOGIC := '1';
	signal PS_M_OR_L_OP_CODES: STD_LOGIC := '0';
	signal PS_ANY_LAST_INPUT_CYCLE: STD_LOGIC := '0';
	signal PB_B_CH_NOT_GROUP_MARK_WM: STD_LOGIC := '0';
	signal PB_1401_MODE: STD_LOGIC := '0';

	-- Outputs

	signal PB_USE_B_CH_ZONES: STD_LOGIC;
	signal MS_INPUT_CYCLE_GRP_MK_WM_INSRT: STD_LOGIC;
	signal PB_USE_B_CH_NU: STD_LOGIC;
	signal MB_ANY_LAST_IN_CYCLE_NOT_1401: STD_LOGIC;
	signal PB_ANY_LAST_INPUT_CYCLE: STD_LOGIC;

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

	UUT: ALD_15_49_05_1_B_CHANNEL_ASSEMBLY_CONTROL_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MS_ODD_PARITY_CYCLE => MS_ODD_PARITY_CYCLE,
		PB_OUTPUT_CYCLE => PB_OUTPUT_CYCLE,
		PS_OUTPUT_CYCLE => PS_OUTPUT_CYCLE,
		MB_B_CH_NOT_BLANK => MB_B_CH_NOT_BLANK,
		PS_OUTPUT_FIELD_CYCLE => PS_OUTPUT_FIELD_CYCLE,
		MS_LB_DOT_B_CYCLE_DOT_BODY_LATCH => MS_LB_DOT_B_CYCLE_DOT_BODY_LATCH,
		PS_OP_MOD_REG_NOT_2_BIT => PS_OP_MOD_REG_NOT_2_BIT,
		PS_B_CYCLE_1 => PS_B_CYCLE_1,
		MS_INPUT_CYCLE => MS_INPUT_CYCLE,
		PS_DATA_MOVE_OP_CODE => PS_DATA_MOVE_OP_CODE,
		PB_B_CH_GROUP_MARK_WM => PB_B_CH_GROUP_MARK_WM,
		MS_G_OP_DOT_C_CYCLE => MS_G_OP_DOT_C_CYCLE,
		PS_1401_CARD_PRINT_IN_PROC => PS_1401_CARD_PRINT_IN_PROC,
		MS_FILE_OP_DOT_D_CYCLE => MS_FILE_OP_DOT_D_CYCLE,
		PS_I_O_GRP_MK_WM_STOP_CTRL => PS_I_O_GRP_MK_WM_STOP_CTRL,
		MS_INTERRUPT_DOT_B_CYCLE => MS_INTERRUPT_DOT_B_CYCLE,
		PS_USE_B_CH_ZONES_STAR_ARITH => PS_USE_B_CH_ZONES_STAR_ARITH,
		MS_STORE_B_CH_CHARACTER => MS_STORE_B_CH_CHARACTER,
		MB_USE_B_CH_NU_STAR_ARITH => MB_USE_B_CH_NU_STAR_ARITH,
		PS_WORD_MARK_OP_CODES => PS_WORD_MARK_OP_CODES,
		PS_A_OR_B_CYCLE => PS_A_OR_B_CYCLE,
		PS_OP_MOD_REG_NOT_1_BIT => PS_OP_MOD_REG_NOT_1_BIT,
		MS_E_CH_FILE_DOT_NO_TRANSFER_BUS => MS_E_CH_FILE_DOT_NO_TRANSFER_BUS,
		MS_LB_DOT_B_CYCLE_DOT_3RD_SCAN_DOT_UNITS => MS_LB_DOT_B_CYCLE_DOT_3RD_SCAN_DOT_UNITS,
		PS_M_OR_L_OP_CODES => PS_M_OR_L_OP_CODES,
		PS_ANY_LAST_INPUT_CYCLE => PS_ANY_LAST_INPUT_CYCLE,
		PB_B_CH_NOT_GROUP_MARK_WM => PB_B_CH_NOT_GROUP_MARK_WM,
		PB_1401_MODE => PB_1401_MODE,
		PB_USE_B_CH_ZONES => PB_USE_B_CH_ZONES,
		MS_INPUT_CYCLE_GRP_MK_WM_INSRT => MS_INPUT_CYCLE_GRP_MK_WM_INSRT,
		PB_USE_B_CH_NU => PB_USE_B_CH_NU,
		MB_ANY_LAST_IN_CYCLE_NOT_1401 => MB_ANY_LAST_IN_CYCLE_NOT_1401,
		PB_ANY_LAST_INPUT_CYCLE => PB_ANY_LAST_INPUT_CYCLE);

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

--fpga_clk_process: process

--   constant clk_period : time := 10 ns;

--   begin
--      fpga_clk <= '0';
--      wait for clk_period / 2;
--      fpga_clk <= '1';
--      wait for clk_period / 2;
--   end process;

--
-- End of TestBenchFPGAClock.vhdl
--   

-- Place your test bench code in the uut_process

uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;
   variable tv: std_logic_vector(27 downto 0);
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable z0, z2, z3: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;

   begin

   -- Your test bench code

   testName := "15.49.05.1        ";

   -- relocated from main loop - too many signals was crashing vivado
         
   for tt in 0 to 2**4 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      i := tv(0);
      k := tv(1);
      m := tv(2);
      o := tv(3);
   	MS_INPUT_CYCLE <= not i;
      PB_B_CH_GROUP_MARK_WM <= k;
      PS_1401_CARD_PRINT_IN_PROC <= m;
      PS_I_O_GRP_MK_WM_STOP_CTRL <= o;
      
      wait for 30 ns;
      
      check1(MS_INPUT_CYCLE_GRP_MK_WM_INSRT,NOT(i and k and o and not m),
         testName, "Input Cycle GMWM Insert");      
   
   end loop;


   for tt in 0 to 2**24 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      -- i := tv(8);
      j := tv(8);
      -- k := tv(10);
      l := tv(9);
      -- m := tv(12);
      n := tv(10);
      -- o := tv(14);
      p := tv(11);
      q := tv(12);
      r := tv(13);
      s := tv(14);
      t := tv(15);
      u := tv(16);
      v := tv(17);
      w := tv(18);
      x := tv(19);
      y := tv(20);
      z0 := tv(21);
      z2 := tv(22);
      z3 := tv(23);
      
      g1 := j and g and h;
      g2 := e and b and (a or d);
      g3 := t and u;
      g4 := z2 and (not z0 or w or not y or not z3);
      g5 := e and c;
      g6 := j and v and h;

   	MS_ODD_PARITY_CYCLE <= not a;
   	PB_OUTPUT_CYCLE <= b;
   	PS_OUTPUT_CYCLE <= c;
   	MB_B_CH_NOT_BLANK <= not d;
   	PS_OUTPUT_FIELD_CYCLE <= e;
   	MS_LB_DOT_B_CYCLE_DOT_BODY_LATCH <= not f;
   	PS_OP_MOD_REG_NOT_2_BIT <= g;
   	PS_B_CYCLE_1 <= h;
   	-- MS_INPUT_CYCLE <= not i;
   	PS_DATA_MOVE_OP_CODE <= j;
   	-- PB_B_CH_GROUP_MARK_WM <= k;
   	MS_G_OP_DOT_C_CYCLE <= not l;
   	-- PS_1401_CARD_PRINT_IN_PROC <= m;
   	MS_FILE_OP_DOT_D_CYCLE <= not n;
   	-- PS_I_O_GRP_MK_WM_STOP_CTRL <= o;
   	MS_INTERRUPT_DOT_B_CYCLE <= not p;
   	PS_USE_B_CH_ZONES_STAR_ARITH <= q;
   	MS_STORE_B_CH_CHARACTER <= not r;
   	MB_USE_B_CH_NU_STAR_ARITH <= not s;
   	PS_WORD_MARK_OP_CODES <= t;
   	PS_A_OR_B_CYCLE <= u;
   	PS_OP_MOD_REG_NOT_1_BIT <= v;
   	MS_E_CH_FILE_DOT_NO_TRANSFER_BUS <= not w;
   	MS_LB_DOT_B_CYCLE_DOT_3RD_SCAN_DOT_UNITS <= not x;
   	PS_M_OR_L_OP_CODES <= y;
   	PS_ANY_LAST_INPUT_CYCLE <= z2;
   	PB_B_CH_NOT_GROUP_MARK_WM <= z3;
   	PB_1401_MODE <= z0;
      
      wait for 30 ns;
      
      check1(MB_ANY_LAST_IN_CYCLE_NOT_1401,NOT g4,testName,"Any Last In . Not 1401");
      check1(PB_ANY_LAST_INPUT_CYCLE,PS_ANY_LAST_INPUT_CYCLE,testName,"+B Any Last Input Cycle");
      -- check1(MS_INPUT_CYCLE_GRP_MK_WM_INSRT,NOT(i and k and o and not m),testName,
      --    "Input Cycle GMWM Insert");
      check1(PB_USE_B_CH_ZONES,q or f or n or g1 or g2 or g3 or l or p or r or g4,
         testName,"Use B Ch Zones");
      check1(PB_USE_B_CH_NU,g4 or g3 or r or p or n or x or g5 or g6 or s,testName,
         "Use B Ch Numerics");
      
   end loop;

   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 8000 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

end;
