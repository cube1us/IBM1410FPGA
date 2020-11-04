-- Test Bench VHDL for IBM SMS ALD page 45.50.12.1
-- Title: ERROR CONTROL LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/3/2020 3:05:32 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_50_12_1_ERROR_CONTROL_LATCH_tb is
end ALD_45_50_12_1_ERROR_CONTROL_LATCH_tb;

architecture behavioral of ALD_45_50_12_1_ERROR_CONTROL_LATCH_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_45_50_12_1_ERROR_CONTROL_LATCH
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		PS_CONS_PRINTER_NOT_BUSY:	 in STD_LOGIC;
		PS_CONS_CYCLE_LATCH_RESET:	 in STD_LOGIC;
		PS_CONS_PRINTER_END_OF_LINE:	 in STD_LOGIC;
		PS_CONS_BACK_SPACE_CONTROL:	 in STD_LOGIC;
		PS_CONSOLE_OUTPUT_ERROR:	 in STD_LOGIC;
		PS_CONS_CLOCK_3_POS:	 in STD_LOGIC;
		MS_CONS_CHAR_CONTROL:	 in STD_LOGIC;
		PS_CONS_CYCLE_LATCH_SET:	 in STD_LOGIC;
		PS_CONS_ERROR_CONTROL:	 out STD_LOGIC;
		MS_CONS_ERROR_CONTROL:	 out STD_LOGIC;
		MS_END_OF_CHAR_RESET:	 out STD_LOGIC;
		MS_END_OF_LINE_RESET:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_4: STD_LOGIC := '1';
	signal PS_CONS_PRINTER_NOT_BUSY: STD_LOGIC := '0';
	signal PS_CONS_CYCLE_LATCH_RESET: STD_LOGIC := '0';
	signal PS_CONS_PRINTER_END_OF_LINE: STD_LOGIC := '0';
	signal PS_CONS_BACK_SPACE_CONTROL: STD_LOGIC := '0';
	signal PS_CONSOLE_OUTPUT_ERROR: STD_LOGIC := '0';
	signal PS_CONS_CLOCK_3_POS: STD_LOGIC := '0';
	signal MS_CONS_CHAR_CONTROL: STD_LOGIC := '1';
	signal PS_CONS_CYCLE_LATCH_SET: STD_LOGIC := '0';

	-- Outputs

	signal PS_CONS_ERROR_CONTROL: STD_LOGIC;
	signal MS_CONS_ERROR_CONTROL: STD_LOGIC;
	signal MS_END_OF_CHAR_RESET: STD_LOGIC;
	signal MS_END_OF_LINE_RESET: STD_LOGIC;

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

	UUT: ALD_45_50_12_1_ERROR_CONTROL_LATCH port map(
		FPGA_CLK => FPGA_CLK,
		MS_PROGRAM_RESET_4 => MS_PROGRAM_RESET_4,
		PS_CONS_PRINTER_NOT_BUSY => PS_CONS_PRINTER_NOT_BUSY,
		PS_CONS_CYCLE_LATCH_RESET => PS_CONS_CYCLE_LATCH_RESET,
		PS_CONS_PRINTER_END_OF_LINE => PS_CONS_PRINTER_END_OF_LINE,
		PS_CONS_BACK_SPACE_CONTROL => PS_CONS_BACK_SPACE_CONTROL,
		PS_CONSOLE_OUTPUT_ERROR => PS_CONSOLE_OUTPUT_ERROR,
		PS_CONS_CLOCK_3_POS => PS_CONS_CLOCK_3_POS,
		MS_CONS_CHAR_CONTROL => MS_CONS_CHAR_CONTROL,
		PS_CONS_CYCLE_LATCH_SET => PS_CONS_CYCLE_LATCH_SET,
		PS_CONS_ERROR_CONTROL => PS_CONS_ERROR_CONTROL,
		MS_CONS_ERROR_CONTROL => MS_CONS_ERROR_CONTROL,
		MS_END_OF_CHAR_RESET => MS_END_OF_CHAR_RESET,
		MS_END_OF_LINE_RESET => MS_END_OF_LINE_RESET);

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

   testName := "45.50.12.1        ";

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
      
      MS_PROGRAM_RESET_4 <= '0';
      wait for 30 ns;
      MS_PROGRAM_RESET_4 <= '1';
      wait for 30 ns;
      
      check1(PS_CONS_ERROR_CONTROL,'0',testName,"Init +S Cons Error Control");
      check1(MS_CONS_ERROR_CONTROL,'1',testName,"Init -S Cons Error Control");
      
      -- Maybe set the latch (holding off reset signals for now)
      
      PS_CONS_BACK_SPACE_CONTROL <= e;
      PS_CONSOLE_OUTPUT_ERROR <= f;
      PS_CONS_CLOCK_3_POS <= g;
      MS_CONS_CHAR_CONTROL <= not h;
      PS_CONS_CYCLE_LATCH_SET <= j;      
      wait for 30 ns;

      check1(PS_CONS_ERROR_CONTROL,f and not h and j and e,testName,"Set +S Cons Error Control");
      check1(MS_CONS_ERROR_CONTROL,not PS_CONS_ERROR_CONTROL,testName,"Set -S Cons Error Control");

      -- Reset the setting signals so a reset can happen later.  This should not affect the lach.

      PS_CONS_BACK_SPACE_CONTROL <= '0';
      PS_CONSOLE_OUTPUT_ERROR <= '0';
      MS_CONS_CHAR_CONTROL <= '1';
      PS_CONS_CYCLE_LATCH_SET <= '0';      
      wait for 30 ns;
      
      check1(PS_CONS_ERROR_CONTROL,f and not h and j and e,testName,"Check Set +S Cons Error Control");
      check1(MS_CONS_ERROR_CONTROL,not PS_CONS_ERROR_CONTROL,testName,"Check Set -S Cons Error Control");
      
      -- Then, perhaps, reset the latch
      
		PS_CONS_PRINTER_NOT_BUSY <= b;
      PS_CONS_CYCLE_LATCH_RESET <= c;
      PS_CONS_PRINTER_END_OF_LINE <= d;
      wait for 30 ns;

      check1(PS_CONS_ERROR_CONTROL,
         (f and not h and j and e) and not((b and c) or (c and d)),
          testName,"Reset +S Cons Error Control");
      check1(MS_CONS_ERROR_CONTROL,not PS_CONS_ERROR_CONTROL,testName,"Reset -S Cons Error Control");
      
      check1(MS_END_OF_CHAR_RESET,not(b and c),testName,"End of Char Reset");
      check1(MS_END_OF_LINE_RESET,not(d and g),testName,"End of Line Reset");
      
      -- Unset the reset variables, for the next iteration.
      
		PS_CONS_PRINTER_NOT_BUSY <= '0';
      PS_CONS_CYCLE_LATCH_RESET <= '0';
      PS_CONS_PRINTER_END_OF_LINE <= '0';
      
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