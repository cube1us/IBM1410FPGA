-- Test BenchVHDL for IBM SMS ALD group BDataReg
-- Title: BDataReg
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 10/18/2020 5:21:34 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity BDataReg_tb is
end BDataReg_tb;

architecture behavioral of BDataReg_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component BDataReg
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MY_RO_CHR_0: in STD_LOGIC;
		MY_REGEN_CHR_0: in STD_LOGIC;
		PY_B_DATA_REG_RESET_1: in STD_LOGIC;
		MY_RO_CHR_1: in STD_LOGIC;
		MY_REGEN_CHR_1: in STD_LOGIC;
		PY_B_DATA_REG_RESET_2: in STD_LOGIC;
		MY_RO_CHR_2: in STD_LOGIC;
		MY_REGEN_CHR_2: in STD_LOGIC;
		PY_B_DATA_REG_RESET_3: in STD_LOGIC;
		MY_RO_CHR_3: in STD_LOGIC;
		MY_REGEN_CHR_3: in STD_LOGIC;
		PY_B_DATA_REG_RESET_4: in STD_LOGIC;
		MY_SA_CHAR_0_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MY_SA_CHAR_1_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MY_SA_CHAR_2_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MY_SA_CHAR_3_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_DATA_REG_STAR_0_STAR_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MY_INH_CHAR_0_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_DATA_REG_STAR_1_STAR_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MY_INH_CHAR_1_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_DATA_REG_STAR_2_STAR_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MY_INH_CHAR_2_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_DATA_REG_STAR_3_STAR_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MY_INH_CHAR_3_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MY_RO_CHR_0: STD_LOGIC := '1';
	signal MY_REGEN_CHR_0: STD_LOGIC := '1';
	signal PY_B_DATA_REG_RESET_1: STD_LOGIC := '0';
	signal MY_RO_CHR_1: STD_LOGIC := '1';
	signal MY_REGEN_CHR_1: STD_LOGIC := '1';
	signal PY_B_DATA_REG_RESET_2: STD_LOGIC := '0';
	signal MY_RO_CHR_2: STD_LOGIC := '1';
	signal MY_REGEN_CHR_2: STD_LOGIC := '1';
	signal PY_B_DATA_REG_RESET_3: STD_LOGIC := '0';
	signal MY_RO_CHR_3: STD_LOGIC := '1';
	signal MY_REGEN_CHR_3: STD_LOGIC := '1';
	signal PY_B_DATA_REG_RESET_4: STD_LOGIC := '0';
	signal MY_SA_CHAR_0_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "11111111";
	signal MY_SA_CHAR_1_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "11111111";
	signal MY_SA_CHAR_2_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "11111111";
	signal MY_SA_CHAR_3_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "11111111";

	-- Outputs

	signal PS_B_DATA_REG_STAR_0_STAR_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal MY_INH_CHAR_0_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal PS_B_DATA_REG_STAR_1_STAR_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal MY_INH_CHAR_1_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal PS_B_DATA_REG_STAR_2_STAR_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal MY_INH_CHAR_2_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal PS_B_DATA_REG_STAR_3_STAR_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal MY_INH_CHAR_3_BUS: STD_LOGIC_VECTOR (7 downTo 0);

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

	UUT: BDataReg port map(
		FPGA_CLK => FPGA_CLK,
		MY_RO_CHR_0 => MY_RO_CHR_0,
		MY_REGEN_CHR_0 => MY_REGEN_CHR_0,
		PY_B_DATA_REG_RESET_1 => PY_B_DATA_REG_RESET_1,
		MY_RO_CHR_1 => MY_RO_CHR_1,
		MY_REGEN_CHR_1 => MY_REGEN_CHR_1,
		PY_B_DATA_REG_RESET_2 => PY_B_DATA_REG_RESET_2,
		MY_RO_CHR_2 => MY_RO_CHR_2,
		MY_REGEN_CHR_2 => MY_REGEN_CHR_2,
		PY_B_DATA_REG_RESET_3 => PY_B_DATA_REG_RESET_3,
		MY_RO_CHR_3 => MY_RO_CHR_3,
		MY_REGEN_CHR_3 => MY_REGEN_CHR_3,
		PY_B_DATA_REG_RESET_4 => PY_B_DATA_REG_RESET_4,
		MY_SA_CHAR_0_BUS => MY_SA_CHAR_0_BUS,
		MY_SA_CHAR_1_BUS => MY_SA_CHAR_1_BUS,
		MY_SA_CHAR_2_BUS => MY_SA_CHAR_2_BUS,
		MY_SA_CHAR_3_BUS => MY_SA_CHAR_3_BUS,
		PS_B_DATA_REG_STAR_0_STAR_BUS => PS_B_DATA_REG_STAR_0_STAR_BUS,
		MY_INH_CHAR_0_BUS => MY_INH_CHAR_0_BUS,
		PS_B_DATA_REG_STAR_1_STAR_BUS => PS_B_DATA_REG_STAR_1_STAR_BUS,
		MY_INH_CHAR_1_BUS => MY_INH_CHAR_1_BUS,
		PS_B_DATA_REG_STAR_2_STAR_BUS => PS_B_DATA_REG_STAR_2_STAR_BUS,
		MY_INH_CHAR_2_BUS => MY_INH_CHAR_2_BUS,
		PS_B_DATA_REG_STAR_3_STAR_BUS => PS_B_DATA_REG_STAR_3_STAR_BUS,
		MY_INH_CHAR_3_BUS => MY_INH_CHAR_3_BUS);

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
   variable tv, tv0, tv1, tv2, tv3: std_logic_vector(7 downto 0);
   variable a,b,c,d,e,f,g,h,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;
   variable readout, regen: std_logic;
   variable readdata, inhdata: std_logic_vector(7 downto 0);

   begin

   -- Your test bench code

   testName := "36.11.0%.1        ";

   for charbits in 0 to 2**8 loop
   
      -- Reset
      
      PY_B_DATA_REG_RESET_1 <= '1';
      PY_B_DATA_REG_RESET_2 <= '1';
      PY_B_DATA_REG_RESET_3 <= '1';
      PY_B_DATA_REG_RESET_4 <= '1';
      MY_RO_CHR_0 <= '0';
      MY_RO_CHR_1 <= '0';
      MY_RO_CHR_2 <= '0';
      MY_RO_CHR_3 <= '0';
      MY_REGEN_CHR_0 <= '0';
      MY_REGEN_CHR_1 <= '0';
      MY_REGEN_CHR_2 <= '0';
      MY_REGEN_CHR_3 <= '0';
      wait for 30 ns;

      PY_B_DATA_REG_RESET_1 <= '0';
      PY_B_DATA_REG_RESET_2 <= '0';
      PY_B_DATA_REG_RESET_3 <= '0';
      PY_B_DATA_REG_RESET_4 <= '0';
      wait for 30 ns;
      
      -- Check that the data is reset and we see the appropriate values on the output
      
      checkChar(PS_B_DATA_REG_STAR_0_STAR_BUS,"00000000",testName,"Loop Reset RO B Char 0");
      checkChar(PS_B_DATA_REG_STAR_1_STAR_BUS,"00000000",testName,"Loop Reset RO B Char 1");
      checkChar(PS_B_DATA_REG_STAR_2_STAR_BUS,"00000000",testName,"Loop Reset RO B Char 2");
      checkChar(PS_B_DATA_REG_STAR_3_STAR_BUS,"00000000",testName,"Loop Reset RO B Char 3");
      
      checkChar(MY_INH_CHAR_0_BUS,"00000000",testName,"Loop Reset Regen B Char 0");
      checkChar(MY_INH_CHAR_1_BUS,"00000000",testName,"Loop Reset Regen B Char 1");
      checkChar(MY_INH_CHAR_2_BUS,"00000000",testName,"Loop Reset Regen B Char 2");
      checkChar(MY_INH_CHAR_3_BUS,"00000000",testName,"Loop Reset Regen B Char 3");
                  
      -- Shift data into the 4 planes of b registers so they don't match each other
      
      tv0 := std_logic_vector(to_unsigned(charbits,tv0'Length));
      tv1 := tv0(0) & tv0(7 downto 1);
      tv2 := tv1(0) & tv1(7 downto 1);
      tv3 := tv2(0) & tv2(7 downto 1);
                  
      MY_SA_CHAR_0_BUS <= not tv0;
      MY_SA_CHAR_1_BUS <= not tv1;
      MY_SA_CHAR_2_BUS <= not tv2;
      MY_SA_CHAR_3_BUS <= not tv3;
      wait for 30 ns; -- Set the registers

      -- Once set, the register latches should stay set
      
      MY_SA_CHAR_0_BUS <= "11111111";
      MY_SA_CHAR_1_BUS <= "11111111";
      MY_SA_CHAR_2_BUS <= "11111111";
      MY_SA_CHAR_3_BUS <= "11111111";
      wait for 30 ns; -- Set the registers
      
      -- Now, for each individual character, loop through all of the RO/Regen possibilities
      -- for each of the 4 bits independently
      
      for tt in 0 to 2**8 loop
         tv := std_logic_vector(to_unsigned(tt,tv'Length));
         a := tv(0);
         b := tv(1);
         c := tv(2);
         d := tv(3);
         e := tv(4);
         f := tv(5);
         g := tv(6);
         h := tv(7);
         
         -- Set the signals accordingly

   		MY_RO_CHR_0 <= not a;
         MY_REGEN_CHR_0 <= not b;
         MY_RO_CHR_1 <= not c;
         MY_REGEN_CHR_1 <= not d;
         MY_RO_CHR_2 <= not e;
         MY_REGEN_CHR_2 <= not f;
         MY_RO_CHR_3 <= not g;
         MY_REGEN_CHR_3 <= not h;         
         wait for 30 ns;
         
         -- Figure out what the data should look like, and check it.
         -- Readout Data and Inhibit data are independent
         
         for charPlane in 0 to 3 loop
            
            readout := tv(charPlane * 2);
            regen := tv((charPlane * 2) + 1);
            
            if(readout = '1') then
               case charPlane is
                  when 0 => readdata :=  tv0;                 
                  when 1 => readdata :=  tv1;                 
                  when 2 => readdata :=  tv2;                 
                  when 3 => readdata :=  tv3;                 
               end case;
            else
               readdata := "00000000";
            end if;
            
            if(regen = '1') then
               case charPlane is
                  when 0 => inhdata :=  tv0;                 
                  when 1 => inhdata :=  tv1;                 
                  when 2 => inhdata :=  tv2;                 
                  when 3 => inhdata :=  tv3;                 
               end case;
            else
               inhdata := "00000000";
            end if;

            case charPlane is
               when 0 =>
                  checkChar(PS_B_DATA_REG_STAR_0_STAR_BUS,readdata,testName,
                     "Readout Char 0, RO is " & std_logic'image(readout));
                  checkChar(MY_INH_CHAR_0_BUS,inhdata,testName,
                     "Regen Char 0, Regen is " & std_logic'image(regen));
               when 1 =>
                   checkChar(PS_B_DATA_REG_STAR_1_STAR_BUS,readdata,testName,
                      "Readout Char 1, RO is " & std_logic'image(readout));
                  checkChar(MY_INH_CHAR_1_BUS,inhdata,testName,
                         "Regen Char 1, Regen is " & std_logic'image(regen));
               when 2 =>
                   checkChar(PS_B_DATA_REG_STAR_2_STAR_BUS,readdata,testName,
                      "Readout Char 2, RO is " & std_logic'image(readout));
                  checkChar(MY_INH_CHAR_2_BUS,inhdata,testName,
                         "Regen Char 2, Regen is " & std_logic'image(regen));
               when 3 =>
                   checkChar(PS_B_DATA_REG_STAR_3_STAR_BUS,readdata,testName,
                      "Readout Char 3, RO is " & std_logic'image(readout));
                  checkChar(MY_INH_CHAR_3_BUS,inhdata,testName,
                         "Regen Char 3, Regen is " & std_logic'image(regen));
            end case;               
         
         end loop;
               
      end loop;

   end loop;

   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 20 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

END;