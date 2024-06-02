----------------------------------------------------------------------------------
-- Company: The Computer Collection
-- Engineer: Jay Jaeger
-- 
-- Create Date: 01/12/2021 05:22:47 PM
-- Design Name: IBM1410
-- Module Name: IBM1410TapeAdapterUnit_tb - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Test Bench for Tape Adapter Unit (TAU)
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IBM1410TapeAdapterUnit_tb is
   PORT (
      CLK: in  STD_LOGIC;
      SW:  in  STD_LOGIC_VECTOR(15 downto 0);
      LED: out STD_LOGIC_VECTOR(15 downto 0) 
);

end IBM1410TapeAdapterUnit_tb;

architecture Behavioral of IBM1410TapeAdapterUnit_tb is

-- Must match IBM1410TapeAdapterUnit

constant TAPE_UNIT_READ_READY_BIT:  integer := 0;
constant TAPE_UNIT_WRITE_READY_BIT: integer := 1;
constant TAPE_UNIT_LOAD_POINT_BIT:  integer := 2;
constant TAPE_UNIT_TAPE_IND_BIT:    integer := 3;
constant TAPE_UNIT_TAPE_REWIND_BIT: integer := 4;

component IBM1410TapeAdapterUnit is
  
   GENERIC(
       CHANNEL_STROBE_LENGTH: integer;
       CHANNEL_CYCLE_LENGTH: integer );
   PORT (
       FPGA_CLK: in STD_LOGIC;
        
       -- TAU Input Signals From CPU
       
       MC_CPU_TO_TAU_BUS: in STD_LOGIC_VECTOR(7 downto 0);       
       
       MC_COMP_RESET_TO_TAPE: in STD_LOGIC;
       MC_WRITE_TAPE_CALL: in STD_LOGIC;
       MC_WRITE_TAPE_MK_CALL: in STD_LOGIC;
       MC_ERASE_CALL: in STD_LOGIC;
       MC_REWIND_UNLOAD: in STD_LOGIC;
       MC_REWIND_CALL: in STD_LOGIC;
       MC_BACKSPACE_CALL: in STD_LOGIC;
       MC_TURN_OFF_TAPE_IND: in STD_LOGIC;
       MC_RESET_TAPE_SEL_REG: in STD_LOGIC;
       MC_SET_TAPE_SEL_REG: in STD_LOGIC;
       MC_DISCONNECT_CALL: in STD_LOGIC;
       MC_READ_TAPE_CALL: in STD_LOGIC;
       MC_ODD_PARITY_TO_TAPE: in STD_LOGIC;
       
       MC_UNIT_NU_0_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_1_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_2_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_3_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_4_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_5_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_6_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_7_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_8_TO_TAU: in STD_LOGIC;
       MC_UNIT_NU_9_TO_TAU: in STD_LOGIC;       
            
       -- TAU Output Signals to CPU
       
       MC_TAU_TO_CPU_BUS: out STD_LOGIC_VECTOR(7 downto 0);

       MC_WRITE_CONDITION: out STD_LOGIC;
       MC_SELECT_AND_REWIND: out STD_LOGIC;
       MC_SELECT_AT_LOAD_POINT: out STD_LOGIC;
       MC_SEL_OR_TAPE_IND_ON: out STD_LOGIC;
       
       MC_TAPE_READ_STROBE: out STD_LOGIC;
       MC_TAPE_BUSY: out STD_LOGIC;
       MC_TAPE_ERROR: out STD_LOGIC;
       MC_TAPE_READY: out STD_LOGIC;
       MC_TAPE_WRITE_STROBE: out STD_LOGIC;
       MC_TAPE_IN_PROCESS: out STD_LOGIC;
      
       -- TAU to PC Support System
       
       IBM1410_TAU_XMT_CHAR: out STD_LOGIC_VECTOR(7 downto 0);
       IBM1410_TAU_XMT_STROBE: out STD_LOGIC;
              
       -- PC Support System to TAU 
       
       IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE: in STD_LOGIC;
       IBM1410_TAU_INPUT_FIFO_WRITE_DATA: in STD_LOGIC_VECTOR(7 downto 0)       
   );

end component;

