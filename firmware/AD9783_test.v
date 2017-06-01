`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:02:58 05/31/2017
// Design Name:   AD9783
// Module Name:   C:/Users/dschussheim/Documents/GitHub/digital-servo/firmware/AD9783_test.v
// Project Name:  SuperLaserLand
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AD9783
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AD9783_test;

	// Inputs
	reg clk_in;
	reg rst_in;
	reg cmd_trig_in;
	reg [15:0] cmd_addr_in;
	reg [15:0] cmd_data_in;
	reg spi_sdi_in;
	reg [15:0] DAC0_in;
	reg [15:0] DAC1_in;

	// Outputs
	wire [15:0] cmd_data_out;
	wire rst_out;
	wire spi_scs_out;
	wire spi_sck_out;
	wire spi_sdo_out;
	wire CLK_out_p;
	wire CLK_out_n;
	wire DCI_out_p;
	wire DCI_out_n;
	wire [15:0] D_out_p;
	wire [15:0] D_out_n;

	// Instantiate the Unit Under Test (UUT)
	AD9783 uut (
		.clk_in(clk_in), 
		.rst_in(rst_in), 
		.cmd_trig_in(cmd_trig_in), 
		.cmd_addr_in(cmd_addr_in), 
		.cmd_data_in(cmd_data_in), 
		.cmd_data_out(cmd_data_out), 
		.rst_out(rst_out), 
		.spi_scs_out(spi_scs_out), 
		.spi_sck_out(spi_sck_out), 
		.spi_sdo_out(spi_sdo_out), 
		.spi_sdi_in(spi_sdi_in), 
		.DAC0_in(DAC0_in), 
		.DAC1_in(DAC1_in), 
		.CLK_out_p(CLK_out_p), 
		.CLK_out_n(CLK_out_n), 
		.DCI_out_p(DCI_out_p), 
		.DCI_out_n(DCI_out_n), 
		.D_out_p(D_out_p), 
		.D_out_n(D_out_n)
	);

	initial begin
		// Initialize Inputs
		clk_in = 0;
		rst_in = 0;
		cmd_trig_in = 0;
		cmd_addr_in = 0;
		cmd_data_in = 0;
		spi_sdi_in = 0;
		DAC0_in = 0;
		DAC1_in = 0;
        
		// Add stimulus here
		#16	DAC0_in = 16'b1010101010101010;
		#16 DAC1_in = 16'b0101010101010101;
	end
	always 
		#5 clk_in = ~clk_in;  // 100 MHz
      
endmodule

