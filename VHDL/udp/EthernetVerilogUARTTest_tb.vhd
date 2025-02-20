----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2024 07:11:33 PM
-- Design Name: 
-- Module Name: EthernetTest_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EthernetVerilogUARTTest_tb is
end EthernetVerilogUARTTest_tb;

architecture Behavioral of EthernetVerilogUARTTest_tb is

component EthernetVerilogUARTTest is
   GENERIC (
      SIMULATION: integer := 0;
      LOOPBACK:   integer := 0;
      CLOCKPERIOD: integer := 10;       -- Clock period in ns
      USEOUTPUTSUBSYSTEM: integer := 0  -- 1 to use the actual output subsystem      
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
end component;

-- For component copied in from Nexys4 Ethernet MAC test bench

component crc32 is 
   PORT(
      clk:         in STD_LOGIC;
      rst:         in STD_LOGIC;
      vld:         in STD_LOGIC;
      data:        in STD_LOGIC_VECTOR(7 downto 0);
      crc:        out STD_LOGIC_VECTOR(31 downto 0)
   );
end component;

signal FPGA_CLK: STD_LOGIC := '0';
signal SW: STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal btnC, btnL, btnR, btnU, btnD: STD_LOGIC := '0';
signal RgB1_Red, RGB1_Green, RGB1_Blue:  STD_LOGIC := '0';
signal RgB2_Red, RGB2_Green, RGB2_Blue:  STD_LOGIC := '0';

signal btnCpuReset: STD_LOGIC := '1';
signal RsRx: STD_LOGIC := '1';

signal LED: STD_LOGIC_VECTOR(15 downto 0);
signal RsTx, RxRx: STD_LOGIC;

signal PhyMdc:     STD_LOGIC := '0';  -- Not used
signal PhyMdio:    STD_LOGIC := '0';  -- Not used
signal PhyRstn:    STD_LOGIC;  -- 
signal PhyCrs:     STD_LOGIC := '0';  --
signal PhyRxErr:   STD_LOGIC := '0';  --
signal PhyRxd:     STD_LOGIC_VECTOR(1 downto 0) := "00"; --
signal PhyTxEn:    STD_LOGIC; --
signal PhyTxd:     STD_LOGIC_VECTOR(1 downto 0); --
signal PhyClk50Mhz:STD_LOGIC;
signal PhyIntn:    STD_LOGIC;  -- Not used   

signal reset:      STD_LOGIC := '0';             

--  Signals for comopnents brought in from Nexys4 Ethernet MAC test bench

signal crc_rst:    STD_LOGIC;
signal crc_vld:    STD_LOGIC;
signal crc_dat:    STD_LOGIC_VECTOR(7 downto 0);
signal crc_code:   STD_LOGIC_VECTOR(31 downto 0) := X"00000000";
signal crc_bswap:  STD_LOGIC_VECTOR(31 downto 0) := X"00000000";

signal rx_data:    STD_LOGIC_VECTOR(1522*8-1 downto 0);
signal rx_len:     STD_LOGIC_VECTOR(10 downto 0);
signal rx_err:     STD_LOGIC;
signal rx_i:       integer;
signal rx_b:       integer;
signal rx_byte_buf: STD_LOGIC_VECTOR(7 downto 0);
signal rx_preamble_buffer: STD_LOGIC_VECTOR(63 downto 0);
signal rx_crc:     STD_LOGIC_VECTOR(31 downto 0);
signal rx_byte:    STD_LOGIC_VECTOR(7 downto 0);

signal tx_data:    STD_LOGIC_VECTOR(1522*8-1 downto 0);
signal tx_arp:     STD_LOGIC_VECTOR(60*8-1 downto 0);
signal tx_len:     STD_LOGIC_VECTOR(10 downto 0);
signal tx_i:       integer;

function bswap32_vhdl (crc_code: STD_LOGIC_VECTOR)
   return STD_LOGIC_VECTOR is
   begin
   return crc_code(7 downto 0) & crc_code(15 downto 8) &
      crc_code(23 downto 16) & crc_code(31 downto 24);
   end bswap32_vhdl;


begin

   crc32_inst: crc32 PORT MAP(
      clk => PhyClk50Mhz,
      rst => crc_rst,
      vld => crc_vld,
      data => crc_dat,
      crc  => crc_code);
   
   EthernetVerilogUARTTestUUT: EthernetVerilogUARTTest 
   GENERIC MAP (
      SIMULATION => 1,         -- Simulated button timing
      LOOPBACK => 0,           -- don't use the original loopback logic
      CLOCKPERIOD => 10,       -- Clock period in ns
      USEOUTPUTSUBSYSTEM => 1  -- 1 to use the actual output subsystem            
    )
   PORT MAP(
      CLK => FPGA_CLK,
      SW =>  SW,
      LED => LED,
      RGB1_Red    => RGB1_Red,
      RGB1_Green  => RGB1_Green,
      RGB1_Blue   => RGB1_Blue,
      RGB2_Red    => RGB2_Red,
      RGB2_Green  => RGB2_Green,
      RGB2_Blue   => RGB2_Blue,
      btnC        => btnC,
      btnL        => btnL,
      btnR        => btnR,
      btnU        => btnU,
      btnD        => btnD,
      btnCpuReset => btnCpuReset,
--      RsTx        => RsTx,
--      RsRx        => RsRx,      
      -- Ethernet Port (PHY)
      PhyMdc      => PhyMdc,
      PhyMdio     => PhyMdio,
      PhyRstn     => PhyRstn, 
      PhyCrs      => PhyCrs, 
      PhyRxErr    => PhyRxErr,
      PhyRxd      => PhyRxd,
      PhyTxEn     => PhyTxEn,
      PhyTxd      => PhyTxd,
      PhyClk50Mhz => PhyClk50Mhz,
      PhyIntn     => PhyIntn                    
  );
  
  
   
FPGA_CLK <= not FPGA_CLK after 5 ns;
reset <= not PhyRstn;


EthernetVerilogUARTTest_Process: process is

procedure SEND_RX (minSize: in integer; testName: in STRING; verbosity: in INTEGER) is
   begin
   report testName & " Sending packet";
   PhyRxd <= "00";
   crc_rst <= '1';
   crc_vld <= '0';
   crc_dat <= X"00";
   wait for 20 ns;
   
   if verbosity > 0 then
      report testName & " sending Start of Frame";
   end if;
   
   for sof in 30 downto 0 loop    -- Had been 31, which was wrong.
      wait until rising_edge(PhyClk50Mhz);
      PhyCrs <= '1';
      PhyRxd <= "01";
      wait for 1 ns;      
   end loop;
   
   wait until rising_edge(PhyClk50Mhz);
   PhyRxd <= "11";

   if verbosity > 0 then
      report testName & " Starting Data";
   end if;
   
   crc_rst <= '0';
   tx_i <= 0;
   wait for 1 ns;
   while tx_i < (8 * to_integer(unsigned(tx_len))) loop
      wait until rising_edge(PhyClk50MHz);
      PhyRxd <= tx_data(tx_i + 1 downto tx_i);
      if tx_i mod 8 = 0 then
         crc_vld <= '1';
         crc_dat <= tx_data(tx_i+7 downto tx_i);
         if verbosity > 1 then
            report testName & " sent data[ " & integer'image(tx_i / 8) &
               "] " & -- integer'image(to_integer(unsigned(tx_data(tx_i+7 downto tx_i))));
               to_hstring(tx_data(tx_i+7 downto tx_i));
         end if;
      else
         crc_vld <= '0';
      end if;
      tx_i <= tx_i + 2;
      wait for 1 ns;
   end loop;
   
   if (verbosity > 0) and (tx_i < 8*minsize) then
      report testName & " Sending padding";
   end if;
   
   while tx_i < 8*minSize loop
      wait until rising_edge(PhyClk50Mhz);
      PhyRxd <= "00";
      if tx_i mod 8 = 0 then
         crc_vld <= '1';
         crc_dat <= X"00";
         wait for 1 ns;
      else
         crc_vld <= '0';
      end if;
      tx_i <= tx_i + 2;
      wait for 1 ns;           
   end loop;

   if (verbosity > 0) then
      report testName & " Sending Checksum of " & 
         -- integer'image(to_integer(unsigned(crc_code)));
         to_hstring(crc_code);
   end if;
   
   tx_i <= 0;
   crc_bswap <= bswap32_vhdl(crc_code);   
   crc_vld <= '0';
   wait for 1 ns;
   
   while tx_i < 31 loop
      wait until rising_edge(PhyClk50Mhz);
      PhyRxd <= crc_bswap(tx_i + 1 downto tx_i);
      tx_i <= tx_i + 2;
      wait for 1 ns;
   end loop;
   
   wait until rising_edge(PhyClk50Mhz);
   PhyCrs <= '0';
   PhyRxd <= "00";
   
   if (verbosity > 0) then
      report testName & " Packet completed.";
   end if;
   end SEND_RX;
   
   
   -- Receive a transmitted packet

procedure RECEIVE_TX (minSize: in INTEGER; testName: in STRING; verbosity: in INTEGER) is
    begin

    -- The following is translated from the Nexys4 Ethernet MAC tx_sim.v
    report "Waiting for Preamble";

    rx_preamble_buffer <= X"0000000000000000";
    wait for 1 ns;
    while rx_preamble_buffer /= X"D555555555555555" loop
       if(PhyTxEn = '1') then
          rx_preamble_buffer <= PhyTxd & rx_preamble_buffer(63 downto 2);
          wait until PhyClk50Mhz = '0';
          wait until PhyClk50Mhz = '1';
          wait for 1 ns;
       else
          rx_preamble_buffer <= X"0000000000000000";
          wait for 1 ns;
       end if;
    end loop;
    
    if verbosity > 0 then
       report testName & " Received TX Preamble";
    end if;
       
    crc_rst <= '1';
    crc_vld <= '0';
    rx_i <= 0;
    rx_b <= 0;
    wait for 1 ns;
    while(PhyTxEn = '1') loop
       rx_byte_buf <= PhyTxd & rx_byte_buf(7 downto 2);
       rx_b <= rx_b + 1;
       wait for 1 ns;
       
       if rx_b = 4 then
          if rx_i >= 4 then
             crc_vld <= '1';
             wait for 1 ns;
             crc_dat <= rx_data((rx_i-4)*8+8-1 downto (rx_i-4)*8); 
          end if;
          rx_data(rx_i*8+8-1 downto rx_i*8) <= rx_byte_buf;
          rx_b <= 0;
          if verbosity > 1 then
             report testName & " Received TX Data(" & integer'image(rx_i) & ") = " & 
                -- integer'image(to_integer(unsigned(rx_byte_buf)));
                to_hstring(rx_byte_buf);
          end if;
          rx_byte <= rx_byte_buf;
          rx_i <= rx_i + 1;
       end if;                    

       wait until PhyClk50Mhz = '0';          
       wait until PhyClk50Mhz = '1';
       crc_rst <= '0';
       crc_vld <= '0';
       wait for 1 ns;
    end loop;
       
    rx_len <= "00000000000";
    rx_err <= '0';
    rx_crc <= rx_data((rx_i-4)*8+32-1 downto (rx_i-4)*8);
    crc_bswap <= bswap32_vhdl(crc_code);       
    wait for 1 ns;
    if verbosity > 0 then
       report testName & " Received TX CRC: " & to_hstring(rx_crc); 
          -- integer'image(to_integer(unsigned(rx_crc))); 
       report testName & " Expected TX CRC: " & to_hstring(crc_bswap); 
          -- integer'image(to_integer(unsigned(crc_bswap)));
    end if;
       
    assert rx_b = 0 report testName & " Received TX Incomplete Transmission";
    assert rx_i >= minSize report testName & " Received TX Frame Size of " & integer'image(rx_i) &
       " is too short";
    assert rx_crc = crc_bswap report testName & " Received TX CRC Mismatch";


end RECEIVE_TX;


      --  Construct ARP Ethernet frame sans checksum bytes

   procedure BUILD_ARP_FRAME(
      testName: in String;
      verbosity: in integer;
      srcMac:  in STD_LOGIC_VECTOR(12*4-1 downto 0);
      destMac: in STD_LOGIC_VECTOR(12*4-1 downto 0);
      arpOperation: in STD_LOGIC_VECTOR(15 downto 0);
      srcIP:   in STD_LOGIC_VECTOR(8*4-1 downto 0);
      tgtMac:  in STD_LOGIC_VECTOR(12*4-1 downto 0);
      tgtIP:   in STD_LOGIC_VECTOR(8*4-1 downto 0)) is
      
   variable b: integer;
   
   begin 
      
      for i in 60 downto 1 loop
         tx_arp(i*8-1 downto i*8-8) <= X"00";         
      end loop;             
      b := 60*8;
      tx_arp(b-1 downto b-6*8) <= destMac;
      b := b - 6*8;
      tx_arp(b-1 downto b-6*8) <= srcMac;
      b := b - 6*8;
      tx_arp(b-1 downto b-2*8) <= X"0806";
      b := b - 2*8;
      -- HW Type, Protocol Tipe, MAC len, IP proto len
      tx_arp(b-1 downto b-6*8) <= X"000108000604"; 
      b := b - 6*8;
      tx_arp(b-1 downto b-2*8) <= arpOperation;
      b := b - 2*8;
      tx_arp(b-1 downto b-6*8) <= srcMac;
      b := b-6*8;
      tx_arp(b-1 downto b-4*8) <= srcIP;
      b := b-4*8;
      tx_arp(b-1 downto b-6*8) <= tgtMac;
      b := b-6*8;
      tx_arp(b-1 downto b-4*8) <= tgtIP;      
   end BUILD_ARP_FRAME;

   variable receivedMac: STD_LOGIC_VECTOR(47 downto 0);
   variable i,j: integer;
   variable LOOPBACK: integer := 0;

  begin
  
  if LOOPBACK /= 1 then
  
    btnU <= '0';
    PhyRxErr <= '0';
    PhyIntn <= '1';    
    wait for 100 ns;
    wait until PhyRstn = '1';
    wait for 200 us;
    btnU <= '1';

    -- First thing we expect to see is an ARP request from the FPGA from the
    -- packet it is trying to send

    RECEIVE_TX(minSize => 60, testName => "ARP REQUEST", verbosity => 2);
    
    -- Create an ARP reply

    wait for 100 us;
    btnU <= '0';
    
    tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));

    -- Change the MAC over from transmitted order

    j := 28*8;
    i := 0;    
    while i < 6 loop
       receivedMac(i*8+7 downto i*8) := rx_data(j-1 downto j-8);
       j := j - 8; 
       i := i + 1;
    end loop;

    BUILD_ARP_FRAME(
       testName => "ARP REPLY",
       verbosity => 1,
       srcMac => X"E0D55EAFF823",
       destMac => receivedMac,
       arpOperation => X"0002", -- Reply
       srcIP => X"C0A82A3C", 
       tgtMac => receivedMac,
       tgtIp => X"C0A82AFE"); -- Hard coded for now till I figure out the offset
    
    report "Built ARP Reply Frame";
    
    wait for 10 ns;
    tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));
    i := 0;
    while i < 8*to_integer(unsigned(tx_len)) loop
       tx_data(8*60-i-1 downto 8*60-i-8) <= tx_arp(i+7 downto i);
       i := i + 8;       
    end loop;
    
    wait for 100 us;
    
    -- tx_data(8*60-1 downto 0) <= tx_arp;
    SEND_RX(minSize => 60, testName => "ARP REPLY", verbosity => 1);
    wait for 1 us;
            
    RECEIVE_TX(minSize => 64, testName => "FIRST UDP Receive Packet", verbosity => 2);
    
    btnU <= '0';  -- Added
                        
    -- wait for 1 ms;
    
    -- report "Pressing btnU again...";
    -- btnU <= '1';
    RECEIVE_TX(minSize => 64, testName => "SECOND UDP Receive Packet", verbosity => 2);

    RECEIVE_TX(minSize => 64, testName => "THIRD UDP Receive Packet", verbosity => 2);

    RECEIVE_TX(minSize => 64, testName => "FOURTH UDP Receive Packet", verbosity => 2);

    -- wait for 100 us;
    -- btnU <= '0';
    wait for 500 us;     
    
    -- Send a packet to test receiving too...  
    
    tx_data(4*120-1 downto 0) <= 
       -- X"020001040A00E0D55EAFF82308004500002EB3FE00008011B035C0A82A3CC0A82AFE04000400001AD8DD000102030405060708090A0B0C0D0E0F1011";
        X"11100F0E0D0C0B0A09080706050403020100DDD81A0000040004FE2AA8C03C2AA8C035B011800000FEB32E000045000823F8AF5ED5E0000A04010002";
    tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));
    wait for 1 ns;
    SEND_RX(minSize => 60, testName => "SEND UDP Send to FPGA", verbosity => 1);

    wait for 100 us;

    tx_data(4*120-1 downto 0) <= 
       -- X"020001040A00E0D55EAFF82308004500002EB3FE00008011B035C0A82A3CC0A82AFE04000400001AD8DD000102030405060708090A0B0C0D0E0F1011";
        X"11100F0E0D0C0B0A09080706050403020100DDD81A0000040004FE2AA8C03C2AA8C035B011800000FEB32E000045000823F8AF5ED5E0000A04010002";
    tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));
    wait for 1 ns;
    SEND_RX(minSize => 60, testName => "SEND SECOND UDP Send to FPGA", verbosity => 1);
      
    wait for 500 us;
     
    report "Normal End of Ethernet Test" severity failure;
    end if;  -- LOOPACK /= 1

if LOOPBACK = 1 then
   wait for 1 ms;
   tx_data(4*120-1 downto 0) <= 
       -- X"020001040A00E0D55EAFF82308004500002EB3FE00008011B035C0A82A3CC0A82AFE04000400001AD8DD000102030405060708090A0B0C0D0E0F1011";
       X"11100F0E0D0C0B0A09080706050403020100DDD81A0000040004FE2AA8C03C2AA8C035B011800000FEB32E000045000823F8AF5ED5E0000A04010002";
   tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));
   wait for 1 ns;
   SEND_RX(minSize => 60, testName => "Loopback UDP Send to FPGA", verbosity => 1);
   wait for 1 ns;
   RECEIVE_TX(minSize => 60, testName => "Loopback UDP Receive Packet", verbosity => 1);
   
   report "Normal End of Loopback Test" severity failure;   
end if;
    
    
  end process;

end Behavioral;
