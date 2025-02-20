----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/13/2024 11:29:42 AM
-- Design Name: 
-- Module Name: EthernetVerilog UARTTest - Behavioral
-- Project Name: For IBM1410
-- Target Devices: Nexys4 Development Board
-- Tool Versions: 
-- Description: Just a test
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created from Module EthernetTest.vhd
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.numeric_std.all;

library UNISIM;
use UNISIM.vcomponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EthernetVerilogUARTTest is
   GENERIC (
      SIMULATION: integer := 0;
      LOOPBACK:   integer := 0;
      CLOCKPERIOD: integer := 10;       -- Clock period in ns
      USEOUTPUTSUBSYSTEM: integer := 1  -- 1 to use the actual output subsystem
   );
   PORT(
      CLK:        in STD_LOGIC;
      SW:         in STD_LOGIC_VECTOR(15 downto 0);
      LED:        out STD_LOGIC_VECTOR(15 downto 0);
      RGB1_Red:   out STD_LOGIC;
      RGB1_Green: out STD_LOGIC;
      RGB1_Blue:  out STD_LOGIC;
      RGB2_Red:   out STD_LOGIC;
      RGB2_Green: out STD_LOGIC;
      RGB2_Blue:  out STD_LOGIC;
      btnC, btnL, btnR, btnU, btnD, btnCpuReset: in STD_LOGIC;
--      RsTx:       out STD_LOGIC; -- from FPGA to USB/Serial
--      RsRx:       in STD_LOGIC;  -- to FPGA from USB/Serial
      
      -- Ethernet Port (PHY)
      PhyMdc:      out STD_LOGIC;  -- Not used
      PhyMdio:   inout STD_LOGIC;  -- Not used
      PhyRstn:     out STD_LOGIC;  -- 
      PhyCrs:      in  STD_LOGIC;  --
      PhyRxErr:    in  STD_LOGIC;  --
      PhyRxd:      in  STD_LOGIC_VECTOR(1 downto 0); --
      PhyTxEn:     out STD_LOGIC; --
      PhyTxd:      out STD_LOGIC_VECTOR(1 downto 0); --
      PhyClk50Mhz: out STD_LOGIC;
      PhyIntn:     in  STD_LOGIC   -- Not used                
   );
   
end EthernetVerilogUARTTest;

