`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////////////////


module deserializer(
    input   wire            clk,
    input   wire            in,
    output  wire            clkDout,
    output  wire            trig_out,
    output  wire    [3:0]   out
    );

wire clk_int, clk_in, DIVclk;
    
//Clock input from FPGA module.
    
// IBUFG: Single-ended global clock input buffer
IBUFG #(
    .IBUF_LOW_PWR("FALSE"),     // Low power="TRUE", Highest performance="FALSE"
    .IOSTANDARD("HSTL_II")     // Specify the input I/O standard
) 
IBUFG_inst (
    .O(clk_int),    // Clock buffer output
    .I(clk)             // Clock buffer input (connect directly to top-level port)
);
    
// BUFG: Global Clock Simple Buffer
BUFG BUFG_inst (
    .O(clk_in), // 1-bit output: Clock output
    .I(clk_int) // 1-bit input: Clock input
);

//////////////////////reset stuff////////////////////////
wire rst_in;
reset startup_reset (
    .clk_in(clk_in),
    .rst(rst_in)
);

////////////End of reset stuff//////////////

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

////////////end of clock//////////////////

////////////fetch logic////////////////
//This part is to fetch new values from the function generator every once and a while

//State machine to control if trigger to fetch data is on or off
//Combinatorial part
localparam IDLE = 1'b0;
localparam FETCH = 1'b1;
localparam N_ff = 20'h38; //24+16+16, 24 bit handshake key, 2 16 bit numbers
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
generate for (i = 0; i < N_ff; i = i + 1) begin: deser
    // FDRE: Single Data Rate D Flip-Flop with Synchronous Reset and
    // Clock Enable (posedge clk).
    FDRE #(
        .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
    ) shift_reg_ff (
        .Q(Q[i+1]), // 1-bit Data output
        .C(clk100k), // 1-bit Clock input
        .CE(on_in), // 1-bit Clock enable input
        .R(rst_in), // 1-bit Synchronous reset input
        .D(Q[i]) // 1-bit Data input
    );
    // End of FDRE_inst instantiation
end
endgenerate
///////////////end of deserialization/////////////////////////////////
reg [15:0] num0, num0_temp, num1, num1_temp;
reg [23:0] handshake;
localparam handshake_key = 24'h736574; //"set" converted to hex
always @(negedge on_in) begin
        handshake = Q[N_ff:N_ff-23];
        num0_temp <= Q[N_ff-24:N_ff-24-15];
        num1_temp <= Q[N_ff-24-16:N_ff-24-16-15];
        if (handshake == handshake_key) begin
            num0 <= num0_temp;
            num1 <= num1_temp;
        end
end
assign out = ~num0[15:12];

endmodule
