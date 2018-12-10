/***************************************************
* File: mux.v
* Author: Benjamin Morgan
* Class: EE 271
* Module: mux
* Description: A simple 2 to 1 multiplexor circuit
****************************************************/
module mux(f, in0, in1, sel);
	output f;
	input in0, in1, sel;
	assign f = (in0 & ~sel) | (in1 & sel);
endmodule

/***************************************************
* File: mux.v
* Author: Benjamin Morgan
* Class: EE 271
* Module: mux_testbench
* Description: A simple 2 to 1 multiplexor circuit
****************************************************/
module mux_testbench;
	reg in0, in1, sel;
	wire f;
	parameter stimDelay = 10;
	mux DUT(f, in0, in1, sel);
initial
begin
 in0 = 0; in1 = 0; sel=0;

 #(stimDelay) in0 = 1;
 #(stimDelay) in0 = 0; in1 = 1;
 #(stimDelay) in0 = 1;
 #(stimDelay) in0 = 0; in1 = 0; sel = 1;
 #(stimDelay) in0 = 1;
 #(stimDelay) in0 = 0; in1 = 1;
 #(stimDelay) in0 = 1;
 #(stimDelay) sel = 0;
#100; //Let simulation finish
end
endmodule