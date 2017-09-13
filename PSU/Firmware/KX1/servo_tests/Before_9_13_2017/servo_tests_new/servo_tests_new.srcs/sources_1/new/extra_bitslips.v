`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2017 12:01:17 PM
// Design Name: 
// Module Name: extra_bitslips
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module extra_bitslips(
    input wire clk_in
    );
    
    
parameter N00 = 3'b001, N01 = 3'b001, N10 = 3'b001, N11 = 3'b001;
//Slow clock to apply shifts for setparate channels (did not work at fast speeds, 
//or in variation of state machine above with initial bitslips)
localparam div_f = 27'd000_100_000;
wire slow_clk;
clk_div #(
    .div_f(div_f)
)
slowClk(
    .clk(clk_in),
    .rst_in(1'b0),
    .div_clk(slow_clk)
);
reg [2:0] BScounter00 = 3'b000, BScounter01 = 3'b000, BScounter10 = 3'b000, BScounter11 = 3'b000;
reg [2:0] hz_counter00 = 3'b000, hz_counter01 = 3'b000, hz_counter10 = 3'b000, hz_counter11 = 3'b000;
reg BSi00, BSi01, BSi10, BSi11;
    
always @(posedge slow_clk) begin
    if (BScounter00 < N00)
        hz_counter00 <= hz_counter00 + 3'b001;
    if (hz_counter00 == 3'b111 && BScounter00 < 3'b111) begin
        BScounter00 <= BScounter00 + 3'b001;
        BSi00 <= 1'b1;
    end
    else if (hz_counter00 == 3'b111 && BScounter00 == 3'b111) begin
        BScounter00 <= 3'b000;
        BSi00 <= 1'b1;
    end
    else 
        BSi00 <= 1'b0;
end

always @(posedge slow_clk) begin
    if (BScounter01 < N01)
        hz_counter01 <= hz_counter01 + 3'b001;
    if (hz_counter01 == 3'b111 && BScounter00 < 3'b111) begin
        BScounter01 <= BScounter01 + 3'b001;
        BSi00 <= 1'b1;
    end
    else if (hz_counter01 == 3'b111 && BScounter01 == 3'b111) begin
        BScounter01 <= 3'b000;
        BSi01 <= 1'b1;
    end
    else 
        BSi01 <= 1'b0;
end

always @(posedge slow_clk) begin
    if (BScounter10 < N10)
        hz_counter10 <= hz_counter10 + 3'b001;
    if (hz_counter10 == 3'b111 && BScounter10 < 3'b111) begin
        BScounter10 <= BScounter00 + 3'b001;
        BSi00 <= 1'b1;
    end
    else if (hz_counter00 == 3'b111 && BScounter00 == 3'b111) begin
        BScounter00 <= 3'b000;
        BSi00 <= 1'b1;
    end
    else 
        BSi00 <= 1'b0;
end

always @(posedge slow_clk) begin
    if (BScounter00 < N00)
        hz_counter00 <= hz_counter00 + 3'b001;
    if (hz_counter00 == 3'b111 && BScounter00 < 3'b111) begin
        BScounter00 <= BScounter00 + 3'b001;
        BSi00 <= 1'b1;
    end
    else if (hz_counter00 == 3'b111 && BScounter00 == 3'b111) begin
        BScounter00 <= 3'b000;
        BSi00 <= 1'b1;
    end
    else 
        BSi00 <= 1'b0;
end
endmodule
