-- Test Bench VHDL for IBM SMS ALD page 40.10.01.1
-- Title: CONSOLE MODE SWITCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/7/2020 5:22:26 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_40_10_01_1_CONSOLE_MODE_SWITCH_tb is
end ALD_40_10_01_1_CONSOLE_MODE_SWITCH_tb;

architecture behavioral of ALD_40_10_01_1_CONSOLE_MODE_SWITCH_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_40_10_01_1_CONSOLE_MODE_SWITCH
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		CONS_36V:	 in STD_LOGIC;
		SWITCH_ROT_MODE_SW_DK:	 in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_MODE_SW_DK1:	 in STD_LOGIC_VECTOR(12 downTo 0);
		MV_CONS_MODE_SW_I_E_CYCLE_MODE:	 out STD_LOGIC;
		MV_CONS_MODE_SW_ADDR_SET_MODE:	 out STD_LOGIC;
		MV_CONS_MODE_SW_CE_MODE:	 out STD_LOGIC;
		MV_CONS_MODE_SW_ADDR_SET_MODE_JRJ:	 out STD_LOGIC;
		MV_CONS_MODE_SW_RUN_MODE:	 out STD_LOGIC;
		MV_CONSOLE_MODE_SW_STOP_POS:	 out STD_LOGIC;
		MV_CONS_MODE_SW_DISPLAY_MODE:	 out STD_LOGIC;
		MV_CONS_MODE_SW_ALTER_MODE:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal CONS_36V: STD_LOGIC := '0';
	signal SWITCH_ROT_MODE_SW_DK: STD_LOGIC_VECTOR(12 downTo 0) := "0000000000000";
	signal SWITCH_ROT_MODE_SW_DK1: STD_LOGIC_VECTOR(12 downTo 0) := "0000000000000";

	-- Outputs

	signal MV_CONS_MODE_SW_I_E_CYCLE_MODE: STD_LOGIC;
	signal MV_CONS_MODE_SW_ADDR_SET_MODE: STD_LOGIC;
	signal MV_CONS_MODE_SW_CE_MODE: STD_LOGIC;
	signal MV_CONS_MODE_SW_ADDR_SET_MODE_JRJ: STD_LOGIC;
	signal MV_CONS_MODE_SW_RUN_MODE: STD_LOGIC;
	signal MV_CONSOLE_MODE_SW_STOP_POS: STD_LOGIC;
	signal MV_CONS_MODE_SW_DISPLAY_MODE: STD_LOGIC;
	signal MV_CONS_MODE_SW_ALTER_MODE: STD_LOGIC;

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
      
procedure checkSwitch(
        checked: in STD_LOGIC_VECTOR(7 downto 0);
        val: in STD_LOGIC_VECTOR(7 downto 0);
        testname: in string;
        test: in string) is
        begin
           for thebit in 0 to 7 loop
             assert checked(thebit) = val(thebit) report
                testname & " (" & test & ") bit " & Integer'image(thebit) & " failed." severity failure; 
           end loop;
        end procedure;

signal switchResults: std_logic_vector(7 downto 0);

   -- Your test bench declarations go here

-- END USER TEST BENCH DECLARATIONS

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ALD_40_10_01_1_CONSOLE_MODE_SWITCH port map(
		FPGA_CLK => FPGA_CLK,
		CONS_36V => CONS_36V,
		SWITCH_ROT_MODE_SW_DK => SWITCH_ROT_MODE_SW_DK,
		SWITCH_ROT_MODE_SW_DK1 => SWITCH_ROT_MODE_SW_DK1,
		MV_CONS_MODE_SW_I_E_CYCLE_MODE => MV_CONS_MODE_SW_I_E_CYCLE_MODE,
		MV_CONS_MODE_SW_ADDR_SET_MODE => MV_CONS_MODE_SW_ADDR_SET_MODE,
		MV_CONS_MODE_SW_CE_MODE => MV_CONS_MODE_SW_CE_MODE,
		MV_CONS_MODE_SW_ADDR_SET_MODE_JRJ => MV_CONS_MODE_SW_ADDR_SET_MODE_JRJ,
		MV_CONS_MODE_SW_RUN_MODE => MV_CONS_MODE_SW_RUN_MODE,
		MV_CONSOLE_MODE_SW_STOP_POS => MV_CONSOLE_MODE_SW_STOP_POS,
		MV_CONS_MODE_SW_DISPLAY_MODE => MV_CONS_MODE_SW_DISPLAY_MODE,
		MV_CONS_MODE_SW_ALTER_MODE => MV_CONS_MODE_SW_ALTER_MODE);

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
   variable tv: std_logic_vector(12 downto 0);
   variable a,b,c,d,e,f,g,h,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;
   variable expectedResults: std_logic_vector(7 downto 0);

   begin

   -- Your test bench code

   testName := "40.10.01.1        ";

   for tt in 1 to 12 loop
   
      tv := "0000000000000";
      tv(tt) := '1';
      
      expectedResults := (tv(2) or tv(4) or tv(6) or tv(8) or tv(10) or tv(12)) &
         tv(11) & tv(9) & tv(7) & tv(5) & tv(5) & tv(3) & tv(1);
   
      SWITCH_ROT_MODE_SW_DK <= tv;
      SWITCH_ROT_MODE_SW_DK1 <= tv;
      
      wait for 30 ns;
      
      switchResults <= not MV_CONSOLE_MODE_SW_STOP_POS &
         not MV_CONS_MODE_SW_ALTER_MODE &
         not MV_CONS_MODE_SW_DISPLAY_MODE &
         not MV_CONS_MODE_SW_RUN_MODE &
         not MV_CONS_MODE_SW_ADDR_SET_MODE &
         not MV_CONS_MODE_SW_ADDR_SET_MODE_JRJ &
         not MV_CONS_MODE_SW_I_E_CYCLE_MODE &
         not MV_CONS_MODE_SW_CE_MODE;
         
      wait for 10 ns;
      
      checkSwitch(switchResults,expectedResults,testName,"Console Mode Switch");
      
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
