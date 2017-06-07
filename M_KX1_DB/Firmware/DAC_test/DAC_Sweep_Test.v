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
//	output	wire				DCO1_in_p,
//	output	wire				DCO1_in_n,
//	output	wire				DCO0_in_p,
//	output	wire				DCO0_in_n,
//	input		wire				on_in,
	output	wire	[15:0]	D1_out_p,
	output	wire	[15:0]	D1_out_n,
	output	wire	[15:0]	D0_out_p,
	output	wire	[15:0]	D0_out_n,
	output	wire				CLK_out_p,
	output	wire				CLK_out_n,
	output	wire				DCI1_out_p,
	output	wire				DCI1_out_n,
	output	wire				DCI0_out_p,
	output	wire				DCI0_out_n,
	output 	wire				csb1,
	output	wire				csb0,
	output 	wire				rst1_out,
	output 	wire				rst0_out,
	output	wire				sdio,
	output	wire				sdo
    );


//assign	DCO1_in_p = 1'bz;
//assign	DCO1_in_n = 1'bz;
//assign	DCO0_in_p = 1'bz;
//assign	DCO0_in_n = 1'bz;


wire	clk_int, clk_in;

//Clock input from FPGA module.

// IBUFG: Single-ended global clock input buffer
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
IBUFG #(
	.IBUF_LOW_PWR("TRUE"), // Low power="TRUE", Highest performance="FALSE"
	.IOSTANDARD("HSTL_II") // Specify the input I/O standard
	) IBUFG_inst (
	.O(clk_int), // Clock buffer output
	.I(clk) // Clock buffer input (connect directly to top-level port)
	);
// End of IBUFG_inst instantiation

clk_div clk_dif_inst(
	.clk(clk_int),
	.rst_in(1'b0),
	.div_clk(divclk)
	);

// BUFG: Global Clock Simple Buffer
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
BUFG BUFG_inst (
	.O(clk_in), // 1-bit output: Clock output
	.I(divclk) // 1-bit input: Clock input
	);
// End of BUFG_inst instantiation

wire	[15:0]	DAC10_in, DAC11_in, DAC00_in, DAC01_in;

assign			rst1_out = 1'b1;//high configutation in "pin mode" rather than SPI
assign			rst0_out = 1'b1;
assign			sdio = 1'b0;//0 input is 2's complement, 1 input is unsigned binary
assign			sdo = 1'b0;//0 DACs on, 1 DAC powered down
assign			csb1 = 1'b0;//0 normal mode, 1 mix mode
assign			csb0 = 1'b0;


assign 			DAC10_in = 16'b0000_0000_0000_0000;
assign			DAC11_in = 16'b1000_0000_0000_0000;
assign 			DAC00_in = 16'b0000_0000_0000_0000;
assign			DAC01_in = 16'b1111_1111_1111_1111;



// Instantiate DAC driver module
AD9783 AD9783_inst1 (
    .clk_in(clk_in), 
//    .rst_in(rst), 
    .DAC0_in(DAC10_in), 
    .DAC1_in(DAC11_in), 
    .CLK_out_p(CLK_out_p), 
    .CLK_out_n(CLK_out_n), 
    .DCI_out_p(DCI1_out_p), 
    .DCI_out_n(DCI1_out_n), 
    .D_out_p(D1_out_p), 
    .D_out_n(D1_out_n)
    );
	 
	 
// Instantiate DAC driver module
AD9783 AD9783_inst0 (
    .clk_in(clk_in), 
//    .rst_in(rst), 
    .DAC0_in(DAC00_in), 
    .DAC1_in(DAC01_in), 
    .CLK_out_p(), 
    .CLK_out_n(), 
    .DCI_out_p(DCI0_out_p), 
    .DCI_out_n(DCI0_out_n), 
    .D_out_p(D0_out_p), 
    .D_out_n(D0_out_n)
    );

// Generate Sweep
/*
parameter	SIGNAL_OUT_SIZE = 16;

wire	signed	[15:0]	minval_in;
wire	signed	[15:0]	maxval_in;
wire				[31:0]	stepsize_in;

assign	minval_in = 16'sb0000_0000_0000_0000;
assign	maxval_in = 16'sb0111_1111_1111_1111;
assign	stepsize_in = 32'b0000_0000_0000_0000_0000_0010_0000_0000; //Change value every 128 clock cycles ~781kHz ramp

//Sweep instantiation
Sweep Sweep_inst (
    .clk_in(clk_in), 
    .on_in(1'b1), 
    .minval_in(minval_in), 
    .maxval_in(maxval_in), 
    .stepsize_in(stepsize_in), 
    .signal_out(DAC00_in)
    );
*/
endmodule