-- Inputs

   signal FPGA_CLK: STD_LOGIC := '0';
   signal UART_RESET: STD_LOGIC := '0';

   signal MC_CPU_TO_TAU_BUS: STD_LOGIC_VECTOR(7 downto 0) := "11111111";      
       
   signal MC_COMP_RESET_TO_TAPE: STD_LOGIC := '1';
   signal MC_WRITE_TAPE_CALL: STD_LOGIC := '1';
   signal MC_WRITE_TAPE_MK_CALL: STD_LOGIC := '1';
   signal MC_ERASE_CALL: STD_LOGIC := '1';
   signal MC_REWIND_UNLOAD: STD_LOGIC := '1';
   signal MC_REWIND_CALL: STD_LOGIC := '1';
   signal MC_BACKSPACE_CALL: STD_LOGIC := '1';
   signal MC_TURN_OFF_TAPE_IND: STD_LOGIC := '1';
   signal MC_RESET_TAPE_SEL_REG: STD_LOGIC := '1';
   signal MC_SET_TAPE_SEL_REG: STD_LOGIC := '1';
   signal MC_DISCONNECT_CALL: STD_LOGIC := '1';
   signal MC_READ_TAPE_CALL: STD_LOGIC := '1';
   signal MC_ODD_PARITY_TO_TAPE: STD_LOGIC := '1';
       
   signal MC_UNIT_NU_0_TO_TAU: STD_LOGIC := '1';
   signal MC_UNIT_NU_1_TO_TAU: STD_LOGIC := '1';
   signal MC_UNIT_NU_2_TO_TAU: STD_LOGIC := '1';
   signal MC_UNIT_NU_3_TO_TAU: STD_LOGIC := '1';
   signal MC_UNIT_NU_4_TO_TAU: STD_LOGIC := '1';
   signal MC_UNIT_NU_5_TO_TAU: STD_LOGIC := '1';
   signal MC_UNIT_NU_6_TO_TAU: STD_LOGIC := '1';
   signal MC_UNIT_NU_7_TO_TAU: STD_LOGIC := '1';
   signal MC_UNIT_NU_8_TO_TAU: STD_LOGIC := '1';
   signal MC_UNIT_NU_9_TO_TAU: STD_LOGIC := '1';       

      
   -- outputs
   signal MC_TAU_TO_CPU_BUS: STD_LOGIC_VECTOR(7 downto 0) := "11111111";

   signal MC_WRITE_CONDITION: STD_LOGIC := '1';
   signal MC_SELECT_AND_REWIND: STD_LOGIC := '1';
   signal MC_SELECT_AT_LOAD_POINT: STD_LOGIC := '1';
   signal MC_SEL_OR_TAPE_IND_ON: STD_LOGIC := '1';
       
   signal MC_TAPE_READ_STROBE: STD_LOGIC := '1';
   signal MC_TAPE_BUSY: STD_LOGIC := '1';
   signal MC_TAPE_ERROR: STD_LOGIC := '1';
   signal MC_TAPE_READY: STD_LOGIC := '1';
   signal MC_TAPE_WRITE_STROBE: STD_LOGIC := '1';
   signal MC_TAPE_IN_PROCESS: STD_LOGIC := '1';
      
       -- TAU to PC Support System
       
   signal IBM1410_TAU_XMT_CHAR: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
   signal IBM1410_TAU_XMT_STROBE: STD_LOGIC := '0';
              
       -- PC Support System to TAU 
       
   signal IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE: STD_LOGIC  := '0';
   signal IBM1410_TAU_INPUT_FIFO_WRITE_DATA: STD_LOGIC_VECTOR(7 downto 0) := "00000000";       


