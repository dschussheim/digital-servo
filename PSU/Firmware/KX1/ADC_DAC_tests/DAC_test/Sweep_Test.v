`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:58:30 06/01/2017
// Design Name:   Sweep
// Module Name:   C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/DAC_test/Sweep_Test.v
// Project Name:  DAC_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sweep
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//	Test of sweep program. How does a signed output help us at all?
//
////////////////////////////////////////////////////////////////////////////////

module Sweep_Test;

	// Inputs
	reg clk_in;
	reg on_in;
	reg [15:0] minval_in;
	reg [15:0] maxval_in;
	reg [31:0] stepsize_in;

	// Outputs
	wire [15:0] signal_out;

	// Instantiate the Unit Under Test (UUT)
	Sweep uut (
		.clk_in(clk_in), 
		.on_in(on_in), 
		.minval_in(minval_in), 
		.maxval_in(maxval_in), 
		.stepsize_in(stepsize_in), 
		.signal_out(signal_out)
	);

	initial begin
		// Initialize Inputs
		clk_in = 0;
		on_in = 1'b0;
		minval_in = 16'sb0000_0000_0000_1111;
		maxval_in = 16'sb0111_1111_1111_1111;
		stepsize_in = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
        
		// Add stimulus here
		#10 on_in = 1'b1;
	end
      
	always
		#5	clk_in = ~clk_in;
		
endmodule

