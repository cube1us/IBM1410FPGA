/*

Copyright (c) 2014-2018 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001

`resetall
`timescale 1ns / 1ps
`default_nettype none

`define SIMULATED   //  Affects button debouncing

/*
 * FPGA top-level module
 */
module udp_fpga (
    /*
     * Clock: 100MHz
     * Reset: Push button, active low
     */
    input  wire       clk,
    input  wire       reset_n,

    output wire       mmcm_locked,    
    output wire [7:0] debug_leds, 
     
    /*
     * Ethernet: 100BASE-T MII
     */
    output wire       phy_ref_clk,
    input  wire       phy_rx_clk,
    input  wire [3:0] phy_rxd,
    input  wire       phy_rx_dv,
    input  wire       phy_rx_er,
    input  wire       phy_tx_clk,
    output wire [3:0] phy_txd,
    output wire       phy_tx_en,
    input  wire       phy_col,
    input  wire       phy_crs,
    output wire       phy_reset_n,
    
    // Ethernet Configuration inputs
    
    input wire [47:0] local_mac,
    
    // IP Configuraation inputs
    
    input wire [31:0] local_ip,
    input wire [31:0] gateway_ip,
    input wire [31:0] subnet_mask,
    input wire [31:0] remote_ip,
    
    // UDP In from Network
    
    input  wire       rx_udp_hdr_ready,
    output wire       rx_udp_hdr_valid,
    input  wire       rx_match_cond,  // If traffic is for us or not
        
    output wire [31:0] rx_udp_ip_source_ip,
    output wire [31:0] rx_udp_ip_dest_ip,
    output wire [15:0] rx_udp_source_port,
    output wire [15:0] rx_udp_dest_port,
    output wire [15:0] rx_udp_length,
    
    input  wire       rx_udp_payload_axis_tready,
    output wire       rx_udp_payload_axis_tvalid,
    output wire       rx_udp_payload_axis_tlast,
    output wire [7:0] rx_udp_payload_axis_tdata,
        
    // UDP Out to Network
    
    input  wire [31:0] tx_udp_ip_source_ip,
    input  wire [31:0] tx_udp_ip_dest_ip,
    input  wire [15:0] tx_udp_source_port,
    input  wire [15:0] tx_udp_dest_port,
    
    output wire       tx_udp_hdr_ready,
    input  wire       tx_udp_hdr_valid,

    output wire       tx_udp_payload_axis_tready,
    input  wire [7:0] tx_udp_payload_axis_tdata,
    input  wire       tx_udp_payload_axis_tvalid,
    input  wire       tx_udp_payload_axis_tlast
    
);

// Clock and reset

wire clk_ibufg;

// Internal 125 MHz clock
wire clk_mmcm_out;
wire clk_int;
wire rst_int;

wire mmcm_rst = ~reset_n;
// wire mmcm_locked;
wire mmcm_clkfb;

//IBUFG
//clk_ibufg_inst(
//    .I(clk),
//    .O(clk_ibufg)
//);

assign clk_ibufg = clk;  // Buffering handled by upper module

wire clk_50mhz_mmcm_out;
wire clk_50mhz_int;

