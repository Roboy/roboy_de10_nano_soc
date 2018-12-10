/*
basic PWM code
should be used with a 10k and 100nF to use it as a DAC
PLL -> 5Mhz 
8bit based
*/
`timescale 1ps / 1ps
module pwm_gen(
input clk,
input signed[7:0] duty_cycle,
output reg PWM_OUT					         
);
	wire [7:0] counter_out; 
	//real buffer_r01;
	reg signed [31:0] Uref; 

always @ (posedge clk)
begin	
	//buffer_r01 = const_var*duty_cycle;
	//Uref=$rtoi(2.55*duty_cycle); 
	Uref=(255*duty_cycle); 
	if (Uref > (counter_out*100))
		PWM_OUT <= 1;
		
	else 
		PWM_OUT <= 0;
end
		
	
ramp_gen counter_inst(
	.clk (clk),
	.counter_out (counter_out)
);
	
endmodule



`timescale 1ps / 1ps
module ramp_gen (
input clk,	
output reg [7:0] counter_out
);
	
always @(posedge clk)
begin
	counter_out <= #1 counter_out + 1'b1;	//verzögert wird continuierlich +1 (1bit) addiert
end
		
endmodule



/*-----------------------------------*/
`timescale 1ps / 1ps
module pwm_gen_tb;

reg clk;            
wire PWM_out;
wire [7:0] counter_out;
reg [7:0] Duty_Cycle;


assign counter_out = DUT.counter_inst.counter_out;

//parameter stimDelay = 10;
parameter CYCLE = 200000;

initial 
begin
  clk=1'b0;
  DUT.counter_inst.counter_out=8'b0;
  Duty_Cycle=50;
end

always
	begin
		#CYCLE clk = !clk;
	end
	
pwm_gen DUT (
	.clk (clk),
	.duty_cycle (Duty_Cycle),
	.PWM_OUT (PWM_out)
);
endmodule