-- Test BenchVHDL for IBM SMS ALD group ZeroBalanceLatches
-- Title: ZeroBalanceLatches
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/30/2020 5:08:28 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ZeroBalanceLatches_tb is
end ZeroBalanceLatches_tb;

architecture behavioral of ZeroBalanceLatches_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ZeroBalanceLatches
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_LAST_LOGIC_GATE_2: in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE_2: in STD_LOGIC;
		MS_COMPUTER_RESET_1: in STD_LOGIC;
		PS_ADD_TYPE_OP_CODES: in STD_LOGIC;
		MS_MPLY_DOT_LAST_INSN_RO_CYCLE: in STD_LOGIC;
		MS_A_OR_S_DOT_B_CYCLE: in STD_LOGIC;
		MS_MPLY_DOT_U_OR_Y_OR_X_DOT_B: in STD_LOGIC;
		MS_B_CH_INSERT_PLUS_ZERO: in STD_LOGIC;
		PS_LOGIC_GATE_D_1: in STD_LOGIC;
		PS_UNITS_LATCH: in STD_LOGIC;
		MS_ASSEMBLY_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		PS_ASSEMBLY_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		PS_NOT_ZR_BAL_LATCH: out STD_LOGIC;
		MS_NOT_ZR_BAL_LATCH: out STD_LOGIC;
		PS_ZR_BAL_LATCH: out STD_LOGIC;
		MS_ZR_BAL_LATCH: out STD_LOGIC;
		LAMP_15A1K12: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_LAST_LOGIC_GATE_2: STD_LOGIC := '0';
	signal PS_LAST_INSN_RO_CYCLE_2: STD_LOGIC := '0';
	signal MS_COMPUTER_RESET_1: STD_LOGIC := '1';
	signal PS_ADD_TYPE_OP_CODES: STD_LOGIC := '0';
	signal MS_MPLY_DOT_LAST_INSN_RO_CYCLE: STD_LOGIC := '1';
	signal MS_A_OR_S_DOT_B_CYCLE: STD_LOGIC := '1';
	signal MS_MPLY_DOT_U_OR_Y_OR_X_DOT_B: STD_LOGIC := '1';
	signal MS_B_CH_INSERT_PLUS_ZERO: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_D_1: STD_LOGIC := '0';
	signal PS_UNITS_LATCH: STD_LOGIC := '0';
	signal MS_ASSEMBLY_CH_BUS: STD_LOGIC_VECTOR (6 downTo 0) := "1111111";
	signal PS_ASSEMBLY_CH_BUS: STD_LOGIC_VECTOR (6 downTo 0) := "0000000";

	-- Outputs

	signal PS_NOT_ZR_BAL_LATCH: STD_LOGIC;
	signal MS_NOT_ZR_BAL_LATCH: STD_LOGIC;
	signal PS_ZR_BAL_LATCH: STD_LOGIC;
	signal MS_ZR_BAL_LATCH: STD_LOGIC;
	signal LAMP_15A1K12: STD_LOGIC;

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

	UUT: ZeroBalanceLatches port map(
		FPGA_CLK => FPGA_CLK,
		PS_LAST_LOGIC_GATE_2 => PS_LAST_LOGIC_GATE_2,
		PS_LAST_INSN_RO_CYCLE_2 => PS_LAST_INSN_RO_CYCLE_2,
		MS_COMPUTER_RESET_1 => MS_COMPUTER_RESET_1,
		PS_ADD_TYPE_OP_CODES => PS_ADD_TYPE_OP_CODES,
		MS_MPLY_DOT_LAST_INSN_RO_CYCLE => MS_MPLY_DOT_LAST_INSN_RO_CYCLE,
		MS_A_OR_S_DOT_B_CYCLE => MS_A_OR_S_DOT_B_CYCLE,
		MS_MPLY_DOT_U_OR_Y_OR_X_DOT_B => MS_MPLY_DOT_U_OR_Y_OR_X_DOT_B,
		MS_B_CH_INSERT_PLUS_ZERO => MS_B_CH_INSERT_PLUS_ZERO,
		PS_LOGIC_GATE_D_1 => PS_LOGIC_GATE_D_1,
		PS_UNITS_LATCH => PS_UNITS_LATCH,
		MS_ASSEMBLY_CH_BUS => MS_ASSEMBLY_CH_BUS,
		PS_ASSEMBLY_CH_BUS => PS_ASSEMBLY_CH_BUS,
		PS_NOT_ZR_BAL_LATCH => PS_NOT_ZR_BAL_LATCH,
		MS_NOT_ZR_BAL_LATCH => MS_NOT_ZR_BAL_LATCH,
		PS_ZR_BAL_LATCH => PS_ZR_BAL_LATCH,
		MS_ZR_BAL_LATCH => MS_ZR_BAL_LATCH,
		LAMP_15A1K12 => LAMP_15A1K12);

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