begin

   UUT: IBM1410TapeAdapterUnit
   generic map (
       CHANNEL_STROBE_LENGTH => 10,   -- SHORT VALUES FOR TESTING separate from channel
       CHANNEL_CYCLE_LENGTH => 30 )
   port map (
       FPGA_CLK => FPGA_CLK,
       MC_COMP_RESET_TO_TAPE => MC_COMP_RESET_TO_TAPE,
        
       -- TAU Input Signals From CPU
       
       MC_CPU_TO_TAU_BUS => MC_CPU_TO_TAU_BUS,       
       
       MC_WRITE_TAPE_CALL => MC_WRITE_TAPE_CALL,
       MC_WRITE_TAPE_MK_CALL => MC_WRITE_TAPE_MK_CALL,
       MC_ERASE_CALL => MC_ERASE_CALL,
       MC_REWIND_UNLOAD => MC_REWIND_UNLOAD,
       MC_REWIND_CALL => MC_REWIND_CALL,
       MC_BACKSPACE_CALL => MC_BACKSPACE_CALL,
       MC_TURN_OFF_TAPE_IND => MC_TURN_OFF_TAPE_IND,
       MC_RESET_TAPE_SEL_REG => MC_RESET_TAPE_SEL_REG,
       MC_SET_TAPE_SEL_REG => MC_SET_TAPE_SEL_REG,
       MC_DISCONNECT_CALL => MC_DISCONNECT_CALL,
       MC_READ_TAPE_CALL => MC_READ_TAPE_CALL,
       MC_ODD_PARITY_TO_TAPE => MC_ODD_PARITY_TO_TAPE,
       
       MC_UNIT_NU_0_TO_TAU => MC_UNIT_NU_0_TO_TAU, 
       MC_UNIT_NU_1_TO_TAU => MC_UNIT_NU_1_TO_TAU, 
       MC_UNIT_NU_2_TO_TAU => MC_UNIT_NU_2_TO_TAU, 
       MC_UNIT_NU_3_TO_TAU => MC_UNIT_NU_3_TO_TAU, 
       MC_UNIT_NU_4_TO_TAU => MC_UNIT_NU_4_TO_TAU, 
       MC_UNIT_NU_5_TO_TAU => MC_UNIT_NU_5_TO_TAU, 
       MC_UNIT_NU_6_TO_TAU => MC_UNIT_NU_6_TO_TAU, 
       MC_UNIT_NU_7_TO_TAU => MC_UNIT_NU_7_TO_TAU, 
       MC_UNIT_NU_8_TO_TAU => MC_UNIT_NU_8_TO_TAU, 
       MC_UNIT_NU_9_TO_TAU => MC_UNIT_NU_9_TO_TAU, 
            
       -- TAU Output Signals to CPU
       
       MC_TAU_TO_CPU_BUS => MC_TAU_TO_CPU_BUS,

       MC_WRITE_CONDITION => MC_WRITE_CONDITION,
       MC_SELECT_AND_REWIND => MC_SELECT_AND_REWIND,
       MC_SELECT_AT_LOAD_POINT => MC_SELECT_AT_LOAD_POINT,
       MC_SEL_OR_TAPE_IND_ON => MC_SEL_OR_TAPE_IND_ON,
       
       MC_TAPE_READ_STROBE => MC_TAPE_READ_STROBE,
       MC_TAPE_BUSY => MC_TAPE_BUSY,
       MC_TAPE_ERROR => MC_TAPE_ERROR, 
       MC_TAPE_READY => MC_TAPE_READY,
       MC_TAPE_WRITE_STROBE => MC_TAPE_WRITE_STROBE,
       MC_TAPE_IN_PROCESS => MC_TAPE_IN_PROCESS,
      
       -- TAU to PC Support System
       
       IBM1410_TAU_XMT_CHAR => IBM1410_TAU_XMT_CHAR,
       IBM1410_TAU_XMT_STROBE => IBM1410_TAU_XMT_STROBE,
              
       -- PC Support System to TAU 
       
       IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE => IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE,
       IBM1410_TAU_INPUT_FIFO_WRITE_DATA => IBM1410_TAU_INPUT_FIFO_WRITE_DATA
   );
   


fpga_clk_process: process

   constant clk_period : time := 10 ns;

   begin
      fpga_clk <= '0';
      wait for clk_period / 2;
      fpga_clk <= '1';
      wait for clk_period / 2;
   end process;
   

