`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:51 06/08/2017
// Design Name:   LTC2195
// Module Name:   C:/Users/dschussheim/Documents/GitHub/digital-servo/firmware/LTC2195_tb.v
// Project Name:  SuperLaserLand
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LTC2195
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LTC2195_tb;

	// Inputs
	reg clk_in;
	reg rst_in;
	reg cmd_trig_in;
	reg [15:0] cmd_addr_in;
	reg [15:0] cmd_data_in;
	reg spi_sdi_in;
	reg DCO_in_p;
	reg DCO_in_n;
	reg FR_in_p;
	reg FR_in_n;
	reg [3:0] D0_in_p;
	reg [3:0] D0_in_n;
	reg [3:0] D1_in_p;
	reg [3:0] D1_in_n;

	// Outputs
	wire spi_scs_out;
	wire spi_sck_out;
	wire spi_sdo_out;
	wire ENC_out_p;
	wire ENC_out_n;
	wire [15:0] ADC0_out;
	wire [15:0] ADC1_out;
	wire [3:0] FR_out;

	// Instantiate the Unit Under Test (UUT)
	LTC2195 uut (
		.clk_in(clk_in), 
		.rst_in(rst_in), 
		.cmd_trig_in(cmd_trig_in), 
		.cmd_addr_in(cmd_addr_in), 
		.cmd_data_in(cmd_data_in), 
		.spi_scs_out(spi_scs_out), 
		.spi_sck_out(spi_sck_out), 
		.spi_sdo_out(spi_sdo_out), 
		.spi_sdi_in(spi_sdi_in), 
		.ENC_out_p(ENC_out_p), 
		.ENC_out_n(ENC_out_n), 
		.DCO_in_p(DCO_in_p), 
		.DCO_in_n(DCO_in_n), 
		.FR_in_p(FR_in_p), 
		.FR_in_n(FR_in_n), 
		.D0_in_p(D0_in_p), 
		.D0_in_n(D0_in_n), 
		.D1_in_p(D1_in_p), 
		.D1_in_n(D1_in_n), 
		.ADC0_out(ADC0_out), 
		.ADC1_out(ADC1_out), 
		.FR_out(FR_out)
	);

	initial begin
		// Initialize Inputs
		clk_in = 0;
		rst_in = 0;
		cmd_trig_in = 0;
		cmd_addr_in = 0;
		cmd_data_in = 0;
		spi_sdi_in = 0;
		DCO_in_p = 0;
		DCO_in_n = ~DCO_in_p;
		FR_in_p = 0;
		FR_in_n = ~FR_in_p;
		D0_in_p = 4'b0000;
		D0_in_n = ~D0_in_p;
		D1_in_p = 4'b0000;
		D1_in_n = ~D1_in_p;

		
        
		// Add stimulus here
		#100	rst_in = 1;
		#30	rst_in = 0; //DCM SP says reset must be high for at least 3 valid clock cycles
		#300	D0_in_p = 4'b0001;
				D0_in_n = ~D0_in_p;
		#2.5	D0_in_p = 4'b1011;
				D0_in_n = ~D0_in_p;
		#2.5	D0_in_p = 4'b0101;
				D0_in_n = ~D0_in_p;				
		#2.5	D0_in_p = 4'b0110;
				D0_in_n = ~D0_in_p;
	end
      
	//Clock
	always 
		#5 clk_in = ~clk_in;  // 100 MHz
	always
		#1.25	DCO_in_p = ~DCO_in_p;
	always
		#1.25	DCO_in_n = ~DCO_in_n;
	always
		#5	FR_in_p = ~FR_in_p;
	always
		#5	FR_in_n = ~FR_in_n;

	
		
endmodule

