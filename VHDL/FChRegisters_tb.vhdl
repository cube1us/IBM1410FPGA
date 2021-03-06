-- Test BenchVHDL for IBM SMS ALD group FChRegisters
-- Title: FChRegisters
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/28/2020 7:41:26 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity FChRegisters_tb is
end FChRegisters_tb;

architecture behavioral of FChRegisters_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component FChRegisters
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_COPY_F1_BCD_TO_F2_REG: in STD_LOGIC;
		MS_SET_F2_WORD_SEPARATOR: in STD_LOGIC;
		PS_SET_F1_REG: in STD_LOGIC;
		PS_SET_F2_REG: in STD_LOGIC;
		PS_COPY_INV_F1_WM_DOT_C_BIT: in STD_LOGIC;
		PS_COPY_F1_WM_DOT_C_BIT: in STD_LOGIC;
		PS_F1_INPUT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MS_F1_INPUT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_F1_REG_WM_BIT: out STD_LOGIC;
		PS_F1_REG_NOT_WM_BIT: out STD_LOGIC;
		PS_F2_REG_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MS_F2_REG_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_COPY_F1_BCD_TO_F2_REG: STD_LOGIC := '0';
	signal MS_SET_F2_WORD_SEPARATOR: STD_LOGIC := '1';
	signal PS_SET_F1_REG: STD_LOGIC := '0';
	signal PS_SET_F2_REG: STD_LOGIC := '0';
	signal PS_COPY_INV_F1_WM_DOT_C_BIT: STD_LOGIC := '0';
	signal PS_COPY_F1_WM_DOT_C_BIT: STD_LOGIC := '0';
	signal PS_F1_INPUT_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal MS_F1_INPUT_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "11111111";

	-- Outputs

	signal PS_F1_REG_WM_BIT: STD_LOGIC;
	signal PS_F1_REG_NOT_WM_BIT: STD_LOGIC;
	signal PS_F2_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal MS_F2_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0);

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

	UUT: FChRegisters port map(
		FPGA_CLK => FPGA_CLK,
		PS_COPY_F1_BCD_TO_F2_REG => PS_COPY_F1_BCD_TO_F2_REG,
		MS_SET_F2_WORD_SEPARATOR => MS_SET_F2_WORD_SEPARATOR,
		PS_SET_F1_REG => PS_SET_F1_REG,
		PS_SET_F2_REG => PS_SET_F2_REG,
		PS_COPY_INV_F1_WM_DOT_C_BIT => PS_COPY_INV_F1_WM_DOT_C_BIT,
		PS_COPY_F1_WM_DOT_C_BIT => PS_COPY_F1_WM_DOT_C_BIT,
		PS_F1_INPUT_BUS => PS_F1_INPUT_BUS,
		MS_F1_INPUT_BUS => MS_F1_INPUT_BUS,
		PS_F1_REG_WM_BIT => PS_F1_REG_WM_BIT,
		PS_F1_REG_NOT_WM_BIT => PS_F1_REG_NOT_WM_BIT,
		PS_F2_REG_BUS => PS_F2_REG_BUS,
		MS_F2_REG_BUS => MS_F2_REG_BUS);

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
   variable tv2: std_logic_vector(7 downto 0);
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;

   begin

   -- Your test bench code

   testName := "15.60.2*.1        ";

   for tt in 0 to 255 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));

      -- First, clear E1 and E2
      
      PS_F1_INPUT_BUS <= "00000000";
      MS_F1_INPUT_BUS <= "11111111";
      PS_SET_F1_REG <= '1';
      wait for 30 ns;
      PS_SET_F1_REG <= '0';
      PS_COPY_F1_BCD_TO_F2_REG <= '1';
      PS_SET_F2_REG <= '1';
      PS_COPY_F1_WM_DOT_C_BIT <= '1';
      wait for 30 ns;
      PS_COPY_F1_BCD_TO_F2_REG <= '0';
      PS_SET_F2_REG <= '0';
      PS_COPY_F1_WM_DOT_C_BIT <= '0';
      wait for 30 ns;
      
      check1(PS_F1_REG_WM_BIT,'0',testName,"+S F1 WM Zero");
      check1(PS_F1_REG_NOT_WM_BIT,'1',testName,"+S F1 NOT WM Zero");
      for i in 0 to 7 loop
         check1(PS_F2_REG_BUS(i),'0',testName,"+S F2 Zero bit number " & Integer'Image(i));
         check1(MS_F2_REG_BUS(i),'1',testName,"-S F2 Zero bit number " & Integer'Image(i));
      end loop;           
      
      -- These latches have no reset lines, per se - they 
      -- are always "set" based on the data
      
      PS_F1_INPUT_BUS <= tv(7 downto 0);
      MS_F1_INPUT_BUS <= not tv(7 downto 0);
      
      -- E1 has but one control line
      
      PS_SET_F1_REG <= '1';
      wait for 30 ns;
      PS_SET_F1_REG <= '0';
      wait for 30 ns;

      check1(PS_F1_REG_WM_BIT,tv(6),testName,"+S F1 Set WM");
      check1(PS_F1_REG_NOT_WM_BIT,not tv(6),testName,"+S F1 Set NOT WM");

      -- Should not have affected E2
      
      for i in 0 to 7 loop
         check1(PS_F2_REG_BUS(i),'0',testName,"+S F2 Not yet set 1 bit number " & Integer'Image(i));
         check1(MS_F2_REG_BUS(i),'1',testName,"-S F2 Not yet set 1 bit number " & Integer'Image(i));
      end loop;           
      
      PS_COPY_F1_BCD_TO_F2_REG <= '1';
      wait for 30 ns;

      for i in 0 to 7 loop
         check1(PS_F2_REG_BUS(i),'0',testName,"+S F2 Not yet set 2 bit number " & Integer'Image(i));
         check1(MS_F2_REG_BUS(i),'1',testName,"-S F2 Not yet set 2 bit number " & Integer'Image(i));
      end loop;           

      PS_COPY_F1_BCD_TO_F2_REG <= '0';
      wait for 30 ns;
      PS_SET_F2_REG <= '1';
      wait for 30 ns;

      for i in 0 to 7 loop
         check1(PS_F2_REG_BUS(i),'0',testName,"+S F2 Not yet set 3 bit number " & Integer'Image(i));
         check1(MS_F2_REG_BUS(i),'1',testName,"-S F2 Not yet set 3 bit number " & Integer'Image(i));
      end loop;           

      PS_COPY_F1_BCD_TO_F2_REG <= '1';
      wait for 30 ns; -- NOW E2 should set bits 5 downto 0

      tv2 := "00" & tv(5 downto 0); -- C and WM bits not yet set!
      for i in 0 to 7 loop
         check1(PS_F2_REG_BUS(i),tv2(i),testName,"+S F2 Set BCD bit number " & Integer'Image(i));
         check1(MS_F2_REG_BUS(i),not tv2(i),testName,"-S F2 Set BCD bit number " & Integer'Image(i));
      end loop;   
      
      PS_COPY_F1_BCD_TO_F2_REG <= '0';
      PS_COPY_F1_WM_DOT_C_BIT <= '1';
      wait for 30 ns; -- NOW E2 should set the C and WM bits
      PS_COPY_F1_WM_DOT_C_BIT <= '0';
      wait for 30 ns;
      
      for i in 0 to 7 loop
         check1(PS_F2_REG_BUS(i),tv(i),testName,"+S F2 Set WM.C bit number " & Integer'Image(i));
         check1(MS_F2_REG_BUS(i),not tv(i),testName,"-S F2 WM.C bit number " & Integer'Image(i));
      end loop;   

      -- Now, set the E2 C and WM bits inverted
      
      PS_COPY_INV_F1_WM_DOT_C_BIT <= '1';
      wait for 30 ns;
      PS_COPY_INV_F1_WM_DOT_C_BIT <= '0';
      wait for 30 ns;                    
                    
      tv2 := not tv(7) & not tv(6) & tv(5 downto 0);                    

      for i in 0 to 7 loop
         check1(PS_F2_REG_BUS(i),tv2(i),testName,"+S F2 Set INV WM.C bit number " & Integer'Image(i));
         check1(MS_F2_REG_BUS(i),not tv2(i),testName,"-S F2 INV WM.C bit number " & Integer'Image(i));
      end loop;   
      
      -- Now, set E2 to a Word Separator

      PS_COPY_F1_BCD_TO_F2_REG <= '0';
      PS_SET_F2_REG <= '0';
      MS_SET_F2_WORD_SEPARATOR <= '0';
      wait for 30 ns;
      MS_SET_F2_WORD_SEPARATOR <= '1';
      wait for 30 ns;
      
      tv(7 downto 0) := "10011101"; -- Word Separator 
      for i in 0 to 7 loop
         check1(PS_F2_REG_BUS(i),tv(i),testName,"+S F2 Word Separator bit number " & Integer'Image(i));
         check1(MS_F2_REG_BUS(i),not tv(i),testName,"-S F2 Word Separator 3 bit number " & Integer'Image(i));
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
   wait for 2 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

END;
