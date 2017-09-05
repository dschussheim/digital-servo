`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// ramp 
//
//	For testing DACs: 
////	generate ramp on FPGA, 
//	look at output from DAC, 
//	see if wires mislabeled etc
//
//	Daniel Schussheim 
// 11 May 2017
//
//////////////////////////////////////////////////////////////////////////////////
module ramp(
    input 				wire 							clk_in,		//clock
	 input				wire	[15:0]				amp			//amplitude
	 input 				wire	[15:0] 				init_val,	//starting value
    input 				wire	[15:0]				step,			//step size
    input 				integer						delay,		//how long to stay on given value (in clock cycles)
    output 	signed	wire	[15:0]				r_out			//output to be sent to DAC	
    );

r_out <= init_val;

localparam  GOINGUP 		= 2'b01;
localparam 	GOINGDOWN	= 2'b10;

reg state

state == GOINGUP

always @(posedge clk_in) begin
	
	if (r_out >= amp)
		state <= GOINGDOWN;	//If r_out is max, go down
	else if (r_out <= -amp)
		state <= GOINGUP;		//If r_out is min, go up
	end
	
	if (state == GOINGUP)
		r_out <= r_out + step;		//Add to r_out if we are ramping up
	else if (state == GOINGDOWN)
		r_out <= r_out - step;		//Subrtract if we are going down
	end
	
end

endmodule