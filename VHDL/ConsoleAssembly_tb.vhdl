-- Test BenchVHDL for IBM SMS ALD group ConsoleAssembly
-- Title: ConsoleAssembly
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 10/25/2020 10:18:39 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;
use WORK.BCD;

-- End of include from HDLTemplate.vhdl

entity ConsoleAssembly_tb is
end ConsoleAssembly_tb;

architecture behavioral of ConsoleAssembly_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ConsoleAssembly
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_CONS_ADDR_REG_EXIT_GATE: in STD_LOGIC;
		PS_CONS_B_DATA_CH_GATE: in STD_LOGIC;
		PS_CONS_E2_REG_GATE: in STD_LOGIC;
		MS_SPECIAL_CHAR_A_C_E_I: in STD_LOGIC;
		MS_SPECIAL_CHAR_R: in STD_LOGIC;
		MS_SPECIAL_CHAR_POUND: in STD_LOGIC;
		MS_SPECIAL_CHAR_S: in STD_LOGIC;
		MS_SPECIAL_CHAR_C: in STD_LOGIC;
		MS_SPECIAL_CHAR_B: in STD_LOGIC;
		MS_SPECIAL_CHAR_E: in STD_LOGIC;
		MS_SPECIAL_CHAR_D: in STD_LOGIC;
		MS_SPECIAL_CHAR_I: in STD_LOGIC;
		PS_AR_CH_VC_GROUP_ONE: in STD_LOGIC;
		PS_AR_CH_VC_GROUP_TWO: in STD_LOGIC;
		PS_ASSEMBLY_CH_C_CHAR_BIT: in STD_LOGIC;
		PS_B_CH_WM_BIT_1: in STD_LOGIC;
		PS_OP_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_OP_MOD_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_AR_EXIT_CH_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_CH_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_A_DATA_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_ASSEMBLY_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		PS_E_CH_U_NU_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_E_CH_U_SEL_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_F_CH_U_NU_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_F_CH_U_SEL_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_E2_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_CONS_MX_POS_BUS: in STD_LOGIC_VECTOR (35 downTo 19);
		PS_AR_CH_STAR_TRANSLATOR_STAR_BUS: in STD_LOGIC_VECTOR (3 downTo 0);
		PS_CONS_OUTPUT_WM_BIT: out STD_LOGIC;
		PS_CONSOLE_OUTPUT_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_CONS_ADDR_REG_EXIT_GATE: STD_LOGIC := '0';
	signal PS_CONS_B_DATA_CH_GATE: STD_LOGIC := '0';
	signal PS_CONS_E2_REG_GATE: STD_LOGIC := '0';
	signal MS_SPECIAL_CHAR_A_C_E_I: STD_LOGIC := '1';
	signal MS_SPECIAL_CHAR_R: STD_LOGIC := '1';
	signal MS_SPECIAL_CHAR_POUND: STD_LOGIC := '1';
	signal MS_SPECIAL_CHAR_S: STD_LOGIC := '1';
	signal MS_SPECIAL_CHAR_C: STD_LOGIC := '1';
	signal MS_SPECIAL_CHAR_B: STD_LOGIC := '1';
	signal MS_SPECIAL_CHAR_E: STD_LOGIC := '1';
	signal MS_SPECIAL_CHAR_D: STD_LOGIC := '1';
	signal MS_SPECIAL_CHAR_I: STD_LOGIC := '1';
	signal PS_AR_CH_VC_GROUP_ONE: STD_LOGIC := '0';
	signal PS_AR_CH_VC_GROUP_TWO: STD_LOGIC := '0';
	signal PS_ASSEMBLY_CH_C_CHAR_BIT: STD_LOGIC := '0';
	signal PS_B_CH_WM_BIT_1: STD_LOGIC := '0';
	signal PS_OP_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_OP_MOD_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_AR_EXIT_CH_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_B_CH_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_A_DATA_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_ASSEMBLY_CH_BUS: STD_LOGIC_VECTOR (6 downTo 0) := "0000000";
	signal PS_E_CH_U_NU_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_E_CH_U_SEL_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_F_CH_U_NU_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_F_CH_U_SEL_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_E2_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_CONS_MX_POS_BUS: STD_LOGIC_VECTOR (35 downTo 19) := "00000000000000000";
	signal PS_AR_CH_STAR_TRANSLATOR_STAR_BUS: STD_LOGIC_VECTOR (3 downTo 0) := "0000";

	-- Outputs

	signal PS_CONS_OUTPUT_WM_BIT: STD_LOGIC;
	signal PS_CONSOLE_OUTPUT_BUS: STD_LOGIC_VECTOR (7 downTo 0);

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
      
