`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Light up on board leds
//////////////////////////////////////////////////////////////////////////////////


module light_leds(
    output wire [3:0] leds,
    output wire [3:0] bnc,
    output wire [3:0] gnd
    );
    
    assign leds = ~4'b1011;
    assign leds = 4'b1011;
    assign gnd = 4'b0000;
    
endmodule