architecture Behavioral of EthernetVerilogUARTTest is

   -- Signals for the MII to RMII interface

   -- signal rst_n: STD_LOGIC := '1';
   -- signal ref_clk: STD_LOGIC;
   signal mac2rmii_tx_en: STD_LOGIC;
   signal mac2rmii_txd: STD_LOGIC_VECTOR(3 DOWNTO 0);
   signal mac2rmii_tx_er: STD_LOGIC;
   signal rmii2mac_tx_clk: STD_LOGIC;
   signal rmii2mac_rx_clk: STD_LOGIC;
   signal rmii2mac_col: STD_LOGIC;
   signal rmii2mac_crs: STD_LOGIC;
   signal rmii2mac_rx_dv: STD_LOGIC;
   signal rmii2mac_rx_er: STD_LOGIC;
   signal rmii2mac_rxd: STD_LOGIC_VECTOR(3 DOWNTO 0);
   signal mmcm_locked: STD_LOGIC;
   
   signal FPGA_CLOCK:  STD_LOGIC;
   signal FPGA_RESET:  STD_LOGIC := '0';
   signal FPGA_RESETn: STD_LOGIC := '1';
   
   signal phy_ref_clk_50Mhz: STD_LOGIC;
   
   signal buttons:           STD_LOGIC_VECTOR(4 downto 0);
   signal debounced_buttons: STD_LOGIC_VECTOR(4 downto 0);
   signal output_buttons:    STD_LOGIC_VECTOR(4 downto 0);
   signal debug_leds:        STD_LOGIC_VECTOR(7 downto 0);
   
   constant buttonUP:     integer := 4;
   constant buttonDOWN:   integer := 3;
   constant buttonLEFT:   integer := 2;
   constant buttonRIGHT:  integer := 1;
   constant buttonCENTER: integer := 0; 
   
   -- Reset Finite State Machine
   
   type resetStateType is (RESET_INIT, RESET_IDLE, RESET_COUNTING);
   SIGNAL resetState: resetStateType := RESET_INIT;
   SIGNAL nextResetState: resetStateType := RESET_INIT;
   SIGNAL resetCounter: STD_LOGIC_VECTOR(15 downto 0) := X"0000";
   SIGNAL phy_resetn: STD_LOGIC := '1';
   SIGNAL phy_reset: STD_LOGIC;
   
   -- Signals that are Ethernet Configurations
   
   signal local_mac: STD_LOGIC_VECTOR(47 downto 0) := X"020001040A00";
   
   -- Signals that are IP Configurations
   
   signal local_ip:    STD_LOGIC_VECTOR(31 downto 0) := X"C0A82AFE";  -- 192.168.42.254
   signal gateway_ip:  STD_LOGIC_VECTOR(31 downto 0) := X"C0A82A01";  -- 192.168.42.1
   signal subnet_mask: STD_LOGIC_VECTOR(31 downto 0) := X"FFFFFF00";  -- 255.255.255.000
   signal remote_ip:   STD_LOGIC_VECTOR(31 downto 0) := X"C0A82A3C";  -- 192.168.42.60
   
   -- Signals for UDP Input from the Network
   
   signal rx_udp_hdr_ready:       STD_LOGIC := '0';
   signal rx_udp_hdr_valid:       STD_LOGIC;
   signal rx_match_cond:          STD_LOGIC := '0';
   
   signal rx_udp_ip_source_ip:    STD_LOGIC_VECTOR(31 downto 0) := X"00000000";
   signal rx_udp_ip_dest_ip:      STD_LOGIC_VECTOR(31 downto 0) := X"00000000";
   signal rx_udp_source_port:     STD_LOGIC_VECTOR(15 downto 0) := X"0000";
   signal rx_udp_dest_port:       STD_LOGIC_VECTOR(15 downto 0) := X"0000";
   signal rx_udp_length:          STD_LOGIC_VECTOR(15 downto 0) := X"0000";
   
   signal rx_udp_payload_axis_tready: STD_LOGIC := '0';
   signal rx_udp_payload_axis_tvalid: STD_LOGIC;
   signal rx_udp_payload_axis_tlast:  STD_LOGIC;
   signal rx_udp_payload_axis_tdata:  STD_LOGIC_VECTOR(7 downto 0) := X"00";

   -- Signals for providing a UART like interface to UDP

   signal UDP_UART_TX_DATA_VALID:     std_logic := '0';
   signal UDP_UART_TX_FLUSH:          std_logic := '0';
   signal UDP_UART_TX_BYTE:           std_logic_vector (7 downto 0) := X"00";
   signal UDP_UART_TX_ACTIVE:         std_logic := '0';
   
   signal UDP_UART_RX_DATA_READY:     std_logic := '0';
   signal UDP_UART_RX_DATA_VALID:     std_logic := '0';
   signal UDP_UART_RX_BYTE:           std_logic_vector (7 downto 0) := X"00";
   signal UDP_UART_RX_PACKET_END:     std_logic := '0';
   
   -- Signals for UDP output TO the network
   
   signal tx_udp_ip_source_ip:        STD_LOGIC_VECTOR(31 downto 0) := X"00000000";
   signal tx_udp_ip_dest_ip:          STD_LOGIC_VECTOR(31 downto 0) := X"00000000";
   signal tx_udp_source_port:         STD_LOGIC_VECTOR(15 downto 0) := X"0000";
   signal tx_udp_dest_port:           STD_LOGIC_VECTOR(15 downto 0) := X"0000";
   
   signal tx_udp_hdr_ready:           STD_LOGIC := '0';
   signal tx_udp_hdr_valid:           STD_LOGIC := '0';
   
   signal tx_udp_payload_axis_tready: STD_LOGIC := '0';
   signal tx_udp_payload_axis_tdata:  STD_LOGIC_VECTOR(7 downto 0) := X"00";
   signal tx_udp_payload_axis_tvalid: STD_LOGIC := '0';
   signal tx_udp_payload_axis_tlast:  STD_LOGIC := '0';

   -- Signals for UDP based 1410 output subsystem
   
   signal UDP_RESET: STD_LOGIC := '0';
   signal UDP_OUTPUT_REQUESTER_STROBES: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUESTER_FLUSHES: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_0: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_1: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_2: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_3: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_4: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_5: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_6: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_7:  STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_ARBITER_REQUESTS : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_ARBITER_GRANTS: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
      
   -- Signals for switching between Simple output and using the output subsystem
   
   signal UDP_OUTPUT_SUBSYSTEM_TX_ACTIVE:     STD_LOGIC := '0';
   signal UDP_OUTPUT_SUBSYSTEM_TX_DATA_VALID: STD_LOGIC := '0';
   signal UDP_OUTPUT_SUBSYSTEM_TX_BYTE:       STD_LOGIC_VECTOR(7 downto 0) := "00000000";
   signal UDP_OUTPUT_SUBSYSTEM_TX_FLUSH:     STD_LOGIC := '0';
   
   -- Simulated UART output for testing without the output subsystem
   
   signal DIRECT_UDP_UART_TX_ACTIVE:     STD_LOGIC := '0';
   signal DIRECT_UDP_UART_TX_DATA_VALID: STD_LOGIC := '0';
   signal DIRECT_UDP_UART_TX_BYTE:       STD_LOGIC_VECTOR(7 downto 0) := "00000000";
   signal DIRECT_UDP_UART_TX_FLUSH:      STD_LOGIC := '0'; 
   
   -- Signal that allows testing the output subsystem by itself with simulated
   -- serial output.
     
   signal SERIAL_OUTPUT_TX_DATA: STD_LOGIC;   
   
   -- Signals for testing processes

   type txUdpUartStateType is (UDP_UART_TX_IDLE, UDP_UART_TX_HDR_WAIT,
      UDP_UART_TX_HDR, UDP_UART_TX_FILL, UDP_UART_TX_DONE);
   signal txUdpUartState: txUdpUartStateType := UDP_UART_TX_IDLE;
   constant UDP_UART_MAX_PACKET:      integer := 20;  -- 1450 later
   signal txUdpUartPacketSize:        integer range 0 to UDP_UART_MAX_PACKET+1;

   type txTestStateType is (TX_IDLE, TX_FILL, TX_DONE);
   signal txTestState: txTestStateType := TX_IDLE;      

   type txUartTestStateType is(TX_UART_TEST_IDLE, TX_UART_TEST_FILL, TX_UART_TEST_DONE);
   signal txUartTestState: txUartTestStateType := TX_UART_TEST_IDLE;
   
   signal tx_fill_counter:            integer range 0 to 63;
   
   type outputSubsystemTestStateType is (outputSubsystemTestIdle,
      outputSubsystemTest1a, outputSubsystemTest1b,
      outputSubsystemTest2a, outputSubsystemTest2b,
      outputSubsystemTest3a, outputSubsystemTest3b ,outputSubsystemTest3c,
      outputSubsystemTest4a, outputSubsystemTest4b, outputSubsystemTest4c,
      outputSubsystemTest4d, outputSubsystemTest4e,
      outputSubsystemTestButtonWait);
   signal outputSubsystemTestState: outputSubsystemTestStateType := outputSubsystemTestIdle;

   type rxTestStateType is (RX_IDLE, RX_MATCH, RX_VALID, RX_DONE);
   signal rxTestState: rxTestStateType := RX_IDLE;
   
   signal rx_first_byte:              STD_LOGIC_VECTOR(7 downto 0);
   signal rx_last_byte:               STD_LOGIC_VECTOR(7 downto 0);
   signal rx_byte_count:              integer range 0 to 4095 := 0;
   signal rx_delay_counter:           integer range 0 to 100 := 0;
   
   -- constant FIRST_PACKET_WAIT_TIME: integer := 700000 / CLOCKPERIOD;
   -- constant PACKET_WAIT_TIME:  integer := 10000 / CLOCKPERIOD;
   -- signal packet_wait_counter: integer range 0 to FIRST_PACKET_WAIT_TIME +1;
   -- signal first_packet_flag:   std_logic := '1';

   component IBM1410_UDP_OUTPUT_SUBSYSTEM is
    GENERIC (
       SIMULATED_UART: integer := 1
    );
    Port ( FPGA_CLK                     : in STD_LOGIC;
           UDP_RESET                    : in STD_LOGIC;
           UDP_OUTPUT_REQUESTER_STROBES : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUESTER_FLUSHES : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_0    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_1    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_2    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_3    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_4    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_5    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_6    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_7    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_ARBITER_REQUESTS  : out STD_LOGIC_VECTOR(7 downto 0);
           UDP_OUTPUT_ARBITER_GRANTS    : out STD_LOGIC_VECTOR(7 downto 0);
           -- UDP UART-like interface signals
           UDP_UART_TX_ACTIVE           : in STD_LOGIC;
           UDP_UART_TX_DATA_VALID       : out STD_LOGIC;
           UDP_UART_TX_BYTE             : out STD_LOGIC_VECTOR(7 downto 0);
           UDP_UART_TX_FLUSH            : out STD_LOGIC;
           -- Fake serial output from internal uart, for testing
           SERIAL_OUTPUT_TX_DATA : out STD_LOGIC);
   end component;
   
