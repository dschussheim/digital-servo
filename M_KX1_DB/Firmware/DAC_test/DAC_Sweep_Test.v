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

	output	wire	[15:0]	D1_out_p,
	output	wire	[15:0]	D1_out_n,
//	output	wire	[15:0]	D0_out_p,
//	output	wire	[15:0]	D0_out_n,

	output	wire				CLK_out_p,
	output	wire				CLK_out_n,

	output	wire				DCI1_out_p,
	output	wire				DCI1_out_n,
//	output	wire				DCI0_out_p,
//	output	wire				DCI0_out_n,

	output 	wire				csb1,
//	output	wire				csb0,
	output 	wire				rst1,
//	output 	wire				rst0,
//	output	wire				sdio,
	output	wire				sdo,
	output	wire				sck,

	output	reg				rst_led
	
//	output	reg				reset
	
    );

wire clk_int, clk_in, DIVclk;

//Clock input from FPGA module.

// IBUFG: Single-ended global clock input buffer
IBUFG #(
	.IBUF_LOW_PWR("TRUE"), 	// Low power="TRUE", Highest performance="FALSE"
	.IOSTANDARD("HSTL_II") 	// Specify the input I/O standard
) 
IBUFG_inst (
	.O(clk_in),	// Clock buffer output
	.I(clk) 			// Clock buffer input (connect directly to top-level port)
);

//1Hz clock to run reset logic
clk_div	#(
	.div_f(27'b1100100)	//Divide by 100 for 1 MHz clock to strobe an LED.
	)
rstLEDclk(
	.clk(clk_in),
	.rst_in(1'b0),
	.div_clk(DIVclk)
	);

//Reset about every minute.
localparam	max = 30'h3938700; 		//60*1,000,000 (number of cycles of clk_in/minute)
localparam	rst_on = 30'h38BE5E0; 	// turn reset on after 59,500,000 cycles, and keep on for .5 second
reg	rst_in;
reg	[29:0]	counter = 30'b0;

//initial counter = 30'b0;

always @(posedge DIVclk) begin
	if (counter < rst_on)	begin
		counter <= counter + 30'b1;
		rst_in <= 1'b0;
		rst_led <= ~rst_in;
	end
	else if ( (counter >= rst_on) && (counter < max-30'b1) ) begin
		counter <= counter + 30'b1;
		rst_in <= 1'b1;
		rst_led <= ~rst_in;
	end
	else	begin
		counter <= 1'b0;
		rst_in <= 1'b0;
		rst_led <= ~rst_in;
	end
end

/*
reg [39:0] rst_pipe = 40'hffffffffff;
wire reset1 = rst_pipe[39];

always @(posedge clk_in)	begin
  rst_pipe <= {rst_pipe, 1'b0};
  reset<=reset1;
  end
*/

wire	[15:0]	DAC10_in, DAC11_in, DAC00_in, DAC01_in;

/*assign 			DAC10_in = 16'b0000_0000_0000_0000;
assign			DAC11_in = 16'b1000_0000_0000_0000;*/
assign 			DAC00_in = 16'b0000_0000_0000_0000;
assign			DAC01_in = 16'b1111_1111_1111_1111;



// Instantiate DAC1 driver module
AD9783	#(
		.IODG_NAME("OUTPUT_DG_1")
)
 AD9783_inst1 (
    .clk_in(clk_in), 
    .rst_in(rst_in), 
    .DAC0_in(DAC00_in), 
    .DAC1_in(DAC01_in), 
    .CLK_out_p(CLK_out_p), 
    .CLK_out_n(CLK_out_n), 
    .DCI_out_p(DCI1_out_p), 
    .DCI_out_n(DCI1_out_n), 
    .D_out_p(D1_out_p), 
    .D_out_n(D1_out_n),
	 .rst_out(rst1),
	 .spi_scs_out(csb1),
	 .spi_sck_out(sck),
	 .spi_sdo_out(),
	 .spi_sdi_in(sdo),
	 .cmd_trig_in(1'b0),
	 .cmd_addr_in(16'b0),
	 .cmd_data_in(16'b0),
	 .cmd_data_out()
    );

	 
/* 
// Instantiate DAC0 driver module
AD9783 AD9783_inst0 (
    .clk_in(clk_in), 
    .rst_in(rst_in), 
    .DAC0_in(DAC00_in), 
    .DAC1_in(DAC01_in), 
    .CLK_out_p(CLK_out_p), 
    .CLK_out_n(CLK_out_n), 
    .DCI_out_p(DCI0_out_p), 
    .DCI_out_n(DCI0_out_n), 
    .D_out_p(D0_out_p), 
    .D_out_n(D0_out_n),
	 .rst_out(rst0),
	 .spi_scs_out(csb0),
	 .spi_sck_out(sck),
	 .spi_sdo_out(),
	 .spi_sdi_in(sdo),
	 .cmd_trig_in(1'b0),
	 .cmd_addr_in(16'b0),
	 .cmd_data_in(16'b0),
	 .cmd_data_out()
    );

*/

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
