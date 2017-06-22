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
//	reg on_in;

	// Outputs
	wire [15:0] D1_out_p;
	wire [15:0] D1_out_n;
	wire [15:0] D0_out_p;
	wire [15:0] D0_out_n;
	wire 			CLK_out_p;
	wire 			CLK_out_n;
	wire 			DCI1_out_p;
	wire 			DCI1_out_n;
	wire 			DCI0_out_p;
	wire 			DCI0_out_n;
	wire			csb1;
	wire			csb0;
	wire			rst1;
	wire			rst0;
	wire			sdo_in;
	wire			sdi;
	wire			sck;
	wire			rstLED;
	

	// Instantiate the Unit Under Test (UUT)
	DAC_Sweep_Test uut (
		.clk(clk), 
		.D1_out_p(D1_out_p), 
		.D1_out_n(D1_out_n), 
		.D0_out_p(D0_out_p), 
		.D0_out_n(D0_out_n), 
		.CLK_out_p(CLK_out_p), 
		.CLK_out_n(CLK_out_n), 
		.DCI1_out_p(DCI1_out_p), 
		.DCI1_out_n(DCI1_out_n),
		.DCI0_out_p(DCI0_out_p), 
		.DCI0_out_n(DCI0_out_n),
		.csb1(csb1),
		.csb0(csb0),
		.rst1(rst1),
		.rst0(rst0),
		.sdi(sdi),
		.sdo_in(sdo),
		.sck(sck),
		.rst_led(rstLED),
		.DCO1_p(),
		.DCO1_n(),
		.DCO0_p(),
		.DCO0_n()
	);

	initial begin
		// Initialize Inputs
		clk = 0;
      DCO1_p = 0;
		DCO1_p = 1;
      DCO0_p = 0;
      DCO0_p = 1;

		// Add stimulus here
	end
   always
		#5	clk = ~clk;
		
		
endmodule