uut_process: process

   variable t: time;

   begin
   
   UART_RESET <= '1';   
   wait for 100 ns;
   UART_RESET <= '0';
   wait for 100 ns;
   t := now;
      
   -- With no unit selected, status should be not ready, with the other bits NOT asserted
   
   assert MC_TAPE_READY = '1' report "Test 1, Ready asserted" severity failure;
   assert MC_SELECT_AT_LOAD_POINT = '1' report "Test 1, Load Point asserted" severity failure;
   assert MC_SEL_OR_TAPE_IND_ON = '1' report "Test 1, Tape IND asserted" severity failure;
   assert MC_SELECT_AND_REWIND = '1' report "Test 1, Rewind asserted" severity failure;
   
   -- Set TAU select for unit 0.  Now the status should still be not ready, but the others NOT asserted.
   
   MC_RESET_TAPE_SEL_REG <= '0';
   wait for 20 ns;
   MC_RESET_TAPE_SEL_REG <= '1';
   wait for 20 ns;
   MC_UNIT_NU_0_TO_TAU <= '0';
   MC_SET_TAPE_SEL_REG <= '0';
   wait for 20 ns;
   MC_SET_TAPE_SEL_REG <= '1';   
        
   wait for 100 ns;

   assert MC_TAPE_READY = '1' report "Test 2, Ready asserted" severity failure;
   assert MC_SELECT_AT_LOAD_POINT = '1' report "Test 2, Load Point asserted" severity failure;
   assert MC_SEL_OR_TAPE_IND_ON = '1' report "Test 2, Tape IND asserted" severity failure;
   assert MC_SELECT_AND_REWIND = '1' report "Test 2, Rewind asserted" severity failure;
      
   -- Now send a status unit select byte, and check the results.  (We don't have to send the leading
   -- 0x84 that the PC would send - that would get sucked up by the UART support system logic.)
   -- But this should not change the output from the TAU until the actual
   
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA <= "00000000";  -- Indicate we will provide status for Unit 0
   wait for 100 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '1';
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '0';
   wait for 100 ns;
   
   assert MC_TAPE_READY = '1' report "Test 3, Ready asserted" severity failure;
   assert MC_SELECT_AT_LOAD_POINT = '1' report "Test 3, Load Point asserted" severity failure;
   assert MC_SEL_OR_TAPE_IND_ON = '1' report "Test 3, Tape IND asserted" severity failure;
   assert MC_SELECT_AND_REWIND = '1' report "Test 3, Rewind asserted" severity failure;
   
   -- Now, set the ready status bit.      

   IBM1410_TAU_INPUT_FIFO_WRITE_DATA(TAPE_UNIT_READ_READY_BIT) <= '1';  -- Set Status to READY
   wait for 100 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '1';
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '0';
   wait for 100 ns;

   assert MC_TAPE_READY = '0' report "Test 4, Ready NOT asserted" severity failure;
   assert MC_SELECT_AT_LOAD_POINT = '1' report "Test 4, Load Point asserted" severity failure;
   assert MC_SEL_OR_TAPE_IND_ON = '1' report "Test 4, Tape IND asserted" severity failure;
   assert MC_SELECT_AND_REWIND = '1' report "Test 4, Rewind asserted" severity failure;
  
   -- Now select unit 9 - unit should report NOT ready.
   
   MC_RESET_TAPE_SEL_REG <= '0';
   wait for 20 ns;
   MC_RESET_TAPE_SEL_REG <= '1';
   wait for 20 ns;
   MC_UNIT_NU_9_TO_TAU <= '0';
   MC_UNIT_NU_0_TO_TAU <= '1';
   MC_SET_TAPE_SEL_REG <= '0';
   wait for 20 ns;
   MC_SET_TAPE_SEL_REG <= '1';
   wait for 100 ns;

   assert MC_TAPE_READY = '1' report "Test 5, Ready asserted" severity failure;
   assert MC_SELECT_AT_LOAD_POINT = '1' report "Test 5, Load Point asserted" severity failure;
   assert MC_SEL_OR_TAPE_IND_ON = '1' report "Test 5, Tape IND asserted" severity failure;
   assert MC_SELECT_AND_REWIND = '1' report "Test 5, Rewind asserted" severity failure;
   
   wait for 100 ns;
   
   -- Make Unit 9 ready for Unit Control Tests

   -- MC_UNIT_NU_9_TO_TAU <= '0';
   wait for 100 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA <= "00001001";  -- Indicate we will provide status for Unit 9
   wait for 100 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '1';
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '0';
   wait for 100 ns;
   
   assert MC_TAPE_READY = '1' report "UC Test 1, Ready asserted" severity failure;
   assert MC_SELECT_AT_LOAD_POINT = '1' report "UC Test 1, Load Point asserted" severity failure;
   assert MC_SEL_OR_TAPE_IND_ON = '1' report "UC Test 1, Tape IND asserted" severity failure;
   assert MC_SELECT_AND_REWIND = '1' report "UC Test 1, Rewind asserted" severity failure;
   
   -- Now, set the ready status bit.      

   IBM1410_TAU_INPUT_FIFO_WRITE_DATA <= "00000000";
   wait for 100 ns;
   -- Set Status READY for READ, and NOT at load point.
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA(TAPE_UNIT_READ_READY_BIT) <= '1';  -- Set Status to READY, NOT at load point
   wait for 100 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '1';
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '0';
   wait for 100 ns;

   assert MC_TAPE_READY = '0' report "UC Test 2, Ready NOT asserted" severity failure;
   assert MC_SELECT_AT_LOAD_POINT = '1' report "UC Test 2, Load Point asserted" severity failure;
   assert MC_SEL_OR_TAPE_IND_ON = '1' report "UC Test 2, Tape IND asserted" severity failure;
   assert MC_SELECT_AND_REWIND = '1' report "UC Test 2, Rewind asserted" severity failure;

   -- Now, tell the TAU we want to rewind.  Since the channel drops the CALL signal quickly,
   -- we do so in this test, as well.
   
   assert MC_TAPE_BUSY = '1' report "UC Test 3, TAU busy before starting" severity failure;
   
   MC_REWIND_CALL <= '0';
   wait for 10 ns;

   -- The TAU should go busy -- briefly
   
   assert MC_TAPE_BUSY = '0' report "UC Test 3, TAU did not go busy" severity failure;

   MC_REWIND_CALL <= '1';
      
   -- Then the TAU should drop busy

   wait for 10 ns;
   assert MC_TAPE_BUSY = '1' report "UC Test 3, TAU stayed busy" severity failure;   
      
   -- Wait for the TAU to send something to the PC... the unit number
   
   wait until IBM1410_TAU_XMT_STROBE = '1' for 25 us;
   
   -- It should be for unit 9
   
   assert IBM1410_TAU_XMT_STROBE = '1' 
      report "UC Test 3, No unit char transmitted" severity failure;
   assert IBM1410_TAU_XMT_CHAR = "00001001" report "UC Test 3, Unit NOT 9" severity failure;
   
   -- Wait again for the TAU to send something to the PC... a rewind request.
   
   wait until IBM1410_TAU_XMT_STROBE = '1' for 25 us;
   
   assert IBM1410_TAU_XMT_STROBE = '1' 
      report "UC Test 3, No request char transmitted" severity failure;
   assert IBM1410_TAU_XMT_CHAR = "01000000" report "UC Test 3, Request not Rewind" severity failure;

   -- At this point, Unit 9 should be not ready, and rewinding because PC can't react as fast as a real drive.
   
   assert MC_SELECT_AND_REWIND = '0' report "UC Test 3, Drive Status not rewinding" severity failure;     
   assert MC_TAPE_READY = '1' report "UC Test 3, Drive Status READY, should not be." severity failure;
          
   -- Go back and select Unit 0 - status should be as it was before for Unit 0.
   
   MC_RESET_TAPE_SEL_REG <= '0';
   wait for 20 ns;
   MC_RESET_TAPE_SEL_REG <= '1';
   wait for 20 ns;
   MC_UNIT_NU_0_TO_TAU <= '0';
   MC_UNIT_NU_9_TO_TAU <= '1';
   MC_SET_TAPE_SEL_REG <= '0';
   wait for 20 ns;
   MC_SET_TAPE_SEL_REG <= '1';
   wait for 20 ns;
   
   assert MC_TAPE_READY = '0' report "UC Test 4, Unit 0 Ready NOT asserted" severity failure;
   assert MC_SELECT_AT_LOAD_POINT = '1' report "UC Test 4, Unit 0 Load Point asserted" severity failure;
   assert MC_SEL_OR_TAPE_IND_ON = '1' report "UC Test 4, Unit 0 Tape IND asserted" severity failure;
   assert MC_SELECT_AND_REWIND = '1' report "UC Test 4, Unit 0 Rewind asserted" severity failure;

   -- Now, let unit 9 finish rewinding

   IBM1410_TAU_INPUT_FIFO_WRITE_DATA <= "00001001";  -- Indicate we will provide status for Unit 0
   wait for 100 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '1';
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '0';
   wait for 100 ns;

   -- Now, set the ready (for read AND write) and load point status bits      

   IBM1410_TAU_INPUT_FIFO_WRITE_DATA <= "00000000";
   wait for 100 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA(TAPE_UNIT_READ_READY_BIT) <= '1';
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA(TAPE_UNIT_WRITE_READY_BIT) <= '1';
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA(TAPE_UNIT_LOAD_POINT_BIT) <= '1';
   wait for 100 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '1';
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '0';
   wait for 100 ns;

   -- Select Unit 9 again - it should be at load point.

   MC_RESET_TAPE_SEL_REG <= '0';
   wait for 20 ns;
   MC_RESET_TAPE_SEL_REG <= '1';
   wait for 20 ns;
   MC_UNIT_NU_0_TO_TAU <= '1';
   MC_UNIT_NU_9_TO_TAU <= '0';
   MC_SET_TAPE_SEL_REG <= '0';
   wait for 20 ns;
   MC_SET_TAPE_SEL_REG <= '1';
   wait for 100 ns;
   
   assert MC_TAPE_READY = '0' report "UC Test 5, Unit 9 Ready NOT asserted" severity failure;
   assert MC_SELECT_AT_LOAD_POINT = '0' report "UC Test 5, Unit 8 Load Point NOT asserted" severity failure;
   assert MC_SEL_OR_TAPE_IND_ON = '1' report "UC Test 5, Unit 9 Tape IND asserted" severity failure;
   assert MC_SELECT_AND_REWIND = '1' report "UC Test 5, Unit 9 Rewind asserted" severity failure;
   
   --------------------------------------------------------------------------------------------
   
   -- Now, lets read a faux record from unit 9.
   
   MC_READ_TAPE_CALL <= '0';
   wait for 10 ns;
   
   assert MC_TAPE_BUSY = '0' report "Read Test 1, TAU did not go busy" severity failure;

   MC_READ_TAPE_CALL <= '1';
      
   -- For a read, the TAU should STAY busy

   wait for 10 ns;
   assert MC_TAPE_BUSY = '0' report "Read Test 1, TAU did not stay busy" severity failure;  
   assert MC_TAPE_IN_PROCESS = '0' report "Read Test 1, TAU not In Process" severity failure; 
      
   -- Wait for the TAU to send something to the PC... the unit number
   -- This thing reacts quickly - strobe might already be set!
   
   if IBM1410_TAU_XMT_STROBE /= '1' then
      wait until IBM1410_TAU_XMT_STROBE = '1' for 25 us;
   end if;
   
   -- It should be for unit 9
   
   assert IBM1410_TAU_XMT_STROBE = '1' 
      report "Read Test 1, No unit char transmitted" severity failure;
   assert IBM1410_TAU_XMT_CHAR = "00001001" report "Read Test 1, Unit NOT 9" severity failure;
   
   -- Wait again for the TAU to send something to the PC... a Read request.
   
   wait until IBM1410_TAU_XMT_STROBE = '1' for 25 us;
   
   assert IBM1410_TAU_XMT_STROBE = '1' 
      report "Read Test 1, No request char transmitted" severity failure;
   assert IBM1410_TAU_XMT_CHAR = "00000001" report "Read Test 1, Request not Read" severity failure;   
   
   -- Now we get to play PC Support program...  Send Unit 9 with the X'40' bit set...
   
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA <= "01001001";  -- Read data for Unit 9
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '1';
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '0';
   wait for 100 ns;
   
   -- Now send a 20 byte record
   
   for i in 1 to 20 loop      
      IBM1410_TAU_INPUT_FIFO_WRITE_DATA <= std_logic_vector(to_unsigned(i,
         IBM1410_TAU_INPUT_FIFO_WRITE_DATA'length));
      wait for 10 ns;
      IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '1';
      wait for 10 ns;
      IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '0';
      -- Wait for the channel strobe...
      if MC_TAPE_READ_STROBE /= '0' then
         wait until MC_TAPE_READ_STROBE = '0' for 25 us;
      end if;
      assert MC_TAPE_READ_STROBE = '0' report "Read Test 1, no Read Strobe" severity failure;
      wait for 10 ns;
      -- Check the data
      assert MC_TAU_TO_CPU_BUS = not IBM1410_TAU_INPUT_FIFO_WRITE_DATA report
         "Read Test 1 Data to Channel mismatch" severity failure;
      -- wait for strobe to go away
      if MC_TAPE_READ_STROBE /= '1' then
         wait until MC_TAPE_READ_STROBE = '1' for 25 us;
      end if;
      assert MC_TAPE_READ_STROBE = '1' report "Read Test 1, Read Strobe Stayed active"
         severity failure;

      -- Need to wait - normally our serial port will be slower than the channel
      wait for 1 us;
                     
      assert MC_TAPE_BUSY = '0' report "Read Test 1, TAU did not stay busy" severity failure;  
      assert MC_TAPE_IN_PROCESS = '0' report "Read Test 1, TAU did not stay In Process" 
        severity failure;  
              
   end loop;

   -- We are no longer at load point...  (TODO)
                         
   -- Indicate the read is complete
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA <= "00000000";  -- End of record flag
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '1';
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '0';
   
   -- Now, wait for TAU to go un-busy
   
   if MC_TAPE_BUSY /= '1' then
      wait until MC_TAPE_BUSY = '1' for 25 us;
   end if;
   assert MC_TAPE_BUSY = '1' report "Read Test 1, TAU Stayed busy after EOR" severity failure;     
   
   if MC_TAPE_IN_PROCESS /= '1' then
      wait until MC_TAPE_IN_PROCESS = '1' for 25 us;
   end if;
   assert MC_TAPE_IN_PROCESS = '1' report "Read Test 1, TAU Stayed in process after EOR" 
      severity failure; 
   
   wait for 100 ns;
   
   ----------------------------------------------------------------------------------------
   
   -- Now do a Read Tape Mark test...

   MC_READ_TAPE_CALL <= '0';
   wait for 10 ns;
   
   assert MC_TAPE_BUSY = '0' report "Read Test 2, TAU did not go busy" severity failure;

   MC_READ_TAPE_CALL <= '1';
      
   -- For a read, the TAU should STAY busy

   wait for 10 ns;
   assert MC_TAPE_BUSY = '0' report "Read Test 2, TAU did not stay busy" severity failure;  
   assert MC_TAPE_IN_PROCESS = '0' report "Read Test 2, TAU not In Process" severity failure; 

   -- At the beginning, Tape Indicate should NOT be on...

   assert MC_SEL_OR_TAPE_IND_ON = '1' report "Read Test 2 - Tape Indicate active early"
      severity failure;
      
   -- Wait for the TAU to send something to the PC... the unit number
   -- This thing reacts quickly - strobe might already be set!
   
   if IBM1410_TAU_XMT_STROBE /= '1' then
      wait until IBM1410_TAU_XMT_STROBE = '1' for 25 us;
   end if;
   
   -- It should be for unit 9
   
   assert IBM1410_TAU_XMT_STROBE = '1' 
      report "Read Test 2, No unit char transmitted" severity failure;
   assert IBM1410_TAU_XMT_CHAR = "00001001" report "Read Test 2, Unit NOT 9" severity failure;
   
   -- Wait again for the TAU to send something to the PC... a Read request.
   
   wait until IBM1410_TAU_XMT_STROBE = '1' for 25 us;
   
   assert IBM1410_TAU_XMT_STROBE = '1' 
      report "Read Test 2, No request char transmitted" severity failure;
   assert IBM1410_TAU_XMT_CHAR = "00000001" report "Read Test 2, Request not Read" severity failure;   
   
   -- Now we get to play PC Support program...  Send Unit 9 with the X'40' bit set...
   
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA <= "01001001";  -- Read data for Unit 9
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '1';
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '0';
   wait for 100 ns;
   
   -- Now send a 1 byte Tape Mark record
   
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA <= "00001111";  -- Tape Mark - always even parity
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '1';
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '0';
   -- Wait for the channel strobe...
   if MC_TAPE_READ_STROBE /= '0' then
      wait until MC_TAPE_READ_STROBE = '0' for 25 us;
   end if;
   assert MC_TAPE_READ_STROBE = '0' report "Read Test 2, no Read Strobe" severity failure;
   wait for 10 ns;
   -- Check the data
   assert MC_TAU_TO_CPU_BUS = not IBM1410_TAU_INPUT_FIFO_WRITE_DATA report
      "Read Test 2 Data to Channel mismatch" severity failure;
   -- wait for strobe to go away
   if MC_TAPE_READ_STROBE /= '1' then
      wait until MC_TAPE_READ_STROBE = '1' for 25 us;
   end if;
   assert MC_TAPE_READ_STROBE = '1' report "Read Test 2, Read Strobe Stayed active"
      severity failure;

   assert MC_TAPE_BUSY = '0' report "Read Test 1, TAU did not stay busy" severity failure;  
   assert MC_TAPE_IN_PROCESS = '0' report "Read Test 1, TAU did not stay In Process" 
      severity failure;  

   -- We are no longer at load point...  (TODO)
   
   -- At this point, Tape Indicate should be on...
   
   assert MC_SEL_OR_TAPE_IND_ON = '0' report "Read Test 2 - Tape Indicate NOT active"
      severity failure;
                         
   -- Indicate the read is complete
   
   IBM1410_TAU_INPUT_FIFO_WRITE_DATA <= "00000000";  -- End of record flag
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '1';
   wait for 10 ns;
   IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE <= '0';
   
   -- Now, wait for TAU to go un-busy
   
   if MC_TAPE_BUSY /= '1' then
      wait until MC_TAPE_BUSY = '1' for 25 us;
   end if;
   assert MC_TAPE_BUSY = '1' report "Read Test 2, TAU Stayed busy after EOR" severity failure;     
   
   if MC_TAPE_IN_PROCESS /= '1' then
      wait until MC_TAPE_IN_PROCESS = '1' for 25 us;
   end if;
   assert MC_TAPE_IN_PROCESS = '1' report "Read Test 2, TAU Sayed in process after EOR" 
      severity failure; 

   assert MC_SEL_OR_TAPE_IND_ON = '0' report "Read Test 2 - Tape Indicate NOT active at EOR"
      severity failure;
                           
   wait for 100 ns;
   
   ---------------------------------------------------------------------------------------------
   -- Now do a WRITE tape mark test

   MC_WRITE_TAPE_MK_CALL <= '0';
   wait for 10 ns;
   
   assert MC_TAPE_BUSY = '0' report "WTM Test, TAU did not go busy" severity failure;

   MC_WRITE_TAPE_MK_CALL <= '1';
      
   -- For a WTM, the TAU should STAY busy for a little while.

   wait for 10 ns;
   assert MC_TAPE_BUSY = '0' report "WTM Test, TAU did not stay busy" severity failure;  
   assert MC_TAPE_IN_PROCESS = '0' report "WTM, TAU not In Process" severity failure; 
      
   -- Wait for the TAU to send something to the PC... the unit number
   -- This thing reacts quickly - strobe might already be set!
   
   if IBM1410_TAU_XMT_STROBE /= '1' then
      wait until IBM1410_TAU_XMT_STROBE = '1' for 25 us;
   end if;
   
   -- It should be for unit 9
   
   assert IBM1410_TAU_XMT_STROBE = '1' 
      report "WTM Test, No unit char transmitted" severity failure;
   assert IBM1410_TAU_XMT_CHAR = "00001001" report "WTM Test, Unit NOT 9" severity failure;
   wait for 10 ns;
   
   -- Wait again for the TAU to send something to the PC... WTM.
   
   wait until IBM1410_TAU_XMT_STROBE = '1' for 25 us;
   
   assert IBM1410_TAU_XMT_STROBE = '1' 
      report "WTM Test, No request char transmitted" severity failure;
   assert IBM1410_TAU_XMT_CHAR = "00010000" report "WTM Test, Request not WTM" severity failure;   
   
   -- Make sure it doesn't strobe the
   
   wait until MC_TAPE_WRITE_STROBE = '0' for 10 us;
   
   assert MC_TAPE_WRITE_STROBE = '1' report "WTM Test, Strobed Channel but should not.";
   
   -- assert a disconnect (not sure if the 1410 would actually do so at this point...)
   
   MC_DISCONNECT_CALL <= '0';
   wait for 40 ns;
   MC_DISCONNECT_CALL <= '1';
   
   -- Everything should be done, now.
   
   assert MC_TAPE_BUSY = '1' report "WTM Test, TAU still busy" severity failure;  
   assert MC_TAPE_IN_PROCESS = '1' report "WTM Test 1, TAU did still In Process" 
      severity failure;  

   -- We are no longer at load point...  (TODO)
                           
   wait for 100 ns;
   
-------------------------------------------------------------------------------------------------

-- Now, lets WRITE a faux record from unit 9.
   
   MC_WRITE_TAPE_CALL <= '0';
   wait for 10 ns;
   
   assert MC_TAPE_BUSY = '0' report "Write Test 1, TAU did not go busy" severity failure;

   MC_WRITE_TAPE_CALL <= '1';
      
   -- For a write, the TAU should STAY busy

   wait for 10 ns;
   assert MC_TAPE_BUSY = '0' report "Write Test 1, TAU did not stay busy" severity failure;  
   assert MC_TAPE_IN_PROCESS = '0' report "Write Test 1, TAU not In Process" severity failure; 
      
   -- Wait for the TAU to send something to the PC... the unit number
   -- This thing reacts quickly - strobe might already be set!
   
   if IBM1410_TAU_XMT_STROBE /= '1' then
      wait until IBM1410_TAU_XMT_STROBE = '1' for 25 us;
   end if;
   
   -- It should be for unit 9
   
   assert IBM1410_TAU_XMT_STROBE = '1' 
      report "Write Test 1, No unit char transmitted" severity failure;
   assert IBM1410_TAU_XMT_CHAR = "00001001" report "Write Test 1, Unit NOT 9" severity failure;
   wait for 10 ns;
   
   -- Wait again for the TAU to send something to the PC... a WRITE request.
   
   wait until IBM1410_TAU_XMT_STROBE = '1' for 25 us;
   
   assert IBM1410_TAU_XMT_STROBE = '1' 
      report "Write Test 1, No request char transmitted" severity failure;
   assert IBM1410_TAU_XMT_CHAR = "00000010" report "Write Test 1, Request not Write" severity failure;
   wait for 100 ns;   
   
   -- Set up the initial channel data
   
   MC_CPU_TO_TAU_BUS <= not "00000001";
   wait for 10 ns;
   
   -- Now send a 20 byte record
   
   for i in 1 to 20 loop
   
      -- Wait for TAU to send the next character...
      if IBM1410_TAU_XMT_STROBE = '0' then            
         wait until IBM1410_TAU_XMT_STROBE = '1' for 25 us;
      end if;   
      assert IBM1410_TAU_XMT_STROBE = '1' 
         report "Write Test 1, No data char transmitted" severity failure;
         
      -- Check that the data matches
      
      assert IBM1410_TAU_XMT_CHAR 
         = std_logic_vector(to_unsigned(i,IBM1410_TAU_XMT_CHAR'length))
         report "Write Test 1, Data sent to PC is not as expected" severity failure;
      wait for 100 ns;   

      -- Wait for the channel strobe
      
      if MC_TAPE_WRITE_STROBE /= '0' then
         wait until MC_TAPE_WRITE_STROBE = '0' for 25 us;
      end if;
         
      assert MC_TAPE_WRITE_STROBE = '0' report "Write Test 1, No Write Strobe from TAU"
         severity failure;
         
      -- If i is 20, we already sent the 20 -- time to disconnect.  Otherwise, provide
      -- the TAU with the next character.
      
      if i /= 20 then           
         MC_CPU_TO_TAU_BUS <= not std_logic_vector(to_unsigned(i+1,MC_CPU_TO_TAU_BUS'length));

         -- Need to wait - normally our serial port will be slower than the channel
         wait for 1 us;
                     
         assert MC_TAPE_BUSY = '0' report "Write Test 1, TAU did not stay busy" severity failure;  
         assert MC_TAPE_IN_PROCESS = '0' report "Write Test 1, TAU did not stay In Process" 
           severity failure;
      else
         MC_DISCONNECT_CALL <= '0';
      end if;
              
   end loop;

   -- Now, we should see the EOR get transmitted

   wait until IBM1410_TAU_XMT_STROBE = '1' for 25 us;
   
   assert IBM1410_TAU_XMT_STROBE = '1' 
      report "Write Test 1, No EOR char transmitted" severity failure;
   assert IBM1410_TAU_XMT_CHAR = "00000000" report "Write Test 1, Did not get X'00' EOR" 
      severity failure;
   wait for 100 ns;   
   
   -- Now, wait for TAU to go un-busy
   
   if MC_TAPE_BUSY /= '1' then
      wait until MC_TAPE_BUSY = '1' for 25 us;
   end if;
   assert MC_TAPE_BUSY = '1' report "Write Test 1, TAU Stayed busy after EOR" severity failure;     
   
   if MC_TAPE_IN_PROCESS /= '1' then
      wait until MC_TAPE_IN_PROCESS = '1' for 25 us;
   end if;
   assert MC_TAPE_IN_PROCESS = '1' report "Write Test 1, TAU Stayed in process after EOR" 
      severity failure; 
   
   wait for 100 ns;
   
   
   assert false report "NORMAL end of simulation" severity failure;
   
   -- Now, we need to feed it some data - say, a 20 byte record.
   
end process;

MC_COMP_RESET_TO_TAPE <= not UART_RESET;

end Behavioral;
