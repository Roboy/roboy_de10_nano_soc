module uart #(parameter CLK_FREQ_HZ = 50_000_000, parameter BAUDRATE = 115200)
  (
    input       i_Clock,
    input       i_Reset,
    output      o_Tx_Serial,
    input       i_Rx_Serial,

    // this is for the avalon interface
    input [15:0] address,
    input write,
    input signed [31:0] writedata,
    input read,
    output signed [31:0] readdata,
    output waitrequest
  );

  reg [31:0] BAUD = 32'd9600;

  //---TX regs and wires
  reg        i_Tx_DV = 0;
  reg [7:0]  i_Tx_Byte = 8'b01010101;
  wire       o_Tx_Enable, o_Tx_Done, o_Tx_Active;

  //---RX regs and wires
  wire       o_Rx_DV;
  wire [7:0] o_Rx_Byte;

  //--custom hand parsing
  reg [15:0] position [5:1];

  assign readdata = returnvalue;
  assign waitrequest = (waitFlag && read);
  reg [31:0] returnvalue;
  reg waitFlag;

   always @(posedge i_Clock, posedge i_Reset) begin: AVALON_READ_INTERFACE
   	if (i_Reset == 1) begin
   		waitFlag <= 1;
   	end else begin
   		waitFlag <= 1;
   		if(read) begin
   			case(address>>8)
					8'h00: returnvalue <= o_Rx_Byte[7:0];
					8'h01: returnvalue <= position[1][15:0];
					8'h02: returnvalue <= position[2][15:0];
					8'h03: returnvalue <= position[3][15:0];
					8'h04: returnvalue <= position[4][15:0];
					8'h04: returnvalue <= position[5][15:0];
   				default: returnvalue <= 32'hDEADBEEF;
   			endcase
   			if(waitFlag==1) begin // next clock cycle the returnvalue should be ready
   				waitFlag <= 0;
   			end
   		end
   	end
   end

   always @(posedge i_Clock, posedge i_Reset) begin: AVALON_WRITE_INTERFACE
   	reg spi_done_prev;
   	reg [7:0]i;
   	reg [31:0] counter;
   	if (i_Reset == 1) begin
   		i_Tx_Byte <= 7'd15;
   	end else begin
			i_Tx_DV <= 0;
   		// if we are writing via avalon bus and waitrequest is deasserted, write the respective register
   		if(write && ~waitrequest) begin
 				case(address>>8)
 					8'h00 : begin
							i_Tx_Byte[7:0]  <= writedata[7:0];
							i_Tx_DV <= 1;
						end
					8'h01: BAUD[31:0]   <= writedata[31:0];
 				endcase
   		end
   	end
   end


   reg current_finger = 0;
   reg waitflag_cmd = 0;
   reg waitflag_num = 0;
   reg waitflag_data = 0;

   always @(posedge i_Clock, posedge i_Reset) begin : arm_interface 
	      if (i_Reset == 1) begin
        waitflag_cmd <= 0;
        waitflag_num <= 0;
        waitflag_data <= 0;
        //i_Tx_DV <= 0;
      end else begin
        //!!!! DELETE !!!!!
        //i_Tx_DV <= 1;
        //!!!!! DELETE ENDE!!!!
        //create async access with parsing
        if(o_Rx_DV == 1)begin
          if(o_Rx_Byte == 8'd10) begin //10 equals \n ... so new line resets the parsing
            waitflag_cmd <= 0;
            waitflag_num <= 0;
            waitflag_data <= 0;
          end else begin
            if(o_Rx_Byte == 8'd70) begin //F is the command to select Finger
              if(waitflag_cmd != 1)begin
                waitflag_cmd <= 1;
              end
            end

            if(waitflag_cmd == 1)begin
              waitflag_num <= 1;
              current_finger <= o_Rx_Byte;
            end

            if(o_Rx_Byte == 8'd32)begin
              waitflag_data <= 1;
            end

            if(waitflag_data == 1)begin
              position[current_finger][15:0] <= o_Rx_Byte;
              waitflag_cmd <= 0;
              waitflag_num <= 0;
              waitflag_data <= 0;
            end

				
          end
			end
      end
   end

   uart_rx interface_uart_rx(
      .i_Clock(i_Clock),
      .i_BAUD(BAUD),
      .i_Rx_Serial(i_Rx_Serial),
      .o_Rx_DV(o_Rx_DV),
      .o_Rx_Byte(o_Rx_Byte)
   );

   uart_tx interface_uart_tx(
     .i_Clock(i_Clock),
     .i_BAUD(BAUD),
     .i_Tx_DV(i_Tx_DV),
     .i_Tx_Byte(i_Tx_Byte),
     .o_Tx_Active(o_Tx_Active),
     .o_Tx_Serial(o_Tx_Serial),
     .o_Tx_Enable(o_Tx_Enable),
     .o_Tx_Done(o_Tx_Done)
   );
	
endmodule
