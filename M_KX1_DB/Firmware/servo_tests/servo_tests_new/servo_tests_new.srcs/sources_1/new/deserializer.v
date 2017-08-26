`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Deserializer for deserializing a slow bitstream (100kHz). 
// Outputs 12, 35 bit numbers right now.
//////////////////////////////////////////////////////////////////////////////////

module deserializer(
    input   wire            clk_in,
    input   wire            rst_in,
    input   wire            in,
    output  wire            clkDout,
    output  wire            trig_out,
    output  wire            TPmatchOut,
    output  reg     [34:0]  num0,
    output  reg     [34:0]  num1,
    output  reg     [34:0]  num2,
    output  reg     [34:0]  num3,
    output  reg     [34:0]  num4,
    output  reg     [34:0]  num5,
    output  reg     [34:0]  num6,
    output  reg     [34:0]  num7,
    output  reg     [34:0]  num8,
    output  reg     [34:0]  num9,
    output  reg     [34:0]  num10,
    output  reg     [34:0]  num11
    );

////////////serial clock////////////

parameter clk_div_ser = 27'h3e7;//divide by 1000 for 100 kHz deserialization clock
wire clk100k;
clk_div #(
    .div_f(clk_div_ser)
)
deser_clk_origin (
    .clk(clk_in),
    .rst_in(1'b0),
    .div_clk(clk100k)
);
assign clkDout = clk100k;
////////////end of clock//////////////////

////////////fetch logic////////////////
//This part is to fetch new values from the function generator every once and a while

//State machine to control if trigger to fetch data is on or off
//Combinatorial part
localparam IDLE = 1'b0;
localparam FETCH = 1'b1;
localparam N_ff = 20'h1B4; //16 bit handshake key + 12x35 bit numbers = 436 bits
function fetch_state;
    input       fetch_state_old;
    input [20:0] counter;
    begin
        case (fetch_state_old)
            IDLE:
            if (counter >= N_ff)
                fetch_state = IDLE;
            else
                fetch_state = FETCH;
            FETCH:
                if (counter < N_ff)
                    fetch_state = FETCH;
                else
                    fetch_state = IDLE;
            default:
                fetch_state = IDLE;
        endcase
    end
endfunction
//Sequential part
reg on_in;
reg [19:0] counter = 20'h00000;
reg state, FS;
localparam max = 20'h3e7;
always @(posedge clk100k) begin
    FS <= fetch_state(FS, counter);
    if (FS == IDLE && counter < max) begin
        on_in <= 1'b0;
        counter <= counter + 20'h00001;
    end
    else if (FS == FETCH) begin
        on_in <= 1'b1;
        counter <= counter + 20'h00001;
    end
    else begin
        on_in <=1'b0;
        counter <= 20'h00000;
    end
end

assign trig_out = on_in;
////////////end of fetch//////////////

////////////shift register deserialization/////////////////////
wire [N_ff:0] Q;
assign Q[0] = in;
genvar i;
//Cascaded flip flops used as shift register for deserialization
generate for (i = 0; i < N_ff; i = i + 1) begin: deser
    // FDRE: Single Data Rate D Flip-Flop with Synchronous Reset and
    // Clock Enable (posedge clk).
    FDRE #(
        .INIT(1'b0)     // Initial value of register (1'b0 or 1'b1)
    ) shift_reg_ff (
        .Q(Q[i+1]),     // 1-bit Data output
        .C(clk100k),    // 1-bit Clock input
        .CE(on_in),     // 1-bit Clock enable input
        .R(rst_in),     // 1-bit Synchronous reset input
        .D(Q[i])        // 1-bit Data input
    );
    // End of FDRE_inst instantiation
end
endgenerate
///////////////end of deserialization/////////////////////////////////
//12, 35 bit outputs
reg [34:0] num0_temp, num1_temp, num2_temp, num3_temp, num4_temp, num5_temp, num6_temp, num7_temp, num8_temp, num9_temp, num10_temp, num11_temp;

reg [15:0] handshake;
localparam handshake_key = 16'h6364; //"cd" converted to hex
assign TPmatchOut = (handshake == handshake_key);
//always @(posedge clk100k)
//    TPmatchOut = (handshake == handshake_key);

always @(negedge on_in) begin
        //handshake must match handshake_key, this means the synthesizer is actually sending data
        handshake = Q[N_ff:N_ff-15];
        //deserialized 35 bit numbers
        num0_temp  <= Q[N_ff-16:N_ff-50];
        num1_temp  <= Q[N_ff-51:N_ff-85];
        num2_temp  <= Q[N_ff-86:N_ff-120];
        num3_temp  <= Q[N_ff-121:N_ff-155];
        num4_temp  <= Q[N_ff-156:N_ff-190];
        num5_temp  <= Q[N_ff-191:N_ff-225];
        num6_temp  <= Q[N_ff-226:N_ff-260];
        num7_temp  <= Q[N_ff-261:N_ff-295];
        num8_temp  <= Q[N_ff-296:N_ff-330];
        num9_temp  <= Q[N_ff-331:N_ff-365];
        num10_temp  <= Q[N_ff-366:N_ff-400];
        num11_temp <= Q[N_ff-401:N_ff-435];
        //record them to the outputs if we are communicating with the synthesizer     
        if (TPmatchOut) begin
            num0  <= num0_temp;
            num1  <= num1_temp;
            num2  <= num2_temp;
            num3  <= num3_temp;
            num4  <= num4_temp;
            num5  <= num5_temp;
            num6  <= num6_temp;
            num7  <= num7_temp;
            num8  <= num8_temp;
            num9  <= num9_temp;
            num10 <= num10_temp;
            num11 <= num11_temp;
        end
end

endmodule