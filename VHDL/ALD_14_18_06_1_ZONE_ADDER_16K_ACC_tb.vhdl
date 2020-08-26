-- Test Bench VHDL for IBM SMS ALD page 14.18.06.1
-- Title: ZONE ADDER 16K-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/26/2020 4:26:41 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_18_06_1_ZONE_ADDER_16K_ACC_tb is
end ALD_14_18_06_1_ZONE_ADDER_16K_ACC_tb;

architecture behavioral of ALD_14_18_06_1_ZONE_ADDER_16K_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_18_06_1_ZONE_ADDER_16K_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ZONE_ADDER_A_BITS_EVEN:	 in STD_LOGIC;
		PS_NO_CARRY_FOR_ZONE_ADDER:	 in STD_LOGIC;
		PS_CARRY_FOR_ZONE_ADDER:	 in STD_LOGIC;
		PS_ZONE_ADDER_TWO_BIT:	 in STD_LOGIC;
		PS_ZONE_ADDER_NOT_TWO_BIT:	 in STD_LOGIC;
		MS_ZONE_ADDER_A_B_DOT_B_B:	 in STD_LOGIC;
		PS_A_NOT_A_DOT_B_A_DOT_B_BITS_EVEN:	 in STD_LOGIC;
		MS_ZONE_ADDER_A_DOT_B_DOT_C_1:	 out STD_LOGIC;
		MS_ZONE_ADDER_A_DOT_B_DOT_C_2:	 out STD_LOGIC;
		MS_ZONE_ADDER_NOT_A_DOT_B_DOT_NOT_C_1:	 out STD_LOGIC;
		MS_ZONE_ADDER_NOT_A_DOT_B_DOT_NOT_C_2:	 out STD_LOGIC;
		MS_ZONE_ADDER_A_DOT_NOT_B_DOT_NOT_C_1:	 out STD_LOGIC;
		MS_ZONE_ADDER_A_DOT_NOT_B_DOT_NOT_C_2:	 out STD_LOGIC;
		PS_ZONE_ADDER_CARRY:	 out STD_LOGIC;
		MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_1:	 out STD_LOGIC;
		MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_2:	 out STD_LOGIC;
		MS_ZONE_ADDER_CARRY:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_ZONE_ADDER_A_BITS_EVEN: STD_LOGIC := '0';
	signal PS_NO_CARRY_FOR_ZONE_ADDER: STD_LOGIC := '0';
	signal PS_CARRY_FOR_ZONE_ADDER: STD_LOGIC := '0';
	signal PS_ZONE_ADDER_TWO_BIT: STD_LOGIC := '0';
	signal PS_ZONE_ADDER_NOT_TWO_BIT: STD_LOGIC := '0';
	signal MS_ZONE_ADDER_A_B_DOT_B_B: STD_LOGIC := '1';
	signal PS_A_NOT_A_DOT_B_A_DOT_B_BITS_EVEN: STD_LOGIC := '0';

	-- Outputs

	signal MS_ZONE_ADDER_A_DOT_B_DOT_C_1: STD_LOGIC;
	signal MS_ZONE_ADDER_A_DOT_B_DOT_C_2: STD_LOGIC;
	signal MS_ZONE_ADDER_NOT_A_DOT_B_DOT_NOT_C_1: STD_LOGIC;
	signal MS_ZONE_ADDER_NOT_A_DOT_B_DOT_NOT_C_2: STD_LOGIC;
	signal MS_ZONE_ADDER_A_DOT_NOT_B_DOT_NOT_C_1: STD_LOGIC;
	signal MS_ZONE_ADDER_A_DOT_NOT_B_DOT_NOT_C_2: STD_LOGIC;
	signal PS_ZONE_ADDER_CARRY: STD_LOGIC;
	signal MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_1: STD_LOGIC;
	signal MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_2: STD_LOGIC;
	signal MS_ZONE_ADDER_CARRY: STD_LOGIC;

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
      
function to_std_logic(b: boolean) return std_logic is
       begin
       if(b) then return ('1'); else return('0'); end if;
       end function;


   -- Your test bench declarations go here

