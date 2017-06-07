`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:04:48 06/07/2017 
// Design Name: 
// Module Name:    ADC_test 
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
module ADC_test(
    input	wire				clk,
    
	 output	wire				scs,
    output 	wire				sck,
    output 	wire				sdo,
    input 	wire				sdi,
    
	 output 	wire				ENC_p,
    output 	wire				ENC_n,
    
	 input 	wire				DCO_p,
    input 	wire				DCO_n,
    input 	wire				FR__p,
    input 	wire				FR_n,
    
	 input 	wire	[1:0] 	D0_p,
    input 	wire	[1:0] 	D0_n,
    input 	wire	[1:0] 	D1_p,
    input 	wire	[1:0] 	D1_n,
    
	 output 	wire	[15:0] 	ADC0_out,
    output 	wire	[15:0] 	ADC1_out,
    output 	wire	[3:0] 	FR_out
	 
    );


endmodule
