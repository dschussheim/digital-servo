`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:53:56 05/12/2017
// Design Name:   counter4
// Module Name:   C:/Users/dschussheim/Desktop/M_KX1_DB/Firmware/test_scripts/counter4test.v
// Project Name:  test_scripts
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter4test;

	// Inputs
	reg clk;
	reg enable;
	reg reset;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	counter4 uut (
		.clk(clk), 
		.enable(enable), 
		.reset(reset), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		enable = 0;
		reset = 0;
		#3 reset = 1;
		#1 reset = 0;
		#2 enable = 1;
		#15 enable = 0;
		#5 enable  = 1;
		#3 reset = 1;
		#5 reset = 0;
	end
        
		// Clock
		always begin
			#1 clk = ~clk;
		end
		
      
endmodule

