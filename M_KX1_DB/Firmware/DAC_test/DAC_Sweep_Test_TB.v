`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:23:18 06/01/2017
// Design Name:   DAC_Sweep_Test
// Module Name:   C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/DAC_test/DAC_Sweep_Test_TB.v
// Project Name:  DAC_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DAC_Sweep_Test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DAC_Sweep_Test_TB;

	// Inputs
	reg clk;
	reg on_in;

	// Outputs
	wire [15:0] D_out_p;
	wire [15:0] D_out_n;
	wire 			CLK_out_p;
	wire 			CLK_out_n;
	wire 			DCI_out_p;
	wire 			DCI_out_n;

	// Instantiate the Unit Under Test (UUT)
	DAC_Sweep_Test uut (
		.clk(clk), 
		.on_in(on_in), 
		.D_out_p(D_out_p), 
		.D_out_n(D_out_n), 
		.CLK_out_p(CLK_out_p), 
		.CLK_out_n(CLK_out_n), 
		.DCI_out_p(DCI_out_p), 
		.DCI_out_n(DCI_out_n)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		on_in = 0;
        
		// Add stimulus here
		#20	on_in = 1;
	end
   always
		#5	clk = ~clk;
		
		
endmodule

