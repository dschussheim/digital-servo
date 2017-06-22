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
	reg bit_slip;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	deserializer uut (
		.Q(Q), 
		.D(D), 
		.clk(clk), 
		.rst(rst),
		.bit_slip(bit_slip)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 1;
		clkDiv = 1;
		rst = 0;
		bit_slip = 0;
		
		#100;
		// Add stimulus here
		#100 rst = 1;
		#40 rst = 0;
		#500
		bit_slip = 1;
		#1.25 bit_slip = 0;
		#1.25 bit_slip = 1;
		#1.25 bit_slip = 0;
		#500
		#0.3125 D = 1;
		#1.25   D = 0;
		#1.25   D = 1;
		#1.25   D = 1;
		#1.25   D = 0;
		#1.25   D = 1;
		#1.25   D = 1;
		#1.25   D = 1;
		
		#1.25   D = 1;
        #1.25   D = 0;
        #1.25   D = 1;
        #1.25   D = 1;
        #1.25   D = 0;
        #1.25   D = 1;
        #1.25   D = 1;
        #1.25   D = 1;
        
        #1.25   D = 1;
        #1.25   D = 0;
        #1.25   D = 1;
        #1.25   D = 1;
        #1.25   D = 0;
        #1.25   D = 1;
        #1.25   D = 1;
        #1.25   D = 1;


	end
	always
		#5 clk = ~clk;
	always
		#40 clkDiv = ~clkDiv;
//	always
//		#0.3 D = ~D;
      
endmodule

