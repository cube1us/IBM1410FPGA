-- Test Bench VHDL for IBM SMS ALD page 41.30.02.1
-- Title: CONSOLE INQUIRY CONTROL
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/24/2020 6:11:21 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_41_30_02_1_CONSOLE_INQUIRY_CONTROL_tb is
end ALD_41_30_02_1_CONSOLE_INQUIRY_CONTROL_tb;

architecture behavioral of ALD_41_30_02_1_CONSOLE_INQUIRY_CONTROL_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_41_30_02_1_CONSOLE_INQUIRY_CONTROL
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_MASTER_ERROR:	 in STD_LOGIC;
		PS_E_CH_IN_PROCESS:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_T_DOT_INPUT:	 in STD_LOGIC;
		PS_E_CH_MOVE_MODE:	 in STD_LOGIC;
		PS_CONS_MX_32_POS:	 in STD_LOGIC;
		PS_CONSOLE_HOME_POSITION:	 in STD_LOGIC;
		MS_LAST_INSN_RO_CYCLE:	 in STD_LOGIC;
		PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC:	 in STD_LOGIC;
		MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO:	 in STD_LOGIC;
		PS_CONSOLE_READ_OP:	 out STD_LOGIC;
		MS_CONSOLE_READ_OP:	 out STD_LOGIC;
		MS_CONS_MOVE_READ_OP:	 out STD_LOGIC;
		MS_INQUIRY_KEYBOARD_UNLOCK:	 out STD_LOGIC;
		MS_CONS_CANCEL_KEY_RESET:	 out STD_LOGIC;
		MS_CONS_INQUIRY_MX_GATE:	 out STD_LOGIC;
		PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC:	 out STD_LOGIC;
		PS_CONS_RELEASE_OR_CANCEL:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_MASTER_ERROR: STD_LOGIC := '1';
	signal PS_E_CH_IN_PROCESS: STD_LOGIC := '0';
	signal PS_E_CH_SELECT_UNIT_T_DOT_INPUT: STD_LOGIC := '0';
	signal PS_E_CH_MOVE_MODE: STD_LOGIC := '0';
	signal PS_CONS_MX_32_POS: STD_LOGIC := '0';
	signal PS_CONSOLE_HOME_POSITION: STD_LOGIC := '0';
	signal MS_LAST_INSN_RO_CYCLE: STD_LOGIC := '1';
	signal PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC: STD_LOGIC := '0';
	signal MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO: STD_LOGIC := '1';

	-- Outputs

	signal PS_CONSOLE_READ_OP: STD_LOGIC;
	signal MS_CONSOLE_READ_OP: STD_LOGIC;
	signal MS_CONS_MOVE_READ_OP: STD_LOGIC;
	signal MS_INQUIRY_KEYBOARD_UNLOCK: STD_LOGIC;
	signal MS_CONS_CANCEL_KEY_RESET: STD_LOGIC;
	signal MS_CONS_INQUIRY_MX_GATE: STD_LOGIC;
	signal PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC: STD_LOGIC;
	signal PS_CONS_RELEASE_OR_CANCEL: STD_LOGIC;

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

	UUT: ALD_41_30_02_1_CONSOLE_INQUIRY_CONTROL port map(
		FPGA_CLK => FPGA_CLK,
		MS_MASTER_ERROR => MS_MASTER_ERROR,
		PS_E_CH_IN_PROCESS => PS_E_CH_IN_PROCESS,
		PS_E_CH_SELECT_UNIT_T_DOT_INPUT => PS_E_CH_SELECT_UNIT_T_DOT_INPUT,
		PS_E_CH_MOVE_MODE => PS_E_CH_MOVE_MODE,
		PS_CONS_MX_32_POS => PS_CONS_MX_32_POS,
		PS_CONSOLE_HOME_POSITION => PS_CONSOLE_HOME_POSITION,
		MS_LAST_INSN_RO_CYCLE => MS_LAST_INSN_RO_CYCLE,
		PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC => PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC,
		MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO => MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO,
		PS_CONSOLE_READ_OP => PS_CONSOLE_READ_OP,
		MS_CONSOLE_READ_OP => MS_CONSOLE_READ_OP,
		MS_CONS_MOVE_READ_OP => MS_CONS_MOVE_READ_OP,
		MS_INQUIRY_KEYBOARD_UNLOCK => MS_INQUIRY_KEYBOARD_UNLOCK,
		MS_CONS_CANCEL_KEY_RESET => MS_CONS_CANCEL_KEY_RESET,
		MS_CONS_INQUIRY_MX_GATE => MS_CONS_INQUIRY_MX_GATE,
		PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC => PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC,
		PS_CONS_RELEASE_OR_CANCEL => PS_CONS_RELEASE_OR_CANCEL);

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

   testName := "41.30.02.1        ";

   for tt in 0 to 2**8 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      b := tv(0);
      c := tv(1);
      d := tv(2);
      e := tv(3);
      f := tv(4);
      g := tv(5);
      h := tv(6);
      j := tv(7);

      -- Reset
      
      MS_MASTER_ERROR <= '0';
      wait for 30 ns;
      MS_MASTER_ERROR <= '1';
      wait for 30 ns;
      
      check1(PS_CONSOLE_READ_OP,'0',testName,"Loop Reset +S Console Read Op");
      check1(MS_CONSOLE_READ_OP,'1',testName,"Loop Reset -S Console Read Op");
      
      -- Now, maybe set the latch  (make sure we do not reset it here)
      
		PS_E_CH_IN_PROCESS <= '1';
		
      PS_E_CH_SELECT_UNIT_T_DOT_INPUT <= c;
      PS_E_CH_MOVE_MODE <= d;
      PS_CONS_MX_32_POS <= e;
      PS_CONSOLE_HOME_POSITION <= f;
      MS_LAST_INSN_RO_CYCLE <= not g;
      PV_CONS_INQUIRY_CANCEL_KEY_STAR_NC <= h;
      MV_CONS_INQUIRY_RELEASE_KEY_STAR_NO <= not j;
      wait for 30 ns;

      -- Withdraw the set inputs - latch should not change  
      PS_E_CH_SELECT_UNIT_T_DOT_INPUT <= '0';
      wait for 30 ns;      
      
      check1(PS_CONSOLE_READ_OP,c and f,testName,"Set +S Console Read Op");
      check1(MS_CONSOLE_READ_OP,NOT PS_CONSOLE_READ_OP,testName,"Set -S Console Read Op");
      check1(MS_CONS_MOVE_READ_OP,not(PS_CONSOLE_READ_OP and d),testName,"Cons Move Read Op");
      check1(MS_INQUIRY_KEYBOARD_UNLOCK,not(PS_CONSOLE_READ_OP and e),testName,"Inq Keybd Unlock");
      check1(MS_CONS_INQUIRY_MX_GATE,not(PS_CONSOLE_READ_OP and f),testName,"Cons Inq. MX Gate");
      check1(MS_CONS_CANCEL_KEY_RESET,not(not g and h),testName,"Cons Cancel Key Reset");
      check1(PS_CONS_RELEASE_OR_CANCEL,h or j,testName,"Cons Release or Cancel");
      check1(PS_CONS_INQUIRY_CANCEL_KEY_STAR_NC,h,testName,"Cons Inq. Cancel Key");
            
      -- Maybe reset the latch
      PS_CONSOLE_HOME_POSITION <= '0';
      PS_E_CH_IN_PROCESS <= b;
      wait for 30 ns;
      
      check1(PS_CONSOLE_READ_OP,c and f and not(not b),testName,"Reset +S Console Read Op");
      check1(MS_CONSOLE_READ_OP,NOT PS_CONSOLE_READ_OP,testName,"Reset -S Console Read Op");
      check1(MS_CONS_CANCEL_KEY_RESET,not(not g and b and h),testName,"Reset - Cons Cancel Key Reset");
      
      -- Reset the reset for the next iteration

      PS_E_CH_IN_PROCESS <= '1';
            
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
