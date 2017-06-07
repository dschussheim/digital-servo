`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:51:06 06/07/2017
// Design Name:   clk_div
// Module Name:   C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/DAC_test/clk_div_tb.v
// Project Name:  DAC_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk_div
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clk_div_tb;

	// Inputs
	reg clk;
//	reg [26:0] div_f;
	reg rst_in;

	// Outputs
	wire div_clk;

	// Instantiate the Unit Under Test (UUT)
	clk_div uut (
		.clk(clk), 
	//	.div_f(div_f), 
		.rst_in(rst_in), 
		.div_clk(div_clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
//	div_f = 27'b10;
		rst_in = 0;
		#10 rst_in = 0;
		
        
		// Add stimulus here

	end
      
	always
		#5	clk = ~clk;
		
endmodule