component IBM1410_UDP_OUTPUT_UART_TX is
    Generic (
        MAX_UDP_PACKET_SIZE:            integer := 20  -- Eventually, 1400
    );
    Port (FPGA_CLOCK:                   in std_logic;
          UDP_UART_RESET:               in std_logic;
          -- UDP Side Interface 
          tx_udp_hdr_ready:             in std_logic;
          tx_udp_payload_axis_tready:   in std_logic;
          tx_udp_hdr_valid:             out std_logic;
          tx_udp_payload_axis_tvalid:   out std_logic;
          tx_udp_payload_axis_tdata:    out std_logic_vector(7 downto 0);
          tx_udp_payload_axis_tlast:    out std_logic;
          -- UART-like Interface
          UDP_UART_TX_DATA_VALID:       in std_logic;
          UDP_UART_TX_FLUSH:            in std_logic;
          UDP_UART_TX_BYTE:             in std_logic_vector(7 downto 0);
          UDP_UART_TX_ACTIVE:           out std_logic
           );
end component;
 
component IBM1410_UDP_INPUT_UART_RX is
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
end component;   
            
component mii_to_rmii_0 IS
   PORT(
      rst_n : IN STD_LOGIC;
      ref_clk : IN STD_LOGIC;
      mac2rmii_tx_en : IN STD_LOGIC;
      mac2rmii_txd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      mac2rmii_tx_er : IN STD_LOGIC;
      rmii2mac_tx_clk : OUT STD_LOGIC;
      rmii2mac_rx_clk : OUT STD_LOGIC;
      rmii2mac_col : OUT STD_LOGIC;
      rmii2mac_crs : OUT STD_LOGIC;
      rmii2mac_rx_dv : OUT STD_LOGIC;
      rmii2mac_rx_er : OUT STD_LOGIC;
      rmii2mac_rxd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      phy2rmii_crs_dv : IN STD_LOGIC;
      phy2rmii_rx_er : IN STD_LOGIC;
      phy2rmii_rxd : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      rmii2phy_txd : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      rmii2phy_tx_en : OUT STD_LOGIC
   );
END component mii_to_rmii_0;

component debounce_switch is
   GENERIC (
      WIDTH: integer;
      N: integer; 
      RATE: integer
      );
   PORT (
      CLK: IN STD_LOGIC;
      RST: IN STD_LOGIC;
      INPUTS: IN STD_LOGIC_VECTOR(WIDTH-1 downto 0);
      OUTPUTS: OUT STD_LOGIC_VECTOR(WIDTH-1 downto 0)
   );
end component debounce_switch;
      
