`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// 
//////////////////////////////////////////////////////////////////////////////////


module PIDservo_changeParam(
    input   wire                clk_in,
    input   wire                on_in,
    input   wire signed [34:0]  a1_PD,
    input   wire signed [34:0]  b0_PD,
    input   wire signed [34:0]  b1_PD,
    input   wire signed [34:0]  a1_PI,
    input   wire signed [34:0]  b0_PI,
    input   wire signed [34:0]  b1_PI,    
    input   wire signed [15:0]  e_in,
    output  wire signed [15:0]  e_out
    );

wire [15:0] e_int;

IIRfilter1stOrderAntiWindup PD (
    .clk_in(clk_in),
    .on_in(on_in),
    .a1_in(a1_PD),
    .b0_in(b0_PD),
    .b1_in(b1_PD),
    .railed_in(2'b00),
    .hold_in(1'b0),
    .signal_in(e_in),
    .signal_out(e_int)
);

IIRfilter1stOrderAntiWindup PI (
    .clk_in(clk_in),
    .on_in(on_in),
    .a1_in(a1_PI),
    .b0_in(b0_PI),
    .b1_in(b1_PI),
    .railed_in(2'b00),
    .hold_in(1'b0),
    .signal_in(e_int),
    .signal_out(e_out)
);

endmodule