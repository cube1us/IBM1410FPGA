-- Test BenchVHDL for IBM SMS ALD group ADataRegAndDrive
-- Title: ADataRegAndDrive
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 11/7/2020 9:51:42 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ADataRegAndDrive_tb is
end ADataRegAndDrive_tb;

architecture behavioral of ADataRegAndDrive_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ADataRegAndDrive
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_SW_B_CH_TO_A_REG: in STD_LOGIC;
		PS_SW_AR_EXIT_CH_TO_A_REG: in STD_LOGIC;
		MS_RESET_A_DATA_REG: in STD_LOGIC;
		PS_GATE_A_DATA_REG_TO_A_CH: in STD_LOGIC;
		PS_GATE_OP_MOD_REG_TO_A_CH: in STD_LOGIC;
		PS_GATE_E2_DATA_REG_TO_A_CH: in STD_LOGIC;
		PS_GATE_F2_DATA_REG_TO_A_CH: in STD_LOGIC;
		PS_B_CH_WM_BIT_1: in STD_LOGIC;
		PS_OP_MOD_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_AR_EXIT_CH_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_CH_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_E2_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_F2_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_AR_CH_STAR_TRANSLATOR_STAR_BUS: in STD_LOGIC_VECTOR (3 downTo 0);
		PS_B_CH_NOT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_A_CH_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		PS_A_DATA_REG_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		PS_A_CH_NOT_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		PB_A_CH_BUS: out STD_LOGIC_VECTOR (6 downTo 0);
		PB_A_CH_NOT_BUS: out STD_LOGIC_VECTOR (6 downTo 0);
		LAMPS_A_CH: out STD_LOGIC_VECTOR (7 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_SW_B_CH_TO_A_REG: STD_LOGIC := '0';
	signal PS_SW_AR_EXIT_CH_TO_A_REG: STD_LOGIC := '0';
	signal MS_RESET_A_DATA_REG: STD_LOGIC := '1';
	signal PS_GATE_A_DATA_REG_TO_A_CH: STD_LOGIC := '0';
	signal PS_GATE_OP_MOD_REG_TO_A_CH: STD_LOGIC := '0';
	signal PS_GATE_E2_DATA_REG_TO_A_CH: STD_LOGIC := '0';
	signal PS_GATE_F2_DATA_REG_TO_A_CH: STD_LOGIC := '0';
	signal PS_B_CH_WM_BIT_1: STD_LOGIC := '0';
	signal PS_OP_MOD_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_AR_EXIT_CH_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_B_CH_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_E2_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_F2_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_AR_CH_STAR_TRANSLATOR_STAR_BUS: STD_LOGIC_VECTOR (3 downTo 0) := "0000";
	signal PS_B_CH_NOT_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";

	-- Outputs

	signal PS_A_CH_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal PS_A_DATA_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal PS_A_CH_NOT_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal PB_A_CH_BUS: STD_LOGIC_VECTOR (6 downTo 0);
	signal PB_A_CH_NOT_BUS: STD_LOGIC_VECTOR (6 downTo 0);
	signal LAMPS_A_CH: STD_LOGIC_VECTOR (7 downTo 0);

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

	UUT: ADataRegAndDrive port map(
		FPGA_CLK => FPGA_CLK,
		PS_SW_B_CH_TO_A_REG => PS_SW_B_CH_TO_A_REG,
		PS_SW_AR_EXIT_CH_TO_A_REG => PS_SW_AR_EXIT_CH_TO_A_REG,
		MS_RESET_A_DATA_REG => MS_RESET_A_DATA_REG,
		PS_GATE_A_DATA_REG_TO_A_CH => PS_GATE_A_DATA_REG_TO_A_CH,
		PS_GATE_OP_MOD_REG_TO_A_CH => PS_GATE_OP_MOD_REG_TO_A_CH,
		PS_GATE_E2_DATA_REG_TO_A_CH => PS_GATE_E2_DATA_REG_TO_A_CH,
		PS_GATE_F2_DATA_REG_TO_A_CH => PS_GATE_F2_DATA_REG_TO_A_CH,
		PS_B_CH_WM_BIT_1 => PS_B_CH_WM_BIT_1,
		PS_OP_MOD_REG_BUS => PS_OP_MOD_REG_BUS,
		PS_AR_EXIT_CH_BUS => PS_AR_EXIT_CH_BUS,
		PS_B_CH_BUS => PS_B_CH_BUS,
		PS_E2_REG_BUS => PS_E2_REG_BUS,
		PS_F2_REG_BUS => PS_F2_REG_BUS,
		PS_AR_CH_STAR_TRANSLATOR_STAR_BUS => PS_AR_CH_STAR_TRANSLATOR_STAR_BUS,
		PS_B_CH_NOT_BUS => PS_B_CH_NOT_BUS,
		PS_A_CH_BUS => PS_A_CH_BUS,
		PS_A_DATA_REG_BUS => PS_A_DATA_REG_BUS,
		PS_A_CH_NOT_BUS => PS_A_CH_NOT_BUS,
		PB_A_CH_BUS => PB_A_CH_BUS,
		PB_A_CH_NOT_BUS => PB_A_CH_NOT_BUS,
		LAMPS_A_CH => LAMPS_A_CH);

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


-- Continuous assignment.

PS_B_CH_NOT_BUS <= NOT PS_B_CH_BUS;

uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;
   variable tv: std_logic_vector(7 downto 0);
   variable tv2: std_logic_vector(7 downto 0);
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p: std_logic;
   variable g1, g2, g3, g4, g5, g6: std_logic;
   

   begin

   -- Your test bench code
   
   testName := "A Data Reg & Drive";
   
   MS_RESET_A_DATA_REG <= '0';
   wait for 30 ns;
   MS_RESET_A_DATA_REG <= '1';
   wait for 30 ns;

   for b in 0 to 7 loop
      if(b /= 7) then
         check1(PS_A_DATA_REG_BUS(b),'0',testName,"1A BIT " & INTEGER'Image(b));
      else -- Reset SETS check bit
         check1(PS_A_DATA_REG_BUS(b),'1',testName,"1A C BIT " & INTEGER'Image(b));
      end if;
   end loop;
   
   
   for t1 in 0 to 255 loop
   
      MS_RESET_A_DATA_REG <= '0';
      wait for 30 ns;
      MS_RESET_A_DATA_REG <= '1';
      wait for 30 ns;
      
      tv := std_logic_vector(to_unsigned(t1,tv'Length));
      
      PS_SW_AR_EXIT_CH_TO_A_REG <= '0';
      PS_AR_EXIT_CH_BUS <= "00000000";      
      PS_SW_B_CH_TO_A_REG <= '1';      
      PS_B_CH_BUS <= tv;
      PS_B_CH_WM_BIT_1 <= tv(6);      
      wait for 30 ns;  -- Set appropriate bits
      PS_SW_B_CH_TO_A_REG <= '0';      
      PS_B_CH_BUS <= "00000000";
      PS_B_CH_WM_BIT_1 <= '0';
      wait for 30 ns; -- Should stay set
      
      for bbit in 0 to 7 loop            
            check1(PS_A_DATA_REG_BUS(bbit),tv(bbit),testName,"1B BIT " & INTEGER'Image(bbit));
            check1(PS_A_CH_BUS(bbit),'0',testName,"1C BIT " & INTEGER'Image(bbit));
            check1(PS_A_CH_NOT_BUS(bbit),'1',testName,"1D BIT " & INTEGER'Image(bbit));
            if(bbit /= 7) then -- No +B check bit, and no +B NOT check or B bits
               check1(PB_A_CH_BUS(bbit),'0',testName,"1E BIT " & INTEGER'Image(bbit));
            end if;
            if(bbit /= 7 and bbit /= 5) then
               check1(PB_A_CH_NOT_BUS(bbit),'1',testName,"1F BIT " & INTEGER'Image(bbit));
            end if;
      end loop;
      
      PS_GATE_A_DATA_REG_TO_A_CH <= '1';
      wait for 30 ns;
      for bbit in 0 to 7 loop            
            check1(PS_A_CH_BUS(bbit),tv(bbit),testName,"1G BIT " & INTEGER'Image(bbit));
            check1(PS_A_CH_NOT_BUS(bbit),not tv(bbit),testName,"1H BIT " & INTEGER'Image(bbit));
            if(bbit /= 7) then -- No +B check bit, and no +B NOT check or B bits
               check1(PB_A_CH_BUS(bbit),tv(bbit),testName,"1I BIT " & INTEGER'Image(bbit));
            end if;
            if(bbit /= 7 and bbit /= 5) then
               check1(PB_A_CH_NOT_BUS(bbit),not tv(bbit),testName,"1J BIT " & INTEGER'Image(bbit));
            end if;
      end loop;
      PS_GATE_A_DATA_REG_TO_A_CH <= '0';
      
      
      MS_RESET_A_DATA_REG <= '0';
      wait for 30 ns;
      MS_RESET_A_DATA_REG <= '1';
      wait for 30 ns;
      
      tv := not tv;   -- Invert test vector to be certain of no crossover       

      PS_SW_AR_EXIT_CH_TO_A_REG <= '1';
      PS_AR_CH_STAR_TRANSLATOR_STAR_BUS(2) <= tv(2); -- 4 bit is handled specially
      PS_AR_EXIT_CH_BUS <= tv;      
      PS_SW_B_CH_TO_A_REG <= '0';      
      PS_B_CH_BUS <= "00000000";
      PS_B_CH_WM_BIT_1 <= '0';      
      wait for 30 ns;  -- Set appropriate bits
      PS_SW_AR_EXIT_CH_TO_A_REG <= '0';
      PS_AR_EXIT_CH_BUS <= "00000000";      
      wait for 30 ns; -- Should stay set
      
      for bbit in 0 to 7 loop -- Does not set WM, B or A bits, and 4 bit comes from "translator"
         if(bbit < 4 or bbit = 7) then            
            check1(PS_A_DATA_REG_BUS(bbit),tv(bbit),testName,"1K BIT " & INTEGER'Image(bbit));
         end if;
      end loop;

   end loop;

   PS_F2_REG_BUS <= "10101010";
   PS_OP_MOD_REG_BUS <= "01010101";
   
   for t1 in 0 to 255 loop
      tv := std_logic_vector(to_unsigned(t1,tv'Length));
      PS_GATE_E2_DATA_REG_TO_A_CH <= '0';
      PS_E2_REG_BUS <= tv;
      wait for 30 ns;
      for bbit in 0 to 7 loop            
            check1(PS_A_CH_BUS(bbit),'0',testName,"2A BIT " & INTEGER'Image(bbit));
            check1(PS_A_CH_NOT_BUS(bbit),'1',testName,"2B BIT " & INTEGER'Image(bbit));
            check1(LAMPS_A_CH(bbit),'0',testName,"2C BIT " & INTEGER'Image(bbit));
            if(bbit /= 7) then -- No +B check bit, and no +B NOT check or B bits
               check1(PB_A_CH_BUS(bbit),'0',testName,"2D BIT " & INTEGER'Image(bbit));
            end if;
            if(bbit /= 7 and bbit /= 5) then
               check1(PB_A_CH_NOT_BUS(bbit),'1',testName,"2E BIT " & INTEGER'Image(bbit));
            end if;
      end loop;

      PS_GATE_E2_DATA_REG_TO_A_CH <= '1';
      wait for 30 ns;      
      for bbit in 0 to 7 loop            
            check1(PS_A_CH_BUS(bbit),tv(bbit),testName,"2F BIT " & INTEGER'Image(bbit));
            check1(PS_A_CH_NOT_BUS(bbit),not tv(bbit),testName,"2G BIT " & INTEGER'Image(bbit));
            check1(LAMPS_A_CH(bbit),tv(bbit),testName,"2H BIT " & INTEGER'Image(bbit));
            if(bbit /= 7) then -- No +B check bit, and no +B NOT check or B bits
               check1(PB_A_CH_BUS(bbit),tv(bbit),testName,"2I BIT " & INTEGER'Image(bbit));
            end if;
            if(bbit /= 7 and bbit /= 5) then
               check1(PB_A_CH_NOT_BUS(bbit),not tv(bbit),testName,"2J BIT " & INTEGER'Image(bbit));
            end if;
      end loop;
   end loop;

   PS_GATE_E2_DATA_REG_TO_A_CH <= '0';
   PS_E2_REG_BUS <= "10101010";
   PS_OP_MOD_REG_BUS <= "01010101";
   
   for t1 in 0 to 255 loop
      tv := std_logic_vector(to_unsigned(t1,tv'Length));
      PS_GATE_F2_DATA_REG_TO_A_CH <= '0';
      PS_F2_REG_BUS <= tv;
      wait for 30 ns;
      for bbit in 0 to 7 loop            
            check1(PS_A_CH_BUS(bbit),'0',testName,"3A BIT " & INTEGER'Image(bbit));
            check1(PS_A_CH_NOT_BUS(bbit),'1',testName,"3B BIT " & INTEGER'Image(bbit));
            check1(LAMPS_A_CH(bbit),'0',testName,"3C BIT " & INTEGER'Image(bbit));
            if(bbit /= 7) then -- No +B check bit, and no +B NOT check or B bits
               check1(PB_A_CH_BUS(bbit),'0',testName,"3D BIT " & INTEGER'Image(bbit));
            end if;
            if(bbit /= 7 and bbit /= 5) then
               check1(PB_A_CH_NOT_BUS(bbit),'1',testName,"3E BIT " & INTEGER'Image(bbit));
            end if;
      end loop;

      PS_GATE_F2_DATA_REG_TO_A_CH <= '1';
      wait for 30 ns;      
      for bbit in 0 to 7 loop            
            check1(PS_A_CH_BUS(bbit),tv(bbit),testName,"3F BIT " & INTEGER'Image(bbit));
            check1(PS_A_CH_NOT_BUS(bbit),not tv(bbit),testName,"3G BIT " & INTEGER'Image(bbit));
            check1(LAMPS_A_CH(bbit),tv(bbit),testName,"3H BIT " & INTEGER'Image(bbit));
            if(bbit /= 7) then -- No +B check bit, and no +B NOT check or B bits
               check1(PB_A_CH_BUS(bbit),tv(bbit),testName,"3I BIT " & INTEGER'Image(bbit));
            end if;
            if(bbit /= 7 and bbit /= 5) then
               check1(PB_A_CH_NOT_BUS(bbit),not tv(bbit),testName,"3J BIT " & INTEGER'Image(bbit));
            end if;
      end loop;
   end loop;

   PS_GATE_F2_DATA_REG_TO_A_CH <= '0';
   PS_E2_REG_BUS <= "10101010";
   PS_F2_REG_BUS <= "01010101";
   
   for t1 in 0 to 255 loop
      tv := std_logic_vector(to_unsigned(t1,tv'Length));
      PS_GATE_OP_MOD_REG_TO_A_CH <= '0';
      PS_OP_MOD_REG_BUS <= tv;
      wait for 30 ns;
      for bbit in 0 to 7 loop            
            check1(PS_A_CH_BUS(bbit),'0',testName,"3A BIT " & INTEGER'Image(bbit));
            check1(PS_A_CH_NOT_BUS(bbit),'1',testName,"3B BIT " & INTEGER'Image(bbit));
            check1(LAMPS_A_CH(bbit),'0',testName,"3C BIT " & INTEGER'Image(bbit));
            if(bbit /= 7) then -- No +B check bit, and no +B NOT check or B bits
               check1(PB_A_CH_BUS(bbit),'0',testName,"3D BIT " & INTEGER'Image(bbit));
            end if;
            if(bbit /= 7 and bbit /= 5) then
               check1(PB_A_CH_NOT_BUS(bbit),'1',testName,"3E BIT " & INTEGER'Image(bbit));
            end if;
      end loop;

      PS_GATE_OP_MOD_REG_TO_A_CH <= '1';
      wait for 30 ns;      
      for bbit in 0 to 7 loop
            if(bbit /= 6) then -- No WM bit from Op Mod Reg
               check1(PS_A_CH_BUS(bbit),tv(bbit),testName,"3F BIT " & INTEGER'Image(bbit));
               check1(PS_A_CH_NOT_BUS(bbit),not tv(bbit),testName,"3G BIT " & INTEGER'Image(bbit));
               check1(LAMPS_A_CH(bbit),tv(bbit),testName,"3H BIT " & INTEGER'Image(bbit));
               if(bbit /= 7) then -- No +B check bit, and no +B NOT check or B bits
                  check1(PB_A_CH_BUS(bbit),tv(bbit),testName,"3I BIT " & INTEGER'Image(bbit));
               end if;
               if(bbit /= 7 and bbit /= 5) then
                  check1(PB_A_CH_NOT_BUS(bbit),not tv(bbit),testName,"3J BIT " & INTEGER'Image(bbit));
               end if;
            end if;                        
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
