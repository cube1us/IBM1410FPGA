-- Test BenchVHDL for IBM SMS ALD group EChMisc1
-- Title: EChMisc1
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 7/30/2020 1:55:03 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity EChMisc1_tb is
end EChMisc1_tb;

architecture behavioral of EChMisc1_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component EChMisc1
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_F_CYCLE: in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_U: in STD_LOGIC;
		PS_E_CYCLE: in STD_LOGIC;
		PS_F_CH_SELECT_UNIT_U: in STD_LOGIC;
		PS_F_CH_SELECT_ODD_PARITY_UNIT: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_1: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_2: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_4: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_T: in STD_LOGIC;
		PS_E_CH_BUFFER_SELECT: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_K: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_U: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_B: in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_F: in STD_LOGIC;
		MS_E_CH_SEL_ODD_PARITY_STAR_1412_19: in STD_LOGIC;
		PS_E_CH_SELECT_7_BIT_UNIT_STAR_SIF: in STD_LOGIC;
		MS_IN_PROCESS_RESET: in STD_LOGIC;
		PS_I_O_PERCENT_LATCH: in STD_LOGIC;
		PS_I_O_COML_AT_LATCH: in STD_LOGIC;
		PS_E_CH_NO_STATUS_ON: in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_A_DELAY: in STD_LOGIC;
		MS_E_CH_STATUS_SAMPLE_B_DELAY: in STD_LOGIC;
		PS_1401_CARD_PRINT_IN_PROC: in STD_LOGIC;
		PS_1ST_I_O_CYCLE_CONTROL: in STD_LOGIC;
		PS_E_CH_SECOND_SAMPLE_B: in STD_LOGIC;
		PS_E_CH_2ND_ADDR_TRF: in STD_LOGIC;
		PS_F_CH_2ND_ADDR_TRF: in STD_LOGIC;
		PS_E_CH_MOVE_MODE: in STD_LOGIC;
		PS_F_CH_MOVE_MODE: in STD_LOGIC;
		PS_E_CH_LOAD_MODE: in STD_LOGIC;
		MS_E_CH_2ND_ADDR_TRF: in STD_LOGIC;
		PS_F_CH_LOAD_MODE: in STD_LOGIC;
		MS_F_CH_2ND_ADDR_TRF: in STD_LOGIC;
		MS_CONTROL_REG_DISABLE: in STD_LOGIC;
		PS_E_CH_INPUT_MODE: in STD_LOGIC;
		PS_F_CH_INPUT_MODE: in STD_LOGIC;
		PS_E_CH_OUTPUT_MODE: in STD_LOGIC;
		PS_F_CH_OUTPUT_MODE: in STD_LOGIC;
		PS_EVEN_PARITY_CYCLE: out STD_LOGIC;
		MS_ODD_PARITY_CYCLE: out STD_LOGIC;
		MS_E_CH_SELECT_ANY_BUFFER: out STD_LOGIC;
		PS_E_CH_SELECT_ANY_BUFFER: out STD_LOGIC;
		PS_E_CH_SELECT_7_BIT_UNIT: out STD_LOGIC;
		MS_E_CH_IN_PROCESS: out STD_LOGIC;
		PS_E_CH_UNOVLP_IN_PROCESS: out STD_LOGIC;
		PS_E_CH_OVLP_IN_PROCESS: out STD_LOGIC;
		MS_E_CH_UNOVLP_IN_PROCESS: out STD_LOGIC;
		PS_E_CH_IN_PROCESS: out STD_LOGIC;
		MS_E_CH_OVLP_IN_PROCESS: out STD_LOGIC;
		PS_MOVE_CYCLE: out STD_LOGIC;
		PS_LOAD_CYCLE: out STD_LOGIC;
		MS_LOAD_CYCLE: out STD_LOGIC;
		MS_INPUT_CYCLE: out STD_LOGIC;
		MS_OUTPUT_CYCLE: out STD_LOGIC;
		PS_INPUT_CYCLE: out STD_LOGIC;
		PS_OUTPUT_CYCLE: out STD_LOGIC;
		LAMP_15A1H14: out STD_LOGIC;
		LAMP_15A1K14: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_F_CYCLE: STD_LOGIC := '0';
	signal PS_E_CH_SELECT_UNIT_U: STD_LOGIC := '0';
	signal PS_E_CYCLE: STD_LOGIC := '0';
	signal PS_F_CH_SELECT_UNIT_U: STD_LOGIC := '0';
	signal PS_F_CH_SELECT_ODD_PARITY_UNIT: STD_LOGIC := '0';
	signal MS_E_CH_SELECT_UNIT_1: STD_LOGIC := '1';
	signal MS_E_CH_SELECT_UNIT_2: STD_LOGIC := '1';
	signal MS_E_CH_SELECT_UNIT_4: STD_LOGIC := '1';
	signal MS_E_CH_SELECT_UNIT_T: STD_LOGIC := '1';
	signal PS_E_CH_BUFFER_SELECT: STD_LOGIC := '0';
	signal MS_E_CH_SELECT_UNIT_K: STD_LOGIC := '1';
	signal MS_E_CH_SELECT_UNIT_U: STD_LOGIC := '1';
	signal MS_E_CH_SELECT_UNIT_B: STD_LOGIC := '1';
	signal MS_E_CH_SELECT_UNIT_F: STD_LOGIC := '1';
	signal MS_E_CH_SEL_ODD_PARITY_STAR_1412_19: STD_LOGIC := '1';
	signal PS_E_CH_SELECT_7_BIT_UNIT_STAR_SIF: STD_LOGIC := '0';
	signal MS_IN_PROCESS_RESET: STD_LOGIC := '1';
	signal PS_I_O_PERCENT_LATCH: STD_LOGIC := '0';
	signal PS_I_O_COML_AT_LATCH: STD_LOGIC := '0';
	signal PS_E_CH_NO_STATUS_ON: STD_LOGIC := '0';
	signal PS_E_CH_STATUS_SAMPLE_A_DELAY: STD_LOGIC := '0';
	signal MS_E_CH_STATUS_SAMPLE_B_DELAY: STD_LOGIC := '1';
	signal PS_1401_CARD_PRINT_IN_PROC: STD_LOGIC := '0';
	signal PS_1ST_I_O_CYCLE_CONTROL: STD_LOGIC := '0';
	signal PS_E_CH_SECOND_SAMPLE_B: STD_LOGIC := '0';
	signal PS_E_CH_2ND_ADDR_TRF: STD_LOGIC := '0';
	signal PS_F_CH_2ND_ADDR_TRF: STD_LOGIC := '0';
	signal PS_E_CH_MOVE_MODE: STD_LOGIC := '0';
	signal PS_F_CH_MOVE_MODE: STD_LOGIC := '0';
	signal PS_E_CH_LOAD_MODE: STD_LOGIC := '0';
	signal MS_E_CH_2ND_ADDR_TRF: STD_LOGIC := '1';
	signal PS_F_CH_LOAD_MODE: STD_LOGIC := '0';
	signal MS_F_CH_2ND_ADDR_TRF: STD_LOGIC := '1';
	signal MS_CONTROL_REG_DISABLE: STD_LOGIC := '1';
	signal PS_E_CH_INPUT_MODE: STD_LOGIC := '0';
	signal PS_F_CH_INPUT_MODE: STD_LOGIC := '0';
	signal PS_E_CH_OUTPUT_MODE: STD_LOGIC := '0';
	signal PS_F_CH_OUTPUT_MODE: STD_LOGIC := '0';

	-- Outputs

	signal PS_EVEN_PARITY_CYCLE: STD_LOGIC;
	signal MS_ODD_PARITY_CYCLE: STD_LOGIC;
	signal MS_E_CH_SELECT_ANY_BUFFER: STD_LOGIC;
	signal PS_E_CH_SELECT_ANY_BUFFER: STD_LOGIC;
	signal PS_E_CH_SELECT_7_BIT_UNIT: STD_LOGIC;
	signal MS_E_CH_IN_PROCESS: STD_LOGIC;
	signal PS_E_CH_UNOVLP_IN_PROCESS: STD_LOGIC;
	signal PS_E_CH_OVLP_IN_PROCESS: STD_LOGIC;
	signal MS_E_CH_UNOVLP_IN_PROCESS: STD_LOGIC;
	signal PS_E_CH_IN_PROCESS: STD_LOGIC;
	signal MS_E_CH_OVLP_IN_PROCESS: STD_LOGIC;
	signal PS_MOVE_CYCLE: STD_LOGIC;
	signal PS_LOAD_CYCLE: STD_LOGIC;
	signal MS_LOAD_CYCLE: STD_LOGIC;
	signal MS_INPUT_CYCLE: STD_LOGIC;
	signal MS_OUTPUT_CYCLE: STD_LOGIC;
	signal PS_INPUT_CYCLE: STD_LOGIC;
	signal PS_OUTPUT_CYCLE: STD_LOGIC;
	signal LAMP_15A1H14: STD_LOGIC;
	signal LAMP_15A1K14: STD_LOGIC;

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

	UUT: EChMisc1 port map(
		FPGA_CLK => FPGA_CLK,
		PS_F_CYCLE => PS_F_CYCLE,
		PS_E_CH_SELECT_UNIT_U => PS_E_CH_SELECT_UNIT_U,
		PS_E_CYCLE => PS_E_CYCLE,
		PS_F_CH_SELECT_UNIT_U => PS_F_CH_SELECT_UNIT_U,
		PS_F_CH_SELECT_ODD_PARITY_UNIT => PS_F_CH_SELECT_ODD_PARITY_UNIT,
		MS_E_CH_SELECT_UNIT_1 => MS_E_CH_SELECT_UNIT_1,
		MS_E_CH_SELECT_UNIT_2 => MS_E_CH_SELECT_UNIT_2,
		MS_E_CH_SELECT_UNIT_4 => MS_E_CH_SELECT_UNIT_4,
		MS_E_CH_SELECT_UNIT_T => MS_E_CH_SELECT_UNIT_T,
		PS_E_CH_BUFFER_SELECT => PS_E_CH_BUFFER_SELECT,
		MS_E_CH_SELECT_UNIT_K => MS_E_CH_SELECT_UNIT_K,
		MS_E_CH_SELECT_UNIT_U => MS_E_CH_SELECT_UNIT_U,
		MS_E_CH_SELECT_UNIT_B => MS_E_CH_SELECT_UNIT_B,
		MS_E_CH_SELECT_UNIT_F => MS_E_CH_SELECT_UNIT_F,
		MS_E_CH_SEL_ODD_PARITY_STAR_1412_19 => MS_E_CH_SEL_ODD_PARITY_STAR_1412_19,
		PS_E_CH_SELECT_7_BIT_UNIT_STAR_SIF => PS_E_CH_SELECT_7_BIT_UNIT_STAR_SIF,
		MS_IN_PROCESS_RESET => MS_IN_PROCESS_RESET,
		PS_I_O_PERCENT_LATCH => PS_I_O_PERCENT_LATCH,
		PS_I_O_COML_AT_LATCH => PS_I_O_COML_AT_LATCH,
		PS_E_CH_NO_STATUS_ON => PS_E_CH_NO_STATUS_ON,
		PS_E_CH_STATUS_SAMPLE_A_DELAY => PS_E_CH_STATUS_SAMPLE_A_DELAY,
		MS_E_CH_STATUS_SAMPLE_B_DELAY => MS_E_CH_STATUS_SAMPLE_B_DELAY,
		PS_1401_CARD_PRINT_IN_PROC => PS_1401_CARD_PRINT_IN_PROC,
		PS_1ST_I_O_CYCLE_CONTROL => PS_1ST_I_O_CYCLE_CONTROL,
		PS_E_CH_SECOND_SAMPLE_B => PS_E_CH_SECOND_SAMPLE_B,
		PS_E_CH_2ND_ADDR_TRF => PS_E_CH_2ND_ADDR_TRF,
		PS_F_CH_2ND_ADDR_TRF => PS_F_CH_2ND_ADDR_TRF,
		PS_E_CH_MOVE_MODE => PS_E_CH_MOVE_MODE,
		PS_F_CH_MOVE_MODE => PS_F_CH_MOVE_MODE,
		PS_E_CH_LOAD_MODE => PS_E_CH_LOAD_MODE,
		MS_E_CH_2ND_ADDR_TRF => MS_E_CH_2ND_ADDR_TRF,
		PS_F_CH_LOAD_MODE => PS_F_CH_LOAD_MODE,
		MS_F_CH_2ND_ADDR_TRF => MS_F_CH_2ND_ADDR_TRF,
		MS_CONTROL_REG_DISABLE => MS_CONTROL_REG_DISABLE,
		PS_E_CH_INPUT_MODE => PS_E_CH_INPUT_MODE,
		PS_F_CH_INPUT_MODE => PS_F_CH_INPUT_MODE,
		PS_E_CH_OUTPUT_MODE => PS_E_CH_OUTPUT_MODE,
		PS_F_CH_OUTPUT_MODE => PS_F_CH_OUTPUT_MODE,
		PS_EVEN_PARITY_CYCLE => PS_EVEN_PARITY_CYCLE,
		MS_ODD_PARITY_CYCLE => MS_ODD_PARITY_CYCLE,
		MS_E_CH_SELECT_ANY_BUFFER => MS_E_CH_SELECT_ANY_BUFFER,
		PS_E_CH_SELECT_ANY_BUFFER => PS_E_CH_SELECT_ANY_BUFFER,
		PS_E_CH_SELECT_7_BIT_UNIT => PS_E_CH_SELECT_7_BIT_UNIT,
		MS_E_CH_IN_PROCESS => MS_E_CH_IN_PROCESS,
		PS_E_CH_UNOVLP_IN_PROCESS => PS_E_CH_UNOVLP_IN_PROCESS,
		PS_E_CH_OVLP_IN_PROCESS => PS_E_CH_OVLP_IN_PROCESS,
		MS_E_CH_UNOVLP_IN_PROCESS => MS_E_CH_UNOVLP_IN_PROCESS,
		PS_E_CH_IN_PROCESS => PS_E_CH_IN_PROCESS,
		MS_E_CH_OVLP_IN_PROCESS => MS_E_CH_OVLP_IN_PROCESS,
		PS_MOVE_CYCLE => PS_MOVE_CYCLE,
		PS_LOAD_CYCLE => PS_LOAD_CYCLE,
		MS_LOAD_CYCLE => MS_LOAD_CYCLE,
		MS_INPUT_CYCLE => MS_INPUT_CYCLE,
		MS_OUTPUT_CYCLE => MS_OUTPUT_CYCLE,
		PS_INPUT_CYCLE => PS_INPUT_CYCLE,
		PS_OUTPUT_CYCLE => PS_OUTPUT_CYCLE,
		LAMP_15A1H14 => LAMP_15A1H14,
		LAMP_15A1K14 => LAMP_15A1K14);

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
   
   testName := "13.60.02.1        ";
   
   wait for 30 ns;
   check1(PS_EVEN_PARITY_CYCLE,'0',testName,"1A");
   PS_E_CH_SELECT_UNIT_U <= '1';
   wait for 30 ns;
   check1(PS_EVEN_PARITY_CYCLE,'0',testName,"1B");
   PS_E_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_EVEN_PARITY_CYCLE,'1',testName,"1C");
   PS_E_CH_SELECT_UNIT_U <= '0';
   PS_E_CYCLE <= '0';
   wait for 30 ns;
   PS_F_CH_SELECT_UNIT_U <= '1';
   wait for 30 ns;
   check1(PS_EVEN_PARITY_CYCLE,'0',testName,"1D");
   PS_F_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_EVEN_PARITY_CYCLE,'1',testName,"1E");
   PS_F_CH_SELECT_UNIT_U <= '0';
   PS_F_CYCLE <= '0';
   wait for 30 ns;   
   
   wait for 30 ns;
   check1(MS_ODD_PARITY_CYCLE,'1',testName,"2A");
   MS_E_CH_SELECT_UNIT_B <= '0';
   wait for 30 ns;
   check1(MS_ODD_PARITY_CYCLE,'1',testName,"2B");
   PS_E_CYCLE <= '1';
   wait for 30 ns;
   check1(MS_ODD_PARITY_CYCLE,'0',testName,"2C");
   MS_E_CH_SELECT_UNIT_B <= '1';
   PS_E_CYCLE <= '0';
   wait for 30 ns;
   PS_F_CH_SELECT_ODD_PARITY_UNIT <= '1';
   wait for 30 ns;
   check1(MS_ODD_PARITY_CYCLE,'1',testName,"2D");
   PS_F_CYCLE <= '1';
   wait for 30 ns;
   check1(MS_ODD_PARITY_CYCLE,'0',testName,"2E");
   PS_F_CH_SELECT_ODD_PARITY_UNIT <= '0';
   PS_F_CYCLE <= '0';
   wait for 30 ns;   
   
   testName := "13.60.03.1        ";
   
   check1(PS_E_CH_SELECT_ANY_BUFFER,'0',testName,"1A");
   check1(MS_E_CH_SELECT_ANY_BUFFER,'1',testName,"1B");
   MS_E_CH_SELECT_UNIT_1 <= '0';
   wait for 30 ns;
   check1(PS_E_CH_SELECT_ANY_BUFFER,'1',testName,"1C");
   check1(MS_E_CH_SELECT_ANY_BUFFER,'0',testName,"1D");
   MS_E_CH_SELECT_UNIT_1 <= '1';
   wait for 30 ns;
   MS_E_CH_SELECT_UNIT_2 <= '0';
   wait for 30 ns;
   check1(PS_E_CH_SELECT_ANY_BUFFER,'1',testName,"1E");
   MS_E_CH_SELECT_UNIT_2 <= '1';
   wait for 30 ns;
   MS_E_CH_SELECT_UNIT_4 <= '0';
   wait for 30 ns;
   check1(PS_E_CH_SELECT_ANY_BUFFER,'1',testName,"1F");
   MS_E_CH_SELECT_UNIT_4 <= '1';
   wait for 30 ns;
   PS_E_CH_BUFFER_SELECT <= '1';
   wait for 30 ns;
   check1(PS_E_CH_SELECT_ANY_BUFFER,'1',testName,"1G");
   PS_E_CYCLE <= '1';  -- Leave set to read out +S E Ch Odd Parity Unit
   wait for 30 ns;
   check1(MS_ODD_PARITY_CYCLE,'0',testName,"1H"); -- Stand in for +S E Ch Odd Parity Unit
   check1(PS_E_CH_SELECT_7_BIT_UNIT,'1',testName,"1I");
   PS_E_CH_BUFFER_SELECT <= '0';
   wait for 30 ns;
   
   check1(MS_ODD_PARITY_CYCLE,'1',testName,"2A"); -- Stand in for +S E Ch Odd Parity Unit
   MS_E_CH_SELECT_UNIT_T <= '0';
   wait for 30 ns;
   check1(MS_ODD_PARITY_CYCLE,'0',testName,"2B"); -- Stand in for +S E Ch Odd Parity Unit
   MS_E_CH_SELECT_UNIT_T <= '1';
   wait for 30 ns;
   MS_E_CH_SELECT_UNIT_B <= '0';
   wait for 30 ns;
   check1(MS_ODD_PARITY_CYCLE,'0',testName,"2C"); -- Stand in for +S E Ch Odd Parity Unit
   MS_E_CH_SELECT_UNIT_B <= '1';
   wait for 30 ns;
   MS_E_CH_SELECT_UNIT_F <= '0';
   wait for 30 ns;
   check1(MS_ODD_PARITY_CYCLE,'0',testName,"2D"); -- Stand in for +S E Ch Odd Parity Unit
   MS_E_CH_SELECT_UNIT_F <= '1';
   wait for 30 ns;
   MS_E_CH_SEL_ODD_PARITY_STAR_1412_19 <= '0';
   wait for 30 ns;
   check1(MS_ODD_PARITY_CYCLE,'0',testName,"2E"); -- Stand in for +S E Ch Odd Parity Unit
   MS_E_CH_SEL_ODD_PARITY_STAR_1412_19 <= '1';
   wait for 30 ns;
   MS_E_CH_SELECT_UNIT_K <= '0';
   wait for 30 ns;
   check1(MS_ODD_PARITY_CYCLE,'0',testName,"2F"); -- Stand in for +S E Ch Odd Parity Unit
   MS_E_CH_SELECT_UNIT_K <= '1';
   wait for 30 ns;
   check1(MS_ODD_PARITY_CYCLE,'1',testName,"2G"); -- Stand in for +S E Ch Odd Parity Unit
   
   PS_E_CYCLE <= '0';
   wait for 30 ns;
   check1(PS_E_CH_SELECT_7_BIT_UNIT,'0',testName,"3A");
   MS_E_CH_SELECT_UNIT_B <= '0';
   wait for 30 ns;
   check1(PS_E_CH_SELECT_7_BIT_UNIT,'1',testName,"3B");
   MS_E_CH_SELECT_UNIT_B <= '1';
   wait for 30 ns;
   MS_E_CH_SELECT_UNIT_U <= '0';
   wait for 30 ns;
   check1(PS_E_CH_SELECT_7_BIT_UNIT,'1',testName,"3C");
   MS_E_CH_SELECT_UNIT_U <= '1';
   wait for 30 ns;
   PS_E_CH_SELECT_7_BIT_UNIT_STAR_SIF <= '1';
   wait for 30 ns;
   check1(PS_E_CH_SELECT_7_BIT_UNIT,'1',testName,"3D");
   wait for 30 ns;
   PS_E_CH_SELECT_7_BIT_UNIT_STAR_SIF <= '0';
   wait for 30 ns;
   check1(PS_E_CH_SELECT_7_BIT_UNIT,'0',testName,"3E");

   testName := "13.60.04.1        ";
   
   MS_IN_PROCESS_RESET <= '0';
   wait for 90 ns;
   MS_IN_PROCESS_RESET <= '1';
   wait for 30 ns;
      
   check1(LAMP_15A1H14,'0',testName,"1A");
   check1(PS_E_CH_OVLP_IN_PROCESS,'0',testName,"1B");
   check1(MS_E_CH_OVLP_IN_PROCESS,'1',testName,"1C");
   check1(PS_E_CH_IN_PROCESS,'0',testName,"1D");
   check1(MS_E_CH_IN_PROCESS,'1',testName,"1DA");
   PS_E_CH_NO_STATUS_ON <= '1';
   wait for 30 ns;
   check1(LAMP_15A1H14,'0',testName,"1E");
   check1(PS_E_CH_OVLP_IN_PROCESS,'0',testName,"1F");
   check1(MS_E_CH_OVLP_IN_PROCESS,'1',testName,"1G");
   check1(PS_E_CH_IN_PROCESS,'0',testName,"1H");
   PS_E_CH_STATUS_SAMPLE_A_DELAY <= '1';
   wait for 30 ns;
   check1(LAMP_15A1H14,'0',testName,"1I");
   check1(PS_E_CH_OVLP_IN_PROCESS,'0',testName,"1J");
   check1(MS_E_CH_OVLP_IN_PROCESS,'1',testName,"1K");
   check1(PS_E_CH_IN_PROCESS,'0',testName,"1L");
   PS_I_O_COML_AT_LATCH <= '1';
   -- Latch should set now
   wait for 90 ns;
   PS_E_CH_NO_STATUS_ON <= '0';
   PS_E_CH_STATUS_SAMPLE_A_DELAY <= '0';
   PS_I_O_COML_AT_LATCH <= '0';
   -- Latch should still be set   
   check1(LAMP_15A1H14,'1',testName,"1M");
   check1(PS_E_CH_OVLP_IN_PROCESS,'1',testName,"1N");
   check1(MS_E_CH_OVLP_IN_PROCESS,'0',testName,"1O");
   check1(PS_E_CH_IN_PROCESS,'1',testName,"1P");
   check1(MS_E_CH_IN_PROCESS,'0',testName,"1PA");
   -- Then reset the latch
   MS_E_CH_STATUS_SAMPLE_B_DELAY <= '0';
   wait for 90 ns;
   MS_E_CH_STATUS_SAMPLE_B_DELAY <= '1';
   wait for 30 ns;
   check1(LAMP_15A1H14,'0',testName,"1Q");
   check1(PS_E_CH_OVLP_IN_PROCESS,'0',testName,"1R");
   check1(MS_E_CH_OVLP_IN_PROCESS,'1',testName,"1S");
   check1(PS_E_CH_IN_PROCESS,'0',testName,"1T");


   check1(LAMP_15A1K14,'0',testName,"2A");
   check1(PS_E_CH_UNOVLP_IN_PROCESS,'0',testName,"2B");
   check1(MS_E_CH_UNOVLP_IN_PROCESS,'1',testName,"2C");
   check1(PS_E_CH_IN_PROCESS,'0',testName,"2D");
   PS_I_O_PERCENT_LATCH <= '1';
   wait for 30 ns;
   check1(LAMP_15A1K14,'0',testName,"2E");
   check1(PS_E_CH_UNOVLP_IN_PROCESS,'0',testName,"2F");
   check1(MS_E_CH_UNOVLP_IN_PROCESS,'1',testName,"2G");
   check1(PS_E_CH_IN_PROCESS,'0',testName,"2H");
   PS_E_CH_NO_STATUS_ON <= '1';
   wait for 30 ns;
   check1(LAMP_15A1K14,'0',testName,"2I");
   check1(PS_E_CH_UNOVLP_IN_PROCESS,'0',testName,"2J");
   check1(MS_E_CH_UNOVLP_IN_PROCESS,'1',testName,"2K");
   check1(PS_E_CH_IN_PROCESS,'0',testName,"2L");
   PS_E_CH_STATUS_SAMPLE_A_DELAY <= '1';
   wait for 90 ns;
   -- Latch should be set
   PS_I_O_PERCENT_LATCH <= '0';
   PS_E_CH_NO_STATUS_ON <= '0';
   PS_E_CH_STATUS_SAMPLE_A_DELAY <= '0';
   wait for 30 ns;
   check1(LAMP_15A1K14,'1',testName,"2M");
   check1(PS_E_CH_UNOVLP_IN_PROCESS,'1',testName,"2N");
   check1(MS_E_CH_UNOVLP_IN_PROCESS,'0',testName,"2O");
   check1(PS_E_CH_IN_PROCESS,'1',testName,"2P");
   -- Then reset the latch
   MS_E_CH_STATUS_SAMPLE_B_DELAY <= '0';
   wait for 90 ns;
   MS_E_CH_STATUS_SAMPLE_B_DELAY <= '1';
   wait for 30 ns;
   check1(LAMP_15A1K14,'0',testName,"2Q");
   check1(PS_E_CH_UNOVLP_IN_PROCESS,'0',testName,"2R");
   check1(MS_E_CH_UNOVLP_IN_PROCESS,'1',testName,"2S");
   check1(PS_E_CH_IN_PROCESS,'0',testName,"2T");

   -- Same latch, different conditions for test 3
   
   PS_1401_CARD_PRINT_IN_PROC <= '1';
   wait for 30 ns;
   check1(PS_E_CH_UNOVLP_IN_PROCESS,'0',testName,"3A");
   PS_1ST_I_O_CYCLE_CONTROL <= '1';
   wait for 90 ns;
   -- Latch should be set
   PS_1401_CARD_PRINT_IN_PROC <= '0';
   PS_1ST_I_O_CYCLE_CONTROL <= '0';
   -- Latch should still be set
   wait for 30 ns;
   check1(PS_E_CH_UNOVLP_IN_PROCESS,'1',testName,"3B");
   -- Then reset the latch
   MS_E_CH_STATUS_SAMPLE_B_DELAY <= '0';
   wait for 90 ns;
   MS_E_CH_STATUS_SAMPLE_B_DELAY <= '1';
   wait for 30 ns;
   check1(PS_E_CH_UNOVLP_IN_PROCESS,'0',testName,"3C");
 
   -- Same latch, different conditions, for test 4
   -- In this case, some signals inhibit setting the latch
   PS_1401_CARD_PRINT_IN_PROC <= '1';
   PS_E_CH_SECOND_SAMPLE_B <= '1';
   wait for 30 ns;
   check1(PS_E_CH_UNOVLP_IN_PROCESS,'0',testName,"4A");
   -- Normally the three signals below would set the latch, but not now
   PS_I_O_PERCENT_LATCH <= '1';
   PS_E_CH_NO_STATUS_ON <= '1';
   PS_E_CH_STATUS_SAMPLE_A_DELAY <= '1';
   wait for 90 ns;
   check1(PS_E_CH_UNOVLP_IN_PROCESS,'0',testName,"4B");
   -- Now remove the constraint (either signal should do...)
   PS_E_CH_SECOND_SAMPLE_B <= '0';
   wait for 90 ns;
   check1(PS_E_CH_UNOVLP_IN_PROCESS,'1',testName,"4C");
   PS_E_CH_SECOND_SAMPLE_B <= '0';
   
   testName := "13.60.05.1        ";
   
   check1(PS_MOVE_CYCLE,'0',testName,"1A");
   PS_E_CH_2ND_ADDR_TRF <= '1';
   wait for 30 ns;
   check1(PS_MOVE_CYCLE,'0',testName,"1B");
   PS_E_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_MOVE_CYCLE,'1',testName,"1C");
   PS_E_CH_2ND_ADDR_TRF <= '0';
   PS_E_CYCLE <= '0';
   wait for 30 ns;
   PS_F_CH_2ND_ADDR_TRF <= '1';
   wait for 30 ns;
   check1(PS_MOVE_CYCLE,'0',testName,"1D");
   PS_F_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_MOVE_CYCLE,'1',testName,"1E");
   PS_F_CH_2ND_ADDR_TRF <= '0';
   PS_F_CYCLE <= '0';
   wait for 30 ns;
   PS_E_CH_MOVE_MODE <= '1';
   wait for 30 ns;
   check1(PS_MOVE_CYCLE,'0',testName,"1F");
   PS_E_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_MOVE_CYCLE,'1',testName,"1G");
   PS_E_CH_MOVE_MODE <= '0';
   PS_E_CYCLE <= '0';
   wait for 30 ns;
   PS_F_CH_MOVE_MODE <= '1';
   wait for 30 ns;
   check1(PS_MOVE_CYCLE,'0',testName,"1H");
   PS_F_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_MOVE_CYCLE,'1',testName,"1I");
   PS_E_CH_MOVE_MODE <= '0';
   PS_E_CYCLE <= '0';
   
   check1(PS_LOAD_CYCLE,'0',testName,"2A");
   check1(MS_LOAD_CYCLE,'1',testName,"2B");
   MS_E_CH_2ND_ADDR_TRF <= '0';
   PS_E_CH_LOAD_MODE <= '1';
   wait for 30 ns;
   check1(PS_LOAD_CYCLE,'0',testName,"2C");
   PS_E_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_LOAD_CYCLE,'0',testName,"2D");
   MS_E_CH_2ND_ADDR_TRF <= '1';
   wait for 30 ns;
   check1(PS_LOAD_CYCLE,'1',testName,"2E");
   check1(MS_LOAD_CYCLE,'0',testName,"2F");
   PS_E_CH_LOAD_MODE <= '0';
   PS_E_CYCLE <= '0';
   MS_F_CH_2ND_ADDR_TRF <= '0';
   PS_F_CH_LOAD_MODE <= '1';
   wait for 30 ns;
   check1(PS_LOAD_CYCLE,'0',testName,"2G");
   PS_F_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_LOAD_CYCLE,'0',testName,"2H");
   MS_F_CH_2ND_ADDR_TRF <= '1';
   wait for 30 ns;
   check1(PS_LOAD_CYCLE,'1',testName,"2I");
   check1(MS_LOAD_CYCLE,'0',testName,"2J");
   PS_F_CH_LOAD_MODE <= '0';
   PS_F_CYCLE <= '0';

   testName := "13.60.06.1        ";

   check1(PS_INPUT_CYCLE,'0',testName,"1A");
   check1(MS_INPUT_CYCLE,'1',testName,"1B");
   MS_CONTROL_REG_DISABLE <= '0';
   PS_E_CH_INPUT_MODE <= '1';
   wait for 30 ns;
   check1(PS_INPUT_CYCLE,'0',testName,"1C");
   PS_E_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_INPUT_CYCLE,'0',testName,"1D");
   MS_CONTROL_REG_DISABLE <= '1';
   wait for 30 ns;
   check1(PS_INPUT_CYCLE,'1',testName,"1E");
   check1(MS_INPUT_CYCLE,'0',testName,"1F");
   PS_E_CH_INPUT_MODE <= '0';
   PS_E_CYCLE <= '0';
   wait for 30 ns;

   check1(PS_INPUT_CYCLE,'0',testName,"2A");
   check1(MS_INPUT_CYCLE,'1',testName,"2B");
   MS_CONTROL_REG_DISABLE <= '0';
   PS_F_CH_INPUT_MODE <= '1';
   wait for 30 ns;
   check1(PS_INPUT_CYCLE,'0',testName,"2C");
   PS_F_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_INPUT_CYCLE,'0',testName,"2D");
   MS_CONTROL_REG_DISABLE <= '1';
   wait for 30 ns;
   check1(PS_INPUT_CYCLE,'1',testName,"2E");
   check1(MS_INPUT_CYCLE,'0',testName,"2F");
   PS_F_CH_INPUT_MODE <= '0';
   PS_F_CYCLE <= '0';
   wait for 30 ns;

   check1(PS_OUTPUT_CYCLE,'0',testName,"3A");
   check1(MS_OUTPUT_CYCLE,'1',testName,"3B");
   MS_CONTROL_REG_DISABLE <= '0';
   PS_E_CH_OUTPUT_MODE <= '1';
   wait for 30 ns;
   check1(PS_OUTPUT_CYCLE,'0',testName,"3C");
   PS_E_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_OUTPUT_CYCLE,'0',testName,"3D");
   MS_CONTROL_REG_DISABLE <= '1';
   wait for 30 ns;
   check1(PS_OUTPUT_CYCLE,'1',testName,"3E");
   check1(MS_OUTPUT_CYCLE,'0',testName,"3F");
   PS_E_CH_OUTPUT_MODE <= '0';
   PS_E_CYCLE <= '0';
   wait for 30 ns;

   check1(PS_OUTPUT_CYCLE,'0',testName,"4A");
   check1(MS_OUTPUT_CYCLE,'1',testName,"4B");
   MS_CONTROL_REG_DISABLE <= '0';
   PS_F_CH_OUTPUT_MODE <= '1';
   wait for 30 ns;
   check1(PS_OUTPUT_CYCLE,'0',testName,"4C");
   PS_F_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_OUTPUT_CYCLE,'0',testName,"4D");
   MS_CONTROL_REG_DISABLE <= '1';
   wait for 30 ns;
   check1(PS_OUTPUT_CYCLE,'1',testName,"4E");
   check1(MS_OUTPUT_CYCLE,'0',testName,"4F");
   PS_F_CH_OUTPUT_MODE <= '0';
   PS_F_CYCLE <= '0';
   
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
