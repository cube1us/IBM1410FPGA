-- Test Bench VHDL for IBM SMS ALD page 15.63.01.1
-- Title: F CHANNEL I-O STORAGE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/26/2020 9:54:53 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_63_01_1_F_CHANNEL_I_O_STORAGE_tb is
end ALD_15_63_01_1_F_CHANNEL_I_O_STORAGE_tb;

architecture behavioral of ALD_15_63_01_1_F_CHANNEL_I_O_STORAGE_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_15_63_01_1_F_CHANNEL_I_O_STORAGE
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_F_CH_STK_SEL_OP_CODE_STAR_1414_STAR:	 in STD_LOGIC;
		PS_I_RING_11_TIME:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_F_CH_FILE_ADDRESS_TRF:	 in STD_LOGIC;
		PS_M_OR_L_OP_CODES:	 in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK:	 in STD_LOGIC;
		MS_F_CH_RESET_1:	 in STD_LOGIC;
		PS_DOLLAR_SIGN_OR_R_SYMBOL_OP_MOD:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		PS_F_CH_WRITE_LATCH_STAR_1414_STAR:	 in STD_LOGIC;
		PS_W_OR_X_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_I_RING_12_TIME_STAR_1311_STAR:	 in STD_LOGIC;
		MS_INPUT_MODE_F_CH:	 out STD_LOGIC;
		PS_F_CH_INPUT_MODE:	 out STD_LOGIC;
		MS_F_CH_INPUT_MODE_STAR_1301_STAR:	 out STD_LOGIC;
		MC_INPUT_OP_TO_1405_STAR_F_CH:	 out STD_LOGIC;
		MC_INPUT_OP_TO_1301_STAR_F_CH:	 out STD_LOGIC;
		MS_F_CH_INPUT_MODE:	 out STD_LOGIC;
		PS_F_CH_OUTPUT_MODE:	 out STD_LOGIC;
		MC_OUTPUT_OP_TO_1405_STAR_F_CH:	 out STD_LOGIC;
		MC_OUTPUT_OP_TO_1301_STAR_F_CH:	 out STD_LOGIC;
		MS_F_CH_INPUT_MODE_STAR_1311_STAR:	 out STD_LOGIC;
		LAMP_15A1E15:	 out STD_LOGIC;
		LAMP_15A1F15:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_F_CH_STK_SEL_OP_CODE_STAR_1414_STAR: STD_LOGIC := '1';
	signal PS_I_RING_11_TIME: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_F_1: STD_LOGIC := '0';
	signal MS_F_CH_FILE_ADDRESS_TRF: STD_LOGIC := '1';
	signal PS_M_OR_L_OP_CODES: STD_LOGIC := '0';
	signal PS_LOZENGE_OR_ASTERISK: STD_LOGIC := '0';
	signal MS_F_CH_RESET_1: STD_LOGIC := '1';
	signal PS_DOLLAR_SIGN_OR_R_SYMBOL_OP_MOD: STD_LOGIC := '0';
	signal PS_2ND_CLOCK_PULSE_2: STD_LOGIC := '0';
	signal PS_F_CH_WRITE_LATCH_STAR_1414_STAR: STD_LOGIC := '0';
	signal PS_W_OR_X_SYMBOL_OP_MODIFIER: STD_LOGIC := '0';
	signal PS_I_RING_12_TIME_STAR_1311_STAR: STD_LOGIC := '0';

	-- Outputs

	signal MS_INPUT_MODE_F_CH: STD_LOGIC;
	signal PS_F_CH_INPUT_MODE: STD_LOGIC;
	signal MS_F_CH_INPUT_MODE_STAR_1301_STAR: STD_LOGIC;
	signal MC_INPUT_OP_TO_1405_STAR_F_CH: STD_LOGIC;
	signal MC_INPUT_OP_TO_1301_STAR_F_CH: STD_LOGIC;
	signal MS_F_CH_INPUT_MODE: STD_LOGIC;
	signal PS_F_CH_OUTPUT_MODE: STD_LOGIC;
	signal MC_OUTPUT_OP_TO_1405_STAR_F_CH: STD_LOGIC;
	signal MC_OUTPUT_OP_TO_1301_STAR_F_CH: STD_LOGIC;
	signal MS_F_CH_INPUT_MODE_STAR_1311_STAR: STD_LOGIC;
	signal LAMP_15A1E15: STD_LOGIC;
	signal LAMP_15A1F15: STD_LOGIC;

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

	UUT: ALD_15_63_01_1_F_CHANNEL_I_O_STORAGE port map(
		FPGA_CLK => FPGA_CLK,
		MS_F_CH_STK_SEL_OP_CODE_STAR_1414_STAR => MS_F_CH_STK_SEL_OP_CODE_STAR_1414_STAR,
		PS_I_RING_11_TIME => PS_I_RING_11_TIME,
		PS_LOGIC_GATE_F_1 => PS_LOGIC_GATE_F_1,
		MS_F_CH_FILE_ADDRESS_TRF => MS_F_CH_FILE_ADDRESS_TRF,
		PS_M_OR_L_OP_CODES => PS_M_OR_L_OP_CODES,
		PS_LOZENGE_OR_ASTERISK => PS_LOZENGE_OR_ASTERISK,
		MS_F_CH_RESET_1 => MS_F_CH_RESET_1,
		PS_DOLLAR_SIGN_OR_R_SYMBOL_OP_MOD => PS_DOLLAR_SIGN_OR_R_SYMBOL_OP_MOD,
		PS_2ND_CLOCK_PULSE_2 => PS_2ND_CLOCK_PULSE_2,
		PS_F_CH_WRITE_LATCH_STAR_1414_STAR => PS_F_CH_WRITE_LATCH_STAR_1414_STAR,
		PS_W_OR_X_SYMBOL_OP_MODIFIER => PS_W_OR_X_SYMBOL_OP_MODIFIER,
		PS_I_RING_12_TIME_STAR_1311_STAR => PS_I_RING_12_TIME_STAR_1311_STAR,
		MS_INPUT_MODE_F_CH => MS_INPUT_MODE_F_CH,
		PS_F_CH_INPUT_MODE => PS_F_CH_INPUT_MODE,
		MS_F_CH_INPUT_MODE_STAR_1301_STAR => MS_F_CH_INPUT_MODE_STAR_1301_STAR,
		MC_INPUT_OP_TO_1405_STAR_F_CH => MC_INPUT_OP_TO_1405_STAR_F_CH,
		MC_INPUT_OP_TO_1301_STAR_F_CH => MC_INPUT_OP_TO_1301_STAR_F_CH,
		MS_F_CH_INPUT_MODE => MS_F_CH_INPUT_MODE,
		PS_F_CH_OUTPUT_MODE => PS_F_CH_OUTPUT_MODE,
		MC_OUTPUT_OP_TO_1405_STAR_F_CH => MC_OUTPUT_OP_TO_1405_STAR_F_CH,
		MC_OUTPUT_OP_TO_1301_STAR_F_CH => MC_OUTPUT_OP_TO_1301_STAR_F_CH,
		MS_F_CH_INPUT_MODE_STAR_1311_STAR => MS_F_CH_INPUT_MODE_STAR_1311_STAR,
		LAMP_15A1E15 => LAMP_15A1E15,
		LAMP_15A1F15 => LAMP_15A1F15);

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
   variable b,c,d,e,f,g,i,k,m,n,o,p: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;
   variable lin, lout: std_logic;

   begin

   -- Your test bench code

   testName := "15.63.01.1        ";

   for tt in 0 to 2**11 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      -- a := tv(0);
      b := tv(0);
      c := tv(1);
      d := tv(2);
      e := tv(3);
      f := tv(4);
      g := tv(5);
      -- h := tv(6);
      i := tv(6);
      -- j := tv(7);
      k := tv(7);
      -- l := tv(9);
      m := tv(8);
      o := tv(9);
      p := tv(10);
            
      -- Can't have 1311 recover mode if special case writes?
      
      
      g1 := b and c and e and f;
      g2 := g1 and d and i;
      lin := g2 or p;
      
      g3 := g1 and o and i;      
      lout := g3 or k;
      
      -- First, reset the latches each time
      
      MS_F_CH_RESET_1 <= '0';
      wait for 30 ns;
      MS_F_CH_RESET_1 <= '1';
      wait for 30 ns;

      PS_LOZENGE_OR_ASTERISK <= b;
      PS_M_OR_L_OP_CODES <= c;
      PS_DOLLAR_SIGN_OR_R_SYMBOL_OP_MOD <= d;
      PS_I_RING_11_TIME <= e;
      PS_LOGIC_GATE_F_1 <= f;
      MS_F_CH_FILE_ADDRESS_TRF <= not g;
      PS_2ND_CLOCK_PULSE_2 <= i;
      PS_F_CH_WRITE_LATCH_STAR_1414_STAR <= k;
      PS_W_OR_X_SYMBOL_OP_MODIFIER <= o;
      MS_F_CH_STK_SEL_OP_CODE_STAR_1414_STAR <= not p;
      PS_I_RING_12_TIME_STAR_1311_STAR <= m;
      
      wait for 30 ns;
     
      check1(MC_INPUT_OP_TO_1405_STAR_F_CH,not lin,testName,"-C Input Op To 1405");          
      check1(MC_INPUT_OP_TO_1301_STAR_F_CH,not lin,testName,"-C Input Op To 1301");
      check1(LAMP_15A1E15,lin,testName,"LAMP CH 1 READ");
      check1(PS_F_CH_INPUT_MODE,lin and not g,testname,"+S Input Mode");          
      check1(MS_F_CH_INPUT_MODE,not PS_F_CH_INPUT_MODE,testname,"-S Input Mode"); 
      check1(MS_INPUT_MODE_F_CH,not lin,testname,"-S Input Mode F Ch"); 
      check1(MS_F_CH_INPUT_MODE_STAR_1301_STAR,not PS_F_CH_INPUT_MODE,testname,"-S Input Mode *1301*"); 
      
      check1(PS_F_CH_OUTPUT_MODE,lout or g,testName,"+PS F CH OUTPUT MODE");
      check1(MC_OUTPUT_OP_TO_1301_STAR_F_CH,not lout,testName,"-C Output Op To 1301");         
      check1(MC_OUTPUT_OP_TO_1405_STAR_F_CH,not lout,testName,"-C Output Op To 1405");         
      check1(LAMP_15A1F15,lout,testName,"LAMP CH 1 WRITE");
      
      check1(MS_F_CH_INPUT_MODE_STAR_1311_STAR,not(PS_F_CH_INPUT_MODE and not m),testName,
         "-S F Ch Input Mode 1311");

      -- Have to reset variables so reset for next round works...
      
      PS_LOZENGE_OR_ASTERISK <= '0';
      PS_M_OR_L_OP_CODES <= '0';
      PS_DOLLAR_SIGN_OR_R_SYMBOL_OP_MOD <= '0';
      PS_I_RING_11_TIME <= '0';
      PS_LOGIC_GATE_F_1 <= '0';
      MS_F_CH_FILE_ADDRESS_TRF <= '1';
      PS_2ND_CLOCK_PULSE_2 <= '0';
      PS_W_OR_X_SYMBOL_OP_MODIFIER <= '0';
      MS_F_CH_STK_SEL_OP_CODE_STAR_1414_STAR <= '1';
      PS_F_CH_WRITE_LATCH_STAR_1414_STAR <= '0';
      PS_I_RING_12_TIME_STAR_1311_STAR <= '0';

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
