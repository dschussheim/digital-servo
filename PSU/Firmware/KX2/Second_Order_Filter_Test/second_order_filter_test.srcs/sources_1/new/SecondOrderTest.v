`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Test of second order filters
// 
//////////////////////////////////////////////////////////////////////////////////


module SecondOrderTest(

	//100 MHz clock input
	input	wire			clk,
    //LEDs
    output reg [3:0] led_out,
      
	//\\\\\\\\\ADCs//////////\\
	
	//ADC SPI IOs
    output 	wire			adc_sck,
    output 	wire			adc_sdi,
    output	wire			adc_scs1,
    output	wire			adc_scs2,
    input 	wire			adc_sdo,
	
	//Clock output for ADCs
	output 	wire			ENC_p,
    output 	wire			ENC_n,
	
	//First ADC data to FPGA
	//Data clock
	input 	wire			adc_DCO1_p,
    input 	wire			adc_DCO1_n,
	//Frame "enclosing" different sets of data
    input 	wire			FR1_p,
    input 	wire			FR1_n,
	//Data streams
	input 	wire	[1:0] 	D10_p,
    input 	wire	[1:0] 	D10_n,
    input 	wire	[1:0] 	D11_p,
    input 	wire	[1:0] 	D11_n,
	
	//Second ADC data to FPGA
	//Data clock
	input 	wire			adc_DCO2_p,
    input 	wire			adc_DCO2_n,
	//Frame "enclosing" different sets of data
    input 	wire			FR2_p,
    input 	wire			FR2_n,
    //Data streams
	input 	wire	[1:0] 	D20_p,
    input 	wire	[1:0] 	D20_n,
    input 	wire	[1:0] 	D21_p,
    input 	wire	[1:0] 	D21_n,
    

	//\\\\\\\\\\DACs//////////\\

	output	wire	[15:0]	D0_out_p,
	output	wire	[15:0]	D0_out_n,

    output	wire	[15:0]	D1_out_p,
	output	wire	[15:0]	D1_out_n,

	output	wire			CLK_out_p,
	output	wire			CLK_out_n,

	output	wire			DCI0_out_p,
	output	wire			DCI0_out_n,

	output	wire			DCI1_out_p,
	output	wire			DCI1_out_n,

    output 	wire			dac_csb0,
	output 	wire			dac_rst0,
	output 	wire			dac_csb1,
	output 	wire			dac_rst1,
	output	wire			dac_sdi,
	output	wire			dac_sck,
	input   wire			dac_sdo,
			
    input   wire		    DCO0_p,
	input   wire		    DCO0_n,
	input   wire		    DCO1_p,
	input   wire		    DCO1_n
    );

//////Inputs/////////

wire clk_int, clk_in, DIVclk;
    
// Clock input from FPGA module.
    
// IBUFG: Single-ended global clock input buffer
IBUFG #(
    .IBUF_LOW_PWR("FALSE"), // Low power="TRUE", Highest performance="FALSE"
    .IOSTANDARD("SSTL15")   // Specify the input I/O standard
) 
IBUFG_clk100 (
    .O(clk_int),    // Clock buffer output
    .I(clk)         // Clock buffer input (connect directly to top-level port)
);
    
// BUFG: Global Clock Simple Buffer
BUFG BUFG_clk100 (
    .O(clk_in), // 1-bit output: Clock output
    .I(clk_int) // 1-bit input: Clock input
);

///////////////////reset////////////////////

wire rst_in;
reset startup_reset (
    .clk_in(clk_in),
    .rst(rst_in)
);

///////////////End of reset/////////////////

///////////////ADC inputs//////////////////
wire [15:0] ADC00, ADC01, ADC10, ADC11;

wire [7:0] FR0_out, FR1_out;

parameter CLKDIV = 8;    // 800MHz/8 = 100MHz clock
parameter N00a = 3'b000, N00b = 3'b000, N01 = 3'b001, N10 = 3'b000, N11 = 3'b000;

wire [3:0] bitslip_out;

LTC2195x2delay #(
    .CLKDIV(CLKDIV),
    .N00a(N00a),
    .N00b(N00b),
    .N01(N01),
    .N10(N10),
    .N11(N11)
)
ADC (
    .clk_in(clk_in), 
    .rst_in(rst_in), 
    .cmd_trig_in(), 
    .cmd_addr_in(), 
    .cmd_data_in(), 
    .spi_scs0_out(adc_scs1),
    .spi_scs1_out(adc_scs2), 
    .spi_sck_out(adc_sck), 
    .spi_sdo_out(adc_sdi), 
    .spi_sdi_in(adc_sdo), 
    .ENC_out_p(ENC_p), 
    .ENC_out_n(ENC_n), 
    .DCO0_in_p(adc_DCO1_p), 
    .DCO0_in_n(adc_DCO1_n), 
    .DCO1_in_p(adc_DCO2_p), 
    .DCO1_in_n(adc_DCO2_n), 
    .FR0_in_p(FR1_p), 
    .FR0_in_n(FR1_n), 
    .FR1_in_p(FR2_p), 
    .FR1_in_n(FR2_n), 
    .D00_in_p(D10_p), 
    .D00_in_n(D10_n), 
    .D01_in_p(D11_p), 
    .D01_in_n(D11_n), 
    .D10_in_p(D20_p), 
    .D10_in_n(D20_n), 
    .D11_in_p(D21_p), 
    .D11_in_n(D21_n),
    .ADC00_out(ADC00), 
    .ADC01_out(ADC01),
    .ADC10_out(ADC10), 
    .ADC11_out(ADC11),
    .FR0_out(FR0_out),
    .FR1_out(FR1_out),
    .bitslip_out(bitslip_out)
);

//////End of inputs////////


/////////Filter 2nd order/////////

localparam real Ts = 1e-8;  //10ns (sample period)
localparam real pi = 3.14159265358979;
localparam signed [34:0] A0_shift = 32;
//LP2
//localparam real f0 = 10000; // [100,1_000_000]
//localparam real Q = 1; // [.5,100]

//localparam real F0 = pi*f0*Ts;

//localparam signed [34:0] a1 = 2*(1-F0**2)/(1+F0/Q+F0**2)*2**A0_shift;
//localparam signed [34:0] a2 = -1*(1-F0/Q+F0**2)/(1+F0/Q+F0**2)*2**A0_shift;
//localparam signed [34:0] b0 = F0**2/(1+F0/Q+F0**2)*2**A0_shift;
//localparam signed [34:0] b1 = 2*F0**2/(1+F0/Q+F0**2)*2**A0_shift;
//localparam signed [34:0] b2 = F0**2/(1+F0/Q+F0**2)*2**A0_shift;

//Notch
localparam signed [34:0] f0 = 100000;// [100,1_000_000]
localparam signed [34:0] Q = 1; // [0.5,10]

localparam signed [34:0] F0 = pi*f0*Ts;

//localparam signed [34:0] a1 = 2*(1-F0**2)/(1+F0/Q+F0**2)*2**A0_shift;
//localparam signed [34:0] a2 = -1*(1-F0/Q+F0**2)/(1+F0/Q+F0**2)*2**A0_shift;
//localparam signed [34:0] b0 = (1+F0**2)/(1+F0/Q+F0**2)*2**A0_shift;
//localparam signed [34:0] b1 = -2*(1-F0**2)/(1+F0/Q+F0**2)*2**A0_shift;
//localparam signed [34:0] b2 = (1+F0**2)/(1+F0/Q+F0**2)*2**A0_shift;

//localparam signed [34:0] a1 = 35'd8562864269;
//localparam signed [34:0] a2 = -35'd4268065999;
//localparam signed [34:0] b0 = 35'd4281516647;
//localparam signed [34:0] b1 = -35'd8562864269;
//localparam signed [34:0] b2 = 35'd4281516647;

localparam signed [34:0] a1 = 0*2**A0_shift;
localparam signed [34:0] a2 = 0*2**A0_shift;
localparam signed [34:0] b0 = 1*2**A0_shift;
localparam signed [34:0] b1 = 0*2**A0_shift;
localparam signed [34:0] b2 = 0*2**A0_shift;

wire signed [15:0] signal_in, signal_out;
assign signal_in = ADC11;

//parameter N_WAIT = 4'h4;// 1 noise, 2 623Hz, 4 gives ~380Hz notch, 6 gives ~200Hz notch

//IIRfilter2ndOrderSlow #(
//    .A0_SHIFT(A0_shift),
//    .N_WAIT(N_WAIT)
//)
//IIRfilter2ndOrderSlowTest(
//    .clk_in(clk_in),
//    .rst_in(rst_in),
//    .on_in(1'b1),
//    .a1_in(a1),
//    .a2_in(a2),
//    .b0_in(b0),
//    .b1_in(b1),
//    .b2_in(b2),
//    .signal_in(signal_in),
//    .signal_out(signal_out)
//);


IIR2ndOrderFast IIR2ndOrderFastTest(
    .clk_in(clk_in),
    .on_in(1'b1),
    .a1_in(a1),
    .a2_in(a2),
    .b0_in(b0),
    .b1_in(b1),
    .b2_in(b2),
    .signal_in(signal_in),
    .signal_out(signal_out)
);

//IIRfilter1stOrderAntiWindup IIR1inst (
//    .clk_in(clk_in),
//    .on_in(1'b1),
//    .a1_in(a1),
//    .b0_in(b0),
//    .b1_in(b1),
//    .railed_in(2'b00),
//    .hold_in(1'b0),
//    .signal_in(signal_in),
//    .signal_out(signal_out)
//);

////////DACs///////////////
wire signed [15:0] s0, s1, s2, s3;
assign s0 = ADC00, s1 = ADC01, s2 = ADC10, s3 = signal_out;

// Instantiate DAC1 driver module
AD9783 #(
	.CLKDIV(4) //200MHz clock
)
 DAC0 (
     .clk_in(clk_in), 
     .rst_in(rst_in), 
     .DAC0_in(s0), 
     .DAC1_in(s1),  
     .CLK_out_p(CLK_out_p), 
     .CLK_out_n(CLK_out_n), 
     .DCI_out_p(DCI0_out_p), 
     .DCI_out_n(DCI0_out_n), 
     .D_out_p(D0_out_p), 
     .D_out_n(D0_out_n),
	 .rst_out(dac_rst0),
	 .spi_scs_out(dac_csb0),
	 .spi_sck_out(dac_sck),
	 .spi_sdo_out(dac_sdi),
	 .spi_sdi_in(dac_sdo),
	 .cmd_trig_in(1'b0),
	 .cmd_addr_in(16'b0),
	 .cmd_data_in(16'b0),
	 .cmd_data_out(),
	 .clk_out()
    );
    

// Instantiate DAC1 driver module
AD9783 #(
	.CLKDIV(4) //200MHz clock
)
 DAC1 (
     .clk_in(clk_in), 
     .rst_in(rst_in), 
     .DAC0_in(s2), 
     .DAC1_in(s3), 
     .CLK_out_p(), 
     .CLK_out_n(), 
     .DCI_out_p(DCI1_out_p), 
     .DCI_out_n(DCI1_out_n), 
     .D_out_p(D1_out_p), 
     .D_out_n(D1_out_n),
	 .rst_out(dac_rst1),
	 .spi_scs_out(dac_csb1),
	 .spi_sck_out(),
	 .spi_sdo_out(),
	 .spi_sdi_in(),
	 .cmd_trig_in(1'b0),
	 .cmd_addr_in(16'b0),
	 .cmd_data_in(16'b0),
	 .cmd_data_out(),
	 .clk_out()
    );

endmodule
