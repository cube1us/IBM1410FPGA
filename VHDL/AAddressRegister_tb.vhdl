-- Test BenchVHDL for IBM SMS ALD group AAddressRegister
-- Title: AAddressRegister
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/18/2020 11:11:54 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AAddressRegister_tb is
end AAddressRegister_tb;

architecture behavioral of AAddressRegister_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component AAddressRegister
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_RESET_A_AR: in STD_LOGIC;
		PS_SET_AR_U_POS: in STD_LOGIC;
		PS_SET_A_AR: in STD_LOGIC;
		PS_RO_A_AR: in STD_LOGIC;
		PS_SET_AR_T_POS: in STD_LOGIC;
		PS_SET_AR_H_POS: in STD_LOGIC;
		PS_SET_AR_TH_POS: in STD_LOGIC;
		PS_SET_AR_TTH_POS: in STD_LOGIC;
		PS_ADDR_CH_BUS_1: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_A_AR_GT_OUT_UP_BUS: out STD_LOGIC_VECTOR (4 downTo 0);
		MS_A_AR_GT_OUT_TP_BUS: out STD_LOGIC_VECTOR (4 downTo 0);
		MS_A_AR_GT_OUT_HP_BUS: out STD_LOGIC_VECTOR (4 downTo 0);
		MS_A_AR_GT_OUT_THP_BUS: out STD_LOGIC_VECTOR (4 downTo 0);
		MS_A_AR_GT_OUT_TTHP_BUS: out STD_LOGIC_VECTOR (4 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_RESET_A_AR: STD_LOGIC := '1';
	signal PS_SET_AR_U_POS: STD_LOGIC := '0';
	signal PS_SET_A_AR: STD_LOGIC := '0';
	signal PS_RO_A_AR: STD_LOGIC := '0';
	signal PS_SET_AR_T_POS: STD_LOGIC := '0';
	signal PS_SET_AR_H_POS: STD_LOGIC := '0';
	signal PS_SET_AR_TH_POS: STD_LOGIC := '0';
	signal PS_SET_AR_TTH_POS: STD_LOGIC := '0';
	signal PS_ADDR_CH_BUS_1: STD_LOGIC_VECTOR (4 downTo 0) := "00000";

	-- Outputs

	signal MS_A_AR_GT_OUT_UP_BUS: STD_LOGIC_VECTOR (4 downTo 0);
	signal MS_A_AR_GT_OUT_TP_BUS: STD_LOGIC_VECTOR (4 downTo 0);
	signal MS_A_AR_GT_OUT_HP_BUS: STD_LOGIC_VECTOR (4 downTo 0);
	signal MS_A_AR_GT_OUT_THP_BUS: STD_LOGIC_VECTOR (4 downTo 0);
	signal MS_A_AR_GT_OUT_TTHP_BUS: STD_LOGIC_VECTOR (4 downTo 0);

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

   
procedure checkAddressReg(
    testName: string;
    test: string;
    testVal: STD_LOGIC_VECTOR(4 downto 0);
    reg: STD_LOGIC_VECTOR(4 downto 0)) is
    begin
    for i in 0 to 4 loop
       check1(reg(i),testVal(i),testName,test);
    end loop;
    end procedure;   

signal testValue: STD_LOGIC_VECTOR(4 downto 0);


-- END USER TEST BENCH DECLARATIONS

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: AAddressRegister port map(
		FPGA_CLK => FPGA_CLK,
		MS_RESET_A_AR => MS_RESET_A_AR,
		PS_SET_AR_U_POS => PS_SET_AR_U_POS,
		PS_SET_A_AR => PS_SET_A_AR,
		PS_RO_A_AR => PS_RO_A_AR,
		PS_SET_AR_T_POS => PS_SET_AR_T_POS,
		PS_SET_AR_H_POS => PS_SET_AR_H_POS,
		PS_SET_AR_TH_POS => PS_SET_AR_TH_POS,
		PS_SET_AR_TTH_POS => PS_SET_AR_TTH_POS,
		PS_ADDR_CH_BUS_1 => PS_ADDR_CH_BUS_1,
		MS_A_AR_GT_OUT_UP_BUS => MS_A_AR_GT_OUT_UP_BUS,
		MS_A_AR_GT_OUT_TP_BUS => MS_A_AR_GT_OUT_TP_BUS,
		MS_A_AR_GT_OUT_HP_BUS => MS_A_AR_GT_OUT_HP_BUS,
		MS_A_AR_GT_OUT_THP_BUS => MS_A_AR_GT_OUT_THP_BUS,
		MS_A_AR_GT_OUT_TTHP_BUS => MS_A_AR_GT_OUT_TTHP_BUS);

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


   begin

   -- Your test bench code
   
   testName := "14.10.0%.1        ";
   
      
   --   Test the units position
   
   for i in 0 to 31 loop
      testValue <= std_logic_vector(to_unsigned(i,testValue'length));
      wait for 30 ns;

      -- Have to reset, as bits will not "unset"
      
      MS_RESET_A_AR <= '0';
      wait for 30ns;
      MS_RESET_A_AR <= '1';
      wait for 30 ns;
      
      -- Set the test value
      PS_ADDR_CH_BUS_1 <= testValue;
      PS_RO_A_AR <= '0';
      PS_SET_A_AR <= '1';
      PS_SET_AR_U_POS <= '1';      
      wait for 30 ns;
      PS_SET_AR_U_POS <= '0';
      PS_SET_A_AR <= '0';
            
      PS_RO_A_AR <= '1';
      wait for 30 ns;
      -- Register under test should match
      checkAddressReg(testName,"UA",MS_A_AR_GT_OUT_UP_BUS,NOT testValue);
      -- Others should be unchanged
      checkAddressReg(testName,"UB",MS_A_AR_GT_OUT_TP_BUS,NOT "00000");
      checkAddressReg(testName,"UC",MS_A_AR_GT_OUT_HP_BUS,NOT "00000");
      checkAddressReg(testName,"UD",MS_A_AR_GT_OUT_THP_BUS,NOT "00000");
      checkAddressReg(testName,"UE",MS_A_AR_GT_OUT_TTHP_BUS,NOT "00000");      
      
      PS_RO_A_AR <= '0'; -- Should inhibit read out
      wait for 30 ns;
      checkAddressReg(testName,"UA",MS_A_AR_GT_OUT_UP_BUS,"11111");
      checkAddressReg(testName,"UB",MS_A_AR_GT_OUT_TP_BUS,"11111");
      checkAddressReg(testName,"UC",MS_A_AR_GT_OUT_HP_BUS,"11111");
      checkAddressReg(testName,"UD",MS_A_AR_GT_OUT_THP_BUS,"11111");
      checkAddressReg(testName,"UE",MS_A_AR_GT_OUT_TTHP_BUS,"11111");
            
   end loop;

   --   Test the tens position
   
   for i in 0 to 31 loop
      testValue <= std_logic_vector(to_unsigned(i,testValue'length));
      wait for 30 ns;

      -- Have to reset, as bits will not "unset"
      
      MS_RESET_A_AR <= '0';
      wait for 30ns;
      MS_RESET_A_AR <= '1';
      wait for 30 ns;
      
      -- Set the test value
      PS_ADDR_CH_BUS_1 <= testValue;
      PS_RO_A_AR <= '0';
      PS_SET_A_AR <= '1';
      PS_SET_AR_T_POS <= '1';      
      wait for 30 ns;
      PS_SET_AR_T_POS <= '0';
      PS_SET_A_AR <= '0';

      PS_RO_A_AR <= '1';
      wait for 30 ns;
      -- Register under test should match
      checkAddressReg(testName,"TA",MS_A_AR_GT_OUT_TP_BUS,NOT testValue);
      -- Others should be unchanged
      checkAddressReg(testName,"TB",MS_A_AR_GT_OUT_UP_BUS,NOT "00000");
      checkAddressReg(testName,"TC",MS_A_AR_GT_OUT_HP_BUS,NOT "00000");
      checkAddressReg(testName,"TD",MS_A_AR_GT_OUT_THP_BUS,NOT "00000");
      checkAddressReg(testName,"TE",MS_A_AR_GT_OUT_TTHP_BUS,NOT "00000");
      PS_RO_A_AR <= '0';      
            
   end loop;

   --   Test the Hundreds position
   
   for i in 0 to 31 loop
      testValue <= std_logic_vector(to_unsigned(i,testValue'length));
      wait for 30 ns;

      -- Have to reset, as bits will not "unset"
      
      MS_RESET_A_AR <= '0';
      wait for 30ns;
      MS_RESET_A_AR <= '1';
      wait for 30 ns;
      
      -- Set the test value
      PS_ADDR_CH_BUS_1 <= testValue;
      PS_RO_A_AR <= '0';
      PS_SET_A_AR <= '1';
      PS_SET_AR_H_POS <= '1';      
      wait for 30 ns;
      PS_SET_AR_H_POS <= '0';
      PS_SET_A_AR <= '0';

      PS_RO_A_AR <= '1';
      wait for 30 ns;
      -- Register under test should match
      checkAddressReg(testName,"HA",MS_A_AR_GT_OUT_HP_BUS,NOT testValue);
      -- Others should be unchanged
      checkAddressReg(testName,"HB",MS_A_AR_GT_OUT_UP_BUS,NOT "00000");
      checkAddressReg(testName,"HC",MS_A_AR_GT_OUT_TP_BUS,NOT "00000");
      checkAddressReg(testName,"HD",MS_A_AR_GT_OUT_THP_BUS,NOT "00000");
      checkAddressReg(testName,"HE",MS_A_AR_GT_OUT_TTHP_BUS,NOT "00000");
      PS_RO_A_AR <= '0';      
            
   end loop;

   --   Test the Thousands position
   
   for i in 0 to 31 loop
      testValue <= std_logic_vector(to_unsigned(i,testValue'length));
      wait for 30 ns;

      -- Have to reset, as bits will not "unset"
      
      MS_RESET_A_AR <= '0';
      wait for 30ns;
      MS_RESET_A_AR <= '1';
      wait for 30 ns;
      
      -- Set the test value
      PS_ADDR_CH_BUS_1 <= testValue;
      PS_RO_A_AR <= '0';
      PS_SET_A_AR <= '1';
      PS_SET_AR_TH_POS <= '1';      
      wait for 30 ns;
      PS_SET_AR_TH_POS <= '0';
      PS_SET_A_AR <= '0';

      PS_RO_A_AR <= '1';
      wait for 30 ns;
      -- Register under test should match
      checkAddressReg(testName,"THA",MS_A_AR_GT_OUT_THP_BUS,NOT testValue);
      -- Others should be unchanged
      checkAddressReg(testName,"THB",MS_A_AR_GT_OUT_UP_BUS,NOT "00000");
      checkAddressReg(testName,"THC",MS_A_AR_GT_OUT_TP_BUS,NOT "00000");
      checkAddressReg(testName,"THD",MS_A_AR_GT_OUT_HP_BUS,NOT "00000");
      checkAddressReg(testName,"THE",MS_A_AR_GT_OUT_TTHP_BUS,NOT "00000");
      PS_RO_A_AR <= '0';      
            
   end loop;

   --   Test the Ten Thousands position
   
   for i in 0 to 31 loop
      testValue <= std_logic_vector(to_unsigned(i,testValue'length));
      wait for 30 ns;

      -- Have to reset, as bits will not "unset"
      
      MS_RESET_A_AR <= '0';
      wait for 30ns;
      MS_RESET_A_AR <= '1';
      wait for 30 ns;
      
      -- Set the test value
      PS_ADDR_CH_BUS_1 <= testValue;
      PS_RO_A_AR <= '0';
      PS_SET_A_AR <= '1';
      PS_SET_AR_TTH_POS <= '1';      
      wait for 30 ns;
      PS_SET_AR_TTH_POS <= '0';
      PS_SET_A_AR <= '0';

      PS_RO_A_AR <= '1';
      wait for 30 ns;
      -- Register under test should match
      checkAddressReg(testName,"TTHA",MS_A_AR_GT_OUT_TTHP_BUS,NOT testValue);
      -- Others should be unchanged
      checkAddressReg(testName,"TTHB",MS_A_AR_GT_OUT_UP_BUS,NOT "00000");
      checkAddressReg(testName,"TTHC",MS_A_AR_GT_OUT_TP_BUS,NOT "00000");
      checkAddressReg(testName,"TTHD",MS_A_AR_GT_OUT_HP_BUS,NOT "00000");
      checkAddressReg(testName,"TTHE",MS_A_AR_GT_OUT_THP_BUS,NOT "00000");
      PS_RO_A_AR <= '0';      
            
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
   

END;
