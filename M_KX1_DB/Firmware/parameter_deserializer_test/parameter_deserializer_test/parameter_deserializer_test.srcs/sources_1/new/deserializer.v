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

////////////clocking for iserdese2////////////

parameter clk_div_ser = 27'h3e8;//divide by 1000 for 100 kHz deserialization clock
wire clk_slow;
clk_div #(
    .div_f(clk_div_ser)
)
deser_clk_origin (
    .clk(clk_in),
    .rst_in(1'b0),
    .div_clk(clk_slow)
);

wire clkD, clkDslow;
//BUFIO+BUFR is suggested for clocking ISERDESE2 in select IO guide
BUFR #(
    .BUFR_DIVIDE("1"), // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
    .SIM_DEVICE("7SERIES") // Must be set to "7SERIES"
    )
BUFIO_fast_deser_clock (
    .O(clkD),    // 1-bit output: Clock output (connect to I/O clock loads).
    .CE(1'b1), // 1-bit input: Active high, clock enable (Divided modes only)
    .CLR(rst_in),
    .I(clk_slow) // 1-bit input: Clock input (connect to an IBUF or BUFMR).
);
assign clkDout = clkD; //to see deserialization clock
BUFR #(
    .BUFR_DIVIDE("4"), // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
    .SIM_DEVICE("7SERIES") // Must be set to "7SERIES"
)
BUFR_slow_deser_clock (
    .O(clkDslow), // 1-bit output: Clock output port
    .CE(1'b1), // 1-bit input: Active high, clock enable (Divided modes only)
    .CLR(rst_in), // 1-bit input: Active high, asynchronous clear (Divided modes only)
    .I(clk_slow) // 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
);

////////////end of clocking//////////////////

////////////fetch logic////////////////
//This part is to fetch new values from the function generator every once and a while

//State machine to control if trigger to fetch data is on or off
//Combinatorial part
localparam IDLE = 2'b00;
localparam FETCH = 2'b01;
function fetch_state;
    input       fetch_state_old;
    input [11:0] counter;
    begin
        case (fetch_state_old)
            IDLE:
            if (counter >= 12'h3)
                fetch_state = IDLE;
            else
                fetch_state = FETCH;
            FETCH:
                if (counter < 12'h3)
                    fetch_state = FETCH;
                else
                    fetch_state = IDLE;
            default:
                fetch_state = IDLE;
        endcase
    end
endfunction
//Sequenctial part
reg on_in;
reg [11:0] counter = 12'h000;
reg state, FS;
always @(posedge clk_slow) begin
    FS <= fetch_state(FS, counter);
    if (FS == IDLE && counter < 12'h3e8) begin
        on_in <= 1'b0;
        counter <= counter + 12'h001;
    end
    else if (FS == FETCH) begin
        on_in <= 1'b1;
        counter <= counter + 12'h001;
    end
    else begin
        on_in <=1'b0;
        counter <= 12'h000;
    end
end

assign trig_out = on_in;
////////////end of fetch//////////////
wire [3:0] out_int;
// ISERDESE2: Input SERial/DESerializer with Bitslip
ISERDESE2 #(
    .DATA_RATE("SDR"),           // DDR, SDR
    .DATA_WIDTH(4),              // Parallel data width (2-8,10,14)
    .DYN_CLKDIV_INV_EN("FALSE"), // Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
    .DYN_CLK_INV_EN("FALSE"),    // Enable DYNCLKINVSEL inversion (FALSE, TRUE)
    // INIT_Q1 - INIT_Q4: Initial value on the Q outputs (0/1)
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"), // MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
    .IOBDELAY("NONE"),      // NONE, BOTH, IBUF, IFD
    .NUM_CE(1),             // Number of clock enables (1,2)
    .OFB_USED("FALSE"),     // Select OFB path (FALSE, TRUE)
    .SERDES_MODE("MASTER"), // MASTER, SLAVE
    // SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)
    )
ISERDESE2_inst (
    .O(), // 1-bit output: Combinatorial output
    // Q1 - Q8: 1-bit (each) output: Registered data outputs
    .Q1(out_int[3]),
    .Q2(out_int[2]),
    .Q3(out_int[1]),
    .Q4(out_int[0]),
    .Q5(),
    .Q6(),
    .Q7(),
    .Q8(),
    // SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
    .SHIFTOUT1(),
    .SHIFTOUT2(),
    .BITSLIP(1'b0), //Bitslip
    // CE1, CE2: 1-bit (each) input: Data register clock enable inputs
    .CE1(on_in),
    .CE2(1'b0),
    .CLKDIVP(1'b0), // 1-bit input: TBD
    // Clocks: 1-bit (each) input: ISERDESE2 clock input ports
    .CLK(clkD),          // 1-bit input: High-speed clock
    .CLKB(~clkD),        // 1-bit input: High-speed secondary clock
    .CLKDIV(clkDslow),     // 1-bit input: Divided clock
    .OCLK(),            // 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY"
    // Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
    .DYNCLKDIVSEL(1'b0),    // 1-bit input: Dynamic CLKDIV inversion
    .DYNCLKSEL(1'b0),       // 1-bit input: Dynamic CLK/CLKB inversion
    // Input Data: 1-bit (each) input: ISERDESE2 data input ports
    .D(in),         // 1-bit input: Data input
    .DDLY(),        // 1-bit input: Serial data from IDELAYE2
    .OFB(),         // 1-bit input: Data feedback from OSERDESE2
    .OCLKB(),       // 1-bit input: High speed negative edge output clock
    .RST(rst_in),   // 1-bit input: Active high asynchronous reset
    // SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
    .SHIFTIN1(1'b0),
    .SHIFTIN2(1'b0)
    );
assign out = ~out_int;
    
    // End of ISERDESE2_inst instantiation
    
endmodule
