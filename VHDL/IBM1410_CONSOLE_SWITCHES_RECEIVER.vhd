----------------------------------------------------------------------------------
-- Company: The Computer Collection 
-- Engineer: Jay R. Jaeger   
-- 
-- Create Date: 05/02/2022 03:43:13 PM
-- Design Name: IBM1410
-- Module Name: IBM1410_CONSOLE_SWITCHES_RECEIVER - Behavioral
-- Project Name: IBM1410 
-- Target Devices: 
-- Tool Versions: 
-- Description: This module receives data from the PC console host via module
--   IBM1410_UART_INPUT_SUBSYSTEM.  When it has received a complete switch
--   vector, it makes that vector available to the IBM 1410
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IBM1410_CONSOLE_SWITCHES_RECEIVER is
    GENERIC(
       SWITCH_VECTOR_BITS: INTEGER := 200
       );
    Port ( FPGA_CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           DEBUG_VECTOR: out STD_LOGIC_VECTOR(7 downto 0);
           SWITCH_VECTOR_INIT: in STD_LOGIC_VECTOR (SWITCH_VECTOR_BITS-1 downto 0); 
           SWITCH_FIFO_WRITE_ENABLE : in STD_LOGIC;
           SWITCH_FIFO_WRITE_DATA : in STD_LOGIC_VECTOR (7 downto 0);
           SWITCH_VECTOR : out STD_LOGIC_VECTOR (SWITCH_VECTOR_BITS-1 downto 0));
end IBM1410_CONSOLE_SWITCHES_RECEIVER;

architecture Behavioral of IBM1410_CONSOLE_SWITCHES_RECEIVER is

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
   
constant SWITCH_VECTOR_BYTES: INTEGER := SWITCH_VECTOR_BITS / 7;   
constant SWITCH_VECTOR_FIFO_SIZE: INTEGER := ((2 * SWITCH_VECTOR_BITS) / 7) + 1;
constant SWITCH_VECTOR_FIFO_WIDTH: INTEGER := 8;

type switchState_type is (
   switch_Reset, switch_WaitForChar, switch_Getchar, switch_CheckDone);

signal switchState: switchState_type := switch_Reset;

signal FIFO_READ_ENABLE: STD_LOGIC := '0';
signal FIFO_READ_DATA_VALID: STD_LOGIC;
signal FIFO_READ_DATA: STD_LOGIC_VECTOR(7 downto 0);
signal FIFO_EMPTY: STD_LOGIC;
signal FIFO_EMPTY_NEXT: STD_LOGIC;
signal FIFO_FULL: STD_LOGIC;        -- Not used - assumption for now is that 1410 will keep up.
signal FIFO_FULL_NEXT: STD_LOGIC;   -- Not used - assumption for now is that 1410 will keep up.

signal SWITCH_RECEIVE_VECTOR: STD_LOGIC_VECTOR(SWITCH_VECTOR_BITS-1 downto 0);
signal SWITCH_RECEIVE_BUFFER: STD_LOGIC_VECTOR(SWITCH_VECTOR_BITS-1 downto 0) := (others => '0');
signal SWITCH_BYTE_COUNTER: INTEGER RANGE 0 to SWITCH_VECTOR_BYTES+1;

begin

DEBUG_VECTOR <= std_logic_vector(to_unsigned(SWITCH_BYTE_COUNTER, DEBUG_VECTOR'length));

switch_process: process(FPGA_CLK, RESET, switchState, SWITCH_FIFO_WRITE_ENABLE, SWITCH_FIFO_WRITE_DATA,
   FIFO_READ_DATA_VALID, FIFO_EMPTY, FIFO_EMPTY_NEXT, SWITCH_VECTOR_INIT)

   begin

   if RESET = '1' then
      switchState <= switch_RESET;
      SWITCH_RECEIVE_VECTOR <= SWITCH_VECTOR_INIT;
   elsif FPGA_CLK'event and FPGA_CLK = '1' then
      case switchState is
      
         when switch_reset => 
            SWITCH_BYTE_COUNTER <= SWITCH_VECTOR_BYTES;
            -- switchState <= switch_WaitForChar;
            FIFO_READ_ENABLE <= '1';
            switchState <= switch_GetChar;
            
         when switch_WaitForChar =>
            if(FIFO_EMPTY = '0') then
               FIFO_READ_ENABLE <= '1';
               switchState <= switch_GetChar;
            else
               switchState <= switch_WaitForChar;
            end if;
         
         when switch_GetChar =>
            if(FIFO_READ_DATA_VALID = '1') then
               SWITCH_RECEIVE_BUFFER <= SWITCH_RECEIVE_BUFFER(SWITCH_VECTOR_BITS-1-7 downto 0) & 
                  FIFO_READ_DATA(6 downto 0);
               SWITCH_BYTE_COUNTER <= SWITCH_BYTE_COUNTER - 1;
               FIFO_READ_ENABLE <= '0';
               switchState <= switch_CheckDone;
            else
               FIFO_READ_ENABLE <= '1';
               switchState <= switch_GetChar;  -- (NOT any more) Should never actually get here...
            end if;  
             
         when switch_CheckDone =>
            if(SWITCH_BYTE_COUNTER = 0) then 
               SWITCH_RECEIVE_VECTOR <= SWITCH_RECEIVE_BUFFER;
               FIFO_READ_ENABLE <= '0';
               switchState <= switch_Reset;
            else
               FIFO_READ_ENABLE <= '1';
               -- switchState <= switch_WaitForChar;
               switchState <= switch_GetChar;
            end if; 
            
      end case;
   
   end if;
   
   end process;

   -- Instantiate the FIFO ring buffer
   
   FIFO : ring_buffer
      generic map (
         RAM_WIDTH => SWITCH_VECTOR_FIFO_WIDTH,
         RAM_DEPTH => SWITCH_VECTOR_FIFO_SIZE
      )
      port map (
         clk => FPGA_CLK,
         rst => RESET,
         wr_en => SWITCH_FIFO_WRITE_ENABLE,
         wr_data => SWITCH_FIFO_WRITE_DATA,
         rd_en => FIFO_READ_ENABLE,
         rd_valid => FIFO_READ_DATA_VALID,
         rd_data => FIFO_READ_DATA,
         empty => FIFO_EMPTY,
         empty_next => FIFO_EMPTY_NEXT,
         full => FIFO_FULL,
         full_next => FIFO_FULL_NEXT,
         fill_count => OPEN
    );

   SWITCH_VECTOR <= SWITCH_RECEIVE_VECTOR;

end Behavioral;
