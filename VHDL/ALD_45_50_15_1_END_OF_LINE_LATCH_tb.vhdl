-- Test Bench VHDL for IBM SMS ALD page 45.50.15.1
-- Title: END OF LINE LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/4/2020 9:23:40 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_50_15_1_END_OF_LINE_LATCH_tb is
end ALD_45_50_15_1_END_OF_LINE_LATCH_tb;

architecture behavioral of ALD_45_50_15_1_END_OF_LINE_LATCH_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_45_50_15_1_END_OF_LINE_LATCH
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_KEYBOARD_UNLOCK:	 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		PS_CONS_CYCLE_LATCH_SET:	 in STD_LOGIC;
		PS_CONS_PRTR_NOT_BUSY_SET:	 in STD_LOGIC;
		PS_CONS_CYCLE_LATCH_RESET:	 in STD_LOGIC;
		MV_CONS_PRINTER_LAST_COLUMN_SET:	 in STD_LOGIC;
		PS_CONS_PRINTER_STROBE:	 in STD_LOGIC;
		GROUND:	 in STD_LOGIC;
		MS_CONS_PRINTER_END_OF_LINE:	 out STD_LOGIC;
		PS_CONS_PRINTER_END_OF_LINE:	 out STD_LOGIC;
		MS_CONS_PRINTER_LAST_COLUMN:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_KEYBOARD_UNLOCK: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_4: STD_LOGIC := '1';
	signal PS_CONS_CYCLE_LATCH_SET: STD_LOGIC := '0';
	signal PS_CONS_PRTR_NOT_BUSY_SET: STD_LOGIC := '0';
	signal PS_CONS_CYCLE_LATCH_RESET: STD_LOGIC := '0';
	signal MV_CONS_PRINTER_LAST_COLUMN_SET: STD_LOGIC := '1';
	signal PS_CONS_PRINTER_STROBE: STD_LOGIC := '0';
	signal GROUND: STD_LOGIC := '0';

	-- Outputs

	signal MS_CONS_PRINTER_END_OF_LINE: STD_LOGIC;
	signal PS_CONS_PRINTER_END_OF_LINE: STD_LOGIC;
	signal MS_CONS_PRINTER_LAST_COLUMN: STD_LOGIC;

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

	UUT: ALD_45_50_15_1_END_OF_LINE_LATCH port map(
		FPGA_CLK => FPGA_CLK,
		PS_KEYBOARD_UNLOCK => PS_KEYBOARD_UNLOCK,
		MS_PROGRAM_RESET_4 => MS_PROGRAM_RESET_4,
		PS_CONS_CYCLE_LATCH_SET => PS_CONS_CYCLE_LATCH_SET,
		PS_CONS_PRTR_NOT_BUSY_SET => PS_CONS_PRTR_NOT_BUSY_SET,
		PS_CONS_CYCLE_LATCH_RESET => PS_CONS_CYCLE_LATCH_RESET,
		MV_CONS_PRINTER_LAST_COLUMN_SET => MV_CONS_PRINTER_LAST_COLUMN_SET,
		PS_CONS_PRINTER_STROBE => PS_CONS_PRINTER_STROBE,
		GROUND => GROUND,
		MS_CONS_PRINTER_END_OF_LINE => MS_CONS_PRINTER_END_OF_LINE,
		PS_CONS_PRINTER_END_OF_LINE => PS_CONS_PRINTER_END_OF_LINE,
		MS_CONS_PRINTER_LAST_COLUMN => MS_CONS_PRINTER_LAST_COLUMN);

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

   testName := "45.50.15.1        ";

   for tt in 0 to 2**4 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      d := tv(1);
      f := tv(2);
      g := tv(3);
      
      g1 := f and g;
      g2 := (a and g1) or (g1 and d);

      -- Reset the printer last column latch
                  
      MS_PROGRAM_RESET_4 <= '0';
      wait for 30 ns;
      MS_PROGRAM_RESET_4 <= '1';
      wait for 30 ns;

      check1(MS_CONS_PRINTER_LAST_COLUMN,'1',testName,"Init Last Col");
            
      -- Reset the Last Column latch as well
      
      PS_CONS_CYCLE_LATCH_SET <= '1';
      wait for 30 ns;
      PS_CONS_CYCLE_LATCH_SET <= '0';
      wait for 30 ns;

      check1(PS_CONS_PRINTER_END_OF_LINE,'0',testName,"Init +S Cons EOL");
      check1(MS_CONS_PRINTER_END_OF_LINE,'1',testName,"Init -S Cons EOL");
      
      -- Mauybe set  the last column latch
      
      MV_CONS_PRINTER_LAST_COLUMN_SET <= not f;
      PS_CONS_PRINTER_STROBE <= g;      
      wait for 30 ns;

      check1(MS_CONS_PRINTER_LAST_COLUMN,not g1,testName,"Set Prtr Last Col");

      -- Remove those inputs.  The latch should be unaffected

      MV_CONS_PRINTER_LAST_COLUMN_SET <= '1';
      PS_CONS_PRINTER_STROBE <= '0';      
      wait for 30 ns;

      check1(MS_CONS_PRINTER_LAST_COLUMN,not g1,testName,"Check Set Prtr Last Col");

      -- Now, maybe set the End of Line Latch

		PS_KEYBOARD_UNLOCK <= a;
      PS_CONS_PRTR_NOT_BUSY_SET <= d;
      PS_CONS_CYCLE_LATCH_SET <= '1';
      wait for 60 ns;
     
      check1(PS_CONS_PRINTER_END_OF_LINE,g2,testName,"Set +S Cons EOL");
      check1(MS_CONS_PRINTER_END_OF_LINE,not PS_CONS_PRINTER_END_OF_LINE,testName,"Set -S Cons EOL");
      
      -- Then reset those inputs, the latch should not change.

		PS_KEYBOARD_UNLOCK <= '0';
      PS_CONS_PRTR_NOT_BUSY_SET <= '0';
      PS_CONS_CYCLE_LATCH_SET <= '0';
      wait for 30 ns;
     
      check1(PS_CONS_PRINTER_END_OF_LINE,g2,testName,"Check set +S Cons EOL");
      check1(MS_CONS_PRINTER_END_OF_LINE,not PS_CONS_PRINTER_END_OF_LINE,
         testName,"Check set -S Cons EOL");
      
      -- Next, maybe reset Printer Last column Latch (it may not have ever set...)
      
      PS_CONS_CYCLE_LATCH_RESET <= '1';
      wait for 30 ns;
      PS_CONS_CYCLE_LATCH_RESET <= '0';
      wait for 30 ns;
      
      check1(MS_CONS_PRINTER_LAST_COLUMN,not(g1 and not g2),testName,"Reset Cons Prtr Last Col.");
      
      -- And then maybe reset Printer EOL latch...
      -- Either way, after this, it should NOT be set
      
      PS_CONS_CYCLE_LATCH_SET <= '1';
      wait for 30 ns;
      PS_CONS_CYCLE_LATCH_SET <= '0';
      wait for 30 ns;

      check1(PS_CONS_PRINTER_END_OF_LINE,'0',testName,"Reset +S Cons EOL");
      check1(MS_CONS_PRINTER_END_OF_LINE,not PS_CONS_PRINTER_END_OF_LINE,testName,"Reset -S Cons EOL");            
      
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
