`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:05 06/09/2017 
// Design Name: 
// Module Name:    LTC2195_test_module 
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
module LTC2195_test_module(
    input clk,
    
	 output scs,
    output sck,
    output sdo,
    input sdi,
    
	 output ENC_p,
    output ENC_n,
    
	 input DCO_p,
    input DCO_n,
    input FR_p,
    input FR_n,
    
	 input [1:0] D0_p,
    input [1:0] D0_n,
    input [1:0] D1_p,
    input [1:0] D1_n,
    
	 output [15:0] ADC0_out,
    output [15:0] ADC1_out
    );


endmodule
