----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/13/2024 11:29:42 AM
-- Design Name: 
-- Module Name: EthernetTest - Behavioral
-- Project Name: For IBM1410
-- Target Devices: Nexys4 Development Board
-- Tool Versions: 
-- Description: Just a test
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

entity EthernetTest is
   GENERIC (
      SIMULATION: integer := 0;
      LOOPBACK:   integer := 0
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
   
end EthernetTest;

architecture Behavioral of EthernetTest is

   -- Signals for the MII to RMII interface

   signal rst_n: STD_LOGIC;
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

   type txTestStateType is (TX_IDLE, TX_FILL, TX_DONE);
   signal txTestState: txTestStateType := TX_IDLE;      
   
   signal tx_fill_counter:            integer range 0 to 63;
   
   type rxTestStateType is (RX_IDLE, RX_MATCH, RX_VALID, RX_DONE);
   signal rxTestState: rxTestStateType := RX_IDLE;
   
   signal rx_first_byte:              STD_LOGIC_VECTOR(7 downto 0);
   signal rx_last_byte:               STD_LOGIC_VECTOR(7 downto 0);
   signal rx_byte_count:              integer range 0 to 4095;
            
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
PhyRstn <= phy_resetn;
PhyClk50Mhz <= phy_ref_clk_50Mhz;
FPGA_CLOCK <= CLK;  -- Via IBUF now
buttons <= btnU & btnD & btnL & btnR & btnC;
mac2rmii_tx_er <= '0';  -- Temporary?  to avoid error message?

rx_match_cond <= '1' when rx_udp_dest_port = X"0400" else '0';

tx_udp_ip_source_ip <= local_ip;

tx_udp_ip_dest_ip <= rx_udp_ip_source_ip when LOOPBACK = 1
   else remote_ip;
tx_udp_source_port <= rx_udp_dest_port when LOOPBACK = 1
   else X"0400"; 
tx_udp_dest_port <= rx_udp_source_port when LOOPBACK = 1
   else X"0400";
   
rx_udp_hdr_ready <= '1' when 
   rxTestState = RX_IDLE or rxTestState = RX_DONE else '0';
rx_udp_payload_axis_tready <= '1' when 
   rxTestState = RX_VALID or rxTestState = RX_MATCH or 
   rxTestState = RX_IDLE else '0';

output_buttons <= buttons when SIMULATION = 1 else debounced_buttons;

LED(7 downto 0) <= rx_last_byte; 
RGB1_Green <= rx_udp_hdr_ready;
-- RGB2_Red   <= debug_leds(2);
-- RGB2_Green <= debug_leds(1);
-- RGB2_Blue  <= debug_leds(0);


simpleSend: if LOOPBACK = 0 generate

txTest: process(FPGA_CLOCK, txTestState, output_buttons, tx_udp_hdr_ready,
   tx_udp_payload_axis_tready)
   begin
   
   if FPGA_CLOCK'event and FPGA_CLOCK ='1' then
      case txTestState is
   
      when TX_IDLE =>
         if output_buttons(buttonUP) = '1' and tx_udp_hdr_ready = '1' then
            tx_fill_counter <= 0;
            tx_udp_payload_axis_tdata <= X"40";
            tx_udp_hdr_valid <= '1';
            txTestState <= TX_FILL;
         else
            txTestState <= TX_IDLE;
         end if;
         
      when TX_FILL =>
         if tx_udp_payload_axis_tready = '1' then
            tx_udp_hdr_valid <= '0';
            tx_udp_payload_axis_tvalid <= '1';
            tx_udp_payload_axis_tdata <= std_logic_vector(
               to_unsigned(64 - tx_fill_counter, tx_udp_payload_axis_tdata'length));
            if tx_fill_counter = 63 then
               txTestState <= TX_DONE;
               tx_udp_payload_axis_tlast <= '1';
            else
               tx_fill_counter <= tx_fill_counter + 1;
               txTestState <= TX_FILL;
               tx_udp_payload_axis_tlast <= '0';
            end if;
         else
            tx_udp_payload_axis_tvalid <= '0';
            tx_udp_payload_axis_tlast <= '0';
            txTestState <= TX_FILL;
         end if;
         
      when TX_DONE =>
         tx_udp_payload_axis_tvalid <= '0';
         tx_udp_payload_axis_tlast <= '0';
         tx_udp_hdr_valid <= '0';
         if output_buttons(buttonUP) = '0' then
            txTestState <= TX_IDLE;
         else
            txTestState <= tx_DONE;
         end if;
      end case;
   end if;
   end process;
   
rxTest: process(FPGA_CLOCK, rxTestState, rx_match_cond, rx_udp_hdr_valid,
   rx_udp_payload_axis_tvalid, rx_udp_payload_axis_tlast)
   begin
   if FPGA_CLOCK'event and FPGA_CLOCK = '1' then
      case rxTestState is
      
      when RX_IDLE =>
         if rx_match_cond = '1' and rx_udp_hdr_valid = '1' then
            rx_first_byte <= X"00";
            rx_last_byte <= X"00";
            rx_byte_count <= 0;
            rxTestState <= RX_MATCH;
         else
            rxTestState <= RX_IDLE;
         end if;
         
      when RX_MATCH =>
         if rx_udp_payload_axis_tvalid = '1' then
            rxTestState <= RX_VALID;
            rx_first_byte <= rx_udp_payload_axis_tdata;
            rx_byte_count <= 1;
         else
            rxTestState <= RX_MATCH;
         end if;   
         
      when RX_VALID =>
         if rx_udp_payload_axis_tvalid = '1' then
            if rx_udp_payload_axis_tlast = '1' then
               rx_last_byte <= rx_udp_payload_axis_tdata;
               rxTestState <= RX_DONE;               
            else
               rxTestState <= RX_VALID;
               rx_byte_count <= rx_byte_count + 1;
            end if;
         else
            rxTestState <= RX_VALID;
         end if;
         
      when RX_DONE => 
         if rx_match_cond = '1' and rx_udp_hdr_valid = '1' then
            rxTestState <= rx_DONE;
         else
            rxTestState <= RX_IDLE;
         end if;
         
      end case;
   end if;
   
   end process;
  
end generate;  -- For NON LOOPBACK

end Behavioral;
