-- Test BenchVHDL for IBM SMS ALD group OperationRegister
-- Title: OperationRegister
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 7/19/2020 12:39:36 PM

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
		PS_CONTROL_REG_DISABLE: out STD_LOGIC;
		MS_OP_REG_A_BIT: out STD_LOGIC;
		PS_OP_REG_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		PS_OP_REG_NOT_BUS: out STD_LOGIC_VECTOR (5 downTo 0);
		LAMPS_OPREG_CE: out STD_LOGIC_VECTOR (7 downTo 0));
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
	signal PS_CONTROL_REG_DISABLE: STD_LOGIC;
	signal MS_OP_REG_A_BIT: STD_LOGIC;
	signal PS_OP_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal PS_OP_REG_NOT_BUS: STD_LOGIC_VECTOR (5 downTo 0);
	signal LAMPS_OPREG_CE: STD_LOGIC_VECTOR (7 downTo 0);

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
   
-- Routine to check OP Register bits against
-- B Ch test vector

procedure checkOpReg(
   testName: in string;
   test: in string) is
   begin
   for i in 0 to 7 loop
      if(i = 7) then
        check1(NOT PS_OP_REG_BUS(i),PS_B_CH_BUS(i),testName,test);
        check1(NOT LAMPS_OPREG_CE(i),PS_B_CH_BUS(i),testName,test);
      elsif(i /= 6) then  -- There is no WM bit in op register 
        check1(PS_OP_REG_BUS(i),PS_B_CH_BUS(i),testName,test);
        check1(LAMPS_OPREG_CE(i),PS_B_CH_BUS(i),testName,test);
      end if;
      if(i < 6) then
         check1(PS_OP_REG_NOT_BUS(i), PS_B_CH_NOT_BUS(i),testName,test);
      end if;
   end loop;
   
   end procedure; 

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
		PS_CONTROL_REG_DISABLE => PS_CONTROL_REG_DISABLE,
		MS_OP_REG_A_BIT => MS_OP_REG_A_BIT,
		PS_OP_REG_BUS => PS_OP_REG_BUS,
		PS_OP_REG_NOT_BUS => PS_OP_REG_NOT_BUS,
		LAMPS_OPREG_CE => LAMPS_OPREG_CE);

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

-- Permanent complement for testing

PS_B_CH_NOT_BUS <= NOT PS_B_CH_BUS;

-- Place your test bench code in the uut_process

uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;

   begin

   -- Your test bench code
   
   testName := "13.10.01.1        ";
   
   MS_ADDRESS_SET_ROUTINE <= '1';
   PS_PROCESS_ROUTINE <= '0';
   wait for 30 ns;
   check1(PS_CONTROL_REG_DISABLE,'1',testName,"1A");
   check1(MS_CONTROL_REG_DISABLE,'0',testName,"1B");
   PS_PROCESS_ROUTINE <= '1';
   wait for 30 ns;
   check1(PS_CONTROL_REG_DISABLE,'0',testName,"1C");
   check1(MS_CONTROL_REG_DISABLE,'1',testName,"1D");
   MS_ADDRESS_SET_ROUTINE <= '0';
   wait for 30 ns;
   check1(PS_CONTROL_REG_DISABLE,'1',testName,"1C");
   check1(MS_CONTROL_REG_DISABLE,'0',testName,"1A");
   MS_ADDRESS_SET_ROUTINE <= '1';
   
   
   PS_B_CH_BUS <= "10000000";  -- C Bit
   wait for 30 ns;
   PS_SET_OP_REG <= '1';
   wait for 30 ns;
   checkOpReg(testname,"2A C Bit");
   PS_SET_OP_REG <= '0';
   wait for 30 ns;
   checkOpReg(testname,"2B C Bit");

   PS_B_CH_BUS <= "00100000";  -- B bit (no WM bit used)
   wait for 30 ns;
   PS_SET_OP_REG <= '1';
   wait for 30 ns;
   checkOpReg(testname,"2C B Bit");
   PS_SET_OP_REG <= '0';
   wait for 30 ns;
   checkOpReg(testname,"2D B Bit");
   
   PS_B_CH_BUS <= "00010000";  -- A bit
   wait for 30 ns;
   PS_SET_OP_REG <= '1';
   wait for 30 ns;
   checkOpReg(testname,"2E A Bit");
   PS_SET_OP_REG <= '0';
   wait for 30 ns;
   checkOpReg(testname,"2F A Bit");
      
   PS_B_CH_BUS <= "00001000";  -- 8 bit
   wait for 30 ns;
   PS_SET_OP_REG <= '1';
   wait for 30 ns;
   checkOpReg(testname,"2G 8 Bit");
   PS_SET_OP_REG <= '0';
   wait for 30 ns;
   checkOpReg(testname,"2H 8 Bit");
      
   PS_B_CH_BUS <= "00000100";  -- 4 bit
   wait for 30 ns;
   PS_SET_OP_REG <= '1';
   wait for 30 ns;
   checkOpReg(testname,"2I 4 Bit");
   PS_SET_OP_REG <= '0';
   wait for 30 ns;
   checkOpReg(testname,"2J 4 Bit");
      
   PS_B_CH_BUS <= "00000010";  -- 2 bit
   wait for 30 ns;
   PS_SET_OP_REG <= '1';
   wait for 30 ns;
   checkOpReg(testname,"2K 2 Bit");
   PS_SET_OP_REG <= '0';
   wait for 30 ns;
   checkOpReg(testname,"2L 2 Bit");
      
   PS_B_CH_BUS <= "00000001";  -- 1 bit
   wait for 30 ns;
   PS_SET_OP_REG <= '1';
   wait for 30 ns;
   checkOpReg(testname,"2M 1 Bit");
   PS_SET_OP_REG <= '0';
   wait for 30 ns;
   checkOpReg(testname,"2N 1 Bit");
   
   -- Set the C bit for these tests - which is inverted
   -- from the C bit in the B Channel
   
   PS_B_CH_BUS <= "00000000";  -- C Bit
   wait for 30 ns;
   PS_SET_OP_REG <= '1';
   wait for 30 ns;
   PS_SET_OP_REG <= '0';
   wait for 30 ns;
   check1(PS_OP_REG_BUS(7),'1',testname,"3A");
   
   MS_INTERRUPT_DOT_B_CYCLE <= '0';
   MS_1401_MODE <= '1';
   PS_1401_MODE <= '0';
   wait for 30 ns;
   check1(PS_OP_REG_COM_C_BIT,'0',testName,"3B");
   check1(PS_OP_REG_1401_C_BIT,'0',testName,"3C");
   check1(PS_OP_REG_ARS_C_BIT,'0',testName,"3D");
   check1(PS_OP_REG_1401_NOT_C_BIT,'0',testName,"3E");
   check1(PS_OP_REG_ARS_NOT_C_BIT,'0',testName,"3F");
   check1(PS_OP_REG_COM_NOT_C_BIT,'0',testName,"3G");
   
   MS_INTERRUPT_DOT_B_CYCLE <= '1';
   PS_PROCESS_ROUTINE <= '1';
   MS_ADDRESS_SET_ROUTINE <= '1';   
   wait for 30 ns;
   check1(PS_CONTROL_REG_DISABLE,'0',testName,"4A");
   
   check1(PS_OP_REG_COM_C_BIT,'1',testName,"4B");
   check1(PS_OP_REG_1401_C_BIT,'0',testName,"4C");
   check1(PS_OP_REG_ARS_C_BIT,'1',testName,"4D");
   check1(PS_OP_REG_1401_NOT_C_BIT,'0',testName,"4E");
   check1(PS_OP_REG_ARS_NOT_C_BIT,'0',testName,"4F");
   check1(PS_OP_REG_COM_NOT_C_BIT,'0',testName,"4G");
   
   MS_1401_MODE <= '0';
   PS_1401_MODE <= '1';
   wait for 30 ns;
   
   check1(PS_OP_REG_COM_C_BIT,'1',testName,"5B");
   check1(PS_OP_REG_1401_C_BIT,'1',testName,"5C");
   check1(PS_OP_REG_ARS_C_BIT,'0',testName,"5D");
   check1(PS_OP_REG_1401_NOT_C_BIT,'0',testName,"5E");
   check1(PS_OP_REG_ARS_NOT_C_BIT,'0',testName,"5F");
   check1(PS_OP_REG_COM_NOT_C_BIT,'0',testName,"5G");

   PS_B_CH_BUS <= "10000000";  -- NO C bit
   wait for 30 ns;
   PS_SET_OP_REG <= '1';
   wait for 30 ns;
   PS_SET_OP_REG <= '0';
   wait for 30 ns;
   check1(PS_OP_REG_BUS(7),'0',testname,"6A");  
   MS_1401_MODE <= '1';
   PS_1401_MODE <= '0'; 
   
   MS_INTERRUPT_DOT_B_CYCLE <= '0';
   wait for 30 ns;
   
   check1(PS_OP_REG_COM_C_BIT,'0',testName,"6B");
   check1(PS_OP_REG_1401_C_BIT,'0',testName,"6C");
   check1(PS_OP_REG_ARS_C_BIT,'0',testName,"6D");
   check1(PS_OP_REG_1401_NOT_C_BIT,'0',testName,"6E");
   check1(PS_OP_REG_ARS_NOT_C_BIT,'0',testName,"6F");
   check1(PS_OP_REG_COM_NOT_C_BIT,'0',testName,"6G");
   
   MS_INTERRUPT_DOT_B_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_OP_REG_COM_C_BIT,'0',testName,"7B");
   check1(PS_OP_REG_1401_C_BIT,'0',testName,"7C");
   check1(PS_OP_REG_ARS_C_BIT,'0',testName,"7D");
   check1(PS_OP_REG_1401_NOT_C_BIT,'0',testName,"7E");
   check1(PS_OP_REG_ARS_NOT_C_BIT,'1',testName,"7F");
   check1(PS_OP_REG_COM_NOT_C_BIT,'1',testName,"7G");
   
   MS_1401_MODE <= '0';
   PS_1401_MODE <= '1';
   wait for 30 ns;
   check1(PS_OP_REG_COM_C_BIT,'0',testName,"8B");
   check1(PS_OP_REG_1401_C_BIT,'0',testName,"8C");
   check1(PS_OP_REG_ARS_C_BIT,'0',testName,"8D");
   check1(PS_OP_REG_1401_NOT_C_BIT,'1',testName,"8E");
   check1(PS_OP_REG_ARS_NOT_C_BIT,'0',testName,"8F");
   check1(PS_OP_REG_COM_NOT_C_BIT,'1',testName,"8G");
   
   MS_ADDRESS_SET_ROUTINE <= '1';
   PS_PROCESS_ROUTINE <= '0';
   MS_INTERRUPT_DOT_B_CYCLE <= '0';
   wait for 30 ns;
   check1(PS_OP_REG_COM_C_BIT,'0',testName,"9B");
   check1(PS_OP_REG_1401_C_BIT,'0',testName,"9C");
   check1(PS_OP_REG_ARS_C_BIT,'0',testName,"9D");
   check1(PS_OP_REG_1401_NOT_C_BIT,'0',testName,"9E");
   check1(PS_OP_REG_ARS_NOT_C_BIT,'0',testName,"9F");
   check1(PS_OP_REG_COM_NOT_C_BIT,'0',testName,"9G");
   
   
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