component udp_fpga is
   PORT (
      clk:            IN STD_LOGIC;
      reset_n:        IN STD_LOGIC;
      mmcm_locked:   OUT STD_LOGIC;

      debug_leds:    OUT STD_LOGIC_VECTOR(7 downto 0);
      --RGB2_Red:        OUT STD_LOGIC;
      --RGB2_Green:      OUT STD_LOGIC;
      --RGB2_Blue:       OUT STD_LOGIC;
      
      -- 100Base-T MII
      
      phy_ref_clk:   OUT STD_LOGIC;
      phy_rx_clk:     IN STD_LOGIC;
      phy_rxd:        IN STD_LOGIC_VECTOR(3 downto 0);
      phy_rx_dv:      IN STD_LOGIC;
      phy_rx_er:      IN STD_LOGIC;
      phy_tx_clk:     IN STD_LOGIC;
      phy_txd:       OUT STD_LOGIC_VECTOR(3 downto 0);
      phy_tx_en:     OUT STD_LOGIC;
      phy_col:        IN STD_LOGIC;
      phy_crs:        IN STD_LOGIC;
      phy_reset_n:   OUT STD_LOGIC;
      
      -- Ethernet Configuration inputs
      
      local_mac:      IN STD_LOGIC_VECTOR(47 downto 0);
      
      -- IP Configuration inputs
      
      local_ip:       IN STD_LOGIC_VECTOR(31 downto 0);
      gateway_ip:     IN STD_LOGIC_VECTOR(31 downto 0);
      subnet_mask:    IN STD_LOGIC_VECTOR(31 downto 0);
      remote_ip:      IN STD_LOGIC_VECTOR(31 downto 0);
      
      -- UDP IN from Network
      
      rx_udp_hdr_ready:  IN STD_LOGIC;
      rx_udp_hdr_valid: OUT STD_LOGIC;
      rx_match_cond:     IN STD_LOGIC;
      
      rx_udp_ip_source_ip:  OUT STD_LOGIC_VECTOR(31 downto 0);
      rx_udp_ip_dest_ip:    OUT STD_LOGIC_VECTOR(31 downto 0);
      rx_udp_source_port:   OUT STD_LOGIC_VECTOR(15 downto 0);
      rx_udp_dest_port:     OUT STD_LOGIC_VECTOR(15 downto 0);
      rx_udp_length:        OUT STD_LOGIC_VECTOR(15 downto 0);
      
      rx_udp_payload_axis_tready:  IN STD_LOGIC;
      rx_udp_payload_axis_tvalid: OUT STD_LOGIC;
      rx_udp_payload_axis_tlast:  OUT STD_LOGIC;
      rx_udp_payload_axis_tdata:  OUT STD_LOGIC_VECTOR(7 downto 0);
      
      -- UDP Out TO network
      
      tx_udp_ip_source_ip:         IN STD_LOGIC_VECTOR(31 downto 0);
      tx_udp_ip_dest_ip:           IN STD_LOGIC_VECTOR(31 downto 0);
      tx_udp_source_port:          IN STD_LOGIC_VECTOR(15 downto 0);
      tx_udp_dest_port:            IN STD_LOGIC_VECTOR(15 downto 0);
      
      tx_udp_hdr_ready:           OUT STD_LOGIC;
      tx_udp_hdr_valid:            IN STD_LOGIC;
      
      tx_udp_payload_axis_tready: OUT STD_LOGIC;
      tx_udp_payload_axis_tdata:   IN STD_LOGIC_VECTOR(7 downto 0);
      tx_udp_payload_axis_tvalid:  IN STD_LOGIC;
      tx_udp_payload_axis_tlast:   IN STD_LOGIC      
   );
   
end component udp_fpga;

begin

--EthernetClock1: IBUFG
--   PORT MAP(
--      O => FPGA_CLOCK,
--      I => CLK
--   );

-- Instantiate the MII to RMII Interface

mii_to_rmii_interface: mii_to_rmii_0
   PORT MAP (
     rst_n             => phy_resetn, -- FPGA_RESETn,
     ref_clk           => phy_ref_clk_50Mhz,
    
     mac2rmii_tx_en    => mac2rmii_tx_en,
     mac2rmii_txd      => mac2rmii_txd,
     mac2rmii_tx_er    => mac2rmii_tx_er,
    
     rmii2mac_tx_clk   => rmii2mac_tx_clk,
     rmii2mac_rx_clk   => rmii2mac_rx_clk,
     rmii2mac_col      => rmii2mac_col,
     rmii2mac_crs      => rmii2mac_crs,
     rmii2mac_rx_dv    => rmii2mac_rx_dv,
     rmii2mac_rx_er    => rmii2mac_rx_er,
     rmii2mac_rxd      => rmii2mac_rxd,
    
     phy2rmii_crs_dv   => PhyCrs,
     phy2rmii_rx_er    => PhyRxErr,
     phy2rmii_rxd      => PhyRxd,
     rmii2phy_txd      => PhyTxd,
     rmii2phy_tx_en    => PhyTxEn
   );
   

-- Instantiate the UART-like interfaces to  the UDP Core

udp_uart_tx_interface: IBM1410_UDP_OUTPUT_UART_TX
   GENERIC MAP (
      MAX_UDP_PACKET_SIZE => UDP_UART_MAX_PACKET
   )
   PORT MAP (
      FPGA_CLOCK => FPGA_CLOCK,
      UDP_UART_RESET => UDP_RESET,
      -- UDP Core side
      tx_udp_hdr_ready => tx_udp_hdr_ready,
      tx_udp_payload_axis_tready => tx_udp_payload_axis_tready,
      tx_udp_hdr_valid => tx_udp_hdr_valid,
      tx_udp_payload_axis_tvalid => tx_udp_payload_axis_tvalid,
      tx_udp_payload_axis_tdata => tx_udp_payload_axis_tdata,
      tx_udp_payload_axis_tlast => tx_udp_payload_axis_tlast,
      -- UART-like interface side
      UDP_UART_TX_DATA_VALID => UDP_UART_TX_DATA_VALID,
      UDP_UART_TX_FLUSH => UDP_UART_TX_FLUSH, 
      UDP_UART_TX_BYTE => UDP_UART_TX_BYTE,
      UDP_UART_TX_ACTIVE => UDP_UART_TX_ACTIVE
   );      
   
udp_uart_rx_interface: IBM1410_UDP_INPUT_UART_RX
    Port Map (FPGA_CLOCK => FPGA_CLOCK,
          UDP_UART_RESET => UDP_RESET,
          -- UDP Side Interface 
          rx_match_cond => rx_match_cond,
          rx_udp_hdr_ready => rx_udp_hdr_ready,
          rx_udp_hdr_valid => rx_udp_hdr_valid,
          rx_udp_payload_axis_tready => rx_udp_payload_axis_tready,
          rx_udp_payload_axis_tvalid => rx_udp_payload_axis_tvalid,
          rx_udp_payload_axis_tdata => rx_udp_payload_axis_tdata,
          rx_udp_payload_axis_tlast => rx_udp_payload_axis_tlast,
          -- UART-like Interface
          UDP_UART_RX_DATA_READY => UDP_UART_RX_DATA_READY,
          UDP_UART_RX_DATA_VALID => UDP_UART_RX_DATA_VALID,
          UDP_UART_RX_BYTE => UDP_UART_RX_BYTE, 
          UDP_UART_RX_PACKET_END => UDP_UART_RX_PACKET_END
    );
   
-- Instantiate the button debouncer
   
debounce_buttons: debounce_switch
   GENERIC MAP (
      WIDTH => 5,
      N => 3,
      RATE => 125000
      )
   PORT MAP (         
      CLK => FPGA_CLOCK,
      RST => phy_reset,
      inputs => buttons,
      outputs => debounced_buttons
   );
   
