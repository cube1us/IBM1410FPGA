-- Test Bench VHDL for IBM SMS ALD page 16.20.12.1
-- Title: EARLY CARRY TRUE COMP CTRLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/3/2020 9:48:34 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_20_12_1_EARLY_CARRY_TRUE_COMP_CTRLS_ACC_tb is
end ALD_16_20_12_1_EARLY_CARRY_TRUE_COMP_CTRLS_ACC_tb;

architecture behavioral of ALD_16_20_12_1_EARLY_CARRY_TRUE_COMP_CTRLS_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_16_20_12_1_EARLY_CARRY_TRUE_COMP_CTRLS_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_LOGIC_GATE_E_1:	 in STD_LOGIC;
		PB_B_CH_PLUS:	 in STD_LOGIC;
		PB_A_CH_PLUS:	 in STD_LOGIC;
		PB_B_CH_MINUS:	 in STD_LOGIC;
		PB_A_CH_MINUS:	 in STD_LOGIC;
		PS_ADD_OP_CODE:	 in STD_LOGIC;
		PS_B_CYCLE:	 in STD_LOGIC;
		PS_UNITS_LATCH:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		PS_SUBT_OP_CODE:	 in STD_LOGIC;
		MS_1401_MODE_1:	 in STD_LOGIC;
		PS_X_CYCLE:	 in STD_LOGIC;
		PS_A_RING_2_TIME:	 in STD_LOGIC;
		MB_START_TRUE_ADD_1:	 out STD_LOGIC;
		MB_START_TRUE_ADD_2:	 out STD_LOGIC;
		MB_START_COMPL_ADD_1:	 out STD_LOGIC;
		MB_START_COMPL_ADD_2:	 out STD_LOGIC;
		PB_1401_MODE:	 out STD_LOGIC;
		MB_START_COMPL_INDEX:	 out STD_LOGIC;
		MB_START_TRUE_INDEX:	 out STD_LOGIC;
		MB_START_1401_INDEX:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_E_1: STD_LOGIC := '1';
	signal PB_B_CH_PLUS: STD_LOGIC := '0';
	signal PB_A_CH_PLUS: STD_LOGIC := '0';
	signal PB_B_CH_MINUS: STD_LOGIC := '0';
	signal PB_A_CH_MINUS: STD_LOGIC := '0';
	signal PS_ADD_OP_CODE: STD_LOGIC := '0';
	signal PS_B_CYCLE: STD_LOGIC := '0';
	signal PS_UNITS_LATCH: STD_LOGIC := '0';
	signal PS_1ST_SCAN: STD_LOGIC := '0';
	signal PS_SUBT_OP_CODE: STD_LOGIC := '0';
	signal MS_1401_MODE_1: STD_LOGIC := '1';
	signal PS_X_CYCLE: STD_LOGIC := '0';
	signal PS_A_RING_2_TIME: STD_LOGIC := '0';

	-- Outputs

	signal MB_START_TRUE_ADD_1: STD_LOGIC;
	signal MB_START_TRUE_ADD_2: STD_LOGIC;
	signal MB_START_COMPL_ADD_1: STD_LOGIC;
	signal MB_START_COMPL_ADD_2: STD_LOGIC;
	signal PB_1401_MODE: STD_LOGIC;
	signal MB_START_COMPL_INDEX: STD_LOGIC;
	signal MB_START_TRUE_INDEX: STD_LOGIC;
	signal MB_START_1401_INDEX: STD_LOGIC;

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

	UUT: ALD_16_20_12_1_EARLY_CARRY_TRUE_COMP_CTRLS_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MS_LOGIC_GATE_E_1 => MS_LOGIC_GATE_E_1,
		PB_B_CH_PLUS => PB_B_CH_PLUS,
		PB_A_CH_PLUS => PB_A_CH_PLUS,
		PB_B_CH_MINUS => PB_B_CH_MINUS,
		PB_A_CH_MINUS => PB_A_CH_MINUS,
		PS_ADD_OP_CODE => PS_ADD_OP_CODE,
		PS_B_CYCLE => PS_B_CYCLE,
		PS_UNITS_LATCH => PS_UNITS_LATCH,
		PS_1ST_SCAN => PS_1ST_SCAN,
		PS_SUBT_OP_CODE => PS_SUBT_OP_CODE,
		MS_1401_MODE_1 => MS_1401_MODE_1,
		PS_X_CYCLE => PS_X_CYCLE,
		PS_A_RING_2_TIME => PS_A_RING_2_TIME,
		MB_START_TRUE_ADD_1 => MB_START_TRUE_ADD_1,
		MB_START_TRUE_ADD_2 => MB_START_TRUE_ADD_2,
		MB_START_COMPL_ADD_1 => MB_START_COMPL_ADD_1,
		MB_START_COMPL_ADD_2 => MB_START_COMPL_ADD_2,
		PB_1401_MODE => PB_1401_MODE,
		MB_START_COMPL_INDEX => MB_START_COMPL_INDEX,
		MB_START_TRUE_INDEX => MB_START_TRUE_INDEX,
		MB_START_1401_INDEX => MB_START_1401_INDEX);

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

   testName := "16.20.12.1        ";

   for tt in 0 to 2**13 loop
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

      g1 := g and h and j;
      g2 := c and f and g1;
      g3 := g1 and k and e;
      g4 := g1 and c and k;
      g5 := g1 and e and f;
      g6 := not l and n and m;
            
		MS_LOGIC_GATE_E_1 <= not a;
      PB_B_CH_PLUS <= b;
      PB_A_CH_PLUS <= c;
      PB_B_CH_MINUS <= d;
      PB_A_CH_MINUS <= e;
      PS_ADD_OP_CODE <= f;
      PS_B_CYCLE <= g;
      PS_UNITS_LATCH <= h;
      PS_1ST_SCAN <= j;
      PS_SUBT_OP_CODE <= k;
      MS_1401_MODE_1 <= not l;
      PS_X_CYCLE <= m;
      PS_A_RING_2_TIME <= n;
      
      wait for 30 ns;
      
      
      check1(MB_START_TRUE_ADD_1,not(b and a and (g2 or g3)),testName,"-B Start True Add 1");
      check1(MB_START_TRUE_ADD_2,not(a and (g4 or g5) and d),testName,"-B Start True Add 2");
      check1(MB_START_COMPL_ADD_1,not(b and (g4 or g5) and a),testName,"-B Start Compl Add 1");
      check1(MB_START_COMPL_ADD_2,not(a and (g2 or g3) and d),testName,"-B Start Compl Add 2");
      check1(MB_START_COMPL_INDEX,not(d and a and g6),testName,"-B Start Compl Index");
      check1(MB_START_TRUE_INDEX,not(g6 and b and a),testName,"-B Start True Index");
      check1(MB_START_1401_INDEX,not(a and m and n and l),testName,"-B Start 1401 Index");
      check1(PB_1401_MODE,l,testName,"+B 1401 Mode");
      
      
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
