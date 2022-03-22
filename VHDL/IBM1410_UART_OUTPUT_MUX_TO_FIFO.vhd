----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2022 10:53:05 AM
-- Design Name: 
-- Module Name: IBM1410_UART_OUTPUT_MUX_TO_FIFO - Behavioral
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

entity IBM1410_UART_OUTPUT_MUX_TO_FIFO is
    Port ( FPGA_CLK : in STD_LOGIC;
           UART_RESET : in STD_LOGIC;
           UART_OUTPUT_MUX_IN : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_GRANTS : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_NEW_REQUESTER : in STD_LOGIC;
           UART_OUTPUT_FULL : in STD_LOGIC;
           UART_OUTPUT_FULL_NEXT : in STD_LOGIC;
           UART_OUTPUT_CHAR_ACCEPTED : out STD_LOGIC;
           UART_OUTPUT_FIFO_DATA : out STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_WR_EN : out STD_LOGIC);
end IBM1410_UART_OUTPUT_MUX_TO_FIFO;

architecture Behavioral of IBM1410_UART_OUTPUT_MUX_TO_FIFO is

type muxOutputState_type is (
   mux_output_idle, mux_output_grant_id, mux_output_write_id, mux_output_done_id,
   mux_output_grant_data, mux_output_write_data, mux_output_accepted);
   
signal muxOutputState: muxOutputState_type := mux_output_idle;
signal muxOutputID: STD_LOGIC_VECTOR(7 downto 0);

begin

mux_output_process: process(FPGA_CLK, UART_RESET, muxOutputState, UART_OUTPUT_GRANTS,
   UART_OUTPUT_NEW_REQUESTER, UART_OUTPUT_FULL, UART_OUTPUT_FULL_NEXT)
   
   begin
   
   -- Asynchronous reset
   
   if UART_RESET = '1' then
      muxOutputState <= mux_output_idle;

   elsif FPGA_CLK'event and FPGA_CLK = '1' then
   
      case muxOutputState is
      
      -- Wait for a grant signal to start.
      
      when mux_output_idle =>
         if UART_OUTPUT_GRANTS /= "00000000" then
            if UART_OUTPUT_NEW_REQUESTER = '1' then
               muxOutputState <= mux_output_grant_id;
            else
               muxOutputState <= mux_output_grant_data;
            end if;
         else
            muxOutputState <= mux_output_idle;
         end if;
         
      -- A grant went active - but for a new requester, so we must send out an ID character to
      -- the support application so it knows what is coming.  First make sure the UART FIFO 
      -- isn't full
      
      when mux_output_grant_id =>
         if UART_OUTPUT_FULL = '1' or UART_OUTPUT_FULL_NEXT = '1' then
            muxOutputState <= mux_output_grant_id;
         else
            muxOutputState <= mux_output_write_id;
         end if;
         
      -- Then write the ID character, setting write enable
         
      when mux_output_write_id =>
         muxOutputState <= mux_output_done_id;
         
      -- Remove write enable, and proceed to write out the actual data
         
      when mux_output_done_id =>
         muxOutputState <= mux_output_grant_data;
         
      -- Time to write out the actual data.  Again, make sure the UART FIFO isn't full
         
      when mux_output_grant_data =>
         if UART_OUTPUT_FULL = '1' or UART_OUTPUT_FULL_NEXT = '1' then
            muxOutputState <= mux_output_grant_data;
         else
            muxOutputState <= mux_output_write_data;
         end if;
         
      -- Write out the data, setting write enable
      
      when mux_output_write_data =>
         muxOutputState <= mux_output_accepted;
         
      when mux_output_accepted =>
         if UART_OUTPUT_GRANTS = "00000000" then
            muxOutputState <= mux_output_idle;
         else
            muxOutputState <= mux_output_accepted;
         end if;
      
      end case;
      
   end if;

   end process;
   
   muxOutputID <= 
      "10000001" when UART_OUTPUT_GRANTS = "00000001"
      else "10000010" when UART_OUTPUT_GRANTS = "00000010"
      else "10000011" when UART_OUTPUT_GRANTS = "00000100"
      else "10000100" when UART_OUTPUT_GRANTS = "00001000"
      else "10000101" when UART_OUTPUT_GRANTS = "00010000"
      else "10000110" when UART_OUTPUT_GRANTS = "00100000"
      else "10000111" when UART_OUTPUT_GRANTS = "01000000"
      else "10001000" when UART_OUTPUT_GRANTS = "10000000"
      else "00000000";

   UART_OUTPUT_WR_EN <= '1' when
      muxOutputState = mux_output_write_id or muxOutputState = mux_output_write_data
      else '0';
      
   UART_OUTPUT_CHAR_ACCEPTED <= '1' when
      muxOutputState = mux_output_accepted else '0';
      
   UART_OUTPUT_FIFO_DATA <=
      UART_OUTPUT_MUX_IN when 
         muxOutputState = mux_output_grant_data or 
         muxOutputState = mux_output_write_data or
         muxOutputState = mux_output_accepted
      else muxOutputID when
         muxOutputState = mux_output_grant_id or
         muxOutputState = mux_output_write_id or
         muxOutputState = mux_output_done_id
      else "00000000";

end Behavioral;
