----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2022 03:54:21 PM
-- Design Name: 
-- Module Name: IBM1410_UDP_FIFO_TO_UDP - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IBM1410_UDP_FIFO_TO_UDP is
    Port ( FPGA_CLK : in STD_LOGIC;
           UDP_RESET : in STD_LOGIC;
           UDP_OUTPUT_FIFO_EMPTY : in STD_LOGIC;
           UDP_OUTPUT_FIFO_DATA : in STD_LOGIC_VECTOR (8 downto 0);  -- Includes flush as MSB
           UDP_TX_ACTIVE : in STD_LOGIC;
           UDP_OUTPUT_FIFO_RD_EN : out STD_LOGIC;
           UDP_TX_DATA_VALID : out STD_LOGIC;
           UDP_TX_BYTE : out STD_LOGIC_VECTOR (7 downto 0));
end IBM1410_UDP_FIFO_TO_UDP;

architecture Behavioral of IBM1410_UDP_FIFO_TO_UDP is

type outputState_type is (output_waiting, output_strobe_fifo, output_strobe_uart, output_done);

signal outputState: outputState_type := output_waiting;

begin

output_process: process(FPGA_CLK, UDP_RESET, outputState, UDP_OUTPUT_FIFO_EMPTY, UDP_TX_ACTIVE)

   begin

      -- Asynchronous Reset
   
      if UDP_RESET = '1' then
         outputState <= output_waiting;
   
      -- FSM behavior
   
      elsif FPGA_CLK'event and FPGA_CLK = '1' then
   
         case outputState is
         
            -- Wait until we receive some data AND the transmitter isn't busy
            
            when output_waiting =>
               if UDP_OUTPUT_FIFO_EMPTY = '0' and UDP_TX_ACTIVE = '0' then
                  outputState <= output_strobe_fifo;
               else
                  outputState <= output_waiting;
               end if;
               
            -- We have some data, and the transmitter isn't busy, so get a byte from the
            -- FIFO
            
            when output_strobe_fifo =>
               outputState <= output_strobe_uart;
               
            when output_strobe_uart =>
               outputState <= output_done;
               
            when output_done =>
               outputState <= output_waiting;           
               
            end case;
                                                 
      end if;

   end process;

UDP_OUTPUT_FIFO_RD_EN <= '1' when outputState = output_strobe_fifo else '0';
UDP_TX_DATA_VALID <= '1' when outputState = output_strobe_uart else '0';
UDP_TX_BYTE <= UDP_OUTPUT_FIFO_DATA;
   
end Behavioral;
