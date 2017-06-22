`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:54:33 06/22/2017
// Design Name:   deser
// Module Name:   C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_test_2/deser_tb.v
// Project Name:  ADC_test_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: deser
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module deser_tb;

	// Inputs
	reg FR;
	reg DCI;
	reg D;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	deser uut (
		.FR(FR), 
		.DCI(DCI), 
		.D(D), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		FR = 0;
		DCI = 0;
		D = 0;

		// Wait 100 ns for global reset to finish
		#500;
        
		// Add stimulus here

	end
     
	always
		#5 FR = ~FR;
	always
		#1.25 DCI = ~DCI;
		
endmodule

