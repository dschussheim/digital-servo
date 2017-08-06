`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// 
//////////////////////////////////////////////////////////////////////////////////


module PIDservo(
    input   wire            clk_in,
    input   wire            on_in,
    input   wire    [15:0]  e_in,
    output  wire    [15:0]  e_out
    );

parameter   real Pd = 1;     //[-40, 0] dB P for PD
parameter   real Pi = 1;     //[-40, 0] dB P for PI
parameter   real I =  0;     //[-30, 100] dB
parameter   real D =  0;     //[-100, 0] dB
parameter   real fc = 1e7;   //Rolloff requency [15, 90] dB, [32Hz, 1GHz] makes no sense to go above 100MHz though
localparam  real Ts = 1e-8;  //10ns (sample period)
localparam  real pi = 3.14159265358979;
//Inputs
//wire [1:0] railed_in;
//wire hold_in = 1'b0;
wire [15:0] e_int;

//reg signed [33:0] a1_PD = 34'h3fff5b5;
//reg signed [33:0] b0_PD = 34'h4004d35;
//reg signed [33:0] b1_PD = -34'h3ffa880;

//Ts = 10^-8 for 100MHz sample clock frequency
//Definitions of filter coefficients. Added scale factors to make gains resonable
localparam signed [35:0] a1_PD = (1-2*pi*Ts*fc)*(2**26); // (1-2*pi*Ts*fc)*2^26
// D/P1*(fc/(1+pi*Ts*fc)) + P2*((pi*Ts*fc)/(1+pi*Ts*fc))
localparam signed [35:0] b0_PD = ((D/Pi)*(fc/(1+pi*Ts*fc))+ Pd*((pi*Ts*fc)/(1+pi*Ts*fc)))*(2**26);
//-D/P1*(fc/(1+pi*Ts*fc)) + P2*((pi*Ts*fc)/(1+pi*Ts*fc))
localparam signed [35:0] b1_PD = (Pd*((pi*Ts*fc)/(1+pi*Ts*fc))-1*D/Pi*(fc/(1+pi*Ts*fc)))*(2**26);

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

//Definitions of filter coefficients. Added scale factors to make gains resonable
//All coefficients scaled by 2^26
localparam signed [35:0] a1_PI = 1*(2**26);
// Pi + I/Pd*pi*Ts
localparam signed [35:0] b0_PI = (Pi+(I*pi*Ts)/Pd)*(2**26);
//-Pi + I/Pd*pi*Ts 
localparam signed [35:0] b1_PI = (I/Pd*pi*Ts-Pi)*(2**26);

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