MS_ASSEMBLY_CH_BUS <= NOT PS_ASSEMBLY_CH_BUS;

-- Place your test bench code in the uut_process

uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;
   variable tv: std_logic_vector(25 downto 0);
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;

   begin

   -- Your test bench code

   testName := "16.14.11.1, 12.1  ";

   for tt in 0 to 2**14 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      -- d := tv(3);
      e := tv(3);
      f := tv(4);
      g := tv(5);
      h := tv(6);
      i := tv(7);
      j := tv(8);
      k := tv(9);
      l := tv(10);
      m := tv(11);
      n := tv(12);
      o := tv(13);
      
      g1 := e and (g or f or h) and (not j or k or m or not l);
      g2 := c or (a and b and e);
      g3 := c or (o and b and n);

      MS_COMPUTER_RESET_1 <= '0';
      wait for 30 ns;
      MS_COMPUTER_RESET_1 <= '1';
      wait for 30 ns;
    
      check1(PS_ZR_BAL_LATCH,'0',testName,"C Reset +S Zero Balance");
      check1(MS_ZR_BAL_LATCH,'1',testName,"C Reset -S Zero Balance");
      check1(LAMP_15A1K12,'0',testName,"C Reset Zero Balance Lamp");
      check1(PS_NOT_ZR_BAL_LATCH,'1',testName,"C Reset +S Not Zero Balance");
      check1(MS_NOT_ZR_BAL_LATCH,'0',testName,"C Reset -S Not Zero Balance");
      
      -- First, the set ZB / Reset Not ZB tests
      
 	   PS_LAST_LOGIC_GATE_2 <= e;
      PS_LAST_INSN_RO_CYCLE_2 <= a;
      PS_ADD_TYPE_OP_CODES <= b;
      MS_MPLY_DOT_LAST_INSN_RO_CYCLE <= not c;
      MS_A_OR_S_DOT_B_CYCLE <= not f;
      MS_MPLY_DOT_U_OR_Y_OR_X_DOT_B <= not g;
      MS_B_CH_INSERT_PLUS_ZERO <= not h;
      PS_LOGIC_GATE_D_1 <= n;
      PS_UNITS_LATCH <= o;
      PS_ASSEMBLY_CH_BUS <= "000" & j & k & l & m;

      wait for 30 ns;

      -- If we are trying to both set and reset ZB, skip these tests
      
      if(not(g1 = '1' and g3 = '1')) then
         check1(PS_ZR_BAL_LATCH,g3,testName,"Set +S Zero Balance");
         check1(MS_ZR_BAL_LATCH,NOT PS_ZR_BAL_LATCH,testName,"Set -S Zero Balance");
         check1(LAMP_15A1K12,PS_ZR_BAL_LATCH,testName,"Set Zero Balance Lamp");
      end if;

      -- Same deal with the NOT ZB Latch
      
      if(not(g1 = '1' and g2 = '1')) then
         check1(PS_NOT_ZR_BAL_LATCH,NOT(g2),testName,"Reset +S Not Zero Balance");
         check1(MS_NOT_ZR_BAL_LATCH,NOT PS_NOT_ZR_BAL_LATCH,testName,"Reset -S Not Zero Balance");
      end if;
      
      -- Set everything back before the flip side of the test
      
     PS_LAST_LOGIC_GATE_2 <= '0';
     PS_LAST_INSN_RO_CYCLE_2 <= '0';
     PS_ADD_TYPE_OP_CODES <= '0';
     MS_A_OR_S_DOT_B_CYCLE <= '1';
     MS_MPLY_DOT_U_OR_Y_OR_X_DOT_B <= '1';
     MS_B_CH_INSERT_PLUS_ZERO <= '1';
     PS_LOGIC_GATE_D_1 <= '0';
     PS_UNITS_LATCH <= '0';
     PS_ASSEMBLY_CH_BUS <= "0000000";
     
     -- Now, force ZB SET and Not ZB RESET (in other words, set g2 and g3)

     MS_MPLY_DOT_LAST_INSN_RO_CYCLE <= '0';
     wait for 30 ns;
     
     check1(PS_ZR_BAL_LATCH,'1',testName,"Force SET +S Zero Balance");
     check1(MS_ZR_BAL_LATCH,'0',testName,"Force SET -S Zero Balance");
     check1(LAMP_15A1K12,'1',testName,"Force SET Zero Balance Lamp");
     check1(PS_NOT_ZR_BAL_LATCH,'0',testName,"Force Reset +S Not Zero Balance");
     check1(MS_NOT_ZR_BAL_LATCH,'1',testName,"Force Reset -S Not Zero Balance");
     
     -- Set the signals back to the test vector again
     
 	  PS_LAST_LOGIC_GATE_2 <= e;
     PS_LAST_INSN_RO_CYCLE_2 <= a;
     PS_ADD_TYPE_OP_CODES <= b;
     MS_MPLY_DOT_LAST_INSN_RO_CYCLE <= not c;
     MS_A_OR_S_DOT_B_CYCLE <= not f;
     MS_MPLY_DOT_U_OR_Y_OR_X_DOT_B <= not g;
     MS_B_CH_INSERT_PLUS_ZERO <= not h;
     PS_LOGIC_GATE_D_1 <= n;
     PS_UNITS_LATCH <= o;
     PS_ASSEMBLY_CH_BUS <= "000" & j & k & l & m;
     
     wait for 30 ns;
     
      if(not(g1 = '1' and g3 = '1')) then
        check1(PS_ZR_BAL_LATCH,not g1,testName,"Reset +S Zero Balance");
        check1(MS_ZR_BAL_LATCH,NOT PS_ZR_BAL_LATCH,testName,"Reset -S Zero Balance");
        check1(LAMP_15A1K12,PS_ZR_BAL_LATCH,testName,"Reset Zero Balance Lamp");
     end if;
     
      if(not(g1 = '1' and g2 = '1')) then
        check1(PS_NOT_ZR_BAL_LATCH,g1,testName,"SET +S Not Zero Balance");
        check1(MS_NOT_ZR_BAL_LATCH,NOT PS_NOT_ZR_BAL_LATCH,testName,"SET -S Not Zero Balance");
     end if;
          
     -- Set everything back before the reset leading into the next test
     
      PS_LAST_LOGIC_GATE_2 <= '0';
      PS_LAST_INSN_RO_CYCLE_2 <= '0';
      PS_ADD_TYPE_OP_CODES <= '0';
      MS_MPLY_DOT_LAST_INSN_RO_CYCLE <= '1';
      MS_A_OR_S_DOT_B_CYCLE <= '1';
      MS_MPLY_DOT_U_OR_Y_OR_X_DOT_B <= '1';
      MS_B_CH_INSERT_PLUS_ZERO <= '1';
      PS_LOGIC_GATE_D_1 <= '0';
      PS_UNITS_LATCH <= '0';
      PS_ASSEMBLY_CH_BUS <= "0000000";
            
   end loop;

   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 80 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

END;
