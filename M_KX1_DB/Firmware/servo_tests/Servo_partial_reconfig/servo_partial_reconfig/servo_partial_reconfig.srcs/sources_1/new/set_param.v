`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Submodule to set parameters for 
// adjusting PID gains, and relock sweep amplitude.
//////////////////////////////////////////////////////////////////////////////////

module set_param(
    output wire signed [34:0] a1_PI, 
    output wire signed [34:0] b0_PI, 
    output wire signed [34:0] b1_PI, 
    
    output wire signed [34:0] a1_PD, 
    output wire signed [34:0] b0_PD, 
    output wire signed [34:0] b1_PD, 
    
    output wire signed [15:0] sweep_amp_min, 
    output wire signed [15:0] sweep_amp_max,
    output wire        [31:0] sweep_stepsize     
);

//~~~~~P, I, D gains~~~~~\\
localparam real Pd = 1.0;
localparam real Pi = 1.707e-3;
localparam real I  = 51.2;
localparam real D  = 0.4; 

//fc (D gain knee)
localparam real fc = 1e6;
//Needed to calculate a's and b's
localparam  real Ts = 1e-8;  //10ns (sample period)
localparam  real pi = 3.14159265358979;

///////////PI parameters////////////

// Just 1
assign a1_PI = 1*(2**26);
// Pi + I/Pd*pi*Ts
assign b0_PI = (Pi+(I*pi*Ts)/Pd)*(2**26);
//-Pi + I/Pd*pi*Ts 
assign b1_PI = (I/Pd*pi*Ts-Pi)*(2**26);

///////////PD parameters////////////

assign a1_PD = (1-2*pi*Ts*fc)*(2**26); // (1-2*pi*Ts*fc)*2^26
// D/P1*(fc/(1+pi*Ts*fc)) + P2*((pi*Ts*fc)/(1+pi*Ts*fc))
assign b0_PD = ((D/Pi)*(fc/(1+pi*Ts*fc))+ Pd*((pi*Ts*fc)/(1+pi*Ts*fc)))*(2**26);
//-D/P1*(fc/(1+pi*Ts*fc)) + P2*((pi*Ts*fc)/(1+pi*Ts*fc))
assign b1_PD = (Pd*((pi*Ts*fc)/(1+pi*Ts*fc))-1*D/Pi*(fc/(1+pi*Ts*fc)))*(2**26);

///////////Sweep parameters/////////////
assign sweep_amp_min = (0.1875)*(16'b0111_1111_1111_1111);
assign sweep_amp_max = (0.65625)*(16'b0111_1111_1111_1111);
assign sweep_stepsize = 32'b0000_0000_0000_0000_0001_0000_0000_0000;


endmodule
