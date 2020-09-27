-- Test Bench VHDL for IBM SMS ALD page 15.63.03.1
-- Title: F CH REGISTER TRANSFER CTRLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/26/2020 7:28:59 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_63_03_1_F_CH_REGISTER_TRANSFER_CTRLS_tb is
end ALD_15_63_03_1_F_CH_REGISTER_TRANSFER_CTRLS_tb;

architecture behavioral of ALD_15_63_03_1_F_CH_REGISTER_TRANSFER_CTRLS_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_15_63_03_1_F_CH_REGISTER_TRANSFER_CTRLS
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MC_TAPE_WRITE_STROBE:	 in STD_LOGIC;
		PS_F_CH_SELECT_TAPE:	 in STD_LOGIC;
		MC_TAPE_READ_STROBE:	 in STD_LOGIC;
		MC_1301_STROBE_F_CH:	 in STD_LOGIC;
		MS_F_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		PS_F_CH_INPUT_MODE:	 in STD_LOGIC;
		MC_SET_FCH_STROB_TR_E_FR_FEATS:	 in STD_LOGIC;
		TW_SET_FCH_STROB_TR_E_FR_FEATS:	 in STD_LOGIC;
		MC_1405_STROBE_F_CH:	 in STD_LOGIC;
		PS_F_CH_OUTPUT_MODE:	 in STD_LOGIC;
		PS_SET_F1_REG:	 in STD_LOGIC;
		MS_F_CH_RESET_1:	 in STD_LOGIC;
		PS_F2_REG_FULL:	 in STD_LOGIC;
		PS_RESET_F2_FULL_LATCH:	 in STD_LOGIC;
		MS_F1_REG_FULL:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_CLAMPED_A:	 in STD_LOGIC;
		MS_F_CH_STROBE_TRIGGER:	 out STD_LOGIC;
		PS_F_CH_STROBE_TRIGGER:	 out STD_LOGIC;
		MS_F_CH_CLOCKED_STROBE_OUTPUT:	 out STD_LOGIC;
		MS_F_CH_CLOCKED_STROBE_INPUT:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MC_TAPE_WRITE_STROBE: STD_LOGIC := '1';
	signal PS_F_CH_SELECT_TAPE: STD_LOGIC := '0';
	signal MC_TAPE_READ_STROBE: STD_LOGIC := '1';
	signal MC_1301_STROBE_F_CH: STD_LOGIC := '1';
	signal MS_F_CH_SELECT_UNIT_F: STD_LOGIC := '1';
	signal PS_F_CH_INPUT_MODE: STD_LOGIC := '0';
	signal MC_SET_FCH_STROB_TR_E_FR_FEATS: STD_LOGIC := '1';
	signal TW_SET_FCH_STROB_TR_E_FR_FEATS: STD_LOGIC := '0';
	signal MC_1405_STROBE_F_CH: STD_LOGIC := '1';
	signal PS_F_CH_OUTPUT_MODE: STD_LOGIC := '0';
	signal PS_SET_F1_REG: STD_LOGIC := '0';
	signal MS_F_CH_RESET_1: STD_LOGIC := '1';
	signal PS_F2_REG_FULL: STD_LOGIC := '0';
	signal PS_RESET_F2_FULL_LATCH: STD_LOGIC := '0';
	signal MS_F1_REG_FULL: STD_LOGIC := '1';
	signal PS_2ND_CLOCK_PULSE_CLAMPED_A: STD_LOGIC := '0';

	-- Outputs

	signal MS_F_CH_STROBE_TRIGGER: STD_LOGIC;
	signal PS_F_CH_STROBE_TRIGGER: STD_LOGIC;
	signal MS_F_CH_CLOCKED_STROBE_OUTPUT: STD_LOGIC;
	signal MS_F_CH_CLOCKED_STROBE_INPUT: STD_LOGIC;

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

	UUT: ALD_15_63_03_1_F_CH_REGISTER_TRANSFER_CTRLS port map(
		FPGA_CLK => FPGA_CLK,
		MC_TAPE_WRITE_STROBE => MC_TAPE_WRITE_STROBE,
		PS_F_CH_SELECT_TAPE => PS_F_CH_SELECT_TAPE,
		MC_TAPE_READ_STROBE => MC_TAPE_READ_STROBE,
		MC_1301_STROBE_F_CH => MC_1301_STROBE_F_CH,
		MS_F_CH_SELECT_UNIT_F => MS_F_CH_SELECT_UNIT_F,
		PS_F_CH_INPUT_MODE => PS_F_CH_INPUT_MODE,
		MC_SET_FCH_STROB_TR_E_FR_FEATS => MC_SET_FCH_STROB_TR_E_FR_FEATS,
		TW_SET_FCH_STROB_TR_E_FR_FEATS => TW_SET_FCH_STROB_TR_E_FR_FEATS,
		MC_1405_STROBE_F_CH => MC_1405_STROBE_F_CH,
		PS_F_CH_OUTPUT_MODE => PS_F_CH_OUTPUT_MODE,
		PS_SET_F1_REG => PS_SET_F1_REG,
		MS_F_CH_RESET_1 => MS_F_CH_RESET_1,
		PS_F2_REG_FULL => PS_F2_REG_FULL,
		PS_RESET_F2_FULL_LATCH => PS_RESET_F2_FULL_LATCH,
		MS_F1_REG_FULL => MS_F1_REG_FULL,
		PS_2ND_CLOCK_PULSE_CLAMPED_A => PS_2ND_CLOCK_PULSE_CLAMPED_A,
		MS_F_CH_STROBE_TRIGGER => MS_F_CH_STROBE_TRIGGER,
		PS_F_CH_STROBE_TRIGGER => PS_F_CH_STROBE_TRIGGER,
		MS_F_CH_CLOCKED_STROBE_OUTPUT => MS_F_CH_CLOCKED_STROBE_OUTPUT,
		MS_F_CH_CLOCKED_STROBE_INPUT => MS_F_CH_CLOCKED_STROBE_INPUT);

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
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;

   begin

   -- Your test bench code

   testName := "15.49.04.1        ";

   for tt in 0 to 2**23 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      i := tv(8);
      j := tv(9);
      k := tv(10);
      l := tv(11);
      m := tv(12);
      n := tv(13);
      o := tv(14);
      p := tv(15);
      q := tv(16);
      r := tv(17);
      s := tv(18);
      t := tv(19);
      u := tv(20);
      v := tv(21);
      w := tv(22);
      x := tv(23);
      y := tv(24);
      z := tv(25);

      
      wait for 30 ns;
      
      
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