-- Instantiate the IBM 1410 UDP based output subsystem for testing

   UUT: IBM1410_UDP_OUTPUT_SUBSYSTEM
    Generic map (
       SIMULATED_UART => 0
    )
    Port map (
       FPGA_CLK => FPGA_CLOCK,
       UDP_RESET => UDP_RESET,
       UDP_OUTPUT_REQUESTER_STROBES => UDP_OUTPUT_REQUESTER_STROBES,
       UDP_OUTPUT_REQUESTER_FLUSHES => UDP_OUTPUT_REQUESTER_FLUSHES,
       UDP_OUTPUT_REQUEST_DATA_0    => UDP_OUTPUT_REQUEST_DATA_0,
       UDP_OUTPUT_REQUEST_DATA_1    => UDP_OUTPUT_REQUEST_DATA_1,
       UDP_OUTPUT_REQUEST_DATA_2    => UDP_OUTPUT_REQUEST_DATA_2,
       UDP_OUTPUT_REQUEST_DATA_3    => UDP_OUTPUT_REQUEST_DATA_3,
       UDP_OUTPUT_REQUEST_DATA_4    => UDP_OUTPUT_REQUEST_DATA_4,
       UDP_OUTPUT_REQUEST_DATA_5    => UDP_OUTPUT_REQUEST_DATA_5,
       UDP_OUTPUT_REQUEST_DATA_6    => UDP_OUTPUT_REQUEST_DATA_6,
       UDP_OUTPUT_REQUEST_DATA_7    => UDP_OUTPUT_REQUEST_DATA_7,   
       UDP_OUTPUT_ARBITER_REQUESTS  => UDP_OUTPUT_ARBITER_REQUESTS,
       UDP_OUTPUT_ARBITER_GRANTS    => UDP_OUTPUT_ARBITER_GRANTS,
       UDP_UART_TX_ACTIVE           => UDP_OUTPUT_SUBSYSTEM_TX_ACTIVE,
       UDP_UART_TX_DATA_VALID       => UDP_OUTPUT_SUBSYSTEM_TX_DATA_VALID,
       UDP_UART_TX_BYTE             => UDP_OUTPUT_SUBSYSTEM_TX_BYTE,
       UDP_UART_TX_FLUSH            => UDP_OUTPUT_SUBSYSTEM_TX_FLUSH,
       SERIAL_OUTPUT_TX_DATA        => SERIAL_OUTPUT_TX_DATA
    );
   
      
---------------------------------------------------------------------------
-- Instantiate UDP Example Core Test
---------------------------------------------------------------------------

UDP: udp_fpga
   PORT MAP (
      clk              => FPGA_CLOCK,
      reset_n          => FPGA_RESETn,
      mmcm_locked      => mmcm_locked,

      -- TODO  LED Test Vector
      debug_leds         => debug_leds,

      -- 100Base-T MII
      phy_ref_clk      => phy_ref_clk_50Mhz,
      phy_rx_clk       => rmii2mac_rx_clk,
      phy_rxd          => rmii2mac_rxd,
      phy_rx_dv        => rmii2mac_rx_dv,
      phy_rx_er        => rmii2mac_rx_er,
      phy_tx_clk       => rmii2mac_tx_clk,
      phy_txd          => mac2rmii_txd,
      phy_tx_en        => mac2rmii_tx_en,
      phy_col          => rmii2mac_col,
      phy_crs          => rmii2mac_crs,
      phy_reset_n      => OPEN,  -- The code there doesn't meet our needs (yet, anyway)
      
      -- Ethernet configuration inputs
      
      local_mac        => local_mac,
      
      -- IP Configuration inputs
      
      local_ip         => local_ip,
      gateway_ip       => gateway_ip,
      subnet_mask      => subnet_mask,
      remote_ip        => remote_ip,
      
      -- UDP In From Network
      
      rx_udp_hdr_ready => rx_udp_hdr_ready,
      rx_udp_hdr_valid => rx_udp_hdr_valid,
      rx_match_cond    => rx_match_cond,
      
      rx_udp_ip_source_ip => rx_udp_ip_source_ip,
      rx_udp_ip_dest_ip   => rx_udp_ip_dest_ip,
      rx_udp_source_port  => rx_udp_source_port,
      rx_udp_dest_port    => rx_udp_dest_port,
      rx_udp_length       => rx_udp_length,
      
      rx_udp_payload_axis_tready => rx_udp_payload_axis_tready,
      rx_udp_payload_axis_tvalid => rx_udp_payload_axis_tvalid,
      rx_udp_payload_axis_tlast  => rx_udp_payload_axis_tlast,
      rx_udp_payload_axis_tdata  => rx_udp_payload_axis_tdata,
      
      -- UDP Out To Network
      
      tx_udp_ip_source_ip        => tx_udp_ip_source_ip,
      tx_udp_ip_dest_ip          => tx_udp_ip_dest_ip,
      tx_udp_source_port         => tx_udp_source_port,
      tx_udp_dest_port           => tx_udp_dest_port,
      
      tx_udp_hdr_ready           => tx_udp_hdr_ready,
      tx_udp_hdr_valid           => tx_udp_hdr_valid,
      
      tx_udp_payload_axis_tready => tx_udp_payload_axis_tready,
      tx_udp_payload_axis_tdata  => tx_udp_payload_axis_tdata,
      tx_udp_payload_axis_tvalid => tx_udp_payload_axis_tvalid,
      tx_udp_payload_axis_tlast  => tx_udp_payload_axis_tlast      
      
   );   
   
