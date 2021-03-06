-- Test Bench VHDL for IBM SMS ALD page 15.62.05.1
-- Title: E CH REGISTER TRANSFER CTRL
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/25/2020 7:53:18 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_62_05_1_E_CH_REGISTER_TRANSFER_CTRL_tb is
end ALD_15_62_05_1_E_CH_REGISTER_TRANSFER_CTRL_tb;

architecture behavioral of ALD_15_62_05_1_E_CH_REGISTER_TRANSFER_CTRL_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_15_62_05_1_E_CH_REGISTER_TRANSFER_CTRL
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_1:	 in STD_LOGIC;
		PS_M_OR_L_OP_CODES:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_EARLY_B_OR_S:	 in STD_LOGIC;
		PS_I_RING_6_TIME:	 in STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN:	 in STD_LOGIC;
		PS_LOGIC_GATE_EARLY_F:	 in STD_LOGIC;
		PS_PERCENT_OR_COML_AT:	 in STD_LOGIC;
		MS_RES_E2_FULL_AT_F_OR_K_OPS:	 in STD_LOGIC;
		MS_E_CH_CLOCKED_STROBE_OUTPUT:	 in STD_LOGIC;
		PS_EARLY_LAST_GATE_I_O:	 in STD_LOGIC;
		PS_E_CYCLE:	 in STD_LOGIC;
		PS_INPUT_CYCLE_NOT_LAST_INPUT:	 in STD_LOGIC;
		PS_INPUT_CYCLE_DOT_LOAD:	 in STD_LOGIC;
		MS_E_CH_RESET_1:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_21:	 out STD_LOGIC;
		PS_2ND_CLOCK_PULSE_21:	 out STD_LOGIC;
		MS_RESET_E2_FULL_LATCH:	 out STD_LOGIC;
		PS_RESET_E2_FULL_LATCH:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_2ND_CLOCK_PULSE_2: STD_LOGIC := '0';
	signal PS_1ST_CLOCK_PULSE_1: STD_LOGIC := '0';
	signal PS_M_OR_L_OP_CODES: STD_LOGIC := '0';
	signal PS_E_CH_SELECT_UNIT_1: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_EARLY_B_OR_S: STD_LOGIC := '0';
	signal PS_I_RING_6_TIME: STD_LOGIC := '0';
	signal PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_EARLY_F: STD_LOGIC := '0';
	signal PS_PERCENT_OR_COML_AT: STD_LOGIC := '0';
	signal MS_RES_E2_FULL_AT_F_OR_K_OPS: STD_LOGIC := '1';
	signal MS_E_CH_CLOCKED_STROBE_OUTPUT: STD_LOGIC := '1';
	signal PS_EARLY_LAST_GATE_I_O: STD_LOGIC := '0';
	signal PS_E_CYCLE: STD_LOGIC := '0';
	signal PS_INPUT_CYCLE_NOT_LAST_INPUT: STD_LOGIC := '0';
	signal PS_INPUT_CYCLE_DOT_LOAD: STD_LOGIC := '0';
	signal MS_E_CH_RESET_1: STD_LOGIC := '1';

	-- Outputs

	signal PS_1ST_CLOCK_PULSE_21: STD_LOGIC;
	signal PS_2ND_CLOCK_PULSE_21: STD_LOGIC;
	signal MS_RESET_E2_FULL_LATCH: STD_LOGIC;
	signal PS_RESET_E2_FULL_LATCH: STD_LOGIC;

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

	UUT: ALD_15_62_05_1_E_CH_REGISTER_TRANSFER_CTRL port map(
		FPGA_CLK => FPGA_CLK,
		PS_2ND_CLOCK_PULSE_2 => PS_2ND_CLOCK_PULSE_2,
		PS_1ST_CLOCK_PULSE_1 => PS_1ST_CLOCK_PULSE_1,
		PS_M_OR_L_OP_CODES => PS_M_OR_L_OP_CODES,
		PS_E_CH_SELECT_UNIT_1 => PS_E_CH_SELECT_UNIT_1,
		PS_LOGIC_GATE_EARLY_B_OR_S => PS_LOGIC_GATE_EARLY_B_OR_S,
		PS_I_RING_6_TIME => PS_I_RING_6_TIME,
		PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN => PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN,
		PS_LOGIC_GATE_EARLY_F => PS_LOGIC_GATE_EARLY_F,
		PS_PERCENT_OR_COML_AT => PS_PERCENT_OR_COML_AT,
		MS_RES_E2_FULL_AT_F_OR_K_OPS => MS_RES_E2_FULL_AT_F_OR_K_OPS,
		MS_E_CH_CLOCKED_STROBE_OUTPUT => MS_E_CH_CLOCKED_STROBE_OUTPUT,
		PS_EARLY_LAST_GATE_I_O => PS_EARLY_LAST_GATE_I_O,
		PS_E_CYCLE => PS_E_CYCLE,
		PS_INPUT_CYCLE_NOT_LAST_INPUT => PS_INPUT_CYCLE_NOT_LAST_INPUT,
		PS_INPUT_CYCLE_DOT_LOAD => PS_INPUT_CYCLE_DOT_LOAD,
		MS_E_CH_RESET_1 => MS_E_CH_RESET_1,
		PS_1ST_CLOCK_PULSE_21 => PS_1ST_CLOCK_PULSE_21,
		PS_2ND_CLOCK_PULSE_21 => PS_2ND_CLOCK_PULSE_21,
		MS_RESET_E2_FULL_LATCH => MS_RESET_E2_FULL_LATCH,
		PS_RESET_E2_FULL_LATCH => PS_RESET_E2_FULL_LATCH);

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

   testName := "15.62.05.1        ";

   for tt in 0 to 2**13 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      -- a := tv(0);
      -- b := tv(1);
      c := tv(0);
      d := tv(1);
      e := tv(2);
      f := tv(3);
      g := tv(4);
      h := tv(5);
      -- i := tv(6);
      j := tv(6);
      k := tv(7);
      l := tv(8);
      m := tv(9);
      n := tv(10);
      o := tv(11);
      p := tv(12);


      g1 := n and o and p and m;
      g2 := g and j and h;
      g3 := c and d and j and f and e;
      
      MS_E_CH_RESET_1 <= '0';
      wait for 30 ns;
      MS_E_CH_RESET_1 <= '1';
      wait for 30 ns;
      
      -- 1st CP sets
      
      PS_1ST_CLOCK_PULSE_1 <= '0';
      PS_2ND_CLOCK_PULSE_2 <= '1';
      wait for 30 ns;

      check1(PS_1ST_CLOCK_PULSE_21,PS_1ST_CLOCK_PULSE_1,testName,"1ST CP 21 A");
      check1(PS_2ND_CLOCK_PULSE_21,PS_2ND_CLOCK_PULSE_2,testName,"2ND CP 21 A");
      
      -- Initial conditions are such that the latch will be RESET at this point
      
      check1(PS_RESET_E2_FULL_LATCH,'0',testName,"Init Set +S Reset E2 Full");           
      check1(MS_RESET_E2_FULL_LATCH,'1',testName,"Init Set -S Reset E2 Full");                       
      
   	PS_M_OR_L_OP_CODES <= c;
      PS_E_CH_SELECT_UNIT_1 <= d;
      PS_LOGIC_GATE_EARLY_B_OR_S <= e;
      PS_I_RING_6_TIME <= f;
      PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN <= g;
      PS_LOGIC_GATE_EARLY_F <= h;
      PS_PERCENT_OR_COML_AT <= j;
      MS_RES_E2_FULL_AT_F_OR_K_OPS <= not k;
      MS_E_CH_CLOCKED_STROBE_OUTPUT <= not l;
      PS_EARLY_LAST_GATE_I_O <= m;
      PS_E_CYCLE <= n;
      PS_INPUT_CYCLE_NOT_LAST_INPUT <= o;
      PS_INPUT_CYCLE_DOT_LOAD <= p;
      
      -- Need time between DCRFORCE going away and the clock
      
      wait for 30 ns;
                  
      PS_1ST_CLOCK_PULSE_1 <= '1';
      PS_2ND_CLOCK_PULSE_2 <= '0';
      wait for 30 ns;

      check1(PS_RESET_E2_FULL_LATCH,g1 or l or g2 or g3 or k,testName,"Set +S Reset E2 Full");
      check1(MS_RESET_E2_FULL_LATCH,NOT(g1 or l or g2 or g3 or k),testName,"Set +S Reset E2 Full");
      
   	PS_M_OR_L_OP_CODES <= '0';
      PS_E_CH_SELECT_UNIT_1 <= '0';
      PS_LOGIC_GATE_EARLY_B_OR_S <= '0';
      PS_I_RING_6_TIME <= '0';
      PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN <= '0';
      PS_LOGIC_GATE_EARLY_F <= '0';
      PS_PERCENT_OR_COML_AT <= '0';
      MS_RES_E2_FULL_AT_F_OR_K_OPS <= '1';
      MS_E_CH_CLOCKED_STROBE_OUTPUT <= '1';
      PS_EARLY_LAST_GATE_I_O <= '0';
      PS_E_CYCLE <= '0';
      PS_INPUT_CYCLE_NOT_LAST_INPUT <= '0';
      PS_INPUT_CYCLE_DOT_LOAD <= '0';

      PS_1ST_CLOCK_PULSE_1 <= '0';
      PS_2ND_CLOCK_PULSE_2 <= '1';      
      wait for 30 ns;
      
      check1(PS_1ST_CLOCK_PULSE_21,PS_1ST_CLOCK_PULSE_1,testName,"1ST CP 21 B");
      check1(PS_2ND_CLOCK_PULSE_21,PS_2ND_CLOCK_PULSE_2,testName,"2ND CP 21 B");
      
      check1(PS_RESET_E2_FULL_LATCH,'0',testName,"Finish +S Set E2 Full");           
      check1(MS_RESET_E2_FULL_LATCH,'1',testName,"Finish -S Set E2 Full");                       
      
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
