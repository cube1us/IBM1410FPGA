-- Test BenchVHDL for IBM SMS ALD group AddressChannelDrive
-- Title: AddressChannelDrive
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/30/2020 1:48:48 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AddressChannelDrive_tb is
end AddressChannelDrive_tb;

architecture behavioral of AddressChannelDrive_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component AddressChannelDrive
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_B: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_C: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_D: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_E: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_F: in STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B: in STD_LOGIC;
		MS_ADDR_MOD_01_BIT: in STD_LOGIC;
		MS_ADDR_MOD_02_BIT: in STD_LOGIC;
		MS_ADDR_MOD_04_BIT: in STD_LOGIC;
		MS_ADDR_MOD_08_BIT: in STD_LOGIC;
		PS_ADDR_CH_0_B_STAR_ADDR_MOD: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_1_LINE: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_2_LINE: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_4_LINE: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_8_LINE: in STD_LOGIC;
		MS_PERCENT_CONVERSION: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_1_BIT_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_1_BIT_B: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_1_BIT_C: in STD_LOGIC;
		MS_ADDR_MOD_12_BIT: in STD_LOGIC;
		MS_ADDR_MOD_14_BIT: in STD_LOGIC;
		MS_ADDR_MOD_18_BIT: in STD_LOGIC;
		PS_ADDR_CH_1_B_STAR_ADDR_MOD: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_3_LINE: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_5_LINE: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_9_LINE: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_BIT_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_BIT_B: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_BIT_C: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_BIT_D: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_DOT_8_BITS: in STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B: in STD_LOGIC;
		MS_ADDR_MOD_28_BIT: in STD_LOGIC;
		MS_ADDR_MOD_24_BIT: in STD_LOGIC;
		PS_ADDR_CH_2_B_STAR_ADDR_MOD: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_6_LINE: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_0_LINE: in STD_LOGIC;
		MS_INSERT_ZERO_ON_ADDR_CH: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_4_BIT_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_4_BIT_B: in STD_LOGIC;
		MS_ADDR_MOD_48_BIT: in STD_LOGIC;
		PS_ADDR_CH_4_B_STAR_ADDR_MOD: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_7_LINE: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_8_BIT_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_8_BIT_B: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_8_BIT_C: in STD_LOGIC;
		PS_ADDR_CH_8_B_STAR_ADDR_MOD: in STD_LOGIC;
		LAMP_11C8K07: out STD_LOGIC;
		LAMP_11C8J07: out STD_LOGIC;
		LAMP_11C8H07: out STD_LOGIC;
		LAMP_11C8G07: out STD_LOGIC;
		LAMP_11C8F07: out STD_LOGIC;
		PS_ADDR_CH_BUS_1: out STD_LOGIC_VECTOR (4 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_COMPAT_TSLTR_THP_0_BIT_A: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_0_BIT_B: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_0_BIT_C: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_0_BIT_D: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_0_BIT_E: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_0_BIT_F: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B: STD_LOGIC := '1';
	signal MS_ADDR_MOD_01_BIT: STD_LOGIC := '1';
	signal MS_ADDR_MOD_02_BIT: STD_LOGIC := '1';
	signal MS_ADDR_MOD_04_BIT: STD_LOGIC := '1';
	signal MS_ADDR_MOD_08_BIT: STD_LOGIC := '1';
	signal PS_ADDR_CH_0_B_STAR_ADDR_MOD: STD_LOGIC := '0';
	signal MS_ADDR_CH_NU_TSLTR_1_LINE: STD_LOGIC := '1';
	signal MS_ADDR_CH_NU_TSLTR_2_LINE: STD_LOGIC := '1';
	signal MS_ADDR_CH_NU_TSLTR_4_LINE: STD_LOGIC := '1';
	signal MS_ADDR_CH_NU_TSLTR_8_LINE: STD_LOGIC := '1';
	signal MS_PERCENT_CONVERSION: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_1_BIT_A: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_1_BIT_B: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_1_BIT_C: STD_LOGIC := '1';
	signal MS_ADDR_MOD_12_BIT: STD_LOGIC := '1';
	signal MS_ADDR_MOD_14_BIT: STD_LOGIC := '1';
	signal MS_ADDR_MOD_18_BIT: STD_LOGIC := '1';
	signal PS_ADDR_CH_1_B_STAR_ADDR_MOD: STD_LOGIC := '0';
	signal MS_ADDR_CH_NU_TSLTR_3_LINE: STD_LOGIC := '1';
	signal MS_ADDR_CH_NU_TSLTR_5_LINE: STD_LOGIC := '1';
	signal MS_ADDR_CH_NU_TSLTR_9_LINE: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_2_BIT_A: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_2_BIT_B: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_2_BIT_C: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_2_BIT_D: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_2_DOT_8_BITS: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B: STD_LOGIC := '1';
	signal MS_ADDR_MOD_28_BIT: STD_LOGIC := '1';
	signal MS_ADDR_MOD_24_BIT: STD_LOGIC := '1';
	signal PS_ADDR_CH_2_B_STAR_ADDR_MOD: STD_LOGIC := '0';
	signal MS_ADDR_CH_NU_TSLTR_6_LINE: STD_LOGIC := '1';
	signal MS_ADDR_CH_NU_TSLTR_0_LINE: STD_LOGIC := '1';
	signal MS_INSERT_ZERO_ON_ADDR_CH: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_4_BIT_A: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_4_BIT_B: STD_LOGIC := '1';
	signal MS_ADDR_MOD_48_BIT: STD_LOGIC := '1';
	signal PS_ADDR_CH_4_B_STAR_ADDR_MOD: STD_LOGIC := '0';
	signal MS_ADDR_CH_NU_TSLTR_7_LINE: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_8_BIT_A: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_8_BIT_B: STD_LOGIC := '1';
	signal MS_COMPAT_TSLTR_THP_8_BIT_C: STD_LOGIC := '1';
	signal PS_ADDR_CH_8_B_STAR_ADDR_MOD: STD_LOGIC := '0';

	-- Outputs

	signal LAMP_11C8K07: STD_LOGIC;
	signal LAMP_11C8J07: STD_LOGIC;
	signal LAMP_11C8H07: STD_LOGIC;
	signal LAMP_11C8G07: STD_LOGIC;
	signal LAMP_11C8F07: STD_LOGIC;
	signal PS_ADDR_CH_BUS_1: STD_LOGIC_VECTOR (4 downTo 0);

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

	UUT: AddressChannelDrive port map(
		FPGA_CLK => FPGA_CLK,
		MS_COMPAT_TSLTR_THP_0_BIT_A => MS_COMPAT_TSLTR_THP_0_BIT_A,
		MS_COMPAT_TSLTR_THP_0_BIT_B => MS_COMPAT_TSLTR_THP_0_BIT_B,
		MS_COMPAT_TSLTR_THP_0_BIT_C => MS_COMPAT_TSLTR_THP_0_BIT_C,
		MS_COMPAT_TSLTR_THP_0_BIT_D => MS_COMPAT_TSLTR_THP_0_BIT_D,
		MS_COMPAT_TSLTR_THP_0_BIT_E => MS_COMPAT_TSLTR_THP_0_BIT_E,
		MS_COMPAT_TSLTR_THP_0_BIT_F => MS_COMPAT_TSLTR_THP_0_BIT_F,
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A => MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A,
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B => MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B,
		MS_ADDR_MOD_01_BIT => MS_ADDR_MOD_01_BIT,
		MS_ADDR_MOD_02_BIT => MS_ADDR_MOD_02_BIT,
		MS_ADDR_MOD_04_BIT => MS_ADDR_MOD_04_BIT,
		MS_ADDR_MOD_08_BIT => MS_ADDR_MOD_08_BIT,
		PS_ADDR_CH_0_B_STAR_ADDR_MOD => PS_ADDR_CH_0_B_STAR_ADDR_MOD,
		MS_ADDR_CH_NU_TSLTR_1_LINE => MS_ADDR_CH_NU_TSLTR_1_LINE,
		MS_ADDR_CH_NU_TSLTR_2_LINE => MS_ADDR_CH_NU_TSLTR_2_LINE,
		MS_ADDR_CH_NU_TSLTR_4_LINE => MS_ADDR_CH_NU_TSLTR_4_LINE,
		MS_ADDR_CH_NU_TSLTR_8_LINE => MS_ADDR_CH_NU_TSLTR_8_LINE,
		MS_PERCENT_CONVERSION => MS_PERCENT_CONVERSION,
		MS_COMPAT_TSLTR_THP_1_BIT_A => MS_COMPAT_TSLTR_THP_1_BIT_A,
		MS_COMPAT_TSLTR_THP_1_BIT_B => MS_COMPAT_TSLTR_THP_1_BIT_B,
		MS_COMPAT_TSLTR_THP_1_BIT_C => MS_COMPAT_TSLTR_THP_1_BIT_C,
		MS_ADDR_MOD_12_BIT => MS_ADDR_MOD_12_BIT,
		MS_ADDR_MOD_14_BIT => MS_ADDR_MOD_14_BIT,
		MS_ADDR_MOD_18_BIT => MS_ADDR_MOD_18_BIT,
		PS_ADDR_CH_1_B_STAR_ADDR_MOD => PS_ADDR_CH_1_B_STAR_ADDR_MOD,
		MS_ADDR_CH_NU_TSLTR_3_LINE => MS_ADDR_CH_NU_TSLTR_3_LINE,
		MS_ADDR_CH_NU_TSLTR_5_LINE => MS_ADDR_CH_NU_TSLTR_5_LINE,
		MS_ADDR_CH_NU_TSLTR_9_LINE => MS_ADDR_CH_NU_TSLTR_9_LINE,
		MS_COMPAT_TSLTR_THP_2_BIT_A => MS_COMPAT_TSLTR_THP_2_BIT_A,
		MS_COMPAT_TSLTR_THP_2_BIT_B => MS_COMPAT_TSLTR_THP_2_BIT_B,
		MS_COMPAT_TSLTR_THP_2_BIT_C => MS_COMPAT_TSLTR_THP_2_BIT_C,
		MS_COMPAT_TSLTR_THP_2_BIT_D => MS_COMPAT_TSLTR_THP_2_BIT_D,
		MS_COMPAT_TSLTR_THP_2_DOT_8_BITS => MS_COMPAT_TSLTR_THP_2_DOT_8_BITS,
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A => MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A,
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B => MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B,
		MS_ADDR_MOD_28_BIT => MS_ADDR_MOD_28_BIT,
		MS_ADDR_MOD_24_BIT => MS_ADDR_MOD_24_BIT,
		PS_ADDR_CH_2_B_STAR_ADDR_MOD => PS_ADDR_CH_2_B_STAR_ADDR_MOD,
		MS_ADDR_CH_NU_TSLTR_6_LINE => MS_ADDR_CH_NU_TSLTR_6_LINE,
		MS_ADDR_CH_NU_TSLTR_0_LINE => MS_ADDR_CH_NU_TSLTR_0_LINE,
		MS_INSERT_ZERO_ON_ADDR_CH => MS_INSERT_ZERO_ON_ADDR_CH,
		MS_COMPAT_TSLTR_THP_4_BIT_A => MS_COMPAT_TSLTR_THP_4_BIT_A,
		MS_COMPAT_TSLTR_THP_4_BIT_B => MS_COMPAT_TSLTR_THP_4_BIT_B,
		MS_ADDR_MOD_48_BIT => MS_ADDR_MOD_48_BIT,
		PS_ADDR_CH_4_B_STAR_ADDR_MOD => PS_ADDR_CH_4_B_STAR_ADDR_MOD,
		MS_ADDR_CH_NU_TSLTR_7_LINE => MS_ADDR_CH_NU_TSLTR_7_LINE,
		MS_COMPAT_TSLTR_THP_8_BIT_A => MS_COMPAT_TSLTR_THP_8_BIT_A,
		MS_COMPAT_TSLTR_THP_8_BIT_B => MS_COMPAT_TSLTR_THP_8_BIT_B,
		MS_COMPAT_TSLTR_THP_8_BIT_C => MS_COMPAT_TSLTR_THP_8_BIT_C,
		PS_ADDR_CH_8_B_STAR_ADDR_MOD => PS_ADDR_CH_8_B_STAR_ADDR_MOD,
		LAMP_11C8K07 => LAMP_11C8K07,
		LAMP_11C8J07 => LAMP_11C8J07,
		LAMP_11C8H07 => LAMP_11C8H07,
		LAMP_11C8G07 => LAMP_11C8G07,
		LAMP_11C8F07 => LAMP_11C8F07,
		PS_ADDR_CH_BUS_1 => PS_ADDR_CH_BUS_1);

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
   
   testName := "14.45.01.1        ";
   
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'0',testName,"1A");
   check1(LAMP_11C8K07,'0',testName,"1B");
   MS_ADDR_CH_NU_TSLTR_2_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1C");
   check1(LAMP_11C8K07,'1',testName,"1D");
   MS_ADDR_CH_NU_TSLTR_2_LINE <= '1';
   wait for 30 ns;
   PS_ADDR_CH_0_B_STAR_ADDR_MOD <= '1';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1E");
   PS_ADDR_CH_0_B_STAR_ADDR_MOD <= '0';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_4_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1F");
   MS_ADDR_CH_NU_TSLTR_4_LINE <= '1';
   wait for 30 ns;   
   MS_ADDR_MOD_01_BIT <= '0';
   wait for 30 ns;	 
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1G");
   MS_ADDR_MOD_01_BIT <= '1';
   wait for 30 ns;     
   MS_ADDR_MOD_02_BIT <= '0';
   wait for 30 ns;     
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1H");
   MS_ADDR_MOD_02_BIT <= '1';
   wait for 30 ns;     
   MS_ADDR_MOD_04_BIT <= '0';
   wait for 30 ns;     
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1I");
   MS_ADDR_MOD_04_BIT <= '1';
   wait for 30 ns;     
   MS_ADDR_MOD_08_BIT <= '0';
   wait for 30 ns;     
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1J");
   MS_ADDR_MOD_08_BIT <= '1';
   wait for 30 ns;     
   MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1K");
   MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1L");
   MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_0_BIT_A <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1M");
   MS_COMPAT_TSLTR_THP_0_BIT_A <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_0_BIT_B <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1N");
   MS_COMPAT_TSLTR_THP_0_BIT_B <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_0_BIT_C <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1O");
   MS_COMPAT_TSLTR_THP_0_BIT_C <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_0_BIT_D <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1P");
   MS_COMPAT_TSLTR_THP_0_BIT_D <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_0_BIT_E <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1Q");
   MS_COMPAT_TSLTR_THP_0_BIT_E <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_0_BIT_F <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1R");
   MS_COMPAT_TSLTR_THP_0_BIT_F <= '1';
   wait for 30 ns;
   MS_PERCENT_CONVERSION <= '0';
   wait for 30 ns;	    
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1S");
   MS_PERCENT_CONVERSION <= '1';
   wait for 30 ns;        
   MS_ADDR_CH_NU_TSLTR_1_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1T");
   MS_ADDR_CH_NU_TSLTR_1_LINE <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_8_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'1',testName,"1U");
   MS_ADDR_CH_NU_TSLTR_8_LINE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(0),'0',testName,"1V");
      
   testName := "14.45.02.1        ";
   
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(1),'0',testName,"1A");
   check1(LAMP_11C8J07,'0',testName,"1B");
   MS_ADDR_CH_NU_TSLTR_3_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1C");
   check1(LAMP_11C8J07,'1',testName,"1D");
   MS_ADDR_CH_NU_TSLTR_3_LINE <= '1';
   wait for 30 ns;
   PS_ADDR_CH_1_B_STAR_ADDR_MOD <= '1';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1E");
   PS_ADDR_CH_1_B_STAR_ADDR_MOD <= '0';
   wait for 30 ns;
   MS_ADDR_MOD_01_BIT <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1F");
   MS_ADDR_MOD_01_BIT <= '1';
   wait for 30 ns;
   MS_ADDR_MOD_12_BIT <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1G");
   MS_ADDR_MOD_12_BIT <= '1';
   wait for 30 ns;
   MS_ADDR_MOD_18_BIT <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1H");
   MS_ADDR_MOD_18_BIT <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_1_BIT_A <= '0';
   wait for 30 ns; 
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1I");
   MS_COMPAT_TSLTR_THP_1_BIT_A <= '1';
   wait for 30 ns; 
   MS_COMPAT_TSLTR_THP_1_BIT_B <= '0';
   wait for 30 ns; 
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1J");
   MS_COMPAT_TSLTR_THP_1_BIT_B <= '1';
   wait for 30 ns; 
   MS_ADDR_MOD_14_BIT <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1K");
   MS_ADDR_MOD_14_BIT <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1L");
   MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1M");
   MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_1_BIT_C <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1N");
   MS_COMPAT_TSLTR_THP_1_BIT_C <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_1_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1O");
   MS_ADDR_CH_NU_TSLTR_1_LINE <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_5_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1P");
   MS_ADDR_CH_NU_TSLTR_5_LINE <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_9_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(1),'1',testName,"1Q");
   MS_ADDR_CH_NU_TSLTR_9_LINE <= '1';
   wait for 30 ns;   
   check1(PS_ADDR_CH_BUS_1(1),'0',testName,"1R");
   
   testName := "14.45.03.1        ";
   
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(2),'0',testName,"3A");
   check1(LAMP_11C8H07,'0',testName,"3B");
   MS_ADDR_CH_NU_TSLTR_3_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3C");
   check1(LAMP_11C8H07,'1',testName,"3D");
   MS_ADDR_CH_NU_TSLTR_3_LINE <= '1';
   wait for 30 ns;
   PS_ADDR_CH_2_B_STAR_ADDR_MOD <= '1';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3E");
   PS_ADDR_CH_2_B_STAR_ADDR_MOD <= '0';
   wait for 30 ns;
   MS_INSERT_ZERO_ON_ADDR_CH <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3F");
   MS_INSERT_ZERO_ON_ADDR_CH <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_2_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3G");
   MS_ADDR_CH_NU_TSLTR_2_LINE <= '1';
   wait for 30 ns;
   MS_ADDR_MOD_28_BIT <= '0';
   wait for 30 ns;	 
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3H");
   MS_ADDR_MOD_28_BIT <= '1';
   wait for 30 ns;     
   MS_ADDR_MOD_02_BIT <= '0';
   wait for 30 ns;     
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3I");
   MS_ADDR_MOD_02_BIT <= '1';
   wait for 30 ns;     
   MS_ADDR_MOD_24_BIT <= '0';
   wait for 30 ns;     
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3J");
   MS_ADDR_MOD_24_BIT <= '1';
   wait for 30 ns;     
   MS_ADDR_MOD_12_BIT <= '0';
   wait for 30 ns;     
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3K");
   MS_ADDR_MOD_12_BIT <= '1';
   wait for 30 ns;     
   MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3L");
   MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3M");
   MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_2_BIT_D <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3N");
   MS_COMPAT_TSLTR_THP_2_BIT_D <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_2_BIT_B <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3O");
   MS_COMPAT_TSLTR_THP_2_BIT_B <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_2_BIT_C <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3P");
   MS_COMPAT_TSLTR_THP_2_BIT_C <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_2_BIT_A <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3Q");
   MS_COMPAT_TSLTR_THP_2_BIT_A <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_2_DOT_8_BITS <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3R");
   MS_COMPAT_TSLTR_THP_2_DOT_8_BITS <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_6_LINE <= '0';
   wait for 30 ns;	 
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3S");
   MS_ADDR_CH_NU_TSLTR_6_LINE <= '1';
   wait for 30 ns;     
   MS_ADDR_CH_NU_TSLTR_0_LINE <= '0';
   wait for 30 ns;     
   check1(PS_ADDR_CH_BUS_1(2),'1',testName,"3T");
   MS_ADDR_CH_NU_TSLTR_0_LINE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(2),'0',testName,"3A");
   
   testName := "14.45.04.1        ";
   
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'0',testName,"4A");
   check1(LAMP_11C8G07,'0',testName,"4B");
   MS_ADDR_MOD_04_BIT <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'1',testName,"4C");
   check1(LAMP_11C8G07,'1',testName,"4D");
   MS_ADDR_MOD_04_BIT <= '1';
   wait for 30 ns;
   MS_ADDR_MOD_14_BIT <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'1',testName,"4E");
   MS_ADDR_MOD_14_BIT <= '1';
   wait for 30 ns;
   MS_ADDR_MOD_48_BIT <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'1',testName,"4F");
   MS_ADDR_MOD_48_BIT <= '1';
   wait for 30 ns;
   PS_ADDR_CH_4_B_STAR_ADDR_MOD <= '1';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'1',testName,"4G");
   PS_ADDR_CH_4_B_STAR_ADDR_MOD <= '0';
   wait for 30 ns;
   MS_ADDR_MOD_24_BIT <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'1',testName,"4H");
   MS_ADDR_MOD_24_BIT <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_4_BIT_A <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'1',testName,"4I");
   MS_COMPAT_TSLTR_THP_4_BIT_A <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_4_BIT_B <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'1',testName,"4J");
   MS_COMPAT_TSLTR_THP_4_BIT_B <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_4_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'1',testName,"4K");
   MS_ADDR_CH_NU_TSLTR_4_LINE <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_6_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'1',testName,"4L");
   MS_ADDR_CH_NU_TSLTR_6_LINE <= '1';
   wait for 30 ns;
   MS_PERCENT_CONVERSION <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'1',testName,"4M");
   MS_PERCENT_CONVERSION <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_7_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'1',testName,"4N");
   MS_ADDR_CH_NU_TSLTR_7_LINE <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_5_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'1',testName,"4O");
   MS_ADDR_CH_NU_TSLTR_5_LINE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(3),'0',testName,"4P");

   
   testName := "14.45.05.1        ";
   
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'0',testName,"5A");
   check1(LAMP_11C8F07,'0',testName,"5B");
   MS_INSERT_ZERO_ON_ADDR_CH <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5C");
   check1(LAMP_11C8F07,'1',testName,"5D");
   MS_INSERT_ZERO_ON_ADDR_CH <= '1';
   wait for 30 ns;
   PS_ADDR_CH_8_B_STAR_ADDR_MOD <= '1';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5E");
   PS_ADDR_CH_8_B_STAR_ADDR_MOD <= '0';
   wait for 30 ns;
   MS_ADDR_MOD_28_BIT <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5F");
   MS_ADDR_MOD_28_BIT <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_8_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5G");
   MS_ADDR_CH_NU_TSLTR_8_LINE <= '1';
   wait for 30 ns;
   MS_ADDR_MOD_48_BIT <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5H");
   MS_ADDR_MOD_48_BIT <= '1';
   wait for 30 ns;
   MS_ADDR_MOD_08_BIT <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5I");
   MS_ADDR_MOD_08_BIT <= '1';
   wait for 30 ns;
   MS_ADDR_MOD_18_BIT <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5J");
   MS_ADDR_MOD_18_BIT <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_2_DOT_8_BITS <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5K");
   MS_COMPAT_TSLTR_THP_2_DOT_8_BITS <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5L");
   MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5M");
   MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_8_BIT_A <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5N");
   MS_COMPAT_TSLTR_THP_8_BIT_A <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_8_BIT_B <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5O");
   MS_COMPAT_TSLTR_THP_8_BIT_B <= '1';
   wait for 30 ns;
   MS_COMPAT_TSLTR_THP_8_BIT_C <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5P");
   MS_COMPAT_TSLTR_THP_8_BIT_C <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_7_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5Q");
   MS_ADDR_CH_NU_TSLTR_7_LINE <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_0_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5R");
   MS_ADDR_CH_NU_TSLTR_0_LINE <= '1';
   wait for 30 ns;
   MS_ADDR_CH_NU_TSLTR_9_LINE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'1',testName,"5S");
   MS_ADDR_CH_NU_TSLTR_9_LINE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_CH_BUS_1(4),'0',testName,"5C");
   
   
   assert false report "Simulation Ended NORMALLY(2)" severity failure;

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
