`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//1 time global reset at startup
// 
//////////////////////////////////////////////////////////////////////////////////


module reset(
    input   wire    clk_in,
    output  wire    rst
);

parameter	max = 30'h4e20; 		//1500 cycles (15 us)
parameter   rst_on = 30'h2710;   // turn reset on after 1000 cycles (10 us)

//parameter	max = 30'h5dc; 		//1500 cycles (15 us)
//parameter   rst_on = 30'h3e8; 
    
reg [29:0] counter = 30'b0;
reg        rst_in = 1'b0;
    
always @(posedge clk_in) begin
    if (counter < rst_on)    begin
        counter <= counter + 30'b1;
        rst_in <= 1'b0;
    end
    else if ( (counter >= rst_on) && (counter < max-30'b1) ) begin
        counter <= counter + 30'b1;
        rst_in <= 1'b1;
    end
    else    begin
        rst_in <= 1'b0;//don't reset counter so reset only happens once
    end
end
    
assign rst = rst_in;
    
endmodule
