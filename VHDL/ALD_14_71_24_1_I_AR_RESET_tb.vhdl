-- Test Bench VHDL for IBM SMS ALD page 14.71.24.1
-- Title: I AR RESET
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/6/2020 10:16:23 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_71_24_1_I_AR_RESET_tb is
end ALD_14_71_24_1_I_AR_RESET_tb;

architecture behavioral of ALD_14_71_24_1_I_AR_RESET_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_71_24_1_I_AR_RESET
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_SET_I_AR:	 in STD_LOGIC;
		PS_CONSOLE_CYCLE_START:	 in STD_LOGIC;
		PS_I_CYCLE_CTRL:	 in STD_LOGIC;
		PS_LOGIC_GATE_EARLY_B:	 in STD_LOGIC;
		MS_SYSTEM_RESET:	 in STD_LOGIC;
		MS_I_RING_OP_TIME:	 in STD_LOGIC;
		PS_LOGIC_GATE_EARLY_F:	 in STD_LOGIC;
		PS_1401_LAST_I_CYCLE:	 in STD_LOGIC;
		PS_I_CYCLE:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_2:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_1:	 in STD_LOGIC;
		MS_STORAGE_SCAN_ROUTINE:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_RESET_I_AR:	 out STD_LOGIC;
		PS_SET_MEM_AR_TO_I_AR:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_SET_I_AR: STD_LOGIC := '0';
	signal PS_CONSOLE_CYCLE_START: STD_LOGIC := '0';
	signal PS_I_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_EARLY_B: STD_LOGIC := '0';
	signal MS_SYSTEM_RESET: STD_LOGIC := '1';
	signal MS_I_RING_OP_TIME: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_EARLY_F: STD_LOGIC := '0';
	signal PS_1401_LAST_I_CYCLE: STD_LOGIC := '0';
	signal PS_I_CYCLE: STD_LOGIC := '0';
	signal PS_B_CH_WM_BIT_2: STD_LOGIC := '0';
	signal PS_1ST_CLOCK_PULSE_1: STD_LOGIC := '0';
	signal MS_STORAGE_SCAN_ROUTINE: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_F_1: STD_LOGIC := '0';

	-- Outputs

	signal MS_RESET_I_AR: STD_LOGIC;
	signal PS_SET_MEM_AR_TO_I_AR: STD_LOGIC;

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

	UUT: ALD_14_71_24_1_I_AR_RESET port map(
		FPGA_CLK => FPGA_CLK,
		PS_SET_I_AR => PS_SET_I_AR,
		PS_CONSOLE_CYCLE_START => PS_CONSOLE_CYCLE_START,
		PS_I_CYCLE_CTRL => PS_I_CYCLE_CTRL,
		PS_LOGIC_GATE_EARLY_B => PS_LOGIC_GATE_EARLY_B,
		MS_SYSTEM_RESET => MS_SYSTEM_RESET,
		MS_I_RING_OP_TIME => MS_I_RING_OP_TIME,
		PS_LOGIC_GATE_EARLY_F => PS_LOGIC_GATE_EARLY_F,
		PS_1401_LAST_I_CYCLE => PS_1401_LAST_I_CYCLE,
		PS_I_CYCLE => PS_I_CYCLE,
		PS_B_CH_WM_BIT_2 => PS_B_CH_WM_BIT_2,
		PS_1ST_CLOCK_PULSE_1 => PS_1ST_CLOCK_PULSE_1,
		MS_STORAGE_SCAN_ROUTINE => MS_STORAGE_SCAN_ROUTINE,
		PS_LOGIC_GATE_F_1 => PS_LOGIC_GATE_F_1,
		MS_RESET_I_AR => MS_RESET_I_AR,
		PS_SET_MEM_AR_TO_I_AR => PS_SET_MEM_AR_TO_I_AR);

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
   variable tv: std_logic_vector(15 downto 0);
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p: std_logic;
   variable g1, g2, g3, g4, g5, g6: std_logic;

   begin

   -- Your test bench code
   testName := "14.71.24.1        ";

   for t in 0 to 8192 loop
      tv := std_logic_vector(to_unsigned(t,tv'Length));
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
      
      PS_SET_I_AR <= a;
      PS_CONSOLE_CYCLE_START <= b;
      PS_I_CYCLE_CTRL <= c;
      PS_LOGIC_GATE_EARLY_B <= d;
      MS_SYSTEM_RESET <= not e;
      MS_I_RING_OP_TIME <= not f;
      PS_LOGIC_GATE_EARLY_F <= g;
      PS_1401_LAST_I_CYCLE <= h;
      PS_I_CYCLE <= i;
      PS_B_CH_WM_BIT_2 <= j;
      PS_1ST_CLOCK_PULSE_1 <= k;
      MS_STORAGE_SCAN_ROUTINE <= not l;
      PS_LOGIC_GATE_F_1 <= m;

      wait for 30 ns;
  
      check1(MS_RESET_I_AR,
         NOT(k and (e or (a and b) or (c and d) or (h and not l and g) or (not f and g and i and j and not l))),
         testName,"Reset I AR");
         
      check1(PS_SET_MEM_AR_TO_I_AR,(m and not l and h) or (not f and j and i and m and not l),testName,
         "Set MEM AR to I AR");
      
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
