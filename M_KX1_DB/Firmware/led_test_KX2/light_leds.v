`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Light up on board leds
//////////////////////////////////////////////////////////////////////////////////


module light_leds(
    input  wire       clk,
    output wire [3:0] leds,
    output wire [3:0] bnc,
    output wire [3:0] gnd
    );
    
    /*
    localparam code = 4'b1011;
    assign leds = ~code;
    assign bnc = ~code;
    assign gnd = ~4'b0000;
    */
    
wire clk_in, DIVclk;
        
//Clock input from FPGA module.
        
    // IBUFG: Single-ended global clock input buffer
IBUFG #(
    .IBUF_LOW_PWR("FALSE"),     // Low power="TRUE", Highest performance="FALSE"
    .IOSTANDARD("SSTL135")     // Specify the input I/O standard
) 
IBUFG_inst (
    .O(clk_in),    // Clock buffer output
    .I(clk)             // Clock buffer input (connect directly to top-level port)
); 
parameter div_f = 27'hBEBC200;
clk_div #(
    .div_f(div_f)
)
HzClk(
    .clk(clk_in),
    .rst_in(1'b0),
    .div_clk(DIVclk)
);

reg code = 4'b0000;

always @(posedge DIVclk) begin
    code <= code + 4'b1;
end

assign gnd = ~4'b0000;
assign leds = ~code;
assign bnc = ~code;
  

endmodule
