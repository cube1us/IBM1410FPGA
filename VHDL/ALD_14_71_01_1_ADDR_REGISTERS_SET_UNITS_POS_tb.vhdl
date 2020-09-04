-- Test Bench VHDL for IBM SMS ALD page 14.71.01.1
-- Title: ADDR REGISTERS SET UNITS POS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/4/2020 12:21:11 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_71_01_1_ADDR_REGISTERS_SET_UNITS_POS_tb is
end ALD_14_71_01_1_ADDR_REGISTERS_SET_UNITS_POS_tb;

architecture behavioral of ALD_14_71_01_1_ADDR_REGISTERS_SET_UNITS_POS_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_71_01_1_ADDR_REGISTERS_SET_UNITS_POS
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3_JRJ:	 in STD_LOGIC;
		PS_I_RING_5_OR_10_TIME:	 in STD_LOGIC;
		PS_I_CYCLE:	 in STD_LOGIC;
		PS_LOGIC_GATE_A_OR_R:	 in STD_LOGIC;
		PS_A_RING_2_TIME:	 in STD_LOGIC;
		PS_X_CYCLE:	 in STD_LOGIC;
		PS_LOGIC_GATE_H:	 in STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_S:	 in STD_LOGIC;
		PS_CONS_PRINTER_STROBE:	 in STD_LOGIC;
		PS_CONS_MX_X1A_POS:	 in STD_LOGIC;
		PS_KEYBOARD_UNLOCK:	 in STD_LOGIC;
		PS_CONS_MX_Y5_POS:	 in STD_LOGIC;
		PS_CONS_CLOCK_2_POS:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_4:	 out STD_LOGIC;
		PS_SET_AR_U_POS:	 out STD_LOGIC;
		PS_CONSOLE_STROBE_GTD:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_2ND_CLOCK_PULSE_3_JRJ: STD_LOGIC := '0';
	signal PS_I_RING_5_OR_10_TIME: STD_LOGIC := '0';
	signal PS_I_CYCLE: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_A_OR_R: STD_LOGIC := '0';
	signal PS_A_RING_2_TIME: STD_LOGIC := '0';
	signal PS_X_CYCLE: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_H: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_B_1: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_S: STD_LOGIC := '1';
	signal PS_CONS_PRINTER_STROBE: STD_LOGIC := '0';
	signal PS_CONS_MX_X1A_POS: STD_LOGIC := '0';
	signal PS_KEYBOARD_UNLOCK: STD_LOGIC := '0';
	signal PS_CONS_MX_Y5_POS: STD_LOGIC := '0';
	signal PS_CONS_CLOCK_2_POS: STD_LOGIC := '0';

	-- Outputs

	signal PS_2ND_CLOCK_PULSE_4: STD_LOGIC;
	signal PS_SET_AR_U_POS: STD_LOGIC;
	signal PS_CONSOLE_STROBE_GTD: STD_LOGIC;

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

	UUT: ALD_14_71_01_1_ADDR_REGISTERS_SET_UNITS_POS port map(
		FPGA_CLK => FPGA_CLK,
		PS_2ND_CLOCK_PULSE_3_JRJ => PS_2ND_CLOCK_PULSE_3_JRJ,
		PS_I_RING_5_OR_10_TIME => PS_I_RING_5_OR_10_TIME,
		PS_I_CYCLE => PS_I_CYCLE,
		PS_LOGIC_GATE_A_OR_R => PS_LOGIC_GATE_A_OR_R,
		PS_A_RING_2_TIME => PS_A_RING_2_TIME,
		PS_X_CYCLE => PS_X_CYCLE,
		PS_LOGIC_GATE_H => PS_LOGIC_GATE_H,
		MS_LOGIC_GATE_B_1 => MS_LOGIC_GATE_B_1,
		MS_LOGIC_GATE_S => MS_LOGIC_GATE_S,
		PS_CONS_PRINTER_STROBE => PS_CONS_PRINTER_STROBE,
		PS_CONS_MX_X1A_POS => PS_CONS_MX_X1A_POS,
		PS_KEYBOARD_UNLOCK => PS_KEYBOARD_UNLOCK,
		PS_CONS_MX_Y5_POS => PS_CONS_MX_Y5_POS,
		PS_CONS_CLOCK_2_POS => PS_CONS_CLOCK_2_POS,
		PS_2ND_CLOCK_PULSE_4 => PS_2ND_CLOCK_PULSE_4,
		PS_SET_AR_U_POS => PS_SET_AR_U_POS,
		PS_CONSOLE_STROBE_GTD => PS_CONSOLE_STROBE_GTD);

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
   variable tv: std_logic_vector(13 downto 0);
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n: std_logic;
   variable g1, g2, g3, g4, g5, g6: std_logic;

   begin

   -- Your test bench code
   
   testName := "14.71.01.1        ";
   
   for t in 0 to 16383 loop
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
      n := tv(13);
      
      PS_2ND_CLOCK_PULSE_3_JRJ <= a;
      PS_I_RING_5_OR_10_TIME <= b;
      PS_I_CYCLE <= c;
      PS_LOGIC_GATE_A_OR_R <= d;
      PS_A_RING_2_TIME <= e;
      PS_X_CYCLE <= f;
      PS_LOGIC_GATE_H <= g;
      MS_LOGIC_GATE_B_1 <= not h;
      MS_LOGIC_GATE_S <= not i;
      PS_CONS_PRINTER_STROBE <= j;
      PS_CONS_MX_X1A_POS <= k;
      PS_KEYBOARD_UNLOCK <= l;
      PS_CONS_MX_Y5_POS <= m;
      PS_CONS_CLOCK_2_POS <= n;
      wait for 30 ns;
      g2 := j and k and l;
      g1 := n and m and g2;
      g4 := b and c and d;
      g5 := e and f and g;
      g3 := a and (i or h or g4 or g5);
      
      check1(PS_CONSOLE_STROBE_GTD,g2,testName,"Console Strobe Gated");
      check1(PS_2ND_CLOCK_PULSE_4,PS_2ND_CLOCK_PULSE_3_JRJ,testName,"2ND CP 4");
      check1(PS_SET_AR_U_POS,(g1 and g2) or (g3 and a),testName,"SET AR U POS");
      
   end loop;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 100 us;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY" severity failure;
   end process;

-- END USER TEST BENCH PROCESS

end;
