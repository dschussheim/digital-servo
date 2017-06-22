`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:06:46 06/21/2017
// Design Name:   deserializer
// Module Name:   C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_test_2/deserializer_tb.v
// Project Name:  ADC_test_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: deserializer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module deserializer_tb;

	// Inputs
	reg D;
	reg clk;
	reg clkDiv;
	reg rst;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	deserializer uut (
		.Q(Q), 
		.D(D), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 1;
		clkDiv = 1;
		rst = 0;
		
		#600;
		// Add stimulus here

		#20 D = 1;

	end
	always
		#5 clk = ~clk;
	always
		#40 clkDiv = ~clkDiv;
//	always
//		#0.3 D = ~D;
      
endmodule