resets: process(FPGA_CLOCK, resetCounter, btnCpuReset, resetState, mmcm_locked)
   begin
      if FPGA_CLOCK'event and FPGA_CLOCK = '1' then      
         case resetState is
         when RESET_INIT =>
            --  Initial reset state after power on waits for the PLL to lock,
            --  then starts automatically.  This is a ONE TIME initial reaset
            if mmcm_locked = '1' then
               resetCounter <= X"0000";
               -- phy_resetn <= '0';
               resetState <= RESET_COUNTING;
            else
               resetState <= RESET_INIT;
            end if;
            
         when RESET_IDLE =>
         -- IF PLL is locked and reset button pressed - start a reset
            if (mmcm_locked = '1') and (btnCpuReset = '0') then
               resetCounter <= X"0000";
               -- phy_resetn <= '0';
               resetState <= RESET_COUNTING;
            else
               -- phy_resetn <= '1';               
               resetState <= RESET_IDLE;
            end if;
            
         when RESET_COUNTING =>
            -- Reset in progress, and in the process of counting.
            -- when we reach all 1 buts, de-assert reset
            if resetCounter = X"FFFF" then
               -- phy_resetn <= '1';
               resetState <= RESET_IDLE;
            else
               resetState <= RESET_COUNTING;
               resetCounter <= resetCounter + 1;
            end if;
         end case;
      end if;
   end process;

FPGA_RESET <= not btnCpuReset;
-- FPGA_RESET <= not phy_resetn;
FPGA_RESETn <= not FPGA_RESET;
phy_resetn <= '0' when resetState = RESET_COUNTING else '1';
phy_reset <= not phy_resetn;
UDP_RESET <= phy_reset;
PhyRstn <= phy_resetn;
PhyClk50Mhz <= phy_ref_clk_50Mhz;
FPGA_CLOCK <= CLK;  -- Via IBUF now
buttons <= btnU & btnD & btnL & btnR & btnC;
mac2rmii_tx_er <= '0';  -- Temporary?  to avoid error message?

rx_match_cond <= '1' when 
   rx_udp_dest_port = X"0400" and rx_udp_ip_source_ip = remote_ip
   else '0';

tx_udp_ip_source_ip <= local_ip;

tx_udp_ip_dest_ip <= rx_udp_ip_source_ip when LOOPBACK = 1
   else remote_ip;
tx_udp_source_port <= rx_udp_dest_port when LOOPBACK = 1
   else X"0400"; 
tx_udp_dest_port <= rx_udp_source_port when LOOPBACK = 1
   else X"0400";
   
-- The following signals are now handled by the UART interface to UDP
--rx_udp_payload_axis_tready <= '1' when 
--   rxTestState = RX_VALID or rxTestState = RX_MATCH or 
--   rxTestState = RX_IDLE else '0';

UDP_UART_RX_DATA_READY <= '1' when 
   rx_delay_counter = 0 else '0';

--rx_udp_hdr_ready <= '1' when 
--   rxTestState = RX_IDLE or rxTestState = RX_DONE else '0';



output_buttons <= buttons when SIMULATION = 1 else debounced_buttons;

LED(7 downto 0) <= rx_last_byte; 
RGB1_Green <= rx_udp_hdr_ready;
-- RGB2_Red   <= debug_leds(2);
-- RGB2_Green <= debug_leds(1);
-- RGB2_Blue  <= debug_leds(0);

