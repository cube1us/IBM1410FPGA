-- Test Bench VHDL for IBM SMS ALD page 13.64.05.1
-- Title: F CHANNEL OPTIONAL UNIT SELECT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/5/2020 9:35:54 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_64_05_1_F_CHANNEL_OPTIONAL_UNIT_SELECT_tb is
end ALD_13_64_05_1_F_CHANNEL_OPTIONAL_UNIT_SELECT_tb;

architecture behavioral of ALD_13_64_05_1_F_CHANNEL_OPTIONAL_UNIT_SELECT_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_13_64_05_1_F_CHANNEL_OPTIONAL_UNIT_SELECT
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_F_CH_U_SEL_REG_NOT_8_BIT:	 in STD_LOGIC;
		PS_F_CH_SECOND_SAMPLE_B:	 in STD_LOGIC;
		PS_F_CH_U_SEL_REG_A_BIT:	 in STD_LOGIC;
		PS_F_CH_U_SEL_REG_NOT_1_BIT:	 in STD_LOGIC;
		PS_F_CH_U_SEL_REG_NOT_B_BIT:	 in STD_LOGIC;
		PS_F_CH_U_SEL_REG_NOT_2_BIT:	 in STD_LOGIC;
		PS_F_CH_U_SEL_REG_C_BIT:	 in STD_LOGIC;
		PS_F_CH_U_SEL_REG_NOT_C_BIT:	 in STD_LOGIC;
		PS_F_CH_U_SEL_REG_4_BIT:	 in STD_LOGIC;
		PS_F_CH_U_SEL_REG_NOT_4_BIT:	 in STD_LOGIC;
		PS_F_CH_U_SEL_REG_B_BIT:	 in STD_LOGIC;
		PS_F_CH_U_SEL_REG_2_BIT:	 in STD_LOGIC;
		PS_F_CH_ANY_STATUS_ON:	 in STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_A_DELAY:	 in STD_LOGIC;
		MS_F_CH_STATUS_SAMPLE_B_DELAY:	 in STD_LOGIC;
		MS_F_CH_RBCI_ON:	 in STD_LOGIC;
		PS_I_RING_5_TIME:	 in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK:	 in STD_LOGIC;
		MS_F_CH_SELECT_UNIT_U:	 out STD_LOGIC;
		PS_F_CH_U_SEL_A_DOT_NOT_8_DOT_NOT_1:	 out STD_LOGIC;
		PS_F_CH_SELECT_UNIT_U:	 out STD_LOGIC;
		PS_F_CH_SELECT_TAPE:	 out STD_LOGIC;
		MS_F_CH_SELECT_TAPE:	 out STD_LOGIC;
		PS_F_CH_SELECT_UNIT_B:	 out STD_LOGIC;
		MS_F_CH_SELECT_UNIT_B:	 out STD_LOGIC;
		MC_ODD_PARITY_TO_TAPE_STAR_F_CH:	 out STD_LOGIC;
		PS_F_CH_SELECT_UNIT_F_LN_2:	 out STD_LOGIC;
		PS_F_CH_SELECT_UNIT_F:	 out STD_LOGIC;
		MS_F_CH_SELECT_UNIT_F:	 out STD_LOGIC;
		MS_F_CH_SELECT_UNIT_F_A:	 out STD_LOGIC;
		MC_UNIT_SEL_F_F_CH_1301:	 out STD_LOGIC;
		MC_UNIT_SELECT_F_STAR_F_CH_1405:	 out STD_LOGIC;
		PS_F_CH_SEL_UNIT_F_LATCHED:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_F_CH_U_SEL_REG_NOT_8_BIT: STD_LOGIC := '0';
	signal PS_F_CH_SECOND_SAMPLE_B: STD_LOGIC := '0';
	signal PS_F_CH_U_SEL_REG_A_BIT: STD_LOGIC := '0';
	signal PS_F_CH_U_SEL_REG_NOT_1_BIT: STD_LOGIC := '0';
	signal PS_F_CH_U_SEL_REG_NOT_B_BIT: STD_LOGIC := '0';
	signal PS_F_CH_U_SEL_REG_NOT_2_BIT: STD_LOGIC := '0';
	signal PS_F_CH_U_SEL_REG_C_BIT: STD_LOGIC := '0';
	signal PS_F_CH_U_SEL_REG_NOT_C_BIT: STD_LOGIC := '0';
	signal PS_F_CH_U_SEL_REG_4_BIT: STD_LOGIC := '0';
	signal PS_F_CH_U_SEL_REG_NOT_4_BIT: STD_LOGIC := '0';
	signal PS_F_CH_U_SEL_REG_B_BIT: STD_LOGIC := '0';
	signal PS_F_CH_U_SEL_REG_2_BIT: STD_LOGIC := '0';
	signal PS_F_CH_ANY_STATUS_ON: STD_LOGIC := '0';
	signal PS_F_CH_STATUS_SAMPLE_A_DELAY: STD_LOGIC := '0';
	signal MS_F_CH_STATUS_SAMPLE_B_DELAY: STD_LOGIC := '1';
	signal MS_F_CH_RBCI_ON: STD_LOGIC := '1';
	signal PS_I_RING_5_TIME: STD_LOGIC := '0';
	signal PS_LOZENGE_OR_ASTERISK: STD_LOGIC := '0';

	-- Outputs

	signal MS_F_CH_SELECT_UNIT_U: STD_LOGIC;
	signal PS_F_CH_U_SEL_A_DOT_NOT_8_DOT_NOT_1: STD_LOGIC;
	signal PS_F_CH_SELECT_UNIT_U: STD_LOGIC;
	signal PS_F_CH_SELECT_TAPE: STD_LOGIC;
	signal MS_F_CH_SELECT_TAPE: STD_LOGIC;
	signal PS_F_CH_SELECT_UNIT_B: STD_LOGIC;
	signal MS_F_CH_SELECT_UNIT_B: STD_LOGIC;
	signal MC_ODD_PARITY_TO_TAPE_STAR_F_CH: STD_LOGIC;
	signal PS_F_CH_SELECT_UNIT_F_LN_2: STD_LOGIC;
	signal PS_F_CH_SELECT_UNIT_F: STD_LOGIC;
	signal MS_F_CH_SELECT_UNIT_F: STD_LOGIC;
	signal MS_F_CH_SELECT_UNIT_F_A: STD_LOGIC;
	signal MC_UNIT_SEL_F_F_CH_1301: STD_LOGIC;
	signal MC_UNIT_SELECT_F_STAR_F_CH_1405: STD_LOGIC;
	signal PS_F_CH_SEL_UNIT_F_LATCHED: STD_LOGIC;

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
   
   signal PS_F_CH_U_SEL_REG_BUS: STD_LOGIC_VECTOR(7 downto 0);

