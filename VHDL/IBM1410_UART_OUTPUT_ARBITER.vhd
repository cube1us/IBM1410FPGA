----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2022 07:32:30 PM
-- Design Name: IBM1410
-- Module Name: IBM1410_UART_OUTPUT_ARBITER - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Arbitrates between multiple possible requests for access to the UART
--   to send data out to PC support program
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

entity IBM1410_UART_OUTPUT_ARBITER is
    Port ( FPGA_CLK: in STD_LOGIC;
           UART_OUTPUT_ARBITER_REQUESTS : in STD_LOGIC_VECTOR (7 downto 0);
           UART_RESET: in STD_LOGIC;
           UART_OUTPUT_FIFO_FULL : in STD_LOGIC;
           UART_OUTPUT_FIFO_FULL_NEXT: in STD_LOGIC;
           UART_OUTPUT_CHAR_ACCEPTED: in STD_LOGIC;
           UART_OUTPUT_ARBITER_GRANTS : out STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_NEW_REQUESTER: out STD_LOGIC
           );
end IBM1410_UART_OUTPUT_ARBITER;

architecture Behavioral of IBM1410_UART_OUTPUT_ARBITER is

type arbiterState_type is (
   arbiter_idle, arbiter_requested, arbiter_granted );

signal arbiterState: arbiterState_type := arbiter_idle;

signal grants: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal previousGrants: STD_LOGIC_VECTOR(7 downto 0) := "00000000";

begin

arbiter_process: process(FPGA_CLK, UART_RESET, arbiterState, UART_OUTPUT_FIFO_FULL, UART_OUTPUT_FIFO_FULL_NEXT,
   UART_OUTPUT_ARBITER_REQUESTS)

   begin    
      -- Asynchronous reset

      if UART_RESET = '1' then
         grants <= "00000000";
         previousGrants <= "00000000";
         arbiterState <= arbiter_idle;      
      
      -- FSM behavior
      
      elsif FPGA_CLK'event and FPGA_CLK = '1' then

         case arbiterState is
      
            -- Wait until we receive a request AND there is not a character still in the
            -- process of entering the UART FIFO
      
            when arbiter_idle =>
               grants <= "00000000";
               if UART_OUTPUT_CHAR_ACCEPTED = '0' and UART_OUTPUT_ARBITER_REQUESTS /= "00000000" then
                  arbiterState <= arbiter_requested;
               else
                  arbiterState <= arbiter_idle;
               end if;
            
            -- We have a request, but might still have to wait until the FIFO is not full
            -- (This full check could have been done in the idle state, above, instead.)
            -- Once it is not full, raise the highest priority grant line for which we have
            -- a request.
            
            when arbiter_requested =>
               grants <= "00000000";
               if UART_OUTPUT_FIFO_FULL = '0' and UART_OUTPUT_FIFO_FULL_NEXT = '0' and
                  UART_OUTPUT_CHAR_ACCEPTED = '0' then
                  if UART_OUTPUT_ARBITER_REQUESTS(7) = '1' then
                     grants <= "10000000";
                  elsif UART_OUTPUT_ARBITER_REQUESTS(6) = '1' then
                     grants <= "01000000";
                  elsif UART_OUTPUT_ARBITER_REQUESTS(5) = '1' then
                     grants <= "00100000";
                  elsif UART_OUTPUT_ARBITER_REQUESTS(4) = '1' then
                     grants <= "00010000";
                  elsif UART_OUTPUT_ARBITER_REQUESTS(3) = '1' then
                     grants <= "00001000";
                  elsif UART_OUTPUT_ARBITER_REQUESTS(2) = '1' then
                     grants <= "00000100";
                  elsif UART_OUTPUT_ARBITER_REQUESTS(1) = '1' then
                     grants <= "00000010";
                  elsif UART_OUTPUT_ARBITER_REQUESTS(0) = '1' then
                     grants <= "00000001";
                  else 
                     grants <= "00000000";  -- This should never actually happen.
                  end if;
                  arbiterState <= arbiter_granted;
            else
               arbiterState <= arbiter_requested;
            end if;
            
            -- Now wait until the UART FIFO has accepted the character, before we drop the
            -- grant signal.  Also, "reset" perviousGrants to this grant, so that 
            -- ARBITER_NEW_REQUESTER goes back to 0, if it was set earlier.
            
            when arbiter_granted =>
               if UART_RESET = '1' or UART_OUTPUT_CHAR_ACCEPTED = '1' then
                  arbiterState <= arbiter_idle;
                  previousGrants <= grants;
               else
                  arbiterState <= arbiter_granted;
               end if;
                           
         end case;
         
      end if;
       
   end process;

UART_OUTPUT_ARBITER_GRANTS <= grants;
UART_OUTPUT_NEW_REQUESTER <= '1' when arbiterState = arbiter_granted and grants /= previousGrants else '0';

end Behavioral;