-- END USER TEST BENCH DECLARATIONS
   

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ALD_14_18_06_1_ZONE_ADDER_16K_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_ZONE_ADDER_A_BITS_EVEN => PS_ZONE_ADDER_A_BITS_EVEN,
		PS_NO_CARRY_FOR_ZONE_ADDER => PS_NO_CARRY_FOR_ZONE_ADDER,
		PS_CARRY_FOR_ZONE_ADDER => PS_CARRY_FOR_ZONE_ADDER,
		PS_ZONE_ADDER_TWO_BIT => PS_ZONE_ADDER_TWO_BIT,
		PS_ZONE_ADDER_NOT_TWO_BIT => PS_ZONE_ADDER_NOT_TWO_BIT,
		MS_ZONE_ADDER_A_B_DOT_B_B => MS_ZONE_ADDER_A_B_DOT_B_B,
		PS_A_NOT_A_DOT_B_A_DOT_B_BITS_EVEN => PS_A_NOT_A_DOT_B_A_DOT_B_BITS_EVEN,
		MS_ZONE_ADDER_A_DOT_B_DOT_C_1 => MS_ZONE_ADDER_A_DOT_B_DOT_C_1,
		MS_ZONE_ADDER_A_DOT_B_DOT_C_2 => MS_ZONE_ADDER_A_DOT_B_DOT_C_2,
		MS_ZONE_ADDER_NOT_A_DOT_B_DOT_NOT_C_1 => MS_ZONE_ADDER_NOT_A_DOT_B_DOT_NOT_C_1,
		MS_ZONE_ADDER_NOT_A_DOT_B_DOT_NOT_C_2 => MS_ZONE_ADDER_NOT_A_DOT_B_DOT_NOT_C_2,
		MS_ZONE_ADDER_A_DOT_NOT_B_DOT_NOT_C_1 => MS_ZONE_ADDER_A_DOT_NOT_B_DOT_NOT_C_1,
		MS_ZONE_ADDER_A_DOT_NOT_B_DOT_NOT_C_2 => MS_ZONE_ADDER_A_DOT_NOT_B_DOT_NOT_C_2,
		PS_ZONE_ADDER_CARRY => PS_ZONE_ADDER_CARRY,
		MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_1 => MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_1,
		MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_2 => MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_2,
		MS_ZONE_ADDER_CARRY => MS_ZONE_ADDER_CARRY);

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

   PS_ZONE_ADDER_NOT_TWO_BIT <= NOT PS_ZONE_ADDER_TWO_BIT;


uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;

   begin

   -- Your test bench code
   
   testName := "14.18.06.1        ";
   
   -- The following signal weird - it maches the ALD, but is the inverse of what the ILD shows
   -- for setting Zone Adder Carry
   PS_A_NOT_A_DOT_B_A_DOT_B_BITS_EVEN <= '1';
   
   for V1 in std_logic range '0' to '1' loop
      PS_ZONE_ADDER_A_BITS_EVEN <= V1;
      for V2 in std_logic range '0' to '1' loop
         PS_NO_CARRY_FOR_ZONE_ADDER <= V2;
         for V3 in std_logic range '0' to '1' loop
            PS_CARRY_FOR_ZONE_ADDER <= V3;
            for V4 in std_logic range '0' to '1' loop
               PS_ZONE_ADDER_TWO_BIT <= V4;
               wait for 30 ns;
               check1(MS_ZONE_ADDER_A_DOT_B_DOT_C_1,NOT(V4 and NOT V1 and V2),testName,"A");
               check1(MS_ZONE_ADDER_A_DOT_B_DOT_C_2,NOT(V4 and V1 and V3),testName,"B");
               check1(MS_ZONE_ADDER_NOT_A_DOT_B_DOT_NOT_C_1,NOT(V4 and V1 and V2),testName,"C");
               check1(MS_ZONE_ADDER_NOT_A_DOT_B_DOT_NOT_C_2,NOT(NOT V4 and NOT V1 and V3),testName,"D");
               check1(MS_ZONE_ADDER_A_DOT_NOT_B_DOT_NOT_C_1,NOT(NOT V4 and NOT V1 and V2),testName,"E");
               check1(MS_ZONE_ADDER_A_DOT_NOT_B_DOT_NOT_C_2,NOT(NOT V4 and V1 and V3),testName,"F");
               check1(MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_1,NOT(NOT V4 and V1 and V2),testName,"G");
               check1(MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_2,NOT(V4 and NOT V1 and V3),testName,"H");
               check1(PS_ZONE_ADDER_CARRY,V4 and NOT V1 and V3,testName,"I");
               check1(MS_ZONE_ADDER_CARRY,NOT(V4 and NOT V1 and V3),testName,"J");
            end loop;
         end loop;
      end loop;
   end loop;
   

   PS_CARRY_FOR_ZONE_ADDER <= '1';
   wait for 30 ns;
   check1(PS_ZONE_ADDER_CARRY,'0',testName,"2A");
   check1(MS_ZONE_ADDER_CARRY,'1',testName,"2B");

   MS_ZONE_ADDER_A_B_DOT_B_B <= '0';
   wait for 30 ns;
   check1(PS_ZONE_ADDER_CARRY,'1',testName,"2A");
   check1(MS_ZONE_ADDER_CARRY,'0',testName,"2B");
   MS_ZONE_ADDER_A_B_DOT_B_B <= '1';

   -- The following is weird - it maches the ALD, but is the inverse of what the ILD shows
   -- for setting zone adder carry
   PS_A_NOT_A_DOT_B_A_DOT_B_BITS_EVEN <= '0';
   wait for 30 ns;
   check1(PS_ZONE_ADDER_CARRY,'1',testName,"2C");
   check1(MS_ZONE_ADDER_CARRY,'0',testName,"2D");
   PS_A_NOT_A_DOT_B_A_DOT_B_BITS_EVEN <= '1';
   
   

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