-- END USER TEST BENCH DECLARATIONS
   

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ALD_13_64_05_1_F_CHANNEL_OPTIONAL_UNIT_SELECT port map(
		FPGA_CLK => FPGA_CLK,
		PS_F_CH_U_SEL_REG_NOT_8_BIT => PS_F_CH_U_SEL_REG_NOT_8_BIT,
		PS_F_CH_SECOND_SAMPLE_B => PS_F_CH_SECOND_SAMPLE_B,
		PS_F_CH_U_SEL_REG_A_BIT => PS_F_CH_U_SEL_REG_A_BIT,
		PS_F_CH_U_SEL_REG_NOT_1_BIT => PS_F_CH_U_SEL_REG_NOT_1_BIT,
		PS_F_CH_U_SEL_REG_NOT_B_BIT => PS_F_CH_U_SEL_REG_NOT_B_BIT,
		PS_F_CH_U_SEL_REG_NOT_2_BIT => PS_F_CH_U_SEL_REG_NOT_2_BIT,
		PS_F_CH_U_SEL_REG_C_BIT => PS_F_CH_U_SEL_REG_C_BIT,
		PS_F_CH_U_SEL_REG_NOT_C_BIT => PS_F_CH_U_SEL_REG_NOT_C_BIT,
		PS_F_CH_U_SEL_REG_4_BIT => PS_F_CH_U_SEL_REG_4_BIT,
		PS_F_CH_U_SEL_REG_NOT_4_BIT => PS_F_CH_U_SEL_REG_NOT_4_BIT,
		PS_F_CH_U_SEL_REG_B_BIT => PS_F_CH_U_SEL_REG_B_BIT,
		PS_F_CH_U_SEL_REG_2_BIT => PS_F_CH_U_SEL_REG_2_BIT,
		PS_F_CH_ANY_STATUS_ON => PS_F_CH_ANY_STATUS_ON,
		PS_F_CH_STATUS_SAMPLE_A_DELAY => PS_F_CH_STATUS_SAMPLE_A_DELAY,
		MS_F_CH_STATUS_SAMPLE_B_DELAY => MS_F_CH_STATUS_SAMPLE_B_DELAY,
		MS_F_CH_RBCI_ON => MS_F_CH_RBCI_ON,
		PS_I_RING_5_TIME => PS_I_RING_5_TIME,
		PS_LOZENGE_OR_ASTERISK => PS_LOZENGE_OR_ASTERISK,
		MS_F_CH_SELECT_UNIT_U => MS_F_CH_SELECT_UNIT_U,
		PS_F_CH_U_SEL_A_DOT_NOT_8_DOT_NOT_1 => PS_F_CH_U_SEL_A_DOT_NOT_8_DOT_NOT_1,
		PS_F_CH_SELECT_UNIT_U => PS_F_CH_SELECT_UNIT_U,
		PS_F_CH_SELECT_TAPE => PS_F_CH_SELECT_TAPE,
		MS_F_CH_SELECT_TAPE => MS_F_CH_SELECT_TAPE,
		PS_F_CH_SELECT_UNIT_B => PS_F_CH_SELECT_UNIT_B,
		MS_F_CH_SELECT_UNIT_B => MS_F_CH_SELECT_UNIT_B,
		MC_ODD_PARITY_TO_TAPE_STAR_F_CH => MC_ODD_PARITY_TO_TAPE_STAR_F_CH,
		PS_F_CH_SELECT_UNIT_F_LN_2 => PS_F_CH_SELECT_UNIT_F_LN_2,
		PS_F_CH_SELECT_UNIT_F => PS_F_CH_SELECT_UNIT_F,
		MS_F_CH_SELECT_UNIT_F => MS_F_CH_SELECT_UNIT_F,
		MS_F_CH_SELECT_UNIT_F_A => MS_F_CH_SELECT_UNIT_F_A,
		MC_UNIT_SEL_F_F_CH_1301 => MC_UNIT_SEL_F_F_CH_1301,
		MC_UNIT_SELECT_F_STAR_F_CH_1405 => MC_UNIT_SELECT_F_STAR_F_CH_1405,
		PS_F_CH_SEL_UNIT_F_LATCHED => PS_F_CH_SEL_UNIT_F_LATCHED);

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

   PS_F_CH_U_SEL_REG_NOT_C_BIT <= NOT PS_F_CH_U_SEL_REG_BUS(7);
   PS_F_CH_U_SEL_REG_NOT_B_BIT <= NOT PS_F_CH_U_SEL_REG_BUS(5);
   PS_F_CH_U_SEL_REG_NOT_8_BIT <= NOT PS_F_CH_U_SEL_REG_BUS(3);
   PS_F_CH_U_SEL_REG_NOT_4_BIT <= NOT PS_F_CH_U_SEL_REG_BUS(2);
   PS_F_CH_U_SEL_REG_NOT_2_BIT <= NOT PS_F_CH_U_SEL_REG_BUS(1);
   PS_F_CH_U_SEL_REG_NOT_1_BIT <= NOT PS_F_CH_U_SEL_REG_BUS(0);
   
   PS_F_CH_U_SEL_REG_C_BIT <= PS_F_CH_U_SEL_REG_BUS(7);
   PS_F_CH_U_SEL_REG_B_BIT <= PS_F_CH_U_SEL_REG_BUS(5);
   PS_F_CH_U_SEL_REG_A_BIT <= PS_F_CH_U_SEL_REG_BUS(4);
   PS_F_CH_U_SEL_REG_4_BIT <= PS_F_CH_U_SEL_REG_BUS(2);
   PS_F_CH_U_SEL_REG_2_BIT <= PS_F_CH_U_SEL_REG_BUS(1);


uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;

   begin

   -- Your test bench code
   
   -- Reset the F Ch Sel Unit Latch
   
   testName := "13.64.05.1        "; 
            
   MS_F_CH_STATUS_SAMPLE_B_DELAY <= '0';
   wait for 30 ns;
   MS_F_CH_STATUS_SAMPLE_B_DELAY <= '1';
   PS_F_CH_U_SEL_REG_BUS <= "10000000";
   wait for 30 ns;
   
   check1(PS_F_CH_SELECT_UNIT_U,'0',testName,"SA");
   check1(MS_F_CH_SELECT_UNIT_U,'1',testName,"SB");
   check1(PS_F_CH_U_SEL_A_DOT_NOT_8_DOT_NOT_1,'0',testname,"SC");
   check1(PS_F_CH_SELECT_TAPE,'0',testName,"SD");
   check1(MS_F_CH_SELECT_TAPE,'1',testName,"SE");
   check1(PS_F_CH_SELECT_UNIT_B,'0',testName,"SF");
   check1(MS_F_CH_SELECT_UNIT_B,'1',testName,"SG");
   check1(MC_ODD_PARITY_TO_TAPE_STAR_F_CH,'1',testName,"SH");
   check1(PS_F_CH_SELECT_UNIT_F,'0',testName,"SI");
   check1(MS_F_CH_SELECT_UNIT_F,'1',testName,"SJ");
   check1(PS_F_CH_SELECT_UNIT_F_LN_2,'0',testName,"SK");
   check1(MS_F_CH_SELECT_UNIT_F_A,'1',testName,"SL");
   check1(MC_UNIT_SEL_F_F_CH_1301,'1',testName,"SM");
   check1(MC_UNIT_SELECT_F_STAR_F_CH_1405,'1',testName,"SN");
   check1(PS_F_CH_SEL_UNIT_F_LATCHED,'0',testName,"SO");
   
   PS_F_CH_U_SEL_REG_BUS <= BCD.bcd_to_slv8_odd_parity(BCD.BCD_U);
   wait for 30 ns;
   
   check1(PS_F_CH_SELECT_UNIT_U,'1',testName,"1A");
   check1(MS_F_CH_SELECT_UNIT_U,'0',testName,"1B");
   check1(PS_F_CH_U_SEL_A_DOT_NOT_8_DOT_NOT_1,'1',testname,"1C");
   check1(PS_F_CH_SELECT_TAPE,'1',testName,"1D");
   check1(MS_F_CH_SELECT_TAPE,'0',testName,"1E");
   check1(PS_F_CH_SELECT_UNIT_B,'0',testName,"1F");
   check1(MS_F_CH_SELECT_UNIT_B,'1',testName,"1G");
   check1(MC_ODD_PARITY_TO_TAPE_STAR_F_CH,'1',testName,"1H");
   check1(PS_F_CH_SELECT_UNIT_F,'0',testName,"1I");
   check1(MS_F_CH_SELECT_UNIT_F,'1',testName,"1J");
   check1(PS_F_CH_SELECT_UNIT_F_LN_2,'0',testName,"1K");
   check1(MS_F_CH_SELECT_UNIT_F_A,'1',testName,"1L");
   check1(MC_UNIT_SEL_F_F_CH_1301,'1',testName,"1M");
   check1(MC_UNIT_SELECT_F_STAR_F_CH_1405,'1',testName,"1N");
   check1(PS_F_CH_SEL_UNIT_F_LATCHED,'0',testName,"1O");
   
   PS_F_CH_U_SEL_REG_BUS <= BCD.bcd_to_slv8_odd_parity(BCD.BCD_B);
   wait for 30 ns;
   
   check1(PS_F_CH_SELECT_UNIT_U,'0',testName,"2A");
   check1(MS_F_CH_SELECT_UNIT_U,'1',testName,"2B");
   check1(PS_F_CH_U_SEL_A_DOT_NOT_8_DOT_NOT_1,'1',testname,"2C");
   check1(PS_F_CH_SELECT_TAPE,'1',testName,"2D");
   check1(MS_F_CH_SELECT_TAPE,'0',testName,"2E");
   check1(PS_F_CH_SELECT_UNIT_B,'1',testName,"2F");
   check1(MS_F_CH_SELECT_UNIT_B,'0',testName,"2G");
   check1(MC_ODD_PARITY_TO_TAPE_STAR_F_CH,'0',testName,"2H");
   check1(PS_F_CH_SELECT_UNIT_F,'0',testName,"2I");
   check1(MS_F_CH_SELECT_UNIT_F,'1',testName,"2J");
   check1(PS_F_CH_SELECT_UNIT_F_LN_2,'0',testName,"2K");
   check1(MS_F_CH_SELECT_UNIT_F_A,'1',testName,"2L");
   check1(MC_UNIT_SEL_F_F_CH_1301,'1',testName,"2M");
   check1(MC_UNIT_SELECT_F_STAR_F_CH_1405,'1',testName,"2N");
   check1(PS_F_CH_SEL_UNIT_F_LATCHED,'0',testName,"2O");

   PS_F_CH_U_SEL_REG_BUS <= BCD.bcd_to_slv8_odd_parity(BCD.BCD_F);
   wait for 30 ns;

   check1(PS_F_CH_SELECT_UNIT_U,'0',testName,"3A");
   check1(MS_F_CH_SELECT_UNIT_U,'1',testName,"3B");
   check1(PS_F_CH_U_SEL_A_DOT_NOT_8_DOT_NOT_1,'1',testname,"3C");
   check1(PS_F_CH_SELECT_TAPE,'0',testName,"3D");
   check1(MS_F_CH_SELECT_TAPE,'1',testName,"3E");
   check1(PS_F_CH_SELECT_UNIT_B,'0',testName,"3F");
   check1(MS_F_CH_SELECT_UNIT_B,'1',testName,"3G");
   check1(MC_ODD_PARITY_TO_TAPE_STAR_F_CH,'1',testName,"3H");
   check1(PS_F_CH_SELECT_UNIT_F,'1',testName,"3I");
   check1(MS_F_CH_SELECT_UNIT_F,'0',testName,"3J");
   check1(PS_F_CH_SELECT_UNIT_F_LN_2,'1',testName,"3K");
   check1(MS_F_CH_SELECT_UNIT_F_A,'0',testName,"3L");
   check1(MC_UNIT_SEL_F_F_CH_1301,'1',testName,"3M");
   check1(MC_UNIT_SELECT_F_STAR_F_CH_1405,'1',testName,"3N");
   check1(PS_F_CH_SEL_UNIT_F_LATCHED,'0',testName,"3O");
   
            -- Set the Unit F Latch
   
   PS_I_RING_5_TIME <= '1';
   wait for 30 ns;
   check1(PS_F_CH_SEL_UNIT_F_LATCHED,'0',testName,"+S F Latch 1");
   PS_LOZENGE_OR_ASTERISK <= '1';
   wait for 30 ns;
   check1(PS_F_CH_SEL_UNIT_F_LATCHED,'1',testName,"+S F Latch 2");
   -- Should stay latched
   PS_I_RING_5_TIME <= '0';
   PS_LOZENGE_OR_ASTERISK <= '0';
   wait for 30 ns;
   check1(PS_F_CH_SEL_UNIT_F_LATCHED,'1',testName,"+S F Latch 3");
   MS_F_CH_RBCI_ON <= '0';
   wait for 30 ns;
   check1(MC_UNIT_SEL_F_F_CH_1301,'1',testName,"-C F*1301 1");
   check1(MC_UNIT_SELECT_F_STAR_F_CH_1405,'1',testName,"-C F*1405 1");
   MS_F_CH_RBCI_ON <= '1';
   wait for 30 ns;
   check1(MC_UNIT_SEL_F_F_CH_1301,'0',testName,"-C F*1301 2");
   check1(MC_UNIT_SELECT_F_STAR_F_CH_1405,'0',testName,"-C F*1405 2");
               
   -- Reset the latch  ;)
   
   PS_F_CH_ANY_STATUS_ON <= '1';
   PS_F_CH_STATUS_SAMPLE_A_DELAY <= '1';
   wait for 30 ns;
   PS_F_CH_ANY_STATUS_ON <= '0';
   PS_F_CH_STATUS_SAMPLE_A_DELAY <= '0';


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