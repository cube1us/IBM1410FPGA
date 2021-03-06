-- Test Bench VHDL for IBM SMS ALD page 45.20.05.1
-- Title: CONSOLE CYCLE CTRL MATRIX X1A-X3
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/28/2020 9:49:19 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_20_05_1_CONSOLE_CYCLE_CTRL_MATRIX_X1A_X3_tb is
end ALD_45_20_05_1_CONSOLE_CYCLE_CTRL_MATRIX_X1A_X3_tb;

architecture behavioral of ALD_45_20_05_1_CONSOLE_CYCLE_CTRL_MATRIX_X1A_X3_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_45_20_05_1_CONSOLE_CYCLE_CTRL_MATRIX_X1A_X3
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_CONS_MX_X_DRIVE_2:	 in STD_LOGIC;
		MS_CONS_MX_X_DC_RESET:	 in STD_LOGIC;
		PS_CONS_STOP_PRINT_LATCH:	 in STD_LOGIC;
		PS_CONS_MX_X6_POS:	 in STD_LOGIC;
		PS_ADDRESS_SET_ROUTINE:	 in STD_LOGIC;
		PS_CONS_ADDRESS_COMPLETE:	 in STD_LOGIC;
		PS_CONS_MX_Y_DRIVE_2:	 in STD_LOGIC;
		MS_CONS_MX_X3_POS:	 out STD_LOGIC;
		PS_CONS_MX_X3_POS:	 out STD_LOGIC;
		MS_CONS_MX_X2_POS:	 out STD_LOGIC;
		PS_CONS_MX_X2_POS:	 out STD_LOGIC;
		MS_CONS_MX_X1_POS:	 out STD_LOGIC;
		PS_CONS_MX_X1_POS:	 out STD_LOGIC;
		MS_CONS_MX_X1A_POS:	 out STD_LOGIC;
		PS_CONS_MX_X1A_POS:	 out STD_LOGIC;
		LAMP_11C8A04:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_CONS_MX_X_DRIVE_2: STD_LOGIC := '0';
	signal MS_CONS_MX_X_DC_RESET: STD_LOGIC := '1';
	signal PS_CONS_STOP_PRINT_LATCH: STD_LOGIC := '0';
	signal PS_CONS_MX_X6_POS: STD_LOGIC := '0';
	signal PS_ADDRESS_SET_ROUTINE: STD_LOGIC := '0';
	signal PS_CONS_ADDRESS_COMPLETE: STD_LOGIC := '0';
	signal PS_CONS_MX_Y_DRIVE_2: STD_LOGIC := '0';

	-- Outputs

	signal MS_CONS_MX_X3_POS: STD_LOGIC;
	signal PS_CONS_MX_X3_POS: STD_LOGIC;
	signal MS_CONS_MX_X2_POS: STD_LOGIC;
	signal PS_CONS_MX_X2_POS: STD_LOGIC;
	signal MS_CONS_MX_X1_POS: STD_LOGIC;
	signal PS_CONS_MX_X1_POS: STD_LOGIC;
	signal MS_CONS_MX_X1A_POS: STD_LOGIC;
	signal PS_CONS_MX_X1A_POS: STD_LOGIC;
	signal LAMP_11C8A04: STD_LOGIC;

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

	UUT: ALD_45_20_05_1_CONSOLE_CYCLE_CTRL_MATRIX_X1A_X3 port map(
		FPGA_CLK => FPGA_CLK,
		PS_CONS_MX_X_DRIVE_2 => PS_CONS_MX_X_DRIVE_2,
		MS_CONS_MX_X_DC_RESET => MS_CONS_MX_X_DC_RESET,
		PS_CONS_STOP_PRINT_LATCH => PS_CONS_STOP_PRINT_LATCH,
		PS_CONS_MX_X6_POS => PS_CONS_MX_X6_POS,
		PS_ADDRESS_SET_ROUTINE => PS_ADDRESS_SET_ROUTINE,
		PS_CONS_ADDRESS_COMPLETE => PS_CONS_ADDRESS_COMPLETE,
		PS_CONS_MX_Y_DRIVE_2 => PS_CONS_MX_Y_DRIVE_2,
		MS_CONS_MX_X3_POS => MS_CONS_MX_X3_POS,
		PS_CONS_MX_X3_POS => PS_CONS_MX_X3_POS,
		MS_CONS_MX_X2_POS => MS_CONS_MX_X2_POS,
		PS_CONS_MX_X2_POS => PS_CONS_MX_X2_POS,
		MS_CONS_MX_X1_POS => MS_CONS_MX_X1_POS,
		PS_CONS_MX_X1_POS => PS_CONS_MX_X1_POS,
		MS_CONS_MX_X1A_POS => MS_CONS_MX_X1A_POS,
		PS_CONS_MX_X1A_POS => PS_CONS_MX_X1A_POS,
		LAMP_11C8A04 => LAMP_11C8A04);

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

   testName := "45.20.05.1        ";

   for tt in 0 to 2**5 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      c := tv(1);
      d := tv(2);
      e := tv(3);
      f := tv(4);
      g := tv(5);
      
      g1 := c and d and a;
      g2 := d and e and a;
      
      -- Reset
      
      MS_CONS_MX_X_DC_RESET <= '0';
      wait for 30 ns;
      MS_CONS_MX_X_DC_RESET <= '1';
      wait for 30 ns;
      
      check1(PS_CONS_MX_X1_POS,'0',testName,"Init +S MX X1");
      check1(MS_CONS_MX_X1_POS,'1',testName,"Init -S MX X1");
      check1(PS_CONS_MX_X2_POS,'0',testName,"Init +S MX X2");
      check1(MS_CONS_MX_X2_POS,'1',testName,"Init -S MX X2");
      check1(PS_CONS_MX_X3_POS,'0',testName,"Init +S MX X3");
      check1(MS_CONS_MX_X3_POS,'1',testName,"Init -S MX X3");
      check1(PS_CONS_MX_X1A_POS,'0',testName,"Init +S MX X1A");
      check1(MS_CONS_MX_X1A_POS,'1',testName,"Init -S MX X1A");

      -- Now, maybe set X1

		PS_CONS_STOP_PRINT_LATCH <= c;
		PS_CONS_MX_X6_POS <= d;
      PS_CONS_MX_X_DRIVE_2 <= a;
      wait for 90 ns;
      PS_CONS_MX_X_DRIVE_2 <= '0';
		PS_CONS_STOP_PRINT_LATCH <= '0';
      PS_CONS_MX_X6_POS <= '0';
      wait for 90 ns;
      
      check1(PS_CONS_MX_X1_POS,g1,testName,"Set +S X1");
      check1(MS_CONS_MX_X1_POS,NOT PS_CONS_MX_X1_POS,testName,"Set -S X1");
      
      -- On to maybe set X2 (after which X1 will not be set regardless)
      
      PS_CONS_MX_X_DRIVE_2 <= a;
      wait for 90 ns;
      PS_CONS_MX_X_DRIVE_2 <= '0';
      wait for 90 ns;

      check1(PS_CONS_MX_X1_POS,'0',testName,"Set X2 - Reset +S X1");
      check1(MS_CONS_MX_X1_POS,NOT PS_CONS_MX_X1_POS,testName,"Set X2 - Reset -S X1");
      check1(PS_CONS_MX_X2_POS,g1,testName,"Set +S MX X2");
      check1(MS_CONS_MX_X2_POS,NOT PS_CONS_MX_X2_POS,testName,"Set -S MX X2");
      
      -- Same story for X2 / X3

      PS_CONS_MX_X_DRIVE_2 <= a;
      wait for 90 ns;
      PS_CONS_MX_X_DRIVE_2 <= '0';
      wait for 90 ns;

      check1(PS_CONS_MX_X1_POS,'0',testName,"Set X3 - Reset +S X1");
      check1(MS_CONS_MX_X1_POS,NOT PS_CONS_MX_X1_POS,testName,"Set X3 - Reset -S X1");
      check1(PS_CONS_MX_X2_POS,'0',testName,"Set X3 - Reset +S MX X2");
      check1(MS_CONS_MX_X2_POS,NOT PS_CONS_MX_X2_POS,testName,"Set X3 - Reset -S MX X2");      
      check1(PS_CONS_MX_X3_POS,g1,testName,"Set +S MX X3");
      check1(MS_CONS_MX_X3_POS,NOT PS_CONS_MX_X3_POS,testName,"Set -S MX X3");
      
      -- And then X3 gets reset (if it was set in the first place...)

      PS_CONS_MX_X_DRIVE_2 <= a;
      wait for 90 ns;
      PS_CONS_MX_X_DRIVE_2 <= '0';
      wait for 90 ns;

      check1(PS_CONS_MX_X1_POS,'0',testName,"Reset X3 - Reset +S X1");
      check1(MS_CONS_MX_X1_POS,NOT PS_CONS_MX_X1_POS,testName,"Reset X3 - Reset -S X1");
      check1(PS_CONS_MX_X2_POS,'0',testName,"Reset X3 - Reset +S MX X2");
      check1(MS_CONS_MX_X2_POS,NOT PS_CONS_MX_X2_POS,testName,"Reset X3 - Reset -S MX X2");      
      check1(PS_CONS_MX_X3_POS,'0',testName,"Reset +S MX X3");
      check1(MS_CONS_MX_X3_POS,NOT PS_CONS_MX_X3_POS,testName,"Reset -S MX X3");
            
      check1(PS_CONS_MX_X1A_POS,'0',testName,"Init2 +S MX X1A");
      check1(MS_CONS_MX_X1A_POS,'1',testName,"Init2 -S MX X1A");
      check1(LAMP_11C8A04,'0',testName,"Init2 MX X1A Lamp");

		-- Then maybe set X1A
		
		PS_ADDRESS_SET_ROUTINE <= e;
		PS_CONS_MX_X6_POS <= d;		
      PS_CONS_MX_X_DRIVE_2 <= a;
      wait for 90 ns;
		PS_ADDRESS_SET_ROUTINE <= '0'; -- To prevent issues with reset later
		PS_CONS_MX_X6_POS <= '0'; -- Ditto
      PS_CONS_MX_X_DRIVE_2 <= '0';
      wait for 90 ns;
      
		check1(PS_CONS_MX_X1A_POS,g2,testName,"Set +S X1A");
		check1(MS_CONS_MX_X1A_POS,NOT PS_CONS_MX_X1A_POS,testName,"Set -S X1A");		
      check1(LAMP_11C8A04,g2,testName,"Set MX X1A Lamp");
		
		PS_CONS_MX_Y_DRIVE_2 <= g;
		wait for 30 ns;
		PS_CONS_ADDRESS_COMPLETE <= f;
      wait for 90 ns;            
		PS_CONS_ADDRESS_COMPLETE <= '0';
      PS_CONS_MX_Y_DRIVE_2 <= '0';      
      wait for 90 ns;
      
		check1(PS_CONS_MX_X1A_POS,g2 and not(f and g),testName,"Reset +S X1A");
      check1(MS_CONS_MX_X1A_POS,NOT PS_CONS_MX_X1A_POS,testName,"Reset -S X1A");      
      check1(LAMP_11C8A04,PS_CONS_MX_X1A_POS,testName,"Reset MX X1A Lamp");
                       
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
