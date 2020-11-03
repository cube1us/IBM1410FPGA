-- Test Bench VHDL for IBM SMS ALD page 45.50.11.1
-- Title: OUTPUT ERROR LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/3/2020 1:49:22 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_50_11_1_OUTPUT_ERROR_LATCH_tb is
end ALD_45_50_11_1_OUTPUT_ERROR_LATCH_tb;

architecture behavioral of ALD_45_50_11_1_OUTPUT_ERROR_LATCH_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_45_50_11_1_OUTPUT_ERROR_LATCH
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_CONS_CHECK_STROBE:	 in STD_LOGIC;
		PS_CONS_ERROR_CONTROL:	 in STD_LOGIC;
		MS_CONS_CYCLE_LATCH_SET:	 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		MS_CONS_PRINTER_STROBE:	 in STD_LOGIC;
		MS_CONS_OUTPUT_CBA8_421:	 in STD_LOGIC;
		MB_CONS_PRINTER_EVEN_BIT_CHECK:	 in STD_LOGIC;
		MS_CONSOLE_WM_CHARACTER:	 in STD_LOGIC;
		PS_CONS_PRINTER_STROBE:	 in STD_LOGIC;
		MS_KEYBOARD_UNLOCK:	 in STD_LOGIC;
		PS_CONSOLE_WM_CHARACTER:	 in STD_LOGIC;
		MV_CONS_PRINTER_SPACE_NO_JRJ:	 in STD_LOGIC;
		MS_CONS_MX_X1A_POS:	 in STD_LOGIC;
		MV_CONS_PRINTER_ODD_BIT_CHECK:	 in STD_LOGIC;
		GROUND:	 in STD_LOGIC;
		PS_CONSOLE_OUTPUT_ERROR:	 out STD_LOGIC;
		MS_CONSOLE_OUTPUT_ERROR:	 out STD_LOGIC;
		PS_CONS_DATA_CHECK:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_CONS_CHECK_STROBE: STD_LOGIC := '0';
	signal PS_CONS_ERROR_CONTROL: STD_LOGIC := '0';
	signal MS_CONS_CYCLE_LATCH_SET: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_4: STD_LOGIC := '1';
	signal MS_CONS_PRINTER_STROBE: STD_LOGIC := '1';
	signal MS_CONS_OUTPUT_CBA8_421: STD_LOGIC := '1';
	signal MB_CONS_PRINTER_EVEN_BIT_CHECK: STD_LOGIC := '1';
	signal MS_CONSOLE_WM_CHARACTER: STD_LOGIC := '1';
	signal PS_CONS_PRINTER_STROBE: STD_LOGIC := '0';
	signal MS_KEYBOARD_UNLOCK: STD_LOGIC := '1';
	signal PS_CONSOLE_WM_CHARACTER: STD_LOGIC := '0';
	signal MV_CONS_PRINTER_SPACE_NO_JRJ: STD_LOGIC := '1';
	signal MS_CONS_MX_X1A_POS: STD_LOGIC := '1';
	signal MV_CONS_PRINTER_ODD_BIT_CHECK: STD_LOGIC := '1';
	signal GROUND: STD_LOGIC := '0';

	-- Outputs

	signal PS_CONSOLE_OUTPUT_ERROR: STD_LOGIC;
	signal MS_CONSOLE_OUTPUT_ERROR: STD_LOGIC;
	signal PS_CONS_DATA_CHECK: STD_LOGIC;

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

	UUT: ALD_45_50_11_1_OUTPUT_ERROR_LATCH port map(
		FPGA_CLK => FPGA_CLK,
		PS_CONS_CHECK_STROBE => PS_CONS_CHECK_STROBE,
		PS_CONS_ERROR_CONTROL => PS_CONS_ERROR_CONTROL,
		MS_CONS_CYCLE_LATCH_SET => MS_CONS_CYCLE_LATCH_SET,
		MS_PROGRAM_RESET_4 => MS_PROGRAM_RESET_4,
		MS_CONS_PRINTER_STROBE => MS_CONS_PRINTER_STROBE,
		MS_CONS_OUTPUT_CBA8_421 => MS_CONS_OUTPUT_CBA8_421,
		MB_CONS_PRINTER_EVEN_BIT_CHECK => MB_CONS_PRINTER_EVEN_BIT_CHECK,
		MS_CONSOLE_WM_CHARACTER => MS_CONSOLE_WM_CHARACTER,
		PS_CONS_PRINTER_STROBE => PS_CONS_PRINTER_STROBE,
		MS_KEYBOARD_UNLOCK => MS_KEYBOARD_UNLOCK,
		PS_CONSOLE_WM_CHARACTER => PS_CONSOLE_WM_CHARACTER,
		MV_CONS_PRINTER_SPACE_NO_JRJ => MV_CONS_PRINTER_SPACE_NO_JRJ,
		MS_CONS_MX_X1A_POS => MS_CONS_MX_X1A_POS,
		MV_CONS_PRINTER_ODD_BIT_CHECK => MV_CONS_PRINTER_ODD_BIT_CHECK,
		GROUND => GROUND,
		PS_CONSOLE_OUTPUT_ERROR => PS_CONSOLE_OUTPUT_ERROR,
		MS_CONSOLE_OUTPUT_ERROR => MS_CONSOLE_OUTPUT_ERROR,
		PS_CONS_DATA_CHECK => PS_CONS_DATA_CHECK);

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

   testName := "15.49.04.1        X";  -- NOTE:  Remove X when editing to set correct length!

   for tt in 0 to 2**25 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      j := tv(8);
      k := tv(9);
      l := tv(10);
      m := tv(11);
      n := tv(12);
      o := tv(13);
      p := tv(14);
      q := tv(15);
      r := tv(16);
      s := tv(17);
      t := tv(18);
      u := tv(19);
      v := tv(20);
      w := tv(21);
      x := tv(22);
      y := tv(23);
      z := tv(24);

      
      wait for 30 ns;
      
      
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
