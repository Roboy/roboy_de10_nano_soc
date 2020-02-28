// (C) 2001-2018 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.



// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// $Id: //acds/rel/18.1std/ip/merlin/altera_merlin_router/altera_merlin_router.sv.terp#1 $
// $Revision: #1 $
// $Date: 2018/07/18 $
// $Author: psgswbuild $

// -------------------------------------------------------
// Merlin Router
//
// Asserts the appropriate one-hot encoded channel based on 
// either (a) the address or (b) the dest id. The DECODER_TYPE
// parameter controls this behaviour. 0 means address decoder,
// 1 means dest id decoder.
//
// In the case of (a), it also sets the destination id.
// -------------------------------------------------------

`timescale 1 ns / 1 ns

module soc_system_mm_interconnect_0_router_default_decode
  #(
     parameter DEFAULT_CHANNEL = 20,
               DEFAULT_WR_CHANNEL = -1,
               DEFAULT_RD_CHANNEL = -1,
               DEFAULT_DESTID = 2 
   )
  (output [95 - 91 : 0] default_destination_id,
   output [24-1 : 0] default_wr_channel,
   output [24-1 : 0] default_rd_channel,
   output [24-1 : 0] default_src_channel
  );

  assign default_destination_id = 
    DEFAULT_DESTID[95 - 91 : 0];

  generate
    if (DEFAULT_CHANNEL == -1) begin : no_default_channel_assignment
      assign default_src_channel = '0;
    end
    else begin : default_channel_assignment
      assign default_src_channel = 24'b1 << DEFAULT_CHANNEL;
    end
  endgenerate

  generate
    if (DEFAULT_RD_CHANNEL == -1) begin : no_default_rw_channel_assignment
      assign default_wr_channel = '0;
      assign default_rd_channel = '0;
    end
    else begin : default_rw_channel_assignment
      assign default_wr_channel = 24'b1 << DEFAULT_WR_CHANNEL;
      assign default_rd_channel = 24'b1 << DEFAULT_RD_CHANNEL;
    end
  endgenerate

endmodule


module soc_system_mm_interconnect_0_router
(
    // -------------------
    // Clock & Reset
    // -------------------
    input clk,
    input reset,

    // -------------------
    // Command Sink (Input)
    // -------------------
    input                       sink_valid,
    input  [120-1 : 0]    sink_data,
    input                       sink_startofpacket,
    input                       sink_endofpacket,
    output                      sink_ready,

    // -------------------
    // Command Source (Output)
    // -------------------
    output                          src_valid,
    output reg [120-1    : 0] src_data,
    output reg [24-1 : 0] src_channel,
    output                          src_startofpacket,
    output                          src_endofpacket,
    input                           src_ready
);

    // -------------------------------------------------------
    // Local parameters and variables
    // -------------------------------------------------------
    localparam PKT_ADDR_H = 56;
    localparam PKT_ADDR_L = 36;
    localparam PKT_DEST_ID_H = 95;
    localparam PKT_DEST_ID_L = 91;
    localparam PKT_PROTECTION_H = 110;
    localparam PKT_PROTECTION_L = 108;
    localparam ST_DATA_W = 120;
    localparam ST_CHANNEL_W = 24;
    localparam DECODER_TYPE = 0;

    localparam PKT_TRANS_WRITE = 59;
    localparam PKT_TRANS_READ  = 60;

    localparam PKT_ADDR_W = PKT_ADDR_H-PKT_ADDR_L + 1;
    localparam PKT_DEST_ID_W = PKT_DEST_ID_H-PKT_DEST_ID_L + 1;



    // -------------------------------------------------------
    // Figure out the number of bits to mask off for each slave span
    // during address decoding
    // -------------------------------------------------------
    localparam PAD0 = log2ceil(64'h400 - 64'h0); 
    localparam PAD1 = log2ceil(64'h440 - 64'h400); 
    localparam PAD2 = log2ceil(64'h480 - 64'h440); 
    localparam PAD3 = log2ceil(64'h4c0 - 64'h480); 
    localparam PAD4 = log2ceil(64'h500 - 64'h4c0); 
    localparam PAD5 = log2ceil(64'h540 - 64'h500); 
    localparam PAD6 = log2ceil(64'h580 - 64'h540); 
    localparam PAD7 = log2ceil(64'h5c0 - 64'h580); 
    localparam PAD8 = log2ceil(64'h600 - 64'h5c0); 
    localparam PAD9 = log2ceil(64'h640 - 64'h600); 
    localparam PAD10 = log2ceil(64'h680 - 64'h640); 
    localparam PAD11 = log2ceil(64'h6c0 - 64'h680); 
    localparam PAD12 = log2ceil(64'h700 - 64'h6c0); 
    localparam PAD13 = log2ceil(64'h740 - 64'h700); 
    localparam PAD14 = log2ceil(64'h780 - 64'h740); 
    localparam PAD15 = log2ceil(64'h7c0 - 64'h780); 
    localparam PAD16 = log2ceil(64'h800 - 64'h7c0); 
    localparam PAD17 = log2ceil(64'h810 - 64'h800); 
    localparam PAD18 = log2ceil(64'h820 - 64'h810); 
    localparam PAD19 = log2ceil(64'h1008 - 64'h1000); 
    localparam PAD20 = log2ceil(64'h2008 - 64'h2000); 
    localparam PAD21 = log2ceil(64'h80000 - 64'h40000); 
    localparam PAD22 = log2ceil(64'h100000 - 64'hc0000); 
    localparam PAD23 = log2ceil(64'h180000 - 64'h140000); 
    // -------------------------------------------------------
    // Work out which address bits are significant based on the
    // address range of the slaves. If the required width is too
    // large or too small, we use the address field width instead.
    // -------------------------------------------------------
    localparam ADDR_RANGE = 64'h180000;
    localparam RANGE_ADDR_WIDTH = log2ceil(ADDR_RANGE);
    localparam OPTIMIZED_ADDR_H = (RANGE_ADDR_WIDTH > PKT_ADDR_W) ||
                                  (RANGE_ADDR_WIDTH == 0) ?
                                        PKT_ADDR_H :
                                        PKT_ADDR_L + RANGE_ADDR_WIDTH - 1;

    localparam RG = RANGE_ADDR_WIDTH-1;
    localparam REAL_ADDRESS_RANGE = OPTIMIZED_ADDR_H - PKT_ADDR_L;

      reg [PKT_ADDR_W-1 : 0] address;
      always @* begin
        address = {PKT_ADDR_W{1'b0}};
        address [REAL_ADDRESS_RANGE:0] = sink_data[OPTIMIZED_ADDR_H : PKT_ADDR_L];
      end   

    // -------------------------------------------------------
    // Pass almost everything through, untouched
    // -------------------------------------------------------
    assign sink_ready        = src_ready;
    assign src_valid         = sink_valid;
    assign src_startofpacket = sink_startofpacket;
    assign src_endofpacket   = sink_endofpacket;
    wire [PKT_DEST_ID_W-1:0] default_destid;
    wire [24-1 : 0] default_src_channel;




    // -------------------------------------------------------
    // Write and read transaction signals
    // -------------------------------------------------------
    wire read_transaction;
    assign read_transaction  = sink_data[PKT_TRANS_READ];


    soc_system_mm_interconnect_0_router_default_decode the_default_decode(
      .default_destination_id (default_destid),
      .default_wr_channel   (),
      .default_rd_channel   (),
      .default_src_channel  (default_src_channel)
    );

    always @* begin
        src_data    = sink_data;
        src_channel = default_src_channel;
        src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = default_destid;

        // --------------------------------------------------
        // Address Decoder
        // Sets the channel and destination ID based on the address
        // --------------------------------------------------

    // ( 0x0 .. 0x400 )
    if ( {address[RG:PAD0],{PAD0{1'b0}}} == 21'h0   ) begin
            src_channel = 24'b000001000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 10;
    end

    // ( 0x400 .. 0x440 )
    if ( {address[RG:PAD1],{PAD1{1'b0}}} == 21'h400   ) begin
            src_channel = 24'b000000001000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 8;
    end

    // ( 0x440 .. 0x480 )
    if ( {address[RG:PAD2],{PAD2{1'b0}}} == 21'h440   ) begin
            src_channel = 24'b000000000000100000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 7;
    end

    // ( 0x480 .. 0x4c0 )
    if ( {address[RG:PAD3],{PAD3{1'b0}}} == 21'h480   ) begin
            src_channel = 24'b000000000000000010000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 6;
    end

    // ( 0x4c0 .. 0x500 )
    if ( {address[RG:PAD4],{PAD4{1'b0}}} == 21'h4c0   ) begin
            src_channel = 24'b000000000000000000001000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 5;
    end

    // ( 0x500 .. 0x540 )
    if ( {address[RG:PAD5],{PAD5{1'b0}}} == 21'h500   ) begin
            src_channel = 24'b000000000100000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 22;
    end

    // ( 0x540 .. 0x580 )
    if ( {address[RG:PAD6],{PAD6{1'b0}}} == 21'h540   ) begin
            src_channel = 24'b000000000000010000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 21;
    end

    // ( 0x580 .. 0x5c0 )
    if ( {address[RG:PAD7],{PAD7{1'b0}}} == 21'h580   ) begin
            src_channel = 24'b000000000000000001000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 20;
    end

    // ( 0x5c0 .. 0x600 )
    if ( {address[RG:PAD8],{PAD8{1'b0}}} == 21'h5c0   ) begin
            src_channel = 24'b000000000000000000000100;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 19;
    end

    // ( 0x600 .. 0x640 )
    if ( {address[RG:PAD9],{PAD9{1'b0}}} == 21'h600   ) begin
            src_channel = 24'b000000000010000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 18;
    end

    // ( 0x640 .. 0x680 )
    if ( {address[RG:PAD10],{PAD10{1'b0}}} == 21'h640   ) begin
            src_channel = 24'b000000000000001000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 17;
    end

    // ( 0x680 .. 0x6c0 )
    if ( {address[RG:PAD11],{PAD11{1'b0}}} == 21'h680   ) begin
            src_channel = 24'b000000000000000000100000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 16;
    end

    // ( 0x6c0 .. 0x700 )
    if ( {address[RG:PAD12],{PAD12{1'b0}}} == 21'h6c0   ) begin
            src_channel = 24'b000000000000000000000010;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 15;
    end

    // ( 0x700 .. 0x740 )
    if ( {address[RG:PAD13],{PAD13{1'b0}}} == 21'h700   ) begin
            src_channel = 24'b000000000001000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 14;
    end

    // ( 0x740 .. 0x780 )
    if ( {address[RG:PAD14],{PAD14{1'b0}}} == 21'h740   ) begin
            src_channel = 24'b000000000000000100000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 13;
    end

    // ( 0x780 .. 0x7c0 )
    if ( {address[RG:PAD15],{PAD15{1'b0}}} == 21'h780   ) begin
            src_channel = 24'b000000000000000000010000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 12;
    end

    // ( 0x7c0 .. 0x800 )
    if ( {address[RG:PAD16],{PAD16{1'b0}}} == 21'h7c0   ) begin
            src_channel = 24'b000000000000000000000001;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 11;
    end

    // ( 0x800 .. 0x810 )
    if ( {address[RG:PAD17],{PAD17{1'b0}}} == 21'h800  && read_transaction  ) begin
            src_channel = 24'b100000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 4;
    end

    // ( 0x810 .. 0x820 )
    if ( {address[RG:PAD18],{PAD18{1'b0}}} == 21'h810   ) begin
            src_channel = 24'b010000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 3;
    end

    // ( 0x1000 .. 0x1008 )
    if ( {address[RG:PAD19],{PAD19{1'b0}}} == 21'h1000  && read_transaction  ) begin
            src_channel = 24'b001000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 23;
    end

    // ( 0x2000 .. 0x2008 )
    if ( {address[RG:PAD20],{PAD20{1'b0}}} == 21'h2000   ) begin
            src_channel = 24'b000000010000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 9;
    end

    // ( 0x40000 .. 0x80000 )
    if ( {address[RG:PAD21],{PAD21{1'b0}}} == 21'h40000   ) begin
            src_channel = 24'b000100000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 2;
    end

    // ( 0xc0000 .. 0x100000 )
    if ( {address[RG:PAD22],{PAD22{1'b0}}} == 21'hc0000   ) begin
            src_channel = 24'b000010000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 1;
    end

    // ( 0x140000 .. 0x180000 )
    if ( {address[RG:PAD23],{PAD23{1'b0}}} == 21'h140000   ) begin
            src_channel = 24'b000000100000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 0;
    end

end


    // --------------------------------------------------
    // Ceil(log2()) function
    // --------------------------------------------------
    function integer log2ceil;
        input reg[65:0] val;
        reg [65:0] i;

        begin
            i = 1;
            log2ceil = 0;

            while (i < val) begin
                log2ceil = log2ceil + 1;
                i = i << 1;
            end
        end
    endfunction

endmodule


