-- Test Bench VHDL for IBM SMS ALD page 45.20.04.1
-- Title: CONS CYCLE CTRL MATRIX Y5+Y6-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/28/2020 4:19:57 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_20_04_1_CONS_CYCLE_CTRL_MATRIX_Y5_Y6_ACC_tb is
end ALD_45_20_04_1_CONS_CYCLE_CTRL_MATRIX_Y5_Y6_ACC_tb;

architecture behavioral of ALD_45_20_04_1_CONS_CYCLE_CTRL_MATRIX_Y5_Y6_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_45_20_04_1_CONS_CYCLE_CTRL_MATRIX_Y5_Y6_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_CONS_GATE_POS_30:	 in STD_LOGIC;
		PS_CONS_MX_Y_DRIVE_2:	 in STD_LOGIC;
		MS_DISPLAY_ROUTINE:	 in STD_LOGIC;
		MS_ADDRESS_SET_ROUTINE:	 in STD_LOGIC;
		PS_CONS_MX_X1A_POS:	 in STD_LOGIC;
		MS_CONS_MX_Y_DC_RESET:	 in STD_LOGIC;
		PS_DISPLAY_ROUTINE_2:	 in STD_LOGIC;
		PS_CONS_MX_Y4_POS:	 in STD_LOGIC;
		MS_CONSOLE_OP_COMPLETE:	 in STD_LOGIC;
		PS_CONS_MX_ADDR_DRIVE:	 in STD_LOGIC;
		MS_CONSOLE_CYCLE_START:	 in STD_LOGIC;
		MS_CONS_STOP_PRINT_MX_GATE:	 in STD_LOGIC;
		MS_CONS_MX_Y4_POS:	 in STD_LOGIC;
		PS_CONS_MX_X5_POS:	 in STD_LOGIC;
		PS_CONS_STOP_PRINT_LATCH:	 in STD_LOGIC;
		MS_CONS_MX_Y6_POS:	 out STD_LOGIC;
		PS_CONS_MX_Y6_POS:	 out STD_LOGIC;
		MS_ADDRESS_SET_COMPLETE:	 out STD_LOGIC;
		PS_CONS_ADDRESS_COMPLETE:	 out STD_LOGIC;
		MS_DISPLAY_ADDR_COMPLETE:	 out STD_LOGIC;
		MS_CONS_MX_Y5_POS:	 out STD_LOGIC;
		PS_CONS_MX_Y5_POS:	 out STD_LOGIC;
		MS_END_STOP_DATA:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_CONS_GATE_POS_30: STD_LOGIC := '1';
	signal PS_CONS_MX_Y_DRIVE_2: STD_LOGIC := '0';
	signal MS_DISPLAY_ROUTINE: STD_LOGIC := '1';
	signal MS_ADDRESS_SET_ROUTINE: STD_LOGIC := '1';
	signal PS_CONS_MX_X1A_POS: STD_LOGIC := '0';
	signal MS_CONS_MX_Y_DC_RESET: STD_LOGIC := '1';
	signal PS_DISPLAY_ROUTINE_2: STD_LOGIC := '0';
	signal PS_CONS_MX_Y4_POS: STD_LOGIC := '0';
	signal MS_CONSOLE_OP_COMPLETE: STD_LOGIC := '1';
	signal PS_CONS_MX_ADDR_DRIVE: STD_LOGIC := '0';
	signal MS_CONSOLE_CYCLE_START: STD_LOGIC := '1';
	signal MS_CONS_STOP_PRINT_MX_GATE: STD_LOGIC := '1';
	signal MS_CONS_MX_Y4_POS: STD_LOGIC := '1';
	signal PS_CONS_MX_X5_POS: STD_LOGIC := '0';
	signal PS_CONS_STOP_PRINT_LATCH: STD_LOGIC := '0';

	-- Outputs

	signal MS_CONS_MX_Y6_POS: STD_LOGIC;
	signal PS_CONS_MX_Y6_POS: STD_LOGIC;
	signal MS_ADDRESS_SET_COMPLETE: STD_LOGIC;
	signal PS_CONS_ADDRESS_COMPLETE: STD_LOGIC;
	signal MS_DISPLAY_ADDR_COMPLETE: STD_LOGIC;
	signal MS_CONS_MX_Y5_POS: STD_LOGIC;
	signal PS_CONS_MX_Y5_POS: STD_LOGIC;
	signal MS_END_STOP_DATA: STD_LOGIC;

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

	UUT: ALD_45_20_04_1_CONS_CYCLE_CTRL_MATRIX_Y5_Y6_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MS_CONS_GATE_POS_30 => MS_CONS_GATE_POS_30,
		PS_CONS_MX_Y_DRIVE_2 => PS_CONS_MX_Y_DRIVE_2,
		MS_DISPLAY_ROUTINE => MS_DISPLAY_ROUTINE,
		MS_ADDRESS_SET_ROUTINE => MS_ADDRESS_SET_ROUTINE,
		PS_CONS_MX_X1A_POS => PS_CONS_MX_X1A_POS,
		MS_CONS_MX_Y_DC_RESET => MS_CONS_MX_Y_DC_RESET,
		PS_DISPLAY_ROUTINE_2 => PS_DISPLAY_ROUTINE_2,
		PS_CONS_MX_Y4_POS => PS_CONS_MX_Y4_POS,
		MS_CONSOLE_OP_COMPLETE => MS_CONSOLE_OP_COMPLETE,
		PS_CONS_MX_ADDR_DRIVE => PS_CONS_MX_ADDR_DRIVE,
		MS_CONSOLE_CYCLE_START => MS_CONSOLE_CYCLE_START,
		MS_CONS_STOP_PRINT_MX_GATE => MS_CONS_STOP_PRINT_MX_GATE,
		MS_CONS_MX_Y4_POS => MS_CONS_MX_Y4_POS,
		PS_CONS_MX_X5_POS => PS_CONS_MX_X5_POS,
		PS_CONS_STOP_PRINT_LATCH => PS_CONS_STOP_PRINT_LATCH,
		MS_CONS_MX_Y6_POS => MS_CONS_MX_Y6_POS,
		PS_CONS_MX_Y6_POS => PS_CONS_MX_Y6_POS,
		MS_ADDRESS_SET_COMPLETE => MS_ADDRESS_SET_COMPLETE,
		PS_CONS_ADDRESS_COMPLETE => PS_CONS_ADDRESS_COMPLETE,
		MS_DISPLAY_ADDR_COMPLETE => MS_DISPLAY_ADDR_COMPLETE,
		MS_CONS_MX_Y5_POS => MS_CONS_MX_Y5_POS,
		PS_CONS_MX_Y5_POS => PS_CONS_MX_Y5_POS,
		MS_END_STOP_DATA => MS_END_STOP_DATA);

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
   
   variable y5gateon1, y6reset: std_logic;
   
   begin

   -- Your test bench code

   testName := "45.20.04.1        ";

   for tt in 0 to 2**13 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      g := tv(5);
      h := tv(6);
      j := tv(7);
      l := tv(8);
      m := tv(9);
      n := tv(10);
      o := tv(11);
      p := tv(12);

      y5gateon1 := (n or m or l) and not j;
      y6reset := not(not d and e and g);

      -- Reset

      MS_CONS_MX_Y_DC_RESET <= '0';
      wait for 30 ns;
      MS_CONS_MX_Y_DC_RESET <= '1';
      wait for 30 ns;
      
      check1(PS_CONS_MX_Y5_POS,'0',testname,"Init +S Y5");      
      check1(MS_CONS_MX_Y5_POS,'1',testname,"Init -S Y5");
      check1(PS_CONS_MX_Y6_POS,'0',testname,"Init +S Y6");      
      check1(MS_CONS_MX_Y6_POS,'1',testname,"Init -S Y6");

      -- Now maybe set the trigger.  First, the setup.
      -- Since the gateoff for Y5 is Y5 itself, we can use all of the 
      -- non AC variables.
      -- Also, Since Y5 is not set, Y6 will not set at this point either.

		MS_CONS_GATE_POS_30 <= '1'; -- Prevent Y6 from setting too early in the test
		MS_DISPLAY_ROUTINE <= not c;
		MS_ADDRESS_SET_ROUTINE <= not d;
		PS_CONS_MX_X1A_POS <= e;
		PS_DISPLAY_ROUTINE_2 <= g;
		PS_CONS_MX_Y4_POS <= h;
		MS_CONSOLE_OP_COMPLETE <= not j;
		MS_CONSOLE_CYCLE_START <= not l;
		MS_CONS_STOP_PRINT_MX_GATE <= not m;
		MS_CONS_MX_Y4_POS <= not n;
		PS_CONS_MX_X5_POS <= o;
		PS_CONS_STOP_PRINT_LATCH <= p;

      -- Run one of the clocks
      
      PS_CONS_MX_Y_DRIVE_2 <= b;
      PS_CONS_MX_ADDR_DRIVE <= not b;
      wait for 90 ns;
      PS_CONS_MX_ADDR_DRIVE <= '0';
      PS_CONS_MX_Y_DRIVE_2 <= '0';
      wait for 90 ns;

      check1(PS_CONS_MX_Y5_POS,(y5gateon1 and b) or (h and not b),testname,"+S Y5 Set");
      check1(MS_CONS_MX_Y5_POS,NOT PS_CONS_MX_Y5_POS,testname,"-S Y5 Set");
      
      -- Checks we need to do while Y5 might be set or not set
      
      check1(MS_END_STOP_DATA,not(PS_CONS_MX_Y5_POS and o and p),testName,
         "END STOP DATA");
         
      -- If it was not supposed to be set, there is little point continuing
      
      if(PS_CONS_MX_Y5_POS = '0') then
         next;
      end if;
      
      -- Set up for a possible reset by removing the gate on signals

      PS_CONS_MX_Y4_POS <= '0';
      MS_CONS_MX_Y4_POS <= '1';
      MS_CONSOLE_OP_COMPLETE <= '0';
		MS_CONS_GATE_POS_30 <= not a;
            
      -- Run one of the two clocks again (only the Y drive clock will reset Y5)      
      
      PS_CONS_MX_Y_DRIVE_2 <= b;
      PS_CONS_MX_ADDR_DRIVE <= not b;
      wait for 90 ns;
      PS_CONS_MX_ADDR_DRIVE <= '0';
      PS_CONS_MX_Y_DRIVE_2 <= '0';
      wait for 90 ns;
      
      -- The only way Y5 stays set is if the Y Drive signal didn't activate
      
      check1(PS_CONS_MX_Y5_POS,not b,testName,"+S Y5 Reset");
      check1(MS_CONS_MX_Y5_POS,NOT PS_CONS_MX_Y5_POS,testName,"-S Y5 Reset");

      -- Check the Y6 set.  It's complicated...  It can set from Y5 only if
      -- we didnt get to X5 (variable o) or the Console Print Latch (variable p).
      -- But it can also set without Y5 under the same conditions if Consolte Gate
      -- Position 30 is set (variable a).  Only one clock can actually set it.            

      check1(PS_CONS_MX_Y6_POS,
         (((y5gateon1 and b) or (h and not b)) or a) and (not o or not p) and b,testName,
         "+S Y6 Set");
      check1(MS_CONS_MX_Y6_POS,not PS_CONS_MX_Y6_POS,testName,"-S Y6 Set"); 
      
      -- Checks we need to make with Y6 maybe set or maybe not set

      check1(PS_CONS_ADDRESS_COMPLETE,PS_CONS_MX_Y6_POS and not d and e,testName,
         "Cons Address Complete"); 
         
      check1(MS_DISPLAY_ADDR_COMPLETE,not(PS_CONS_ADDRESS_COMPLETE and g),testName,
         "Display Addr Complete");
           
      check1(MS_ADDRESS_SET_COMPLETE,not(PS_CONS_ADDRESS_COMPLETE and not c),testName,
         "Address Set Complete");
                  
      if(PS_CONS_MX_Y6_POS = '0') then
         next;
      end if;

      -- We need to make sure nothing holds Y6 from resetting
      
      MS_CONS_GATE_POS_30 <= '1';
      
      -- Run the clocks a couple of times - nothing should change, unless certain 
      -- conditions are met
      
      PS_CONS_MX_Y_DRIVE_2 <= b;
      PS_CONS_MX_ADDR_DRIVE <= not b;
      wait for 90 ns;
      PS_CONS_MX_ADDR_DRIVE <= '0';
      PS_CONS_MX_Y_DRIVE_2 <= '0';
      wait for 90 ns;

      check1(PS_CONS_MX_Y6_POS,not(y6reset),testName,"+S Y6 Continuation 1");
      check1(MS_CONS_MX_Y6_POS,not PS_CONS_MX_Y6_POS,testName,"-S Y6 Continuation 1"); 

      PS_CONS_MX_Y_DRIVE_2 <= b;
      PS_CONS_MX_ADDR_DRIVE <= not b;
      wait for 90 ns;
      PS_CONS_MX_ADDR_DRIVE <= '0';
      PS_CONS_MX_Y_DRIVE_2 <= '0';
      wait for 90 ns;

      check1(PS_CONS_MX_Y6_POS,not y6reset,testName,"+S Y6 Continuation 2");
      check1(MS_CONS_MX_Y6_POS,not PS_CONS_MX_Y6_POS,testName,"-S Y6 Continuation 2"); 
           
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
