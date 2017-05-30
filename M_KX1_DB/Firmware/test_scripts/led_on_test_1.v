`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:33:07 05/29/2017
// Design Name:   led_on
// Module Name:   C:/Users/dschussheim/Desktop/M_KX1_DB/Firmware/test_scripts/led_on_test_1.v
// Project Name:  test_scripts
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: led_on
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module led_on_test_1;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	led_on uut (
		.out(out)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

