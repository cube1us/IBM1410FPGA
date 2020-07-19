-- Test BenchVHDL for IBM SMS ALD group OperationRegister
-- Title: OperationRegister
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 7/19/2020 9:59:10 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity OperationRegister_tb is
end OperationRegister_tb;

architecture behavioral of OperationRegister_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component OperationRegister
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_SET_OP_REG: in STD_LOGIC;
		PS_PROCESS_ROUTINE: in STD_LOGIC;
		PS_1401_MODE: in STD_LOGIC;
		MS_1401_MODE: in STD_LOGIC;
		MS_ADDRESS_SET_ROUTINE: in STD_LOGIC;
		MS_INTERRUPT_DOT_B_CYCLE: in STD_LOGIC;
		PS_B_CH_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_CH_NOT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MS_CONTROL_REG_DISABLE: out STD_LOGIC;
		PS_OP_REG_COM_C_BIT: out STD_LOGIC;
		PS_OP_REG_1401_C_BIT: out STD_LOGIC;
		PS_OP_REG_1401_NOT_C_BIT: out STD_LOGIC;
		PS_OP_REG_ARS_C_BIT: out STD_LOGIC;
		PS_OP_REG_ARS_NOT_C_BIT: out STD_LOGIC;
		PS_OP_REG_COM_NOT_C_BIT: out STD_LOGIC;
		PS_OP_REG_C_BIT: out STD_LOGIC;
		PS_CONTROL_REG_DISABLE: out STD_LOGIC;
		PS_OP_REG_B_BIT: out STD_LOGIC;
		MS_OP_REG_A_BIT: out STD_LOGIC;
		PS_OP_REG_A_BIT: out STD_LOGIC;
		PS_OP_REG_8_BIT: out STD_LOGIC;
		PS_OP_REG_4_BIT: out STD_LOGIC;
		PS_OP_REG_2_BIT: out STD_LOGIC;
		PS_OP_REG_1_BIT: out STD_LOGIC;
		LAMP_11C8D09: out STD_LOGIC;
		LAMP_11C8E09: out STD_LOGIC;
		LAMP_11C8F09: out STD_LOGIC;
		LAMP_11C8G09: out STD_LOGIC;
		LAMP_11C8H09: out STD_LOGIC;
		LAMP_11C8J09: out STD_LOGIC;
		LAMP_11C8K09: out STD_LOGIC;
		PS_OP_REG_NOT_BUS: out STD_LOGIC_VECTOR (5 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_SET_OP_REG: STD_LOGIC := '0';
	signal PS_PROCESS_ROUTINE: STD_LOGIC := '0';
	signal PS_1401_MODE: STD_LOGIC := '0';
	signal MS_1401_MODE: STD_LOGIC := '1';
	signal MS_ADDRESS_SET_ROUTINE: STD_LOGIC := '1';
	signal MS_INTERRUPT_DOT_B_CYCLE: STD_LOGIC := '1';
	signal PS_B_CH_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_B_CH_NOT_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";

	-- Outputs

	signal MS_CONTROL_REG_DISABLE: STD_LOGIC;
	signal PS_OP_REG_COM_C_BIT: STD_LOGIC;
	signal PS_OP_REG_1401_C_BIT: STD_LOGIC;
	signal PS_OP_REG_1401_NOT_C_BIT: STD_LOGIC;
	signal PS_OP_REG_ARS_C_BIT: STD_LOGIC;
	signal PS_OP_REG_ARS_NOT_C_BIT: STD_LOGIC;
	signal PS_OP_REG_COM_NOT_C_BIT: STD_LOGIC;
	signal PS_OP_REG_C_BIT: STD_LOGIC;
	signal PS_CONTROL_REG_DISABLE: STD_LOGIC;
	signal PS_OP_REG_B_BIT: STD_LOGIC;
	signal MS_OP_REG_A_BIT: STD_LOGIC;
	signal PS_OP_REG_A_BIT: STD_LOGIC;
	signal PS_OP_REG_8_BIT: STD_LOGIC;
	signal PS_OP_REG_4_BIT: STD_LOGIC;
	signal PS_OP_REG_2_BIT: STD_LOGIC;
	signal PS_OP_REG_1_BIT: STD_LOGIC;
	signal LAMP_11C8D09: STD_LOGIC;
	signal LAMP_11C8E09: STD_LOGIC;
	signal LAMP_11C8F09: STD_LOGIC;
	signal LAMP_11C8G09: STD_LOGIC;
	signal LAMP_11C8H09: STD_LOGIC;
	signal LAMP_11C8J09: STD_LOGIC;
	signal LAMP_11C8K09: STD_LOGIC;
	signal PS_OP_REG_NOT_BUS: STD_LOGIC_VECTOR (5 downTo 0);

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

	UUT: OperationRegister port map(
		FPGA_CLK => FPGA_CLK,
		PS_SET_OP_REG => PS_SET_OP_REG,
		PS_PROCESS_ROUTINE => PS_PROCESS_ROUTINE,
		PS_1401_MODE => PS_1401_MODE,
		MS_1401_MODE => MS_1401_MODE,
		MS_ADDRESS_SET_ROUTINE => MS_ADDRESS_SET_ROUTINE,
		MS_INTERRUPT_DOT_B_CYCLE => MS_INTERRUPT_DOT_B_CYCLE,
		PS_B_CH_BUS => PS_B_CH_BUS,
		PS_B_CH_NOT_BUS => PS_B_CH_NOT_BUS,
		MS_CONTROL_REG_DISABLE => MS_CONTROL_REG_DISABLE,
		PS_OP_REG_COM_C_BIT => PS_OP_REG_COM_C_BIT,
		PS_OP_REG_1401_C_BIT => PS_OP_REG_1401_C_BIT,
		PS_OP_REG_1401_NOT_C_BIT => PS_OP_REG_1401_NOT_C_BIT,
		PS_OP_REG_ARS_C_BIT => PS_OP_REG_ARS_C_BIT,
		PS_OP_REG_ARS_NOT_C_BIT => PS_OP_REG_ARS_NOT_C_BIT,
		PS_OP_REG_COM_NOT_C_BIT => PS_OP_REG_COM_NOT_C_BIT,
		PS_OP_REG_C_BIT => PS_OP_REG_C_BIT,
		PS_CONTROL_REG_DISABLE => PS_CONTROL_REG_DISABLE,
		PS_OP_REG_B_BIT => PS_OP_REG_B_BIT,
		MS_OP_REG_A_BIT => MS_OP_REG_A_BIT,
		PS_OP_REG_A_BIT => PS_OP_REG_A_BIT,
		PS_OP_REG_8_BIT => PS_OP_REG_8_BIT,
		PS_OP_REG_4_BIT => PS_OP_REG_4_BIT,
		PS_OP_REG_2_BIT => PS_OP_REG_2_BIT,
		PS_OP_REG_1_BIT => PS_OP_REG_1_BIT,
		LAMP_11C8D09 => LAMP_11C8D09,
		LAMP_11C8E09 => LAMP_11C8E09,
		LAMP_11C8F09 => LAMP_11C8F09,
		LAMP_11C8G09 => LAMP_11C8G09,
		LAMP_11C8H09 => LAMP_11C8H09,
		LAMP_11C8J09 => LAMP_11C8J09,
		LAMP_11C8K09 => LAMP_11C8K09,
		PS_OP_REG_NOT_BUS => PS_OP_REG_NOT_BUS);

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
