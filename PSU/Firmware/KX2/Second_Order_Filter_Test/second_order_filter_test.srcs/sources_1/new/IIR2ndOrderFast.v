`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// 
//////////////////////////////////////////////////////////////////////////////////


module IIR2ndOrderFast(
    input  wire				   clk_in,
    input  wire                on_in,
    input  wire signed  [34:0] a1_in,
    input  wire signed  [34:0] a2_in,
    input  wire signed  [34:0] b0_in,
    input  wire signed  [34:0] b1_in,
    input  wire signed  [34:0] b2_in,
    input  wire signed  [SIGNAL_IN_SIZE-1:0] signal_in,
    output reg  signed  [SIGNAL_OUT_SIZE-1:0] signal_out
);

parameter A0_SHIFT = 32; // a0 = 2^A0_SHIFT
localparam SIGNAL_IN_SIZE = 16;
localparam SIGNAL_OUT_SIZE = 16;
reg [34:0] y;
reg  signed [69:0] a1y1, a2y0, b2x0, b1x1, b0x2;

wire signed [34:0] y2;
assign y2 = (a1y1 + b2x0) >>> A0_SHIFT; //Bit shift same as dividing by 2^A0_SHIFT

always @(posedge clk_in) begin
	if (on_in) begin
		b2x0 <= b2_in*(signal_in <<< (35 - SIGNAL_IN_SIZE));
		b1x1 <= b1_in*(signal_in <<< (35 - SIGNAL_IN_SIZE)) + b2x0;
		b0x2 <= b0_in*(signal_in <<< (35 - SIGNAL_IN_SIZE)) + b1x1;
		a2y0 <= a2_in*y;
		a1y1 <= a1_in*y + a2y0;
		y <= y2;
	end else begin
		b2x0 <= 70'b0;
		b1x1 <= 70'b0;
		b0x2 <= 70'b0;
		a2y0 <= 70'b0;
		a1y1 <= 70'b0;
		y <= 35'b0;
	end
	signal_out <= y[34:35-SIGNAL_OUT_SIZE];
end

endmodule
