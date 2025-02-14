----------------------------------------------------------------------------------
-- Company: The Computer Collection
-- Engineer: Jay Jaeger
-- 
-- Create Date: 02/14/2025
-- Design Name: IBM1410
-- Module Name: IBM1410_UDP_OUTPUT_UART_TX - behavioral
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

entity IBM1410_UDP_OUTPUT_UART_TX is
    Generic (
        MAX_UDP_PACKET_SIZE:            integer := 20  -- Eventually, 1400
    )
    Port (FPGA_CLOCK:                   in std_logic;
          UDP_UART_RESET:               in std_logic;
          -- UDP Side Interface 
          tx_udp_hdr_ready:             in std_logic;
          tx_udp_payload_axis_tready:   in std_logic;
          tx_udp_hdr_valid:             out std_logic;
          tx_udp_hdr_axis_tvalid:       out std_logic;
          tx_udp_payload_axis_tdata:    out std_logic_vector(7 downto 0);
          tx_udp_payload_axis_tlast:    out std_logic;
          -- UART-like Interface
          UDP_UART_TX_DATA_VALID:       in std_logic;
          UDP_UART_TX_FLUSH:            in std_logic;
          UDP_UART_TX_BYTE:             in std_logic_vector(7 downto 0);
          UDP_UART_TX_ACTIVE:           out std_logic;
           );
end IBM1410_UDP_OUTPUT_UART_TX;

architecture Behavioral of IBM1410_UDP_OUTPUT_UART_TX is

    signal packetSize:                  integer range 0 to MAX_UDP_PACKET_SIZE := 0;

    type txUdpUartStateType is (UDP_UART_TX_IDLE, UDP_UART_TX_HDR_WAIT,
    UDP_UART_TX_HDR, UDP_UART_TX_FILL, UDP_UART_TX_DONE);
    
    signal txUdpUartState: txUdpUartStateType := UDP_UART_TX_IDLE;

begin

    txUdpUart: process(FPGA_CLOCK,UDP_UART_RESET,packetSize,txUdpUartState,
        tx_udp_hdr_ready,tx_udp_payload_axis_tready,
        UDP_UART_TX_DATA_VALID, UDP_UART_TX_FLUSH, UDP_UART_TX_BYTE)
   
    begin
   
    -- Asynchronous Reset

    if UDP_UART_RESET = '1' then
        packetSize <= 0;
        tx_udp_payload_axis_tlast <= '0';
        tx_udp_payload_axis_tvalid <= '0';
        tx_udp_hdr_valid <= '0';
        tx_udp_payload_axis_tdata <= "00";
        txUdpUartState <= UDP_UART_TX_IDLE;

    elsif FPGA_CLOCK'event and FPGA_CLOCK = '1' then

        case txUdpUartState is

        when UDP_UART_TX_IDLE =>
            tx_udp_payload_axis_tlast <= '0';
            tx_udp_hdr_valid <= '0';
            packetSize <= 0;
            tx_udp_payload_axis_tvalid <= '0';
         
            if UDP_UART_TX_DATA_VALID = '1' then
                UDP_UART_TX_ACTIVE <= '1';
                -- Save the first data byte while we wait for header
                tx_udp_payload_axis_tdata <= UDP_UART_TX_BYTE;
                txUdpUartState <= UDP_UART_TX_HDR_WAIT;
            else
                UDP_UART_TX_ACTIVE <= '0';
                txUdpUartState <= UDP_UART_TX_IDLE;         
            end if;        

        when UDP_UART_TX_HDR_WAIT => 
            -- New packet - give UDP a chance to get ready
            UDP_UART_TX_ACTIVE <= '1';
            tx_udp_payload_axis_tlast <= '0';
            tx_udp_payload_axis_tdata <= tx_udp_payload_axis_tdata;
                   
            if tx_udp_hdr_ready = '1' then
                tx_udp_hdr_valid <= '1';
                txUdpUartState <= UDP_UART_TX_HDR;
            else            
                tx_udp_hdr_valid <= '0';
                txUdpUartState <= UDP_UART_TX_HDR_WAIT;
            end if;            
         
        when UDP_UART_TX_HDR =>
            if tx_udp_payload_axis_tready = '1' then
                -- Put the first data byte in the FIFO
                UDP_UART_TX_ACTIVE <= '0';   
                tx_udp_payload_axis_tdata <= tx_udp_payload_axis_tdata;
                tx_udp_payload_axis_tvalid <= '1';            
                tx_udp_hdr_valid <= '0';
                tx_udp_payload_axis_tlast <= '0';
                txUdpUartState <= UDP_UART_TX_FILL;
            else
                -- Otherwise, we are waiting for the UDP FIFO to go ready.
                UDP_UART_TX_ACTIVE <= '1';
                tx_udp_payload_axis_tdata <= tx_udp_payload_axis_tdata;
                tx_udp_payload_axis_tvalid <= '0';
                tx_udp_hdr_valid <= '0';
                tx_udp_payload_axis_tlast <= '0';
                txUdpUartState <= UDP_UART_TX_HDR;
            end if;

        when UDP_UART_TX_FILL =>
            -- Rest of packet
            tx_udp_hdr_valid <= '0';
            if UDP_UART_TX_DATA_VALID = '1' then
                -- Put a byte into the packet
                tx_udp_payload_axis_tvalid <= '1';
                tx_udp_payload_axis_tdata <= UDP_UART_TX_BYTE;
                -- Send the packet if it is at max size or if
                -- the requester asked that it be flushed.
                if packetSize = MAX_UDP_PACKET_SIZE or UDP_UART_TX_FLUSH = '1' then
                    tx_udp_payload_axis_tlast <= '1';
                    -- go busy for a tick
                    UDP_UART_TX_ACTIVE <= '1';
                    txUdpUartState <= UDP_UART_TX_DONE;
                else
                    packetSize <= packetSize + 1;
                    tx_udp_payload_axis_tlast <= '0';
                    UDP_UART_TX_ACTIVE <= '0';
                    txUdpUartState <= UDP_UART_TX_FILL;
                end if;
            else
                tx_udp_payload_axis_tvalid <= '0';
                tx_udp_payload_axis_tdata <= tx_udp_payload_axis_tdata;
                tx_udp_payload_axis_tlast <= '0';
                UDP_UART_TX_ACTIVE <= '0';
                txUdpUartState <= UDP_UART_TX_FILL;
            end if;

        when UDP_UART_TX_DONE =>
                tx_udp_payload_axis_tvalid <= '0';
                tx_udp_payload_axis_tlast <= '0';
                tx_udp_hdr_valid <= '0';           
             
                UDP_UART_TX_ACTIVE <= '0';
                txUdpUartState <= UDP_UART_TX_IDLE;
        end case;
    end if;

    end process;

end Behavioral;