// MMCM instance
// 100 MHz in, 125 MHz out   [ Changed to 100 MHz out, JRJ]
// PFD range: 10 MHz to 550 MHz
// VCO range: 600 MHz to 1200 MHz
// M = 10, D = 1 sets Fvco = 1000 MHz (in range)
// Divide by 8 to get output frequency of 125 MHz
// Divide by 40 to get output frequency of 25 MHz
// 1000 / 5 = 200 MHz
MMCME2_BASE #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKOUT0_DIVIDE_F(10),     //  Was 8 -- Wondering if this shouldn't just be be 1 for 100 MHz
    .CLKOUT0_DUTY_CYCLE(0.5),
    .CLKOUT0_PHASE(0),
    .CLKOUT1_DIVIDE(20),      // My PHY needs 50 MHz
    .CLKOUT1_DUTY_CYCLE(0.5),
    .CLKOUT1_PHASE(45),       // PHY needs 45 degree phase shift as well
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.5),
    .CLKOUT2_PHASE(0),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.5),
    .CLKOUT3_PHASE(0),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.5),
    .CLKOUT4_PHASE(0),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.5),
    .CLKOUT5_PHASE(0),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.5),
    .CLKOUT6_PHASE(0),
    .CLKFBOUT_MULT_F(10),    //  Wondering if this shouldn't just be 1 for 100MHz.
    .CLKFBOUT_PHASE(0),
    .DIVCLK_DIVIDE(1),
    .REF_JITTER1(0.010),
    .CLKIN1_PERIOD(10.0),
    .STARTUP_WAIT("FALSE"),
    .CLKOUT4_CASCADE("FALSE")
)
clk_mmcm_inst (
    .CLKIN1(clk_ibufg),
    .CLKFBIN(mmcm_clkfb),
    .RST(mmcm_rst),
    .PWRDWN(1'b0),
    .CLKOUT0(clk_mmcm_out),
    .CLKOUT0B(),
    .CLKOUT1(clk_50mhz_mmcm_out),
    .CLKOUT1B(),
    .CLKOUT2(),
    .CLKOUT2B(),
    .CLKOUT3(),
    .CLKOUT3B(),
    .CLKOUT4(),
    .CLKOUT5(),
    .CLKOUT6(),
    .CLKFBOUT(mmcm_clkfb),
    .CLKFBOUTB(),
    .LOCKED(mmcm_locked)
);

BUFG
clk_bufg_inst (
    .I(clk_mmcm_out),
    .O(clk_int)
);

BUFG
clk_50mhz_bufg_inst (
    .I(clk_50mhz_mmcm_out),
    .O(clk_50mhz_int)
);

sync_reset #(
    .N(4)
)
sync_reset_inst (
    .clk(clk_int),
    .rst(~mmcm_locked),
    .out(rst_int)
);

assign phy_ref_clk = clk_50mhz_int;

fpga_core #(
    .TARGET("XILINX")
)
core_inst (
    /*
     * Clock: 125MHz
     * Synchronous reset
     */
    .clk(clk_int),
    .rst(rst_int),

    .debug_leds(debug_leds),  

    /*
     * Ethernet: 100BASE-T MII
     */
    .phy_rx_clk(phy_rx_clk),
    .phy_rxd(phy_rxd),
    .phy_rx_dv(phy_rx_dv),
    .phy_rx_er(phy_rx_er),
    .phy_tx_clk(phy_tx_clk),
    .phy_txd(phy_txd),
    .phy_tx_en(phy_tx_en),
    .phy_col(phy_col),
    .phy_crs(phy_crs),
    .phy_reset_n(phy_reset_n),
    
    // Ethernet inputs
    
    .local_mac(local_mac),
    
    // IP configuration inputs
    
    .local_ip(local_ip),
    .gateway_ip(gateway_ip),
    .subnet_mask(subnet_mask),
    .remote_ip(remote_ip),
    
    // UDP In from Network
    
    .rx_udp_hdr_ready(rx_udp_hdr_ready),
    .rx_udp_hdr_valid(rx_udp_hdr_valid),
    .rx_match_cond(rx_match_cond),
    
    .rx_udp_ip_source_ip(rx_udp_ip_source_ip),
    .rx_udp_ip_dest_ip(rx_udp_ip_dest_ip),
    .rx_udp_source_port(rx_udp_source_port),
    .rx_udp_dest_port(rx_udp_dest_port),
    .rx_udp_length(rx_udp_length),
    
    .rx_udp_payload_axis_tready(rx_udp_payload_axis_tready),
    .rx_udp_payload_axis_tvalid(rx_udp_payload_axis_tvalid),
    .rx_udp_payload_axis_tlast(rx_udp_payload_axis_tlast),
    .rx_udp_payload_axis_tdata(rx_udp_payload_axis_tdata),
    
    // UDP Out to Netowrk
    
    .tx_udp_ip_source_ip(tx_udp_ip_source_ip),
    .tx_udp_ip_dest_ip(tx_udp_ip_dest_ip),
    .tx_udp_source_port(tx_udp_source_port),
    .tx_udp_dest_port(tx_udp_dest_port),
    
    .tx_udp_hdr_ready(tx_udp_hdr_ready),
    .tx_udp_hdr_valid(tx_udp_hdr_valid),
    
    .tx_udp_payload_axis_tready(tx_udp_payload_axis_tready),
    .tx_udp_payload_axis_tdata(tx_udp_payload_axis_tdata),
    .tx_udp_payload_axis_tvalid(tx_udp_payload_axis_tvalid),
    .tx_udp_payload_axis_tlast(tx_udp_payload_axis_tlast)
    
);

endmodule

`resetall
