-- Test BenchVHDL for IBM SMS ALD group IRING
-- Title: IRING
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 6/17/2020 3:41:53 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity IRING_tb is
end IRING_tb;

architecture behavioral of IRING_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component IRING
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_I_RING_CTRL: in STD_LOGIC;
		MS_I_RING_CTRL: in STD_LOGIC;
		MS_PROGRAM_RESET_1: in STD_LOGIC;
		MS_I_RING_ADV: in STD_LOGIC;
		PS_I_RING_RESET: in STD_LOGIC;
		PS_1401_MODE_1: in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_1: in STD_LOGIC;
		MS_LOGIC_GATE_A_1: in STD_LOGIC;
		MS_LOGIC_GATE_E_1: in STD_LOGIC;
		MS_PROGRAM_RESET_3: in STD_LOGIC;
		PS_LOGIC_GATE_Z: in STD_LOGIC;
		MS_LOGIC_GATE_B_1: in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3: in STD_LOGIC;
		MS_PROGRAM_RESET_5: in STD_LOGIC;
		MS_E_CYCLE_REQUIRED: in STD_LOGIC;
		MS_F_CYCLE_REQUIRED: in STD_LOGIC;
		MS_LAST_LOGIC_GATE_1: in STD_LOGIC;
		MS_LOGIC_GATE_R: in STD_LOGIC;
		PS_I_RING_12_TIME_STAR_1311_STAR: out STD_LOGIC;
		PS_I_RING_3_OR_8_TIME: out STD_LOGIC;
		PS_I_RING_4_OR_9_TIME: out STD_LOGIC;
		PS_I_RING_5_OR_10_TIME: out STD_LOGIC;
		PS_I_RING_1_OR_6_TIME: out STD_LOGIC;
		PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8: out STD_LOGIC;
		PS_I_RING_7_OR_1401_6_OR_8: out STD_LOGIC;
		PS_I_RING_6_OR_1401_AND_8_TIME: out STD_LOGIC;
		PS_I_RING_2_OR_7_TIME: out STD_LOGIC;
		PS_I_RING_1_OR_2_OR_5_OR_6_OR_10_TIME: out STD_LOGIC;
		PS_I_RING_1_OR_1401_AND_3_TIME: out STD_LOGIC;
		PS_I_RING_1_OR_2_OR_3_OR_4_TIME: out STD_LOGIC;
		PS_I_RING_6_OR_7_OR_8_OR_9_TIME: out STD_LOGIC;
		PS_1ST_ADDRESS: out STD_LOGIC;
		PS_2ND_ADDRESS: out STD_LOGIC;
		PS_LOGIC_GATE_EARLY_B: out STD_LOGIC;
		PS_LOGIC_GATE_EARLY_F: out STD_LOGIC;
		PS_LOGIC_GATE_EARLY_B_OR_S: out STD_LOGIC;
		PS_LOGIC_GATE_SPECIAL_A: out STD_LOGIC;
		PS_LOGIC_GATE_SPECIAL_A_1: out STD_LOGIC;
		PS_B_TO_LAST_LOGIC_GATE: out STD_LOGIC;
		PS_LOGIC_GATE_EARLY_S: out STD_LOGIC;
		MS_I_RING_HDL_BUS: out STD_LOGIC_VECTOR (11 downTo 0);
		PS_I_RING_HDL_BUS: out STD_LOGIC_VECTOR (12 downTo 0);
		LAMPS_IRING: out STD_LOGIC_VECTOR (12 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_I_RING_CTRL: STD_LOGIC := '0';
	signal MS_I_RING_CTRL: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_1: STD_LOGIC := '1';
	signal MS_I_RING_ADV: STD_LOGIC := '1';
	signal PS_I_RING_RESET: STD_LOGIC := '0';
	signal PS_1401_MODE_1: STD_LOGIC := '0';
	signal PS_1ST_CLOCK_PULSE_1: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_A_1: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_E_1: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_3: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_Z: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_B_1: STD_LOGIC := '1';
	signal PS_2ND_CLOCK_PULSE_3: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_5: STD_LOGIC := '1';
	signal MS_E_CYCLE_REQUIRED: STD_LOGIC := '1';
	signal MS_F_CYCLE_REQUIRED: STD_LOGIC := '1';
	signal MS_LAST_LOGIC_GATE_1: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_R: STD_LOGIC := '1';

	-- Outputs

	signal PS_I_RING_12_TIME_STAR_1311_STAR: STD_LOGIC;
	signal PS_I_RING_3_OR_8_TIME: STD_LOGIC;
	signal PS_I_RING_4_OR_9_TIME: STD_LOGIC;
	signal PS_I_RING_5_OR_10_TIME: STD_LOGIC;
	signal PS_I_RING_1_OR_6_TIME: STD_LOGIC;
	signal PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8: STD_LOGIC;
	signal PS_I_RING_7_OR_1401_6_OR_8: STD_LOGIC;
	signal PS_I_RING_6_OR_1401_AND_8_TIME: STD_LOGIC;
	signal PS_I_RING_2_OR_7_TIME: STD_LOGIC;
	signal PS_I_RING_1_OR_2_OR_5_OR_6_OR_10_TIME: STD_LOGIC;
	signal PS_I_RING_1_OR_1401_AND_3_TIME: STD_LOGIC;
	signal PS_I_RING_1_OR_2_OR_3_OR_4_TIME: STD_LOGIC;
	signal PS_I_RING_6_OR_7_OR_8_OR_9_TIME: STD_LOGIC;
	signal PS_1ST_ADDRESS: STD_LOGIC;
	signal PS_2ND_ADDRESS: STD_LOGIC;
	signal PS_LOGIC_GATE_EARLY_B: STD_LOGIC;
	signal PS_LOGIC_GATE_EARLY_F: STD_LOGIC;
	signal PS_LOGIC_GATE_EARLY_B_OR_S: STD_LOGIC;
	signal PS_LOGIC_GATE_SPECIAL_A: STD_LOGIC;
	signal PS_LOGIC_GATE_SPECIAL_A_1: STD_LOGIC;
	signal PS_B_TO_LAST_LOGIC_GATE: STD_LOGIC;
	signal PS_LOGIC_GATE_EARLY_S: STD_LOGIC;
	signal MS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (11 downTo 0);
	signal PS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (12 downTo 0);
	signal LAMPS_IRING: STD_LOGIC_VECTOR (12 downTo 0);

-- START USER TEST BENCH DECLARATIONS

-- The user test bench declarations, if any, must be
-- placed AFTER the line starts with the first line of text 
-- with -- START USER TEST BENCH DECLARATIONS and ends
-- with -- END and what comes after

    signal IRING_REG: STD_LOGIC_VECTOR(12 downto 0);
    signal IRING_LAMPS: STD_LOGIC_VECTOR(12 downto 0);
    
-- END USER TEST BENCH DECLARATIONS

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: IRING port map(
		FPGA_CLK => FPGA_CLK,
		PS_I_RING_CTRL => PS_I_RING_CTRL,
		MS_I_RING_CTRL => MS_I_RING_CTRL,
		MS_PROGRAM_RESET_1 => MS_PROGRAM_RESET_1,
		MS_I_RING_ADV => MS_I_RING_ADV,
		PS_I_RING_RESET => PS_I_RING_RESET,
		PS_1401_MODE_1 => PS_1401_MODE_1,
		PS_1ST_CLOCK_PULSE_1 => PS_1ST_CLOCK_PULSE_1,
		MS_LOGIC_GATE_A_1 => MS_LOGIC_GATE_A_1,
		MS_LOGIC_GATE_E_1 => MS_LOGIC_GATE_E_1,
		MS_PROGRAM_RESET_3 => MS_PROGRAM_RESET_3,
		PS_LOGIC_GATE_Z => PS_LOGIC_GATE_Z,
		MS_LOGIC_GATE_B_1 => MS_LOGIC_GATE_B_1,
		PS_2ND_CLOCK_PULSE_3 => PS_2ND_CLOCK_PULSE_3,
		MS_PROGRAM_RESET_5 => MS_PROGRAM_RESET_5,
		MS_E_CYCLE_REQUIRED => MS_E_CYCLE_REQUIRED,
		MS_F_CYCLE_REQUIRED => MS_F_CYCLE_REQUIRED,
		MS_LAST_LOGIC_GATE_1 => MS_LAST_LOGIC_GATE_1,
		MS_LOGIC_GATE_R => MS_LOGIC_GATE_R,
		PS_I_RING_12_TIME_STAR_1311_STAR => PS_I_RING_12_TIME_STAR_1311_STAR,
		PS_I_RING_3_OR_8_TIME => PS_I_RING_3_OR_8_TIME,
		PS_I_RING_4_OR_9_TIME => PS_I_RING_4_OR_9_TIME,
		PS_I_RING_5_OR_10_TIME => PS_I_RING_5_OR_10_TIME,
		PS_I_RING_1_OR_6_TIME => PS_I_RING_1_OR_6_TIME,
		PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8 => PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8,
		PS_I_RING_7_OR_1401_6_OR_8 => PS_I_RING_7_OR_1401_6_OR_8,
		PS_I_RING_6_OR_1401_AND_8_TIME => PS_I_RING_6_OR_1401_AND_8_TIME,
		PS_I_RING_2_OR_7_TIME => PS_I_RING_2_OR_7_TIME,
		PS_I_RING_1_OR_2_OR_5_OR_6_OR_10_TIME => PS_I_RING_1_OR_2_OR_5_OR_6_OR_10_TIME,
		PS_I_RING_1_OR_1401_AND_3_TIME => PS_I_RING_1_OR_1401_AND_3_TIME,
		PS_I_RING_1_OR_2_OR_3_OR_4_TIME => PS_I_RING_1_OR_2_OR_3_OR_4_TIME,
		PS_I_RING_6_OR_7_OR_8_OR_9_TIME => PS_I_RING_6_OR_7_OR_8_OR_9_TIME,
		PS_1ST_ADDRESS => PS_1ST_ADDRESS,
		PS_2ND_ADDRESS => PS_2ND_ADDRESS,
		PS_LOGIC_GATE_EARLY_B => PS_LOGIC_GATE_EARLY_B,
		PS_LOGIC_GATE_EARLY_F => PS_LOGIC_GATE_EARLY_F,
		PS_LOGIC_GATE_EARLY_B_OR_S => PS_LOGIC_GATE_EARLY_B_OR_S,
		PS_LOGIC_GATE_SPECIAL_A => PS_LOGIC_GATE_SPECIAL_A,
		PS_LOGIC_GATE_SPECIAL_A_1 => PS_LOGIC_GATE_SPECIAL_A_1,
		PS_B_TO_LAST_LOGIC_GATE => PS_B_TO_LAST_LOGIC_GATE,
		PS_LOGIC_GATE_EARLY_S => PS_LOGIC_GATE_EARLY_S,
		MS_I_RING_HDL_BUS => MS_I_RING_HDL_BUS,
		PS_I_RING_HDL_BUS => PS_I_RING_HDL_BUS,
		LAMPS_IRING => LAMPS_IRING);

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

   MS_I_RING_CTRL <= NOT PS_I_RING_CTRL;   
   IRING_REG <= PS_I_RING_HDL_BUS;
       
    IRING_LAMPS <= (
        LAMP_15A1H02,
        LAMP_15A1G02,
        LAMP_15A1F02,
        LAMP_15A1E02,
        LAMP_15A1D02,
        LAMP_15A1C02,        
        LAMP_15A1B02,
        LAMP_15A1F01,
        LAMP_15A1E01,
        LAMP_15A1D01,        
        LAMP_15A1C01,
        LAMP_15A1B01,
        LAMP_15A1A01);        


uut_process: process

   -- variable i: INTEGER := 0;

   begin
        
   -- Your test bench code
      
   --   Test initial reset   
      
   wait for 3 us;
   MS_PROGRAM_RESET_1 <= '0';
   PS_I_RING_RESET <= '1';
   wait for 3 us;
   MS_PROGRAM_RESET_1 <= '1';
   PS_I_RING_RESET <= '0';
   PS_I_RING_CTRL <= '1';
   MS_I_RING_ADV <= '0';
   wait for 330 ns;
   MS_I_RING_ADV <= '1';
   PS_I_RING_CTRL <= '0';
   
   wait for 10 ns;
   assert IRING_REG(0) = '1'        report "RESET I OP OFF" severity failure;
   assert IRING_LAMPS(0) = '1'      report "RESET I OP LAMP OFF" severity failure; 
   for i in 1 to 12 loop
        assert IRING_REG(i) = '0' report "RESET I " & integer'image(i) & " ON" severity failure;
        assert IRING_LAMPS(i) = '0' report "RESET I " & integer'image(i) & " LAMP ON" severity failure;
   end loop;
   
   --   Test each state in the ring
   
   for i in 1 to 12 loop
   
        MS_I_RING_ADV <= '0';
        wait for 330 ns;
        MS_I_RING_ADV <= '1';
        wait for 30 ns;
        
        assert IRING_REG(0) = '0'   report "I " & integer'image(i) & 
            " I OP ON" severity failure;
        assert IRING_LAMPS(0) = '0'      report "I " & integer'image(i) &
            " I OP LAMP ON" severity failure; 
            
        for j in 1 to 12 loop
        
            if(j /= i) then
                assert IRING_REG(j) = '0' report "I " & integer'image(i) & 
                    "I " & integer'image(j) & " ON" severity failure;
                assert IRING_LAMPS(j) = '0' report "I " & integer'image(i) & 
                        "I " & integer'image(j) & " LAMP ON" severity failure;        
            end if;
            if(j = i) then
                assert IRING_REG(j) = '1' report "I " & integer'image(i) & 
                    "I " & integer'image(j) & " OFF" severity failure;
                assert IRING_LAMPS(j) = '1' report "I " & integer'image(i) & 
                    "I " & integer'image(j) & " LAMP OFF" severity failure;                    
            end if;
        end loop;
        
   end loop;
   
   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 100 us;  -- Determines how long your simulation runs
   assert false report "Simulation Ended" severity failure;
   end process;

-- END USER TEST BENCH PROCESS

END;
