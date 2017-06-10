`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:03:22 06/09/2017
// Design Name:   ADC_test
// Module Name:   C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_test_2/ADC_test_tb.v
// Project Name:  ADC_test_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ADC_test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ADC_test_tb;

	// Inputs
	reg clk;
	reg sdi;
	reg DCO1_p;
	reg DCO1_n;
	reg FR1_p;
	reg FR1_n;
	reg [1:0] D10_p;
	reg [1:0] D10_n;
	reg [1:0] D11_p;
	reg [1:0] D11_n;
	reg DCO2_p;
	reg DCO2_n;
	reg FR2_p;
	reg FR2_n;
	reg [1:0] D20_p;
	reg [1:0] D20_n;
	reg [1:0] D21_p;
	reg [1:0] D21_n;

	// Outputs
	wire sck;
	wire sdo;
	wire ENC_p;
	wire ENC_n;
	wire ADC1_out;
	wire scs1;
	wire ADC2_out;
	wire scs2;
	wire clk_led;
	wire rst_led;

	// Instantiate the Unit Under Test (UUT)
	ADC_test uut (
		.clk(clk), 
		.sck(sck), 
		.sdo(sdo), 
		.sdi(sdi), 
		.ENC_p(ENC_p), 
		.ENC_n(ENC_n), 
		.DCO1_p(DCO1_p), 
		.DCO1_n(DCO1_n), 
		.FR1_p(FR1_p), 
		.FR1_n(FR1_n), 
		.D10_p(D10_p), 
		.D10_n(D10_n), 
		.D11_p(D11_p), 
		.D11_n(D11_n), 
		.ADC1_out(ADC1_out), 
		.scs1(scs1), 
		.DCO2_p(DCO2_p), 
		.DCO2_n(DCO2_n), 
		.FR2_p(FR2_p), 
		.FR2_n(FR2_n), 
		.D20_p(D20_p), 
		.D20_n(D20_n), 
		.D21_p(D21_p), 
		.D21_n(D21_n), 
		.ADC2_out(ADC2_out), 
		.scs2(scs2), 
		.clk_led(clk_led), 
		.rst_led(rst_led)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		sdi = 0;
		DCO1_p = 0;
		DCO1_n = 0;
		FR1_p = 0;
		FR1_n = 0;
		D10_p = 2'b00;
		D10_n = ~D10_p;
		D11_p = 2'b01;
		D11_n = ~D11_p;
		DCO2_p = 0;
		DCO2_n = 0;
		FR2_p = 0;
		FR2_n = 0;
		D20_p = 2'b10;
		D20_n = ~D20_p;
		D21_p = 2'b11;
		D21_n = ~D21_n;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
		always
			#5 clk = ~clk;
		always
			#1.25	DCO_in_p = ~DCO_in_p;
		always
			#1.25	DCO_in_n = ~DCO_in_n;
		always
			#5	FR_in_p = ~FR_in_p;
		always
			#5	FR_in_n = ~FR_in_n;	
		always
			#1.25
		
		
endmodule

