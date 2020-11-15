-- Test Bench VHDL for IBM SMS ALD page 13.70.03.1
-- Title: BUFFER CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/11/2020 3:58:10 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_70_03_1_BUFFER_CONTROLS_ACC_tb is
end ALD_13_70_03_1_BUFFER_CONTROLS_ACC_tb;

architecture behavioral of ALD_13_70_03_1_BUFFER_CONTROLS_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_13_70_03_1_BUFFER_CONTROLS_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_OP_REG_4_BIT:	 in STD_LOGIC;
		PS_1401_PUNCH_TRIGGER:	 in STD_LOGIC;
		PS_OP_REG_1_BIT:	 in STD_LOGIC;
		PS_1401_READ_TRIGGER:	 in STD_LOGIC;
		MS_1401_I_O_RING_ADVANCE:	 in STD_LOGIC;
		PS_OP_REG_2_BIT:	 in STD_LOGIC;
		PS_1401_PRINT_TRIGGER:	 in STD_LOGIC;
		MS_E_CH_IN_PROCESS:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_CLAMPED:	 in STD_LOGIC;
		MS_PROGRAM_RESET_2:	 in STD_LOGIC;
		MS_E_CH_BUSY_BUS:	 in STD_LOGIC;
		MS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		PS_E_CH_CONDITION:	 in STD_LOGIC;
		PS_1401_I_O_CK_STOP_SW:	 in STD_LOGIC;
		PS_E_CH_SECOND_SAMPLE_B:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_1:	 in STD_LOGIC;
		PS_E_CH_CHECK:	 in STD_LOGIC;
		PS_1401_CARD_PRINT_IN_PROC:	 in STD_LOGIC;
		MS_1401_PUNCH:	 out STD_LOGIC;
		MS_1401_READ:	 out STD_LOGIC;
		MS_1401_PRINT:	 out STD_LOGIC;
		MS_1401_CARD_PR_ERR_SAMPLE:	 out STD_LOGIC;
		PS_1401_CARD_PR_ERR_SAMPLE:	 out STD_LOGIC;
		MS_1ST_I_O_CYCLE_CONTROL:	 out STD_LOGIC;
		PS_1ST_I_O_CYCLE_CONTROL:	 out STD_LOGIC;
		MS_1401_PUNCH_PRINT_ERROR:	 out STD_LOGIC;
		MS_1401_CARD_PRINT_ERROR:	 out STD_LOGIC;
		MS_NOT_1401_CARD_OR_PRTR_MODE:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_OP_REG_4_BIT: STD_LOGIC := '0';
	signal PS_1401_PUNCH_TRIGGER: STD_LOGIC := '0';
	signal PS_OP_REG_1_BIT: STD_LOGIC := '0';
	signal PS_1401_READ_TRIGGER: STD_LOGIC := '0';
	signal MS_1401_I_O_RING_ADVANCE: STD_LOGIC := '1';
	signal PS_OP_REG_2_BIT: STD_LOGIC := '0';
	signal PS_1401_PRINT_TRIGGER: STD_LOGIC := '0';
	signal MS_E_CH_IN_PROCESS: STD_LOGIC := '1';
	signal PS_1ST_CLOCK_PULSE_CLAMPED: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_2: STD_LOGIC := '1';
	signal MS_E_CH_BUSY_BUS: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_D_1: STD_LOGIC := '1';
	signal PS_E_CH_CONDITION: STD_LOGIC := '0';
	signal PS_1401_I_O_CK_STOP_SW: STD_LOGIC := '0';
	signal PS_E_CH_SECOND_SAMPLE_B: STD_LOGIC := '0';
	signal PS_1ST_CLOCK_PULSE_1: STD_LOGIC := '0';
	signal PS_E_CH_CHECK: STD_LOGIC := '0';
	signal PS_1401_CARD_PRINT_IN_PROC: STD_LOGIC := '0';

	-- Outputs

	signal MS_1401_PUNCH: STD_LOGIC;
	signal MS_1401_READ: STD_LOGIC;
	signal MS_1401_PRINT: STD_LOGIC;
	signal MS_1401_CARD_PR_ERR_SAMPLE: STD_LOGIC;
	signal PS_1401_CARD_PR_ERR_SAMPLE: STD_LOGIC;
	signal MS_1ST_I_O_CYCLE_CONTROL: STD_LOGIC;
	signal PS_1ST_I_O_CYCLE_CONTROL: STD_LOGIC;
	signal MS_1401_PUNCH_PRINT_ERROR: STD_LOGIC;
	signal MS_1401_CARD_PRINT_ERROR: STD_LOGIC;
	signal MS_NOT_1401_CARD_OR_PRTR_MODE: STD_LOGIC;

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

	UUT: ALD_13_70_03_1_BUFFER_CONTROLS_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_OP_REG_4_BIT => PS_OP_REG_4_BIT,
		PS_1401_PUNCH_TRIGGER => PS_1401_PUNCH_TRIGGER,
		PS_OP_REG_1_BIT => PS_OP_REG_1_BIT,
		PS_1401_READ_TRIGGER => PS_1401_READ_TRIGGER,
		MS_1401_I_O_RING_ADVANCE => MS_1401_I_O_RING_ADVANCE,
		PS_OP_REG_2_BIT => PS_OP_REG_2_BIT,
		PS_1401_PRINT_TRIGGER => PS_1401_PRINT_TRIGGER,
		MS_E_CH_IN_PROCESS => MS_E_CH_IN_PROCESS,
		PS_1ST_CLOCK_PULSE_CLAMPED => PS_1ST_CLOCK_PULSE_CLAMPED,
		MS_PROGRAM_RESET_2 => MS_PROGRAM_RESET_2,
		MS_E_CH_BUSY_BUS => MS_E_CH_BUSY_BUS,
		MS_LOGIC_GATE_D_1 => MS_LOGIC_GATE_D_1,
		PS_E_CH_CONDITION => PS_E_CH_CONDITION,
		PS_1401_I_O_CK_STOP_SW => PS_1401_I_O_CK_STOP_SW,
		PS_E_CH_SECOND_SAMPLE_B => PS_E_CH_SECOND_SAMPLE_B,
		PS_1ST_CLOCK_PULSE_1 => PS_1ST_CLOCK_PULSE_1,
		PS_E_CH_CHECK => PS_E_CH_CHECK,
		PS_1401_CARD_PRINT_IN_PROC => PS_1401_CARD_PRINT_IN_PROC,
		MS_1401_PUNCH => MS_1401_PUNCH,
		MS_1401_READ => MS_1401_READ,
		MS_1401_PRINT => MS_1401_PRINT,
		MS_1401_CARD_PR_ERR_SAMPLE => MS_1401_CARD_PR_ERR_SAMPLE,
		PS_1401_CARD_PR_ERR_SAMPLE => PS_1401_CARD_PR_ERR_SAMPLE,
		MS_1ST_I_O_CYCLE_CONTROL => MS_1ST_I_O_CYCLE_CONTROL,
		PS_1ST_I_O_CYCLE_CONTROL => PS_1ST_I_O_CYCLE_CONTROL,
		MS_1401_PUNCH_PRINT_ERROR => MS_1401_PUNCH_PRINT_ERROR,
		MS_1401_CARD_PRINT_ERROR => MS_1401_CARD_PRINT_ERROR,
		MS_NOT_1401_CARD_OR_PRTR_MODE => MS_NOT_1401_CARD_OR_PRTR_MODE);

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

   testName := "13.70.03.1        ";
   
   wait for 30 ns;
   MS_PROGRAM_RESET_2 <= '0';
   wait for 90 ns;
   MS_PROGRAM_RESET_2 <= '1';
   wait for 90 ns;
   
   check1(MS_1401_PUNCH,'1',testName,"SA");
   check1(MS_1401_READ,'1',testName,"SB");
   check1(MS_1401_PRINT,'1',testName,"SC");
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'0',testName,"SD");
   check1(MS_1401_CARD_PR_ERR_SAMPLE,'1',testName,"SD");
   check1(PS_1ST_I_O_CYCLE_CONTROL,'0',testName,"SE");
   check1(MS_1ST_I_O_CYCLE_CONTROL,'1',testName,"SF");
   check1(MS_1401_PUNCH_PRINT_ERROR,'1',testName,"SG");
   check1(MS_1401_CARD_PRINT_ERROR,'1',testName,"SH");
   check1(MS_NOT_1401_CARD_OR_PRTR_MODE,'1',testName,"SI");
   
   PS_1401_PRINT_TRIGGER <= '1';
   wait for 30 ns;
   check1(MS_1401_PRINT,'1',testName,"1A");
   PS_1401_PRINT_TRIGGER <= '0';
   PS_OP_REG_2_BIT <= '1';
   wait for 30 ns;
   check1(MS_1401_PRINT,'1',testName,"1B");
   PS_1401_PRINT_TRIGGER <= '1';
   wait for 30 ns;
   check1(MS_1401_PRINT,'0',testName,"1C");
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'0',testName,"1D");   
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns;  -- Sets PRINT RD PCH Trigger, triggers SS
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;
   wait for 6 us;  -- SS expires (Don't know what this is for)
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns;  -- Sets Card PR Err Sample, Which resets PRINT RD PCH Latch
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;   
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'1',testName,"1E");
   check1(MS_1401_CARD_PR_ERR_SAMPLE,'0',testName,"1F");

   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns; 
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;   
      
   check1(PS_1ST_I_O_CYCLE_CONTROL,'1',testName,"1G");
   check1(MS_1ST_I_O_CYCLE_CONTROL,'0',testName,"1H");

   check1(MS_NOT_1401_CARD_OR_PRTR_MODE,'1',testName,"1I");
   PS_1ST_CLOCK_PULSE_1 <= '1';
   wait for 30 ns;
   check1(MS_NOT_1401_CARD_OR_PRTR_MODE,'1',testName,"1J");
   PS_1ST_CLOCK_PULSE_1 <= '0';
      
   -- Reset with LGD
   
   PS_1401_PRINT_TRIGGER <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_D_1 <= '1';
   PS_OP_REG_2_BIT <= '0';
   
   check1(MS_1401_PUNCH,'1',testName,"1I");
   check1(MS_1401_READ,'1',testName,"1J");
   check1(MS_1401_PRINT,'1',testName,"1K");
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'0',testName,"1L");
   check1(MS_1401_CARD_PR_ERR_SAMPLE,'1',testName,"1M");
   check1(PS_1ST_I_O_CYCLE_CONTROL,'0',testName,"1N");
   check1(MS_1ST_I_O_CYCLE_CONTROL,'1',testName,"1O");
   check1(MS_1401_PUNCH_PRINT_ERROR,'1',testName,"1P");
   check1(MS_1401_CARD_PRINT_ERROR,'1',testName,"1Q");
   check1(MS_NOT_1401_CARD_OR_PRTR_MODE,'1',testName,"1R");
   
   -- Next test the read cycle

   PS_1401_READ_TRIGGER <= '1';
   wait for 30 ns;
   check1(MS_1401_READ,'1',testName,"2A");
   PS_1401_READ_TRIGGER <= '0';
   PS_OP_REG_1_BIT <= '1';
   wait for 30 ns;
   check1(MS_1401_READ,'1',testName,"2B");
   PS_1401_READ_TRIGGER <= '1';
   wait for 30 ns;
   check1(MS_1401_READ,'0',testName,"2C");
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'0',testName,"2D"); 
   
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns; -- Sets Print/Read/Punch Trigger
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;   

   wait for 6 us;  -- Wish I new what the SS was for
   wait for 90 ns;
   
   MS_E_CH_BUSY_BUS <= '0';  -- Pretend Channel is busy - system waits
   wait for 30 ns; -- Setup time before clock hits
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns;
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;   
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'0',testName,"2E"); 

   MS_E_CH_BUSY_BUS <= '1';  -- Not busy any more
   wait for 30 ns; -- Setup time before clock hits
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns; 
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;   
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'1',testName,"2F"); 
   
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns; 
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;   
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'0',testName,"2G"); 
   check1(PS_1ST_I_O_CYCLE_CONTROL,'1',testName,"2H");

   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns; 
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;   
   check1(PS_1ST_I_O_CYCLE_CONTROL,'1',testName,"2H");

   check1(MS_NOT_1401_CARD_OR_PRTR_MODE,'1',testName,"2I");
   PS_1ST_CLOCK_PULSE_1 <= '1';
   wait for 30 ns;
   check1(MS_NOT_1401_CARD_OR_PRTR_MODE,'1',testName,"2J");
   PS_1ST_CLOCK_PULSE_1 <= '0';
   
      -- Reset with LGD
   
   PS_1401_READ_TRIGGER <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_D_1 <= '1';
   PS_OP_REG_1_BIT <= '0';   

   -- Test: Hold of the 1st Cycle with an E Ch Condition
   
   check1(MS_1401_PUNCH_PRINT_ERROR,'1',testName,"3A");
   PS_E_CH_CONDITION <= '1';
   PS_1401_I_O_CK_STOP_SW <= '1';
   wait for 30 ns;
   check1(MS_1401_PUNCH_PRINT_ERROR,'1',testName,"3B");
   
   PS_1401_PRINT_TRIGGER <= '1';
   wait for 30 ns;
   check1(MS_1401_PRINT,'1',testName,"3C");
   PS_1401_PRINT_TRIGGER <= '0';
   PS_OP_REG_2_BIT <= '1';
   wait for 30 ns;
   check1(MS_1401_PRINT,'1',testName,"3D");
   PS_1401_PRINT_TRIGGER <= '1';
   wait for 30 ns;
   check1(MS_1401_PRINT,'0',testName,"3E");
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'0',testName,"3F");   
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns;  -- Sets PRINT RD PCH Trigger, triggers SS
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;
   wait for 6 us;  -- SS expires (Don't know what this is for)
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns;  -- Sets Card PR Err Sample, Which resets PRINT RD PCH Latch
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;   
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'1',testName,"3G");
   check1(MS_1401_CARD_PR_ERR_SAMPLE,'0',testName,"3H");
   
   -- 1401 Punch Print Error should be set
   
   check1(MS_1401_PUNCH_PRINT_ERROR,'0',testName,"3I");

   -- And it should keep 1st Cycle from setting
   
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns; 
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;   
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns; 
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;   
      
   check1(PS_1ST_I_O_CYCLE_CONTROL,'0',testName,"3J");
   check1(MS_1ST_I_O_CYCLE_CONTROL,'1',testName,"3K");

   -- Remove the condition, and things should proceed
   
   PS_E_CH_CONDITION <= '0';
   wait for 30 ns;
   check1(MS_1401_PUNCH_PRINT_ERROR,'1',testName,"3L");
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns; 
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;   
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'0',testName,"3M");
   check1(MS_1401_CARD_PR_ERR_SAMPLE,'1',testName,"3N");
   check1(PS_1ST_I_O_CYCLE_CONTROL,'1',testName,"3O");
   check1(MS_1ST_I_O_CYCLE_CONTROL,'0',testName,"3P");
   
   -- Reset with LGD
   
   PS_1401_PRINT_TRIGGER <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_D_1 <= '1';
   PS_OP_REG_2_BIT <= '0';
 
   -- Test the punch, as well -- not quite as thoroughly

   PS_1401_PUNCH_TRIGGER <= '1';
   PS_OP_REG_4_BIT <= '0';
   wait for 30 ns;
   check1(MS_1401_PUNCH,'1',testName,"4A");
   PS_OP_REG_4_BIT <= '1';
   wait for 30 ns;
   check1(MS_1401_PUNCH,'0',testName,"4B");
   wait for 30 ns;
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'0',testName,"4C");   
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns;  -- Sets PRINT RD PCH Trigger, triggers SS
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;
   wait for 6 us;  -- SS expires (Don't know what this is for)
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns;  -- Sets Card PR Err Sample, Which resets PRINT RD PCH Latch
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;   
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'1',testName,"4D");
   check1(MS_1401_CARD_PR_ERR_SAMPLE,'0',testName,"4E");
   
   PS_1ST_CLOCK_PULSE_CLAMPED <= '1';   
   wait for 30 ns; 
   PS_1ST_CLOCK_PULSE_CLAMPED <= '0';
   wait for 90 ns;   
   check1(PS_1401_CARD_PR_ERR_SAMPLE,'0',testName,"4F");
   check1(MS_1401_CARD_PR_ERR_SAMPLE,'1',testName,"4G");
   check1(PS_1ST_I_O_CYCLE_CONTROL,'1',testName,"4H");
   check1(MS_1ST_I_O_CYCLE_CONTROL,'0',testName,"4I");

   check1(MS_NOT_1401_CARD_OR_PRTR_MODE,'1',testName,"4J");
   PS_1ST_CLOCK_PULSE_1 <= '1';
   wait for 30 ns;
   check1(MS_NOT_1401_CARD_OR_PRTR_MODE,'1',testName,"4K");
   PS_1ST_CLOCK_PULSE_1 <= '0';

   -- Reset again

   PS_1401_PUNCH_TRIGGER <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_D_1 <= '1';
   PS_OP_REG_4_BIT <= '0';
    
   PS_1401_I_O_CK_STOP_SW <= '0';
   PS_1401_CARD_PRINT_IN_PROC <= '1';
   PS_E_CH_CHECK <= '1';
   PS_E_CH_SECOND_SAMPLE_B <= '1';
   wait for 30 ns;
   check1(MS_1401_CARD_PRINT_ERROR,'1',testName,"5A");
   PS_1401_I_O_CK_STOP_SW <= '1';
   PS_1401_CARD_PRINT_IN_PROC <= '0';
   wait for 30 ns;
   check1(MS_1401_CARD_PRINT_ERROR,'1',testName,"5B");
   PS_1401_CARD_PRINT_IN_PROC <= '1';
   PS_E_CH_CHECK <= '0';
   wait for 30 ns;
   check1(MS_1401_CARD_PRINT_ERROR,'1',testName,"5C");
   PS_E_CH_CHECK <= '1';
   PS_E_CH_SECOND_SAMPLE_B <= '0';
   wait for 30 ns;
   check1(MS_1401_CARD_PRINT_ERROR,'1',testName,"5D");
   PS_E_CH_SECOND_SAMPLE_B <= '1';
   wait for 30 ns;
   check1(MS_1401_CARD_PRINT_ERROR,'0',testName,"5E");
   PS_1401_I_O_CK_STOP_SW <= '0';
   PS_1401_CARD_PRINT_IN_PROC <= '0';
   PS_E_CH_CHECK <= '0';
   PS_E_CH_SECOND_SAMPLE_B <= '0';
   
   

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
