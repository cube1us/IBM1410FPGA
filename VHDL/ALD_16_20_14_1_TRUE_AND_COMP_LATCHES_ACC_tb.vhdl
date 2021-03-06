-- Test Bench VHDL for IBM SMS ALD page 16.20.14.1
-- Title: TRUE AND COMP LATCHES-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/3/2020 12:20:13 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_20_14_1_TRUE_AND_COMP_LATCHES_ACC_tb is
end ALD_16_20_14_1_TRUE_AND_COMP_LATCHES_ACC_tb;

architecture behavioral of ALD_16_20_14_1_TRUE_AND_COMP_LATCHES_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_16_20_14_1_TRUE_AND_COMP_LATCHES_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MB_START_TRUE_ADD_1:	 in STD_LOGIC;
		MB_START_TRUE_ADD_2:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		MS_PROGRAM_RESET_5:	 in STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		PS_SET_TRUE:	 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_2:	 in STD_LOGIC;
		PS_REGEN_TRUE:	 in STD_LOGIC;
		MS_LB_OP_DOT_1ST_OR_3RD_SCAN:	 in STD_LOGIC;
		PS_ADDER_A_CH_USE_T_OR_C:	 in STD_LOGIC;
		MS_X_CYCLE:	 in STD_LOGIC;
		PB_TRUE_ADD_A:	 out STD_LOGIC;
		PS_TRUE_LATCH:	 out STD_LOGIC;
		PS_TRUE_LATCH_1:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MB_START_TRUE_ADD_1: STD_LOGIC := '1';
	signal MB_START_TRUE_ADD_2: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_C_1: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_D_1: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_5: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_B_1: STD_LOGIC := '1';
	signal PS_SET_TRUE: STD_LOGIC := '0';
	signal PS_LAST_LOGIC_GATE_2: STD_LOGIC := '0';
	signal PS_REGEN_TRUE: STD_LOGIC := '0';
	signal MS_LB_OP_DOT_1ST_OR_3RD_SCAN: STD_LOGIC := '1';
	signal PS_ADDER_A_CH_USE_T_OR_C: STD_LOGIC := '0';
	signal MS_X_CYCLE: STD_LOGIC := '1';

	-- Outputs

	signal PB_TRUE_ADD_A: STD_LOGIC;
	signal PS_TRUE_LATCH: STD_LOGIC;
	signal PS_TRUE_LATCH_1: STD_LOGIC;

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

	UUT: ALD_16_20_14_1_TRUE_AND_COMP_LATCHES_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MB_START_TRUE_ADD_1 => MB_START_TRUE_ADD_1,
		MB_START_TRUE_ADD_2 => MB_START_TRUE_ADD_2,
		PS_LOGIC_GATE_C_1 => PS_LOGIC_GATE_C_1,
		MS_LOGIC_GATE_D_1 => MS_LOGIC_GATE_D_1,
		MS_PROGRAM_RESET_5 => MS_PROGRAM_RESET_5,
		MS_LOGIC_GATE_B_1 => MS_LOGIC_GATE_B_1,
		PS_SET_TRUE => PS_SET_TRUE,
		PS_LAST_LOGIC_GATE_2 => PS_LAST_LOGIC_GATE_2,
		PS_REGEN_TRUE => PS_REGEN_TRUE,
		MS_LB_OP_DOT_1ST_OR_3RD_SCAN => MS_LB_OP_DOT_1ST_OR_3RD_SCAN,
		PS_ADDER_A_CH_USE_T_OR_C => PS_ADDER_A_CH_USE_T_OR_C,
		MS_X_CYCLE => MS_X_CYCLE,
		PB_TRUE_ADD_A => PB_TRUE_ADD_A,
		PS_TRUE_LATCH => PS_TRUE_LATCH,
		PS_TRUE_LATCH_1 => PS_TRUE_LATCH_1);

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

   testName := "16.20.14.1        ";

   -- Test reset
   
   MS_PROGRAM_RESET_5 <= '0';
   wait for 30 ns;
   MS_PROGRAM_RESET_5 <= '1';
   wait for 30 ns;

   check1(PS_TRUE_LATCH,'0',testName,"Reset True Latch");
   check1(PS_TRUE_LATCH_1,'0',testName,"Reset True Latch 1");
   check1(PB_TRUE_ADD_A,'0',testName,"Reset True Add A");
   
   -- Test True add A except for True Latch Input
   
   for tt in 0 to 2**3 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      PS_ADDER_A_CH_USE_T_OR_C <= tv(0);
      MS_X_CYCLE <= not tv(1);
      MS_LB_OP_DOT_1ST_OR_3RD_SCAN <= not tv(2);
      wait for 30 ns;
      check1(PB_TRUE_ADD_A,tv(1) or tv(2),testName,"True Add A no True Latch");
   end loop;
   
   PS_ADDER_A_CH_USE_T_OR_C <= '0'; -- For next set of tests
   MS_X_CYCLE <= '1';
   MS_LB_OP_DOT_1ST_OR_3RD_SCAN <= '1';
   
   -- Test True Ctrl and rest of True Add A   
   
   for tt in 0 to 2**4 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      MS_PROGRAM_RESET_5 <= '0';
      wait for 30 ns;
      MS_PROGRAM_RESET_5 <= '1';
      wait for 30 ns;
      check1(PS_TRUE_LATCH,'0',testName,"1A");
      check1(PS_TRUE_LATCH_1,'0',testName,"1B");
      check1(PB_TRUE_ADD_A,'0',testName,"1C");
      PS_SET_TRUE <= tv(0);
      PS_LAST_LOGIC_GATE_2 <= tv(1);
      PS_LOGIC_GATE_C_1 <= tv(2);
      PS_ADDER_A_CH_USE_T_OR_C <= tv(3);
      wait for 60 ns; -- perhaps set latches (cascaced)      
      PS_SET_TRUE <= '0';
      PS_LAST_LOGIC_GATE_2 <= '1';
      check1(PS_TRUE_LATCH,tv(0) and tv(1) and tv(2),testName,"1D");
      check1(PS_TRUE_LATCH_1,tv(0) and tv(1) and tv(2),testName,"1E");
      check1(PB_TRUE_ADD_A,tv(0) and tv(1) and tv(2) and tv(3),testName,"1F");
      -- Reset True Ctrl and then True Latch
      MS_LOGIC_GATE_D_1 <= '0';
      wait for 30 ns;
      MS_LOGIC_GATE_D_1 <= '1';
      wait for 60 ns; -- Resetting True Ctrl won't reset True Latch
      check1(PS_TRUE_LATCH,tv(0) and tv(1) and tv(2),testName,"1G");
      check1(PS_TRUE_LATCH_1,tv(0) and tv(1) and tv(2),testName,"1H");
      check1(PB_TRUE_ADD_A,tv(0) and tv(1) and tv(2) and tv(3),testName,"1I");
      -- But then resetting True Latch should work
      MS_LOGIC_GATE_B_1 <= '0';
      wait for 30 ns;
      MS_LOGIC_GATE_B_1 <= '1';
      wait for 30 ns;
      check1(PS_TRUE_LATCH,'0',testName,"1J");
      check1(PS_TRUE_LATCH_1,'0',testName,"1K");
      check1(PB_TRUE_ADD_A,'0',testName,"1L");            
   end loop;
   
   -- Test True Latch w/o True Ctrl
   
   PS_SET_TRUE <= '0';
   PS_LAST_LOGIC_GATE_2 <= '0';
   PS_LOGIC_GATE_C_1 <= '0';
   PS_ADDER_A_CH_USE_T_OR_C <= '0';

   for tt in 0 to 3 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      MS_PROGRAM_RESET_5 <= '0';
      wait for 30 ns;
      MS_PROGRAM_RESET_5 <= '1';
      wait for 30 ns;
      MB_START_TRUE_ADD_1 <= not tv(0);
      MB_START_TRUE_ADD_2 <= not tv(1);
      wait for 30 ns;
      check1(PS_TRUE_LATCH,tv(0) or tv(1),testName,"2A");
      check1(PS_TRUE_LATCH_1,tv(0) or tv(1),testName,"2B");      
   end loop;
   
   -- Test Regen
   
   MB_START_TRUE_ADD_1 <= '1';
   MB_START_TRUE_ADD_2 <= '1';
   MS_PROGRAM_RESET_5 <= '0';
   wait for 30 ns;
   MS_PROGRAM_RESET_5 <= '1';
   wait for 30 ns;
   
   MB_START_TRUE_ADD_1 <= '0';
   wait for 30 ns; -- Sets True Latch
   MB_START_TRUE_ADD_1 <= '1';
   wait for 30 ns; -- Should stay set
   check1(PS_TRUE_LATCH,'1',testName,"3A");
   check1(PS_TRUE_LATCH_1,'1',testName,"3B");
   -- Set True Ctrl latch from True Latch regen      
   PS_REGEN_TRUE <= '1'; 
   PS_LAST_LOGIC_GATE_2 <= '1';
   wait for 30 ns;
   -- Reset True Latch (and reset inputs to True Ctrl Latch - which should stay set)
   MS_LOGIC_GATE_B_1 <= '0';
   PS_REGEN_TRUE <= '0'; 
   PS_LAST_LOGIC_GATE_2 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   check1(PS_TRUE_LATCH,'0',testName,"3C");
   check1(PS_TRUE_LATCH_1,'0',testName,"3D");
   -- Now set True latch via True Ctrl
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns; -- Should set True Latch
   PS_LOGIC_GATE_C_1 <= '0';
   wait for 30 ns;
   -- Reset True Ctrl
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_D_1 <= '1';
   wait for 30 ns;
   check1(PS_TRUE_LATCH,'1',testName,"3E");
   check1(PS_TRUE_LATCH_1,'1',testName,"3F");
   -- Reset True Latch (so now, both are reset)
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   check1(PS_TRUE_LATCH,'0',testName,"3G");
   check1(PS_TRUE_LATCH_1,'0',testName,"3H");
   -- Since True Ctrl is NOT set any more, this should NOT set True Latch either
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns;
   PS_LOGIC_GATE_C_1 <= '0';
   wait for 30 ns;
   check1(PS_TRUE_LATCH,'0',testName,"3I");
   check1(PS_TRUE_LATCH_1,'0',testName,"3J");
          
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
