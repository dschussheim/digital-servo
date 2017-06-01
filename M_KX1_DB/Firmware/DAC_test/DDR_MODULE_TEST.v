`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:01 06/01/2017 
// Design Name: 
// Module Name:    DDR_MODULE_TEST 
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
//////////////////////////////////////////////////////////////////////////////////
module DDR_MODULE_TEST(
//    input 	[17:0] 	D1,
//    input 	[17:0] 	D2,
	input				D1,
	input				D2,
	input				clk_in,
//    output 	[17:0] 	Q
	output				Q
    );

//parameter N_LVDS = 18;

//genvar pin_count;
//generate for (pin_count = 0; pin_count < N_LVDS; pin_count = pin_count + 1) begin: pins

// ODDR: Output Double Data Rate Output Register with Set, Reset
// and Clock Enable.
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
ODDR #(
	.DDR_CLK_EDGE("OPPOSITE_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE"
	.INIT(1'b0), // Initial value of Q: 1'b0 or 1'b1
	.SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC"
) ODDR_inst (
	.Q(Q), // 1-bit DDR output
	.C(clk_in), // 1-bit clock input
	.CE(1'b1), // 1-bit clock enable input
	.D1(D1), // 1-bit data input (positive edge)
	.D2(D2), // 1-bit data input (negative edge)
	.R(1'b0), // 1-bit reset
	.S(1'b1) // 1-bit set
);
// End of ODDR_inst instantiation

//end
//endgenerate

endmodule
