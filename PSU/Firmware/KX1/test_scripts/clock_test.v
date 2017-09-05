`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:04:47 05/12/2017
// Design Name:   clock
// Module Name:   C:/Users/dschussheim/Desktop/M_KX1_DB/Firmware/test_scripts/clock_test.v
// Project Name:  test_scripts
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clock_test;

	// Inputs
	reg on_in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	clock uut (
		.on_in(on_in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		on_in = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