procedure checkChar(
    checked: in STD_LOGIC_VECTOR(7 downto 0);
    val: in STD_LOGIC_VECTOR(7 downto 0);
    testname: in string;
    test: in string) is
    begin
       for thebit in 0 to 7 loop
         assert checked(thebit) = val(thebit) report
            testname & " (" & test & ") bit " & Integer'image(thebit) & " failed." severity failure; 
       end loop;
    end procedure;


   -- Your test bench declarations go here

-- END USER TEST BENCH DECLARATIONS
   

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ConsoleAssembly port map(
		FPGA_CLK => FPGA_CLK,
		PS_CONS_ADDR_REG_EXIT_GATE => PS_CONS_ADDR_REG_EXIT_GATE,
		PS_CONS_B_DATA_CH_GATE => PS_CONS_B_DATA_CH_GATE,
		PS_CONS_E2_REG_GATE => PS_CONS_E2_REG_GATE,
		MS_SPECIAL_CHAR_A_C_E_I => MS_SPECIAL_CHAR_A_C_E_I,
		MS_SPECIAL_CHAR_R => MS_SPECIAL_CHAR_R,
		MS_SPECIAL_CHAR_POUND => MS_SPECIAL_CHAR_POUND,
		MS_SPECIAL_CHAR_S => MS_SPECIAL_CHAR_S,
		MS_SPECIAL_CHAR_C => MS_SPECIAL_CHAR_C,
		MS_SPECIAL_CHAR_B => MS_SPECIAL_CHAR_B,
		MS_SPECIAL_CHAR_E => MS_SPECIAL_CHAR_E,
		MS_SPECIAL_CHAR_D => MS_SPECIAL_CHAR_D,
		MS_SPECIAL_CHAR_I => MS_SPECIAL_CHAR_I,
		PS_AR_CH_VC_GROUP_ONE => PS_AR_CH_VC_GROUP_ONE,
		PS_AR_CH_VC_GROUP_TWO => PS_AR_CH_VC_GROUP_TWO,
		PS_ASSEMBLY_CH_C_CHAR_BIT => PS_ASSEMBLY_CH_C_CHAR_BIT,
		PS_B_CH_WM_BIT_1 => PS_B_CH_WM_BIT_1,
		PS_OP_REG_BUS => PS_OP_REG_BUS,
		PS_OP_MOD_REG_BUS => PS_OP_MOD_REG_BUS,
		PS_AR_EXIT_CH_BUS => PS_AR_EXIT_CH_BUS,
		PS_B_CH_BUS => PS_B_CH_BUS,
		PS_A_DATA_REG_BUS => PS_A_DATA_REG_BUS,
		PS_ASSEMBLY_CH_BUS => PS_ASSEMBLY_CH_BUS,
		PS_E_CH_U_NU_REG_BUS => PS_E_CH_U_NU_REG_BUS,
		PS_E_CH_U_SEL_REG_BUS => PS_E_CH_U_SEL_REG_BUS,
		PS_F_CH_U_NU_REG_BUS => PS_F_CH_U_NU_REG_BUS,
		PS_F_CH_U_SEL_REG_BUS => PS_F_CH_U_SEL_REG_BUS,
		PS_E2_REG_BUS => PS_E2_REG_BUS,
		PS_CONS_MX_POS_BUS => PS_CONS_MX_POS_BUS,
		PS_AR_CH_STAR_TRANSLATOR_STAR_BUS => PS_AR_CH_STAR_TRANSLATOR_STAR_BUS,
		PS_CONS_OUTPUT_WM_BIT => PS_CONS_OUTPUT_WM_BIT,
		PS_CONSOLE_OUTPUT_BUS => PS_CONSOLE_OUTPUT_BUS);

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
   variable a,b,c,d,e,f,g,h,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;
   
   variable tc, tc2, results: std_logic_vector(7 downto 0);
   variable testChar: string(1 to 1) := "~";

   begin

   -- Your test bench code

   testName := "42.10.0%.1        ";

   -- First, test the special characters
   
   for BCD_CHAR in BCD.BCD loop
      tc := BCD.bcd_to_slv8_odd_parity(BCD_CHAR);
      

      case BCD_CHAR is
         when BCD.BCD_A =>
            testChar := "A";
            MS_SPECIAL_CHAR_A_C_E_I <= '0';            
         when BCD.BCD_C =>
            testChar := "C";
            MS_SPECIAL_CHAR_A_C_E_I <= '0';
            MS_SPECIAL_CHAR_C <= '0';
         when BCD.BCD_E =>
            testChar := "E";
            MS_SPECIAL_CHAR_A_C_E_I <= '0';
            MS_SPECIAL_CHAR_E <= '0';
         when BCD.BCD_I =>
            testChar := "I";
            MS_SPECIAL_CHAR_A_C_E_I <= '0';
            MS_SPECIAL_CHAR_I <= '0';
         when BCD.BCD_B =>
            testChar := "B";
            MS_SPECIAL_CHAR_B <= '0';
         when BCD.BCD_D =>
            testChar := "D";
            MS_SPECIAL_CHAR_D <= '0';
         when BCD.BCD_R =>
            testChar := "R";
            MS_SPECIAL_CHAR_R <= '0';
         when BCD.BCD_S =>
            testChar := "S";
            MS_SPECIAL_CHAR_S <= '0';
         when BCD.BCD_POUND =>
            testChar := "#";
            MS_SPECIAL_CHAR_POUND <= '0';                               
         when others => 
            testChar := "~";
            tc := "00000000";  -- No output for these         
      end case;

      wait for 30ns;
      
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;
      
      checkchar(results,tc,testName,"Console output special character: " & testChar);
            
      MS_SPECIAL_CHAR_A_C_E_I <= '1';
      MS_SPECIAL_CHAR_R <= '1';
      MS_SPECIAL_CHAR_POUND <= '1';
      MS_SPECIAL_CHAR_S <= '1';
      MS_SPECIAL_CHAR_C <= '1';
      MS_SPECIAL_CHAR_B <= '1';
      MS_SPECIAL_CHAR_E <= '1';
      MS_SPECIAL_CHAR_D <= '1';
      MS_SPECIAL_CHAR_I <= '1';
      wait for 10 ns;
            
   end loop;

   -- Next, test the address register exit channel (that would display IAR, AAR or BAR)

    PS_CONS_ADDR_REG_EXIT_GATE <= '1';         
   
   for tt in 0 to 31 loop
      tc := std_logic_vector(to_unsigned(tt,tc'Length));
      
      for tp in 0 to 3 loop
         tv := std_logic_vector(to_unsigned(tp,tv'Length));
         tc(HDL_A_BIT) := tv(0) and tv(1);
         tc(HDL_C_BIT) := tv(2);
         
         PS_AR_EXIT_CH_BUS <= tv(2) & "000" & tc(3 downto 0);
         PS_AR_CH_STAR_TRANSLATOR_STAR_BUS(HDL_4_BIT) <= tc(HDL_4_BIT);
         PS_AR_CH_VC_GROUP_ONE <= tv(0);
         PS_AR_CH_VC_GROUP_TWO <= tv(1);
         
         wait for 30 ns;
         
         results := PS_CONSOLE_OUTPUT_BUS;
         results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;
         
         checkChar(results,tc,testName,"Console Address Register Out");         
      end loop;
             
   end loop;
   
   PS_CONS_ADDR_REG_EXIT_GATE <= '0';
   PS_AR_CH_VC_GROUP_ONE <= '0';
   PS_AR_CH_VC_GROUP_TWO <= '0';
   
   -- Then the rest of the registers that are mostly similar
   
   for tt in 0 to 255 loop
      tc := std_logic_vector(to_unsigned(tt,tc'Length));

      -- A Data register

      PS_CONS_MX_POS_BUS(22) <= '1'; -- identifies character position in stop printout
      PS_A_DATA_REG_BUS <= tc;
      wait for 30 ns;      
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;      
      checkChar(results,tc,testName,"Console A Register Out");
      
      PS_CONS_MX_POS_BUS(22) <= '0';
      wait for 30 ns;  
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;          
      checkChar(results,"00000000",testName,"Console A Register Out Not Enabled");
      PS_A_DATA_REG_BUS <= "10101010";

      -- B Data register

      PS_CONS_B_DATA_CH_GATE <= '1'; -- Occurs at MX 23 and in other ways
      PS_B_CH_BUS <= tc;
      PS_B_CH_WM_BIT_1 <= tc(HDL_WM_BIT);
      wait for 30 ns;      
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;      
      checkChar(results,tc,testName,"Console B Register Out");
      
      PS_CONS_B_DATA_CH_GATE <= '0';
      wait for 30 ns;  
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;          
      checkChar(results,"00000000",testName,"Console B Register Out Not Enabled");
      PS_B_CH_BUS <= "01010101";

      -- Assembly Channel

      PS_CONS_MX_POS_BUS(24) <= '1'; -- identifies character position in stop printout
      PS_ASSEMBLY_CH_BUS <= tc(6 downto 0);
      PS_ASSEMBLY_CH_C_CHAR_BIT <= tc(HDL_C_BIT);
      wait for 30 ns;      
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;      
      checkChar(results,tc,testName,"Console Assembly Channel Out");
      
      PS_CONS_MX_POS_BUS(24) <= '0';
      wait for 30 ns;  
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;          
      checkChar(results,"00000000",testName,"Console Assembly Channel Out Not Enabled");
      PS_ASSEMBLY_CH_BUS <= "1100110";

      -- E2 Register (ordinary I/O)

      PS_CONS_E2_REG_GATE <= '1';
      PS_E2_REG_BUS <= tc;
      wait for 30 ns;      
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;      
      checkChar(results,tc,testName,"Console E2 Register Out");
      
      PS_CONS_E2_REG_GATE <= '0';
      wait for 30 ns;  
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;          
      checkChar(results,"00000000",testName,"Console E2 Register Out Not Enabled");
      PS_E2_REG_BUS <= "11101110";
      
      -- The rest do not use the WM bit
      
      -- Op Register      
      
      PS_CONS_MX_POS_BUS(19) <= '1'; -- identifies character position in stop printout
      PS_OP_REG_BUS <= tc;
      wait for 30 ns;      
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;
      tc2 := tc;
      tc2(HDL_WM_BIT) := '0';      
      checkChar(results,tc2,testName,"Console OP Register Out");
      
      PS_CONS_MX_POS_BUS(19) <= '0';
      wait for 30 ns;  
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;          
      checkChar(results,"00000000",testName,"Console OP Register Out Not Enabled");
      PS_OP_REG_BUS <= "11001100";

      -- Op Mod Register

      PS_CONS_MX_POS_BUS(20) <= '1';
      PS_OP_MOD_REG_BUS <= tc;
      wait for 30 ns;      
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;      
      tc2 := tc;
      tc2(HDL_WM_BIT) := '0';      
      checkChar(results,tc2,testName,"Console OP Register Out");
      
      PS_CONS_MX_POS_BUS(20) <= '0';
      wait for 30 ns;  
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;          
      checkChar(results,"00000000",testName,"Console OP Register Out Not Enabled");
      PS_OP_MOD_REG_BUS <= "00110011";

      -- E Ch Unit Select      
      
      PS_CONS_MX_POS_BUS(26) <= '1';
      PS_E_CH_U_SEL_REG_BUS <= tc;
      wait for 30 ns;      
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;
      tc2 := tc;
      tc2(HDL_WM_BIT) := '0';                  
      checkChar(results,tc2,testName,"Console E Ch Unit Select Register Out");
      
      PS_CONS_MX_POS_BUS(26) <= '0';
      wait for 30 ns;  
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;          
      checkChar(results,"00000000",testName,"Console E Ch Unit Select Register Out Not Enabled");
      PS_E_CH_U_SEL_REG_BUS <= "11100111";

      -- F Ch Unit Select      
      
      PS_CONS_MX_POS_BUS(28) <= '1';
      PS_F_CH_U_SEL_REG_BUS <= tc;
      wait for 30 ns;      
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;
      tc2 := tc;
      tc2(HDL_WM_BIT) := '0';                  
      checkChar(results,tc2,testName,"Console E Ch Unit Select Register Out");
      
      PS_CONS_MX_POS_BUS(28) <= '0';
      wait for 30 ns;  
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;          
      checkChar(results,"00000000",testName,"Console E Ch Unit Select Register Out Not Enabled");
      PS_F_CH_U_SEL_REG_BUS <= "11110000";

      -- Unit numbers have no WM, B or A bits
      
      -- E Ch Unit Number
           
      PS_CONS_MX_POS_BUS(27) <= '1';
      PS_E_CH_U_NU_REG_BUS <= tc;
      wait for 30 ns;      
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;
      tc2 := tc;
      tc2(HDL_WM_BIT) := '0';
      tc2(HDL_B_BIT) := '0';
      tc2(HDL_A_BIT) := '0';
      checkChar(results,tc2,testName,"Console E Ch Unit Select Register Out");
      
      PS_CONS_MX_POS_BUS(27) <= '0';
      wait for 30 ns;  
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;          
      checkChar(results,"00000000",testName,"Console E Ch Unit Select Register Out Not Enabled");
      PS_E_CH_U_NU_REG_BUS <= "10111101";

      -- F Ch Unit Number

      PS_CONS_MX_POS_BUS(29) <= '1';
      PS_F_CH_U_NU_REG_BUS <= tc;
      wait for 30 ns;      
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;
      tc2 := tc;
      tc2(HDL_WM_BIT) := '0';
      tc2(HDL_B_BIT) := '0';
      tc2(HDL_A_BIT) := '0';
      checkChar(results,tc2,testName,"Console F Ch Unit Select Register Out");
      
      PS_CONS_MX_POS_BUS(29) <= '0';
      wait for 30 ns;  
      results := PS_CONSOLE_OUTPUT_BUS;
      results(HDL_WM_BIT) := PS_CONS_OUTPUT_WM_BIT;          
      checkChar(results,"00000000",testName,"Console F Ch Unit Select Register Out Not Enabled");
      PS_F_CH_U_NU_REG_BUS <= "01000010";
      
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
   

END;
