----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2022 10:53:05 AM
-- Design Name: 
-- Module Name: IBM1410_UDP_OUTPUT_MUX_TO_FIFO - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Takes the output from the Multiplexor (Data and Flush flag) and
--  Sends it to the FIFO to be transmitted.  Because the FIFO includes the Flush
--  flag, it is 9 bits wide, rather than the usual 8 bits.  Initially copied from
--  IBM1410_UART_OUTPUT_MUX_TO_FIFO
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Revision 1.00 - Copied from IBM1410_UART_MUX_TO_FIFO
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

entity IBM1410_UDP_OUTPUT_MUX_TO_FIFO is
    Port ( FPGA_CLK : in STD_LOGIC;
           UDP_RESET                    : in STD_LOGIC;
           UDP_OUTPUT_MUX_IN            : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_MUX_FLUSH_IN      : in STD_LOGIC;
           UDP_OUTPUT_GRANTS            : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_NEW_REQUESTER     : in STD_LOGIC;
           UDP_OUTPUT_FULL              : in STD_LOGIC;
           UDP_OUTPUT_FULL_NEXT         : in STD_LOGIC;
           UDP_OUTPUT_CHAR_ACCEPTED     : out STD_LOGIC;
           UDP_OUTPUT_FIFO_DATA         : out STD_LOGIC_VECTOR (8 downto 0);  -- Includes Flush as MSB
           UDP_OUTPUT_WR_EN             : out STD_LOGIC);
end IBM1410_UDP_OUTPUT_MUX_TO_FIFO;

architecture Behavioral of IBM1410_UDP_OUTPUT_MUX_TO_FIFO is

type muxOutputState_type is (
   mux_output_idle, mux_output_grant_id, mux_output_write_id, mux_output_done_id,
   mux_output_grant_data, mux_output_write_data, mux_output_accepted);
   
signal muxOutputState: muxOutputState_type := mux_output_idle;
signal muxOutputID: STD_LOGIC_VECTOR(8 downto 0);  -- Includes a '0' flush flag.

begin

mux_output_process: process(FPGA_CLK, UDP_RESET, muxOutputState, UDP_OUTPUT_GRANTS,
   UDP_OUTPUT_NEW_REQUESTER, UDP_OUTPUT_FULL, UDP_OUTPUT_FULL_NEX)
   
   begin
   
   -- Asynchronous reset
   
   if UDP_RESET = '1' then
      muxOutputState <= mux_output_idle;

   elsif FPGA_CLK'event and FPGA_CLK = '1' then
   
      case muxOutputState is
      
      -- Wait for a grant signal to start.
      
      when mux_output_idle =>
         if UDP_OUTPUT_GRANTS /= "00000000" then
            if UDP_OUTPUT_NEW_REQUESTER   = '1' then
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
         if UDP_OUTPUT_FULL = '1' or UDP_OUTPUT_FULL_NEXT  = '1' then
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
         if UDP_OUTPUT_FULL = '1' or UDP_OUTPUT_FULL_NEXT  = '1' then
            muxOutputState <= mux_output_grant_data;
         else
            muxOutputState <= mux_output_write_data;
         end if;
         
      -- Write out the data, setting write enable
      
      when mux_output_write_data =>
         muxOutputState <= mux_output_accepted;
         
      when mux_output_accepted =>
         if UDP_OUTPUT_GRANTS = "00000000" then
            muxOutputState <= mux_output_idle;
         else
            muxOutputState <= mux_output_accepted;
         end if;
      
      end case;
      
   end if;

   end process;
   
   muxOutputID <= 
      "10000001" when UDP_OUTPUT_GRANTS = "00000001"
      else "10000010" when UDP_OUTPUT_GRANTS = "00000010"
      else "10000011" when UDP_OUTPUT_GRANTS = "00000100"
      else "10000100" when UDP_OUTPUT_GRANTS = "00001000"
      else "10000101" when UDP_OUTPUT_GRANTS = "00010000"
      else "10000110" when UDP_OUTPUT_GRANTS = "00100000"
      else "10000111" when UDP_OUTPUT_GRANTS = "01000000"
      else "10001000" when UDP_OUTPUT_GRANTS = "10000000"
      else "00000000";

   UDP_OUTPUT_WR_EN <= '1' when
      muxOutputState = mux_output_write_id or muxOutputState = mux_output_write_data
      else '0';
      
   UDP_OUTPUT_CHAR_ACCEPTED <= '1' when
      muxOutputState = mux_output_accepted else '0';
      
   UDP_OUTPUT_FIFO_DATA <=
      UDP_MUX_FLUSH_IN & UDP_OUTPUT_MUX_IN when 
         muxOutputState = mux_output_grant_data or 
         muxOutputState = mux_output_write_data or
         muxOutputState = mux_output_accepted
      else '0' & muxOutputID when  -- Flush flag always '0' for the ID
         muxOutputState = mux_output_grant_id or
         muxOutputState = mux_output_write_id or
         muxOutputState = mux_output_done_id
      else "00000000";

end Behavioral;
