-- Company: The Computer Collection
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 05/07/2024 20:09
-- Design Name: IBM1410
-- Module Name: IBM1410TapeAdapterUnit - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Simulates the IBM 1410 1414 Tape Adapter Unit (TAU)
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
use WORK.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Multipler is 10000 for ms, 100 for testing.

entity IBM1410TapeAdapterUnit is
  
   PORT (
       FPGA_CLK: in STD_LOGIC;
       UART_RESET: in STD_LOGIC;
        
       -- TAU Input Signals From CPU
       
       MC_CPU_TO_TAU_BUS: in STD_LOGIC_VECTOR(7 downto 0);       
       
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
      
       -- TAU UART to PC Support System
       
       IBM1410_TAU_XMT_CHAR: out STD_LOGIC_VECTOR(7 downto 0);
       IBM1410_TAU_XMT_STROBE: out STD_LOGIC;
              
       -- Console Input UART
       
       IBM1410_TAU_INPUT_FIFO_WRITE_ENABLE: in STD_LOGIC;
       IBM1410_TAU_INPUT_FIFO_WRITE_DATA: in STD_LOGIC_VECTOR(7 downto 0)
   );

end IBM1410TapeAdapterUnit;

architecture Behavioral of IBM1410TapeAdapterUnit is

   component ring_buffer is
      generic (
         RAM_WIDTH : natural;
         RAM_DEPTH : natural
      );
      port (
         clk : in std_logic;
         rst : in std_logic;

         -- Write port
         wr_en : in std_logic;
         wr_data : in std_logic_vector(RAM_WIDTH - 1 downto 0);

         -- Read port
         rd_en : in std_logic;
         rd_valid : out std_logic;
         rd_data : out std_logic_vector(RAM_WIDTH - 1 downto 0);

         -- Flags
         empty : out std_logic;
         empty_next : out std_logic;
         full : out std_logic;
         full_next : out std_logic;

         -- The number of elements in the FIFO
         fill_count : out integer range RAM_DEPTH - 1 downto 0
      );
   end component;

constant CLOCKPERIOD: integer := 10;   -- 100 Mhz, 10 ns

constant BCD_1_BIT: integer := 0;
constant BCD_2_BIT: integer := 1;
constant BCD_4_BIT: integer := 2;
constant BCD_8_BIT: integer := 3;
constant BCD_A_BIT: integer := 4;
constant BCD_B_BIT: integer := 5;


begin

-- State machines / processes
   
   
-- Combinatorial code

  
end Behavioral;
