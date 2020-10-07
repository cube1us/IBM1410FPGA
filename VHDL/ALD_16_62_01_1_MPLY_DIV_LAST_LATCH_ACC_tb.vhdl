-- Test Bench VHDL for IBM SMS ALD page 16.62.01.1
-- Title: MPLY DIV LAST LATCH-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/6/2020 3:29:57 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_62_01_1_MPLY_DIV_LAST_LATCH_ACC_tb is
end ALD_16_62_01_1_MPLY_DIV_LAST_LATCH_ACC_tb;

architecture behavioral of ALD_16_62_01_1_MPLY_DIV_LAST_LATCH_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_16_62_01_1_MPLY_DIV_LAST_LATCH_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_UNITS_LATCH:	 in STD_LOGIC;
		MB_1401_MPLY_EARLY_END:	 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1:	 in STD_LOGIC;
		PS_B_CH_B_BIT:	 in STD_LOGIC;
		PS_DIV_OP_CODE:	 in STD_LOGIC;
		MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_BW:	 in STD_LOGIC;
		PS_B_CYCLE:	 in STD_LOGIC;
		PS_TRUE_LATCH:	 in STD_LOGIC;
		MS_PROGRAM_RESET_5:	 in STD_LOGIC;
		MS_1401_DIV_EARLY_END:	 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_2:	 in STD_LOGIC;
		MS_DIV_DOT_LAST_INSN_RO_CYCLE:	 in STD_LOGIC;
		MS_MPLY_DOT_LAST_INSN_RO_CYCLE:	 in STD_LOGIC;
		MS_DIV_DOT_U_DOT_B_DOT_BB_DOT_T:	 out STD_LOGIC;
		PS_MPLY_DIV_LAST_LATCH:	 out STD_LOGIC;
		PS_NOT_MPLY_DIV_LAST_LATCH:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_UNITS_LATCH: STD_LOGIC := '0';
	signal MB_1401_MPLY_EARLY_END: STD_LOGIC := '1';
	signal PS_LAST_LOGIC_GATE_1: STD_LOGIC := '0';
	signal PS_B_CH_B_BIT: STD_LOGIC := '0';
	signal PS_DIV_OP_CODE: STD_LOGIC := '0';
	signal MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_BW: STD_LOGIC := '1';
	signal PS_B_CYCLE: STD_LOGIC := '0';
	signal PS_TRUE_LATCH: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_5: STD_LOGIC := '1';
	signal MS_1401_DIV_EARLY_END: STD_LOGIC := '1';
	signal PS_LAST_LOGIC_GATE_2: STD_LOGIC := '0';
	signal MS_DIV_DOT_LAST_INSN_RO_CYCLE: STD_LOGIC := '1';
	signal MS_MPLY_DOT_LAST_INSN_RO_CYCLE: STD_LOGIC := '1';

	-- Outputs

	signal MS_DIV_DOT_U_DOT_B_DOT_BB_DOT_T: STD_LOGIC;
	signal PS_MPLY_DIV_LAST_LATCH: STD_LOGIC;
	signal PS_NOT_MPLY_DIV_LAST_LATCH: STD_LOGIC;

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

	UUT: ALD_16_62_01_1_MPLY_DIV_LAST_LATCH_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_UNITS_LATCH => PS_UNITS_LATCH,
		MB_1401_MPLY_EARLY_END => MB_1401_MPLY_EARLY_END,
		PS_LAST_LOGIC_GATE_1 => PS_LAST_LOGIC_GATE_1,
		PS_B_CH_B_BIT => PS_B_CH_B_BIT,
		PS_DIV_OP_CODE => PS_DIV_OP_CODE,
		MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_BW => MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_BW,
		PS_B_CYCLE => PS_B_CYCLE,
		PS_TRUE_LATCH => PS_TRUE_LATCH,
		MS_PROGRAM_RESET_5 => MS_PROGRAM_RESET_5,
		MS_1401_DIV_EARLY_END => MS_1401_DIV_EARLY_END,
		PS_LAST_LOGIC_GATE_2 => PS_LAST_LOGIC_GATE_2,
		MS_DIV_DOT_LAST_INSN_RO_CYCLE => MS_DIV_DOT_LAST_INSN_RO_CYCLE,
		MS_MPLY_DOT_LAST_INSN_RO_CYCLE => MS_MPLY_DOT_LAST_INSN_RO_CYCLE,
		MS_DIV_DOT_U_DOT_B_DOT_BB_DOT_T => MS_DIV_DOT_U_DOT_B_DOT_BB_DOT_T,
		PS_MPLY_DIV_LAST_LATCH => PS_MPLY_DIV_LAST_LATCH,
		PS_NOT_MPLY_DIV_LAST_LATCH => PS_NOT_MPLY_DIV_LAST_LATCH);

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

   testName := "16.62.01.1        ";

   for tt in 0 to 2**11 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      k := tv(8);
      m := tv(9);
      n := tv(10);

      g2 := f or b;
      g3 := e and a and g and d and h;
      g1 := (g2 or g3) and c;
      g4 := g1 or k;
      
      MS_PROGRAM_RESET_5 <= '0';
      wait for 30 ns;
      MS_PROGRAM_RESET_5 <= '1';
      wait for 30 ns;
      
      check1(PS_MPLY_DIV_LAST_LATCH,'0',testName,"1A");

		PS_UNITS_LATCH <= a;
		MB_1401_MPLY_EARLY_END <= not b;
		PS_LAST_LOGIC_GATE_1 <= c;
		PS_B_CH_B_BIT <= d;
		PS_DIV_OP_CODE <= e;
		MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_BW <= not f;
		PS_B_CYCLE <= g;
		PS_TRUE_LATCH <= h;
		MS_1401_DIV_EARLY_END <= not k;
		PS_LAST_LOGIC_GATE_2 <= c;
		MS_DIV_DOT_LAST_INSN_RO_CYCLE <= '1';
		MS_MPLY_DOT_LAST_INSN_RO_CYCLE <= '1';
      wait for 30 ns; -- perhaps set MDL Latch      
      check1(MS_DIV_DOT_U_DOT_B_DOT_BB_DOT_T,not(g3),testName,"1B");
      check1(PS_MPLY_DIV_LAST_LATCH,g4,testName,"1C");

      -- Remove setting inputs before attempting reset
            
      PS_LAST_LOGIC_GATE_1 <= '0'; 
      PS_LAST_LOGIC_GATE_2 <= '0'; 
      MS_1401_DIV_EARLY_END <= '1';
      wait for 30 ns;
      check1(PS_MPLY_DIV_LAST_LATCH,g4,testName,"1D");
      
      if(g4 = '1') then
         MS_DIV_DOT_LAST_INSN_RO_CYCLE <= not m;
         MS_MPLY_DOT_LAST_INSN_RO_CYCLE <= not n;
         wait for 30 ns;
         check1(PS_MPLY_DIV_LAST_LATCH,not(m or n), testName,"1E");
      end if;
      
      -- Remove reset inputs as well before next iteration
      MS_DIV_DOT_LAST_INSN_RO_CYCLE <= '1';
      MS_MPLY_DOT_LAST_INSN_RO_CYCLE <= '1';
                              
   end loop;
   
      for tt in 0 to 2**11 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      k := tv(8);
      m := tv(9);
      n := tv(10);

      g2 := f or b;
      g3 := e and a and g and d and h;
      g1 := (g2 or g3) and c;
      g4 := g1 or k;
      
      MS_PROGRAM_RESET_5 <= '0';
      wait for 30 ns;
      MS_PROGRAM_RESET_5 <= '1';
      wait for 30 ns;
      
      check1(PS_NOT_MPLY_DIV_LAST_LATCH,'0',testName,"2A");

      -- Now, maybe set the latch
      
      MS_DIV_DOT_LAST_INSN_RO_CYCLE <= not m;
      MS_MPLY_DOT_LAST_INSN_RO_CYCLE <= not n;
      wait for 30 ns;
      check1(PS_NOT_MPLY_DIV_LAST_LATCH,m or n,testName,"2B");
      
      -- If it did not set, set it now anyway by forcing it set
      
      MS_MPLY_DOT_LAST_INSN_RO_CYCLE <= '0';      
      wait for 30 ns;
      check1(PS_NOT_MPLY_DIV_LAST_LATCH,'1',testName,"2C");

      -- Now, disable the sets, so we can test resets.
      MS_DIV_DOT_LAST_INSN_RO_CYCLE <= '1';
      MS_MPLY_DOT_LAST_INSN_RO_CYCLE <= '1';
      wait for 30 ns;
            
      PS_UNITS_LATCH <= a;
      MB_1401_MPLY_EARLY_END <= not b;
      PS_LAST_LOGIC_GATE_1 <= c;
      PS_B_CH_B_BIT <= d;
      PS_DIV_OP_CODE <= e;
      MB_MPLY_DOT_MQ_DOT_B_DOT_S_DOT_B9_DOT_BW <= not f;
      PS_B_CYCLE <= g;
      PS_TRUE_LATCH <= h;
      MS_1401_DIV_EARLY_END <= not k;
      PS_LAST_LOGIC_GATE_2 <= c;
      wait for 30 ns; -- perhaps reset the NOT MDL Latch      

      check1(PS_NOT_MPLY_DIV_LAST_LATCH,
         NOT(k or ((g2 or (e and h and g and d and a)) and c)) ,testName,"2D");

      -- Remove setting inputs before attempting reset
                 
      -- Remove reset inputs as well before next iteration
      
      PS_LAST_LOGIC_GATE_1 <= '0';
      PS_LAST_LOGIC_GATE_2 <= '0';
      MS_1401_DIV_EARLY_END <= '1';
      MS_DIV_DOT_LAST_INSN_RO_CYCLE <= '1';
      MS_MPLY_DOT_LAST_INSN_RO_CYCLE <= '1';
                              
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
