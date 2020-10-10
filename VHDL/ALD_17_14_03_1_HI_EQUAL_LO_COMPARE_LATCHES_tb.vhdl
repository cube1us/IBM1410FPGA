-- Test Bench VHDL for IBM SMS ALD page 17.14.03.1
-- Title: HI-EQUAL-LO COMPARE LATCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/10/2020 12:26:05 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_14_03_1_HI_EQUAL_LO_COMPARE_LATCHES_tb is
end ALD_17_14_03_1_HI_EQUAL_LO_COMPARE_LATCHES_tb;

architecture behavioral of ALD_17_14_03_1_HI_EQUAL_LO_COMPARE_LATCHES_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_17_14_03_1_HI_EQUAL_LO_COMPARE_LATCHES
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_COMPUTER_RESET_1:	 in STD_LOGIC;
		PS_SET_HIGH_CY:	 in STD_LOGIC;
		MS_EQUAL_LOW_LATCHES_RESET:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_CMP_EQUAL:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		PS_EQUAL_LOW_LATCHES_SET:	 in STD_LOGIC;
		PS_CMP_EQUAL:	 in STD_LOGIC;
		MS_1401_MODE:	 in STD_LOGIC;
		MS_SET_HIGH_CY:	 in STD_LOGIC;
		PS_UNITS_LATCH:	 in STD_LOGIC;
		PS_1401_MODE:	 in STD_LOGIC;
		PS_COMPARE_OP_CODE:	 in STD_LOGIC;
		PS_I_RING_4_TIME:	 in STD_LOGIC;
		PS_EQUAL:	 out STD_LOGIC;
		MS_EQUAL:	 out STD_LOGIC;
		LAMP_15A1C12:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_COMPUTER_RESET_1: STD_LOGIC := '1';
	signal PS_SET_HIGH_CY: STD_LOGIC := '0';
	signal MS_EQUAL_LOW_LATCHES_RESET: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_F_1: STD_LOGIC := '0';
	signal MS_CMP_EQUAL: STD_LOGIC := '1';
	signal PS_2ND_CLOCK_PULSE_2: STD_LOGIC := '0';
	signal PS_EQUAL_LOW_LATCHES_SET: STD_LOGIC := '0';
	signal PS_CMP_EQUAL: STD_LOGIC := '0';
	signal MS_1401_MODE: STD_LOGIC := '1';
	signal MS_SET_HIGH_CY: STD_LOGIC := '1';
	signal PS_UNITS_LATCH: STD_LOGIC := '0';
	signal PS_1401_MODE: STD_LOGIC := '0';
	signal PS_COMPARE_OP_CODE: STD_LOGIC := '0';
	signal PS_I_RING_4_TIME: STD_LOGIC := '0';

	-- Outputs

	signal PS_EQUAL: STD_LOGIC;
	signal MS_EQUAL: STD_LOGIC;
	signal LAMP_15A1C12: STD_LOGIC;

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

	UUT: ALD_17_14_03_1_HI_EQUAL_LO_COMPARE_LATCHES port map(
		FPGA_CLK => FPGA_CLK,
		MS_COMPUTER_RESET_1 => MS_COMPUTER_RESET_1,
		PS_SET_HIGH_CY => PS_SET_HIGH_CY,
		MS_EQUAL_LOW_LATCHES_RESET => MS_EQUAL_LOW_LATCHES_RESET,
		PS_LOGIC_GATE_F_1 => PS_LOGIC_GATE_F_1,
		MS_CMP_EQUAL => MS_CMP_EQUAL,
		PS_2ND_CLOCK_PULSE_2 => PS_2ND_CLOCK_PULSE_2,
		PS_EQUAL_LOW_LATCHES_SET => PS_EQUAL_LOW_LATCHES_SET,
		PS_CMP_EQUAL => PS_CMP_EQUAL,
		MS_1401_MODE => MS_1401_MODE,
		MS_SET_HIGH_CY => MS_SET_HIGH_CY,
		PS_UNITS_LATCH => PS_UNITS_LATCH,
		PS_1401_MODE => PS_1401_MODE,
		PS_COMPARE_OP_CODE => PS_COMPARE_OP_CODE,
		PS_I_RING_4_TIME => PS_I_RING_4_TIME,
		PS_EQUAL => PS_EQUAL,
		MS_EQUAL => MS_EQUAL,
		LAMP_15A1C12 => LAMP_15A1C12);

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

   testName := "17.14.03.1        ";

   for tt in 0 to 2**11 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      b := tv(0);
      c := tv(1);
      d := tv(2);
      e := tv(3);
      f := tv(4);
      g := tv(5);
      h := tv(6);
      l := tv(7);
      m := tv(8);
      n := tv(9);
      o := tv(10);
      
      g1 := h and g and d and not m and l and not b;
      g2 := n and m and o;
      g3 := g1 or g2;
      g4 := b and d;
      g5 := not e and g and d and f;
      g6 := g4 or c or g5;

      -- Initial reset
      
      MS_COMPUTER_RESET_1 <= '0';
      wait for 30 ns;
      MS_COMPUTER_RESET_1 <= '1';
      wait for 30 ns;
      
      check1(PS_EQUAL,'0',testName,"+S Equal Loop Reset");
      check1(MS_EQUAL,'1',testName,"-S Equal Loop Reset");      
      check1(LAMP_15A1C12,'0',testName,"Lamp Equal Loop Reset");

      -- Test Latch Set (not setting signals that would hold it reset)
            
      PS_LOGIC_GATE_F_1 <= d;
      MS_CMP_EQUAL <= not e;
      PS_EQUAL_LOW_LATCHES_SET <= g;
      PS_CMP_EQUAL <= h;
      MS_1401_MODE <= not m;
      MS_SET_HIGH_CY <= not b;
      PS_UNITS_LATCH <= l;
      PS_1401_MODE <= m;
      PS_COMPARE_OP_CODE <= n;
      PS_I_RING_4_TIME <= o;      
      wait for 30 ns; -- Perhaps set the latch
           
      check1(PS_EQUAL,g3,testName,"+S Equal Set");
      check1(MS_EQUAL,not g3,testName,"-S Equal Set");      
      check1(LAMP_15A1C12,g3,testName,"Lamp Equal Set");
      
      -- Set some of the variables back to initial state for reset test.
      -- Latch state should not change.

      MS_CMP_EQUAL <= not e;
      PS_EQUAL_LOW_LATCHES_SET <= '0';
      PS_CMP_EQUAL <= '0';
      MS_SET_HIGH_CY <= not b;
      PS_UNITS_LATCH <= '0';
      wait for 30 ns;

      check1(PS_EQUAL,g3,testName,"+S Equal Still Set");
      check1(MS_EQUAL,not g3,testName,"-S Equal Still Set");      
      check1(LAMP_15A1C12,g3,testName,"Lamp Equal Still Set");

      -- Force the latch set.

      PS_COMPARE_OP_CODE <= '1';
      PS_I_RING_4_TIME <= '1';      
      PS_1401_MODE <= '1';      
      wait for 30 ns;            
      PS_COMPARE_OP_CODE <= '0';
      PS_I_RING_4_TIME <= '0';      
      PS_1401_MODE <= m;
      wait for 30 ns;      
                 
      check1(PS_EQUAL,'1',testName,"+S Equal Force Set");
      check1(MS_EQUAL,'0',testName,"-S Equal Force Set");      
      check1(LAMP_15A1C12,'1',testName,"Lamp Force Still Set");
      
      -- Set the rest of the variables
      PS_SET_HIGH_CY <= b;
      MS_EQUAL_LOW_LATCHES_RESET <= not c;
      PS_2ND_CLOCK_PULSE_2 <= f;
      PS_LOGIC_GATE_F_1 <= d;
      MS_CMP_EQUAL <= not e;
      PS_EQUAL_LOW_LATCHES_SET <= g;
      MS_1401_MODE <= not m;
      MS_SET_HIGH_CY <= not b;
      PS_1401_MODE <= m;
      wait for 30 ns; -- Perhaps reset the latch (g6 is the reset signal)
      
      check1(PS_EQUAL,not g6,testName,"+S Equal Latch Reset");
      check1(MS_EQUAL,g6,testName,"-S Equal Latch Reset");      
      check1(LAMP_15A1C12,not g6,testName,"Lamp Equal Reset");
      
      -- Set the signals back to their initial state before the next iteration
      
   	 PS_SET_HIGH_CY <= '0';
       MS_EQUAL_LOW_LATCHES_RESET <= '1';
       PS_LOGIC_GATE_F_1 <= '0';
       MS_CMP_EQUAL <= '1';
       PS_2ND_CLOCK_PULSE_2 <= '0';
       PS_EQUAL_LOW_LATCHES_SET <= '0';
       PS_CMP_EQUAL <= '0';
       MS_1401_MODE <= '1';
       MS_SET_HIGH_CY <= '1';
       PS_UNITS_LATCH <= '0';
       PS_1401_MODE <= '0';
       PS_COMPARE_OP_CODE <= '0';
       PS_I_RING_4_TIME <= '0';
      
   end loop;

   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 20 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

end;
