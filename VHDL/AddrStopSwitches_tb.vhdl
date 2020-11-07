-- Test BenchVHDL for IBM SMS ALD group AddrStopSwitches
-- Title: AddrStopSwitches
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 11/7/2020 2:57:16 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AddrStopSwitches_tb is
end AddrStopSwitches_tb;

architecture behavioral of AddrStopSwitches_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component AddrStopSwitches
	    Port (
		FPGA_CLK: in STD_LOGIC;
		M36_VOLTS: in STD_LOGIC;
		MINUS_36_VOLTS: in STD_LOGIC;
		MY_MEM_AR_NOT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MY_MEM_AR_NOT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MY_MEM_AR_NOT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MY_MEM_AR_NOT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		SWITCH_ROT_TENS_SYNC_DK2: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_TENS_SYNC_DK1: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_UNITS_SYNC_DK2: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_UNITS_SYNC_DK1: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_THOUS_SYNC_DK2: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_THOUS_SYNC_DK1: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_HUNDS_SYNC_DK2: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_HUNDS_SYNC_DK1: in STD_LOGIC_VECTOR(12 downTo 0);
		MS_MAR_SYNC_COND: out STD_LOGIC;
		PS_UP8B_SYNC_COND: out STD_LOGIC;
		MS_MAR_SYNC_COND_JRJ: out STD_LOGIC;
		PS_HP8B_SYNC_COND: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal M36_VOLTS: STD_LOGIC := '1';
	signal MINUS_36_VOLTS: STD_LOGIC := '1';
	signal MY_MEM_AR_NOT_UP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MY_MEM_AR_NOT_TP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MY_MEM_AR_NOT_HP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MY_MEM_AR_NOT_THP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal SWITCH_ROT_TENS_SYNC_DK2: STD_LOGIC_VECTOR(12 downTo 0) := "0000000000000";
	signal SWITCH_ROT_TENS_SYNC_DK1: STD_LOGIC_VECTOR(12 downTo 0) := "0000000000000";
	signal SWITCH_ROT_UNITS_SYNC_DK2: STD_LOGIC_VECTOR(12 downTo 0) := "0000000000000";
	signal SWITCH_ROT_UNITS_SYNC_DK1: STD_LOGIC_VECTOR(12 downTo 0) := "0000000000000";
	signal SWITCH_ROT_THOUS_SYNC_DK2: STD_LOGIC_VECTOR(12 downTo 0) := "0000000000000";
	signal SWITCH_ROT_THOUS_SYNC_DK1: STD_LOGIC_VECTOR(12 downTo 0) := "0000000000000";
	signal SWITCH_ROT_HUNDS_SYNC_DK2: STD_LOGIC_VECTOR(12 downTo 0) := "0000000000000";
	signal SWITCH_ROT_HUNDS_SYNC_DK1: STD_LOGIC_VECTOR(12 downTo 0) := "0000000000000";

	-- Outputs

	signal MS_MAR_SYNC_COND: STD_LOGIC;
	signal PS_UP8B_SYNC_COND: STD_LOGIC;
	signal MS_MAR_SYNC_COND_JRJ: STD_LOGIC;
	signal PS_HP8B_SYNC_COND: STD_LOGIC;

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

	UUT: AddrStopSwitches port map(
		FPGA_CLK => FPGA_CLK,
		M36_VOLTS => M36_VOLTS,
		MINUS_36_VOLTS => MINUS_36_VOLTS,
		MY_MEM_AR_NOT_UP_BUS => MY_MEM_AR_NOT_UP_BUS,
		MY_MEM_AR_NOT_TP_BUS => MY_MEM_AR_NOT_TP_BUS,
		MY_MEM_AR_NOT_HP_BUS => MY_MEM_AR_NOT_HP_BUS,
		MY_MEM_AR_NOT_THP_BUS => MY_MEM_AR_NOT_THP_BUS,
		SWITCH_ROT_TENS_SYNC_DK2 => SWITCH_ROT_TENS_SYNC_DK2,
		SWITCH_ROT_TENS_SYNC_DK1 => SWITCH_ROT_TENS_SYNC_DK1,
		SWITCH_ROT_UNITS_SYNC_DK2 => SWITCH_ROT_UNITS_SYNC_DK2,
		SWITCH_ROT_UNITS_SYNC_DK1 => SWITCH_ROT_UNITS_SYNC_DK1,
		SWITCH_ROT_THOUS_SYNC_DK2 => SWITCH_ROT_THOUS_SYNC_DK2,
		SWITCH_ROT_THOUS_SYNC_DK1 => SWITCH_ROT_THOUS_SYNC_DK1,
		SWITCH_ROT_HUNDS_SYNC_DK2 => SWITCH_ROT_HUNDS_SYNC_DK2,
		SWITCH_ROT_HUNDS_SYNC_DK1 => SWITCH_ROT_HUNDS_SYNC_DK1,
		MS_MAR_SYNC_COND => MS_MAR_SYNC_COND,
		PS_UP8B_SYNC_COND => PS_UP8B_SYNC_COND,
		MS_MAR_SYNC_COND_JRJ => MS_MAR_SYNC_COND_JRJ,
		PS_HP8B_SYNC_COND => PS_HP8B_SYNC_COND);

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

SWITCH_ROT_UNITS_SYNC_DK1 <= SWITCH_ROT_UNITS_SYNC_DK2;
SWITCH_ROT_TENS_SYNC_DK1 <= SWITCH_ROT_TENS_SYNC_DK2;
SWITCH_ROT_HUNDS_SYNC_DK1 <= SWITCH_ROT_HUNDS_SYNC_DK2;
SWITCH_ROT_THOUS_SYNC_DK1 <= SWITCH_ROT_THOUS_SYNC_DK2;

uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;
   variable address: integer;
   type DIGITS is array (3 downto 0) of integer;
   variable addressDigits: DIGITS;
   variable addrStop: integer;
   variable addrStopDigits: DIGITS;   
   
   begin

   testName := "14.17.17.1 TENS   ";
   
   for address in 0 to 9999 loop
      
      -- Set MAR Bits
      
      addressDigits(0) := address mod 10;
      addressDigits(1) := (address / 10) mod 10;
      addressDigits(2) := (address / 100) mod 10;
      addressDigits(3) := (address / 1000) mod 10;
      
      -- The NOT address bits are 0 if the bit is NOT on.
      
      MY_MEM_AR_NOT_UP_BUS <= BCD.twoOfFive(addressDigits(0));
      MY_MEM_AR_NOT_TP_BUS <= BCD.twoOfFive(addressDigits(1));      
      MY_MEM_AR_NOT_HP_BUS <= BCD.twoOfFive(addressDigits(2));
      MY_MEM_AR_NOT_THP_BUS <= BCD.twoOfFive(addressDigits(3));
         
      for addrStop in 0 to 9999 loop
      
         -- Set Switches
         
         addrStopDigits(0) := addrStop mod 10;
         addrStopDigits(1) := (addrStop / 10) mod 10;
         addrStopDigits(2) := (addrStop / 100) mod 10;
         addrStopDigits(3) := (addrStop / 1000) mod 10;
         
         SWITCH_ROT_UNITS_SYNC_DK2 <= "0000000000000";
         SWITCH_ROT_TENS_SYNC_DK2 <= "0000000000000";
         SWITCH_ROT_HUNDS_SYNC_DK2 <= "0000000000000";
         SWITCH_ROT_THOUS_SYNC_DK2 <= "0000000000000";
         -- wait for 30 ns;
         
         if(addrStopDigits(0) = 0) then
            SWITCH_ROT_UNITS_SYNC_DK2(10) <= '1';
         else
            SWITCH_ROT_UNITS_SYNC_DK2(addrStopDigits(0)) <= '1';
         end if;
         
         if(addrStopDigits(1) = 0) then
            SWITCH_ROT_TENS_SYNC_DK2(10) <= '1';
         else
            SWITCH_ROT_TENS_SYNC_DK2(addrStopDigits(1)) <= '1';
         end if;

         if(addrStopDigits(2) = 0) then
            SWITCH_ROT_HUNDS_SYNC_DK2(10) <= '1';
         else
            SWITCH_ROT_HUNDS_SYNC_DK2(addrStopDigits(2)) <= '1';
         end if;         
         
         if(addrStopDigits(3) = 0) then
            SWITCH_ROT_THOUS_SYNC_DK2(10) <= '1';
         else
            SWITCH_ROT_THOUS_SYNC_DK2(addrStopDigits(3)) <= '1';
         end if;
         
         wait for 30 ns;
         
         if(address mod 100 = addrStop mod 100) then
            check1(MS_MAR_SYNC_COND,'0',testName,
                "xxdd match address " & INTEGER'IMAGE(address) & " stop " & INTEGER'IMAGE(addrStop));
            check1(PS_UP8B_SYNC_COND,'1',testName,
                "xxdd UP8B match address " & INTEGER'IMAGE(address) & " stop " & INTEGER'IMAGE(addrStop));            
         else
            if PS_UP8B_SYNC_COND = '1' then
                check1(MS_MAR_SYNC_COND,'1',testName,
                    "xxdd NO match address " & INTEGER'IMAGE(address) & " stop " & INTEGER'IMAGE(addrStop));
            end if;
         end if;
         
         if(address/100 = addrStop/100) then            
            check1(MS_MAR_SYNC_COND_JRJ,'0',testName,
                "ddxx match address " & INTEGER'IMAGE(address) & " stop " & INTEGER'IMAGE(addrStop));
            check1(PS_HP8B_SYNC_COND,'1',testName,
                    "xxdd UP8B match address " & INTEGER'IMAGE(address) & " stop " & INTEGER'IMAGE(addrStop));            
         else
            if(PS_HP8B_SYNC_COND = '1') then            
                check1(MS_MAR_SYNC_COND_JRJ,'1',testName,
                    "ddxx NO match address " & INTEGER'IMAGE(address) & " stop " & INTEGER'IMAGE(addrStop));
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
   wait for 8000 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (Timeout)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS

END;
