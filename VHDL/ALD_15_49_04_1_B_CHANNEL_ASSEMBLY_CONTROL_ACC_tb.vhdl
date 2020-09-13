-- Test Bench VHDL for IBM SMS ALD page 15.49.04.1
-- Title: B CHANNEL ASSEMBLY CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/12/2020 8:39:38 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_49_04_1_B_CHANNEL_ASSEMBLY_CONTROL_ACC_tb is
end ALD_15_49_04_1_B_CHANNEL_ASSEMBLY_CONTROL_ACC_tb;

architecture behavioral of ALD_15_49_04_1_B_CHANNEL_ASSEMBLY_CONTROL_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_15_49_04_1_B_CHANNEL_ASSEMBLY_CONTROL_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_LOAD_CYCLE:	 in STD_LOGIC;
		PS_OUTPUT_CYCLE:	 in STD_LOGIC;
		PS_DATA_MOVE_OP_CODE:	 in STD_LOGIC;
		PS_B_CYCLE_1:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_4_BIT:	 in STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_CODE:	 in STD_LOGIC;
		PS_C_CYCLE:	 in STD_LOGIC;
		MS_EDIT_SKID_CYCLE:	 in STD_LOGIC;
		PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN:	 in STD_LOGIC;
		PS_ARITH_TYPE_OP_CODES:	 in STD_LOGIC;
		PS_B_OR_D_CYCLE:	 in STD_LOGIC;
		MS_INTERRUPT_DOT_B_CYCLE:	 in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES:	 in STD_LOGIC;
		PS_A_CYCLE:	 in STD_LOGIC;
		PS_MOVE_CYCLE:	 in STD_LOGIC;
		PS_INPUT_CYCLE:	 in STD_LOGIC;
		MS_F_CYCLE:	 in STD_LOGIC;
		MB_ANY_LAST_IN_CYCLE_NOT_1401:	 in STD_LOGIC;
		PS_E_CYCLE:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_2:	 in STD_LOGIC;
		PS_E_CH_UNIT_NUMBER_0:	 in STD_LOGIC;
		PS_OUTPUT_FIELD_CYCLE_STAR_1414_STAR:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_2:	 in STD_LOGIC;
		PB_USE_B_CH_WM:	 out STD_LOGIC;
		MS_G_OP_DOT_C_CYCLE:	 out STD_LOGIC;
		MS_1401_H_OR_Q_DOT_A_CYCLE:	 out STD_LOGIC;
		PS_OUTPUT_FIELD_CYCLE:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_LOAD_CYCLE: STD_LOGIC := '0';
	signal PS_OUTPUT_CYCLE: STD_LOGIC := '0';
	signal PS_DATA_MOVE_OP_CODE: STD_LOGIC := '0';
	signal PS_B_CYCLE_1: STD_LOGIC := '0';
	signal PS_OP_MOD_REG_NOT_4_BIT: STD_LOGIC := '0';
	signal PS_STORE_ADDR_REGS_OP_CODE: STD_LOGIC := '0';
	signal PS_C_CYCLE: STD_LOGIC := '0';
	signal MS_EDIT_SKID_CYCLE: STD_LOGIC := '1';
	signal PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN: STD_LOGIC := '0';
	signal PS_ARITH_TYPE_OP_CODES: STD_LOGIC := '0';
	signal PS_B_OR_D_CYCLE: STD_LOGIC := '0';
	signal MS_INTERRUPT_DOT_B_CYCLE: STD_LOGIC := '1';
	signal PS_1401_STORE_AR_OP_CODES: STD_LOGIC := '0';
	signal PS_A_CYCLE: STD_LOGIC := '0';
	signal PS_MOVE_CYCLE: STD_LOGIC := '0';
	signal PS_INPUT_CYCLE: STD_LOGIC := '0';
	signal MS_F_CYCLE: STD_LOGIC := '1';
	signal MB_ANY_LAST_IN_CYCLE_NOT_1401: STD_LOGIC := '1';
	signal PS_E_CYCLE: STD_LOGIC := '0';
	signal PS_E_CH_SELECT_UNIT_2: STD_LOGIC := '0';
	signal PS_E_CH_UNIT_NUMBER_0: STD_LOGIC := '0';
	signal PS_OUTPUT_FIELD_CYCLE_STAR_1414_STAR: STD_LOGIC := '0';
	signal MS_E_CH_SELECT_UNIT_2: STD_LOGIC := '1';

	-- Outputs

	signal PB_USE_B_CH_WM: STD_LOGIC;
	signal MS_G_OP_DOT_C_CYCLE: STD_LOGIC;
	signal MS_1401_H_OR_Q_DOT_A_CYCLE: STD_LOGIC;
	signal PS_OUTPUT_FIELD_CYCLE: STD_LOGIC;

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

	UUT: ALD_15_49_04_1_B_CHANNEL_ASSEMBLY_CONTROL_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_LOAD_CYCLE => PS_LOAD_CYCLE,
		PS_OUTPUT_CYCLE => PS_OUTPUT_CYCLE,
		PS_DATA_MOVE_OP_CODE => PS_DATA_MOVE_OP_CODE,
		PS_B_CYCLE_1 => PS_B_CYCLE_1,
		PS_OP_MOD_REG_NOT_4_BIT => PS_OP_MOD_REG_NOT_4_BIT,
		PS_STORE_ADDR_REGS_OP_CODE => PS_STORE_ADDR_REGS_OP_CODE,
		PS_C_CYCLE => PS_C_CYCLE,
		MS_EDIT_SKID_CYCLE => MS_EDIT_SKID_CYCLE,
		PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN => PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN,
		PS_ARITH_TYPE_OP_CODES => PS_ARITH_TYPE_OP_CODES,
		PS_B_OR_D_CYCLE => PS_B_OR_D_CYCLE,
		MS_INTERRUPT_DOT_B_CYCLE => MS_INTERRUPT_DOT_B_CYCLE,
		PS_1401_STORE_AR_OP_CODES => PS_1401_STORE_AR_OP_CODES,
		PS_A_CYCLE => PS_A_CYCLE,
		PS_MOVE_CYCLE => PS_MOVE_CYCLE,
		PS_INPUT_CYCLE => PS_INPUT_CYCLE,
		MS_F_CYCLE => MS_F_CYCLE,
		MB_ANY_LAST_IN_CYCLE_NOT_1401 => MB_ANY_LAST_IN_CYCLE_NOT_1401,
		PS_E_CYCLE => PS_E_CYCLE,
		PS_E_CH_SELECT_UNIT_2 => PS_E_CH_SELECT_UNIT_2,
		PS_E_CH_UNIT_NUMBER_0 => PS_E_CH_UNIT_NUMBER_0,
		PS_OUTPUT_FIELD_CYCLE_STAR_1414_STAR => PS_OUTPUT_FIELD_CYCLE_STAR_1414_STAR,
		MS_E_CH_SELECT_UNIT_2 => MS_E_CH_SELECT_UNIT_2,
		PB_USE_B_CH_WM => PB_USE_B_CH_WM,
		MS_G_OP_DOT_C_CYCLE => MS_G_OP_DOT_C_CYCLE,
		MS_1401_H_OR_Q_DOT_A_CYCLE => MS_1401_H_OR_Q_DOT_A_CYCLE,
		PS_OUTPUT_FIELD_CYCLE => PS_OUTPUT_FIELD_CYCLE);

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
   variable tv: std_logic_vector(22 downto 0);
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8: std_logic;

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
      
      g1 := a and b;
      g2 := c and e and d;
      g3 := f and g;
      g4 := j and i and k;
      g5 := p and o;
      g6 := m and n;
      g7 := s and t and u;
      g8 := s and not w;
                  
	   PS_LOAD_CYCLE <= a;
      PS_OUTPUT_CYCLE <= b;
      PS_DATA_MOVE_OP_CODE <= c;
      PS_B_CYCLE_1 <= d;
      PS_OP_MOD_REG_NOT_4_BIT <= e;
      PS_STORE_ADDR_REGS_OP_CODE <= f;
      PS_C_CYCLE <= g;
      MS_EDIT_SKID_CYCLE <= not h;
      PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN <= i;
      PS_ARITH_TYPE_OP_CODES <= j;
      PS_B_OR_D_CYCLE <= k;
      MS_INTERRUPT_DOT_B_CYCLE <= not l;
      PS_1401_STORE_AR_OP_CODES <= m;
      PS_A_CYCLE <= n;
      PS_MOVE_CYCLE <= o;
      PS_INPUT_CYCLE <= p;
      MS_F_CYCLE <= not q;
      MB_ANY_LAST_IN_CYCLE_NOT_1401 <= not r;
      PS_E_CYCLE <= s;
      PS_E_CH_SELECT_UNIT_2 <= t;
      PS_E_CH_UNIT_NUMBER_0 <= u;
      PS_OUTPUT_FIELD_CYCLE_STAR_1414_STAR <= v;
      MS_E_CH_SELECT_UNIT_2 <= not w;

      wait for 30 ns;
      
      check1(MS_G_OP_DOT_C_CYCLE,not g3,testName,"G Op . C Cycle");
      check1(MS_1401_H_OR_Q_DOT_A_CYCLE,not g6,testName,"1401 H + Q . A Cycle");
      check1(PB_USE_B_CH_WM,h or l or r or g1 or g2 or g3 or g4 or g5 or g6,
         testName,"USE B Ch WM");
      check1(PS_OUTPUT_FIELD_CYCLE,q or g7 or g8 or v,testName,"Output Field Cycle");            
      
   end loop;


   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 300 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

end;
