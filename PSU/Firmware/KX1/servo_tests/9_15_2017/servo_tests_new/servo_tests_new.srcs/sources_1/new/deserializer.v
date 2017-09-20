`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Deserializer for deserializing a slow bitstream (100kHz SCLK). 
// Outputs 11, 35 bit numbers, and handshake key (when present tells which servo to record to).
// Handshake should be 16'h6364 + some number (servo number)
//////////////////////////////////////////////////////////////////////////////////

module deserializer(
    input   wire            clk_in,
    input   wire            rst_in,
    input   wire            in,
    output  wire            trig_out,
    output  reg     [15:0]  handshake,
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
    output  reg     [34:0]  num11,
    output  reg     [34:0]  num12
);

////////////serial clock////////////

parameter clk_div_ser = 27'h3e7;//divide by 1000 for 100 kHz deserialization clock
wire SCLK;
clk_div #(
    .div_f(clk_div_ser)
)
deser_clk_origin (
    .clk(clk_in),
    .rst_in(1'b0),
    .div_clk(SCLK)
);
////////////end of clock//////////////////

////////////fetch logic////////////////
//This part is to fetch new values from the function generator every once and a while

//State machine to control if trigger to fetch data is on or off
//Combinatorial part
localparam IDLE = 1'b0;
localparam FETCH = 1'b1;
localparam N_ff = 20'd471; // 16 bit handshake key + 11x35 bit numbers =  bits
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
reg [15:0] counter = 16'h000_0000;
reg state, FS;
parameter [15:0] trig_max = 16'd25_000;
always @(posedge SCLK) begin
    FS <= fetch_state(FS, counter);
    if (FS == IDLE && counter < trig_max) begin
        on_in <= 1'b0;
        counter <= counter + 16'h1;
    end
    else if (FS == FETCH) begin
        on_in <= 1'b1;
        counter <= counter + 16'h1;
    end
    else begin
        on_in <=1'b0;
        counter <= 16'h0;
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
        .C(SCLK),    // 1-bit Clock input
        .CE(on_in),     // 1-bit Clock enable input
        .R(rst_in),     // 1-bit Synchronous reset input
        .D(Q[i])        // 1-bit Data input
    );
    // End of FDRE_inst instantiation
end
endgenerate
///////////////end of deserialization/////////////////////////////////


always @(negedge on_in) begin
        //handshake must match handshake_key, this means the synthesizer is actually sending data
        handshake <= Q[N_ff:N_ff-15];
        //deserialized 35 bit numbers
        num0  <= Q[N_ff-16:N_ff-50];
        num1  <= Q[N_ff-51:N_ff-85];
        num2  <= Q[N_ff-86:N_ff-120];
        num3  <= Q[N_ff-121:N_ff-155];
        num4  <= Q[N_ff-156:N_ff-190];
        num5  <= Q[N_ff-191:N_ff-225];
        num6  <= Q[N_ff-226:N_ff-260];
        num7  <= Q[N_ff-261:N_ff-295];
        num8  <= Q[N_ff-296:N_ff-330];
        num9  <= Q[N_ff-331:N_ff-365];
        num10 <= Q[N_ff-366:N_ff-400];
        num11 <= Q[N_ff-401:N_ff-435];
        num12 <= Q[N_ff-436:N_ff-470];
end

endmodule