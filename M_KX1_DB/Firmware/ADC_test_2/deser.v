`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Deserializer
//
//////////////////////////////////////////////////////////////////////////////////
module deser(
	input		wire						FR,	//Frame
   input 	wire						DCI,	//Serial clock
	input 	wire						D,		//Bitstream in
	output	wire	[NUMOUT-1:0] 	Q		//Parallel data out
	);

parameter NUMOUT = 8;	//Number of outputs

reg state;
always @(posedge FR)
	state = 0;

always @(posedge DCI) begin
	if (i>0) begin
		state = state + 1;
end
/*
	// IDDR: Input Double Data Rate Input Register with Set, Reset, and Clock Enable.
	IDDR #(
		.DDR_CLK_EDGE("OPPOSITE_EDGE"), // "OPPOSITE_EDGE", "SAME_EDGE"
		// or "SAME_EDGE_PIPELINED"
		.INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
		.INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
		.SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC"
		) 
	IDDR_inst (
		.Q1(Q[i]), 		// 1-bit output for positive edge of clock
		.Q2(Q[i+1]),	// 1-bit output for negative edge of clock
		.C(DCI), 		// 1-bit clock input
		.CE(1'b1), 		// 1-bit clock enable input
		.D(D), 			// 1-bit DDR data input
		.R(1'b0), 		// 1-bit reset
		.S(1'b0) 		// 1-bit set
	);
/*

endmodule