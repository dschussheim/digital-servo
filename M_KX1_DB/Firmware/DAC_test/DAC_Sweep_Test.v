`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:46 06/01/2017 
// Design Name: 
// Module Name:    DAC_Sweep_Test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//	Module to see ramp out of DAC
//
//////////////////////////////////////////////////////////////////////////////////
module DAC_Sweep_Test(
	input		wire				clk,
	input		wire				on_in,
	output	wire	[15:0]	D_out_p,
	output	wire	[15:0]	D_out_n,
	output	wire				CLK_out_p,
	output	wire				CLK_out_n,
	output	wire				DCI_out_p,
	output	wire				DCI_out_n
    );

wire	clk_int, clk_in;

// IBUFG: Single-ended global clock input buffer
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
IBUFG #(
	.IBUF_LOW_PWR("TRUE"), // Low power="TRUE", Highest performance="FALSE"
	.IOSTANDARD("DEFAULT") // Specify the input I/O standard
) IBUFG_inst (
	.O(clk_int), // Clock buffer output
	.I(clk) // Clock buffer input (connect directly to top-level port)
);
// End of IBUFG_inst instantiation


// BUFG: Global Clock Simple Buffer
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
BUFG BUFG_inst (
	.O(clk_in), // 1-bit output: Clock output
	.I(clk_int) // 1-bit input: Clock input
);
// End of BUFG_inst instantiation

reg	[15:0]	DAC0_in = 16'b1000_0000_0000_0000;
//reg	[15:0]	DAC1_in = 16'b0000_1111_0000_0010;
wire	[15:0]	DAC1_in;

// Instantiate DAC driver module
AD9783 AD9783_inst (
    .clk_in(clk_in), 
    .rst_in(1'b0), 
    .DAC0_in(DAC0_in), 
    .DAC1_in(DAC1_in), 
    .CLK_out_p(CLK_out_p), 
    .CLK_out_n(CLK_out_n), 
    .DCI_out_p(DCI_out_p), 
    .DCI_out_n(DCI_out_n), 
    .D_out_p(D_out_p), 
    .D_out_n(D_out_n)
    );

// Generate Sweep

parameter	SIGNAL_OUT_SIZE = 16;

reg	signed	[15:0]	minval_in = 16'sb0000_0000_0000_0000;
reg	signed	[15:0]	maxval_in = 16'sb0111_1111_1111_1111;
reg				[31:0]	stepsize_in = 32'b0000_0000_0000_0000_0000_0010_0000_0000; //Change value every 128 clock cycles ~781kHz ramp

//Sweep instantiation
Sweep Sweep_inst (
    .clk_in(clk_in), 
    .on_in(on_in), 
    .minval_in(minval_in), 
    .maxval_in(maxval_in), 
    .stepsize_in(stepsize_in), 
    .signal_out(DAC1_in)
    );

endmodule