simpleSend: if LOOPBACK = 0 generate

   -- Test the UDP Uart standalone, without the 1410 UDP based output subsystem
   
   directudpuartoutput: if USEOUTPUTSUBSYSTEM = 0 generate

   txUartTest: process(FPGA_CLOCK, txUartTestState, output_buttons, UDP_UART_TX_ACTIVE,
      tx_udp_hdr_ready)
     begin
      
     if FPGA_CLOCK'event and FPGA_CLOCK ='1' then
        case txUartTestState is
      
        when TX_UART_TEST_IDLE =>
           if output_buttons(buttonUP) = '1' and DIRECT_UDP_UART_TX_ACTIVE = '0' then
              tx_fill_counter <= 0;
              -- UDP_UART_TX_BYTE <= X"40";
              -- UDP_UART_TX_DATA_VALID <= '1';
              txUartTestState <= TX_UART_TEST_FILL;
           else
              txUartTestState <= TX_UART_TEST_IDLE;
           end if;
            
        when TX_UART_TEST_FILL =>
           if DIRECT_UDP_UART_TX_ACTIVE = '0' then
              -- UDP UART ready for next byte
              DIRECT_UDP_UART_TX_DATA_VALID <= '1';
              DIRECT_UDP_UART_TX_BYTE <= std_logic_vector(
                 to_unsigned(64 - tx_fill_counter, DIRECT_UDP_UART_TX_BYTE'length));
              if tx_fill_counter = 63 then
                 txUartTestState <= TX_UART_TEST_DONE;
                 DIRECT_UDP_UART_TX_FLUSH <= '1';
              else
                 tx_fill_counter <= tx_fill_counter + 1;
                 txTestState <= TX_FILL;
                 DIRECT_UDP_UART_TX_FLUSH <= '0';
              end if;
           else
              -- UDP UART still chewing on previous byte
              DIRECT_UDP_UART_TX_DATA_VALID <= '1';
              DIRECT_UDP_UART_TX_FLUSH <= UDP_UART_TX_FLUSH;
              txUartTestState <= TX_UART_TEST_FILL;
           end if;
         
         when TX_UART_TEST_DONE =>
            DIRECT_UDP_UART_TX_DATA_VALID <= '0';
            DIRECT_UDP_UART_TX_FLUSH <= '0';
            if output_buttons(buttonUP) = '0' then
               txUartTestState <= TX_UART_TEST_IDLE;
            else
               txUartTestState <= TX_UART_TEST_DONE;
            end if;
         end case;
      end if;
      end process;
      
      -- Interface signals for testing with a serial UART
      
      DIRECT_UDP_UART_TX_ACTIVE <= UDP_UART_TX_ACTIVE;
      UDP_UART_TX_DATA_VALID <= DIRECT_UDP_UART_TX_DATA_VALID;
      UDP_UART_TX_BYTE <= DIRECT_UDP_UART_TX_BYTE;
      UDP_UART_TX_FLUSH <= DIRECT_UDP_UART_TX_FLUSH;
            
      end generate;  -- DIRECT UART UDP Output
                  
outputSubsystemOutput: if USEOUTPUTSUBSYSTEM = 1 generate

   txOutputSubsystemTest: process(FPGA_CLOCK,outputSubsystemTestState,output_buttons,
      UDP_OUTPUT_REQUESTER_STROBES, UDP_OUTPUT_ARBITER_REQUESTS,
      UDP_OUTPUT_ARBITER_GRANTS)
      
      begin
      if FPGA_CLOCK'event and FPGA_CLOCK = '1' then
      
         -- Wait for a button to start the test
         case outputSubsystemTestState is
         
         when outputSubsystemTestIdle =>
            if output_buttons(buttonUP) = '1' then
               outputSubsystemTestState <= outputSubsystemTest1a;
               tx_fill_counter <= 0;
            end if;
         
         -- Start of first test.  Make a request
         when outputSubsystemTest1a =>
            UDP_OUTPUT_REQUEST_DATA_7 <= "00110001";
            UDP_OUTPUT_REQUESTER_STROBES(7) <= '1';
            outputSubsystemTestState <= outputSubsystemTest1b;
            
         -- Wait for the grant to go true
         when outputSubsystemTest1b =>
            UDP_OUTPUT_REQUESTER_STROBES(7) <= '0';
            if UDP_OUTPUT_ARBITER_GRANTS(7) = '1' then
               outputSubsystemTestState <= outputSubsystemTest2a;
            else
               outputSubsystemTestState <= outputSubsystemTest1b;
            end if;

         -- Start of second test.  Make another request
         when outputSubsystemTest2a =>
            -- Have to wait for previous grant to go away. THEN strobe
            if UDP_OUTPUT_ARBITER_GRANTS(7) = '0' then
               UDP_OUTPUT_REQUEST_DATA_7 <= "00110010";
               UDP_OUTPUT_REQUESTER_STROBES(7) <= '1';
               outputSubsystemTestState <= outputSubsystemTest2b;
            else
               outputSubsystemtestState <= outputSubsystemTest2a;
            end if;
            
         -- Wait for the grant to go true
         when outputSubsystemTest2b =>
            UDP_OUTPUT_REQUESTER_STROBES(7) <= '0';
            if UDP_OUTPUT_ARBITER_GRANTS(7) = '1' then
               outputSubsystemTestState <= outputSubsystemTest3a;
            else
               outputSubsystemTestState <= outputSubsystemTest2b;
            end if;
            
         -- Start of third test:  simultaneous requests
         when outputSubsystemTest3a =>
            -- Previous Grant has to be gone first
            if UDP_OUTPUT_ARBITER_GRANTS(7) = '0' then        
               UDP_OUTPUT_REQUEST_DATA_7 <= "00110011";
               UDP_OUTPUT_REQUEST_DATA_6 <= "00110100";
               UDP_OUTPUT_REQUESTER_FLUSHES(6) <= '1';
               UDP_OUTPUT_REQUESTER_STROBES(7) <= '1';
               UDP_OUTPUT_REQUESTER_STROBES(6) <= '1';
               outputSubsystemTestState <= outputSubsystemTest3b;
            else
               outputSubsystemTestState <= outputSubsystemTest3a;
            end if;
            
         when outputSubsystemTest3b =>
            UDP_OUTPUT_REQUESTER_STROBES(7) <= '0';
            UDP_OUTPUT_REQUESTER_STROBES(6) <= '0';
            UDP_OUTPUT_REQUESTER_FLUSHES(6) <= '0';
            -- Grant 7 should come first
            if UDP_OUTPUT_ARBITER_GRANTS(7) = '1' then
               outputSubsystemTestState <= outputSubsystemTest3c;
            else
               outputSubsystemTestState <= outputSubsystemTest3b;
            end if;
            
         when outputSubsystemTest3c =>
            if UDP_OUTPUT_ARBITER_GRANTS(6) = '1' then
               outputSubsystemTestState <= outputSubsystemTest3c;
            else
               outputSubsystemTestState <= outputSubsystemTest4a;
            end if;             
         
         when outputSubsystemTest4a =>
            if UDP_OUTPUT_ARBITER_GRANTS(5) = '0' then
               UDP_OUTPUT_REQUEST_DATA_5 <=
                  std_logic_vector(to_unsigned(tx_fill_counter, UDP_OUTPUT_REQUEST_DATA_5'length));
               if tx_fill_counter = 63 then
                  UDP_OUTPUT_REQUESTER_FLUSHES(5) <= '1';
               else
                  UDP_OUTPUT_REQUESTER_FLUSHES(5) <= '0';
               end if;
               UDP_OUTPUT_REQUESTER_STROBES(5) <= '1';
               outputSubsystemTestState <= outputSubsystemTest4b;
            else
               outputSubsystemTestState <= outputSubsystemTest4a;
            end if; 
         
         when outputSubsystemTest4b =>
            UDP_OUTPUT_REQUESTER_STROBES(5) <= '0';
            if UDP_OUTPUT_ARBITER_GRANTS(5) = '0' then
               outputSubsystemTestState <= outputSubsystemTest4b;
            else
               if tx_fill_counter = 63 then
                  outputSubsystemTestState <= outputSubsystemTestButtonWait;
               else
                  tx_fill_counter <= tx_fill_counter + 1;
                  outputSubsystemTestState <= outputSubsystemTest4a;
               end if;
            end if;
         
         when outputSubsystemTestButtonWait =>
            if output_buttons(buttonUp) = '0' and 
               UDP_OUTPUT_ARBITER_GRANTS = "00" then
               outputSubsystemTestState <= outputSubsystemTestIdle;
            else
               outputSubsystemTestState <= outputSubsystemTestButtonWait;
            end if;
            
            
         -- Dummy case for unused states.
         when others =>
            outputSubsystemTestState <= outputSubsystemTestButtonWait;
         
         end case;
      end if;
      
      end process;

      -- Interface signals for testing with the UDP Output Subsystem

      UDP_OUTPUT_SUBSYSTEM_TX_ACTIVE <= UDP_UART_TX_ACTIVE;
      UDP_UART_TX_DATA_VALID <= UDP_OUTPUT_SUBSYSTEM_TX_DATA_VALID;
      UDP_UART_TX_BYTE <= UDP_OUTPUT_SUBSYSTEM_TX_BYTE;
      UDP_UART_TX_FLUSH <= UDP_OUTPUT_SUBSYSTEM_TX_FLUSH;

end generate; -- useOutputSubsystem           

rxUartTest: process(FPGA_CLOCK, UDP_RESET, 
   UDP_UART_RX_DATA_VALID, UDP_UART_RX_BYTE, UDP_UART_RX_PACKET_END,
   rxTestState)
   begin
   
   if UDP_RESET = '1' then
      rxTestState <= RX_IDLE;
      rx_first_byte <= X"FF";
      rx_last_byte <= X"FF";
      rx_byte_count <= 0;
      rx_delay_counter <= 0;
      
   elsif FPGA_CLOCK'event and FPGA_CLOCK = '1' then
      if UDP_UART_RX_DATA_READY = '1' then  --- This is ME being ready for data from UART
         if UDP_UART_RX_DATA_VALID = '1' then         
            if rx_byte_count = 0 then
               rx_first_byte <= UDP_UART_RX_BYTE;
            end if;
            rx_byte_count <= rx_byte_count + 1;
            if UDP_UART_RX_PACKET_END = '1' then
               rx_last_byte <= UDP_UART_RX_BYTE;
            end if;
         end if;
      end if;
      
      -- The following controls the UDP_UART_RX_DATA_READY so it is only
      -- true once every 5 cycles -- to test speed matching!
      -- UDP_UART_RX_DATA_READY is a combinatorial signal fed to
      -- the Uart interface.
      
      if rx_delay_counter =32 then
         rx_delay_counter <= 0;
      else
         rx_delay_counter <= rx_delay_counter + 1;
      end if;
      
   end if;
     
   end process;
            
-- txTest: process(FPGA_CLOCK, txTestState, output_buttons, tx_udp_hdr_ready,
--    tx_udp_payload_axis_tready)
--    begin
   
--    if FPGA_CLOCK'event and FPGA_CLOCK ='1' then
--       case txTestState is
   
--       when TX_IDLE =>
--          if output_buttons(buttonUP) = '1' and tx_udp_hdr_ready = '1' then
--             tx_fill_counter <= 0;
--             tx_udp_payload_axis_tdata <= X"40";
--             tx_udp_hdr_valid <= '1';
--             txTestState <= TX_FILL;
--          else
--             txTestState <= TX_IDLE;
--          end if;
         
--       when TX_FILL =>
--          if tx_udp_payload_axis_tready = '1' then
--             tx_udp_hdr_valid <= '0';
--             tx_udp_payload_axis_tvalid <= '1';
--             tx_udp_payload_axis_tdata <= std_logic_vector(
--                to_unsigned(64 - tx_fill_counter, tx_udp_payload_axis_tdata'length));
--             if tx_fill_counter = 63 then
--                txTestState <= TX_DONE;
--                tx_udp_payload_axis_tlast <= '1';
--             else
--                tx_fill_counter <= tx_fill_counter + 1;
--                txTestState <= TX_FILL;
--                tx_udp_payload_axis_tlast <= '0';
--             end if;
--          else
--             tx_udp_payload_axis_tvalid <= '0';
--             tx_udp_payload_axis_tlast <= '0';
--             txTestState <= TX_FILL;
--          end if;
         
--       when TX_DONE =>
--          tx_udp_payload_axis_tvalid <= '0';
--          tx_udp_payload_axis_tlast <= '0';
--          tx_udp_hdr_valid <= '0';
--          if output_buttons(buttonUP) = '0' then
--             txTestState <= TX_IDLE;
--          else
--             txTestState <= tx_DONE;
--          end if;
--       end case;
--    end if;
--    end process;
   
--rxTest: process(FPGA_CLOCK, rxTestState, rx_match_cond, rx_udp_hdr_valid,
--   rx_udp_payload_axis_tvalid, rx_udp_payload_axis_tlast)
--   begin
--   if FPGA_CLOCK'event and FPGA_CLOCK = '1' then
--      case rxTestState is
      
--      when RX_IDLE =>
--         if rx_match_cond = '1' and rx_udp_hdr_valid = '1' then
--            rx_first_byte <= X"00";
--            rx_last_byte <= X"00";
--            rx_byte_count <= 0;
--            rxTestState <= RX_MATCH;
--         else
--            rxTestState <= RX_IDLE;
--         end if;
         
--      when RX_MATCH =>
--         if rx_udp_payload_axis_tvalid = '1' then
--            rxTestState <= RX_VALID;
--            rx_first_byte <= rx_udp_payload_axis_tdata;
--            rx_byte_count <= 1;
--         else
--            rxTestState <= RX_MATCH;
--         end if;   
         
--      when RX_VALID =>
--         if rx_udp_payload_axis_tvalid = '1' then
--            if rx_udp_payload_axis_tlast = '1' then
--               rx_last_byte <= rx_udp_payload_axis_tdata;
--               rxTestState <= RX_DONE;               
--            else
--               rxTestState <= RX_VALID;
--               rx_byte_count <= rx_byte_count + 1;
--            end if;
--         else
--            rxTestState <= RX_VALID;
--         end if;
         
--      when RX_DONE => 
--         if rx_match_cond = '1' and rx_udp_hdr_valid = '1' then
--            rxTestState <= rx_DONE;
--         else
--            rxTestState <= RX_IDLE;
--         end if;
         
--      end case;
--   end if;
   
--   end process;
  
end generate;  -- For NON LOOPBACK

end Behavioral;
