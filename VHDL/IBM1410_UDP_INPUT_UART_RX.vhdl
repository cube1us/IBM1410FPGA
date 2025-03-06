----------------------------------------------------------------------------------
-- Company: The Computer Collection
-- Engineer: Jay Jaeger
-- 
-- Create Date: 02/14/2025
-- Design Name: IBM1410
-- Module Name: IBM1410_UDP_INPUT_UART_RX - behavioral

-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Provides a UART-like interface for the IBM 1410 UDP based output
-- subsystem
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

entity IBM1410_UDP_INPUT_UART_RX is
    Port (FPGA_CLOCK:                   in std_logic;
          UDP_UART_RESET:               in std_logic;
          -- UDP Side Interface 
          rx_match_cond:                in std_logic;
          rx_udp_hdr_ready:             out std_logic;
          rx_udp_hdr_valid:             in std_logic;
          rx_udp_payload_axis_tready:   out std_logic;
          rx_udp_payload_axis_tvalid:   in std_logic;
          rx_udp_payload_axis_tdata:    in std_logic_vector(7 downto 0);
          rx_udp_payload_axis_tlast:    in std_logic;
          -- UART-like Interface
          UDP_UART_RX_DATA_READY:       in std_logic;
          UDP_UART_RX_DATA_VALID:       out std_logic;
          UDP_UART_RX_BYTE:             out std_logic_vector(7 downto 0);
          UDP_UART_RX_PACKET_END:       out std_logic
    );
end IBM1410_UDP_INPUT_UART_RX;

architecture Behavioral of IBM1410_UDP_INPUT_UART_RX is

    type rxUdpUartStateType is (UDP_UART_RX_IDLE, UDP_UART_RX_MATCH,
    UDP_UART_RX_NEXT, UDP_UART_RX_LAST_BYTE, UDP_UART_RX_DONE);
    
    signal RxUdpUartState: rxUdpUartStateType := UDP_UART_RX_IDLE;
    signal packetEnd: STD_LOGIC := '0';

begin

   rx_udp_hdr_ready <= '1' when rxUdpUartState = UDP_UART_RX_IDLE or
      rxUdpUartState = UDP_UART_RX_DONE
      else '0';
      
   UDP_UART_RX_PACKET_END <= packetEnd;

    txUdpUart: process(FPGA_CLOCK,UDP_UART_RESET,UDP_UART_RX_DATA_READY,
        rxUdpUartState,rx_match_cond, rx_udp_hdr_valid,
        rx_udp_payload_axis_tvalid, rx_udp_payload_axis_tdata, 
        rx_udp_payload_axis_tlast)
   
    begin
   
    -- Asynchronous Reset

    if UDP_UART_RESET = '1' then
        UDP_UART_RX_DATA_VALID <= '0';
        UDP_UART_RX_BYTE <= "00000000";
        packetEnd <= '0';
        rxUdpUartState <= UDP_UART_RX_IDLE;

    elsif FPGA_CLOCK'event and FPGA_CLOCK = '1' then

        case rxUdpUartState is

        when UDP_UART_RX_IDLE =>        
            -- Waiting for a matching packet for us
            UDP_UART_RX_DATA_VALID <= '0';
            packetEnd <= '0';
            -- Have to be ready to toss away non-matching packets\
            rx_udp_payload_axis_tready <= not rx_match_cond;
            if rx_match_cond = '1' and rx_udp_hdr_valid = '1'
                and UDP_UART_RX_DATA_READY = '1' then
                rx_udp_payload_axis_tready <= '1';
                rxUdpUartState <= UDP_UART_RX_MATCH;
            else
                rxUdpUartState <= UDP_UART_RX_IDLE;
            end if;        

        when UDP_UART_RX_MATCH =>
            packetEnd <= rx_udp_payload_axis_tlast;
            UDP_UART_RX_DATA_VALID <= '0';
            if rx_udp_payload_axis_tvalid = '1' then
                rx_udp_payload_axis_tready <= '0';
                UDP_UART_RX_BYTE <= rx_udp_payload_axis_tdata;
                rxUdpUartState <= UDP_UART_RX_NEXT;
            else
                rx_udp_payload_axis_tready <= '1';
                rxUdpUartState <= UDP_UART_RX_MATCH;                
            end if;

        when UDP_UART_RX_NEXT =>
           if UDP_UART_RX_DATA_READY = '1' then
              UDP_UART_RX_DATA_VALID <= '1';
              if packetEnd = '1' then
                 rx_udp_payload_axis_tready <= '0';
                 rxUdpUartState <= UDP_UART_RX_LAST_BYTE;                    
              else
                 rx_udp_payload_axis_tready <= '1';
                 rxUdpUartState <= UDP_UART_RX_MATCH;
              end if;                            
           else           
              rx_udp_payload_axis_tready <= '0';
              UDP_UART_RX_DATA_VALID <= '0';
              rxudpUartState <= UDP_UART_RX_NEXT;
           end if;
       
        when UDP_UART_RX_LAST_BYTE =>
           -- Hang on to the alst byte until the reader has asked for it.
           if UDP_UART_RX_DATA_READY = '1' then
              UDP_UART_RX_DATA_VALID <= '0';
              packetEnd <= '0';
              UDP_UART_RX_BYTE <= X"FF";
              rxUdpUartState <= UDP_UART_RX_DONE;
           else
              UDP_UART_RX_DATA_VALID <= '0';
              packetEnd <= '1';
              rxUdpUartState <= UDP_UART_RX_LAST_BYTE;
           end if;
        
        when UDP_UART_RX_DONE =>
            -- Stay here until hdr_valid goes false.
            rx_udp_payload_axis_tready <= '0';
            if rx_match_cond = '1' and rx_udp_hdr_valid = '1' then
                rxUdpUartState <= UDP_UART_RX_DONE;
            else
                rxUdpUartState <= UDP_UART_RX_IDLE;
            end if;
        end case;
    end if;

    end process;

end Behavioral;