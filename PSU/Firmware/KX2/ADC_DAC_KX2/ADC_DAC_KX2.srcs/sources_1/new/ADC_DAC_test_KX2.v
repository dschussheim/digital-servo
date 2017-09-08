`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Test for ADCs and DACs for KX2 module.
// 
//////////////////////////////////////////////////////////////////////////////////

module ADC_DAC_test_KX2(
	//100 MHz clock
    input   wire            clk,
    //LEDs
    output  reg     [3:0]   led_out,
      
    //\\\\\\\\\ADCs//////////\\
    
    //ADC SPI IOs
    output  wire            adc_sck,
    output  wire            adc_sdi,
    output  wire            adc_scs1,
    output  wire            adc_scs2,
    input   wire            adc_sdo,
    
    //Clock input for ADCs
    output  wire            ENC_p,
    output  wire            ENC_n,
    
    //First ADC data to FPGA
    //Data clock
    input   wire            adc_DCO1_p,
    input   wire            adc_DCO1_n,
    //Frame "enclosing" different sets of data
    input   wire            FR1_p,
    input   wire            FR1_n,
    //Data streams
    input   wire    [1:0]   D10_p,
    input   wire    [1:0]   D10_n,
    input   wire    [1:0]   D11_p,
    input   wire    [1:0]   D11_n,
    
    //Second ADC data to FPGA
    //Data clock
    input   wire            adc_DCO2_p,
    input   wire            adc_DCO2_n,
    //Frame "enclosing" different sets of data
    input   wire            FR2_p,
    input   wire            FR2_n,
    //Data streams
    input   wire    [1:0]   D20_p,
    input   wire    [1:0]   D20_n,
    input   wire    [1:0]   D21_p,
    input   wire    [1:0]   D21_n,
    
    
    //\\\\\\\\\\DACs//////////\\
    
    output  wire    [15:0]  D0_out_p,
    output  wire    [15:0]  D0_out_n,
    
    output  wire    [15:0]  D1_out_p,
    output  wire    [15:0]  D1_out_n,
    
    output  wire            CLK_out_p,
    output  wire            CLK_out_n,
    
    output  wire            DCI0_out_p,
    output  wire            DCI0_out_n,
    
    output  wire            DCI1_out_p,
    output  wire            DCI1_out_n,
    
    output  wire            dac_csb0,
    output  wire            dac_rst0,
    output  wire            dac_csb1,
    output  wire            dac_rst1,
    output  wire            dac_sdi,
    output  wire            dac_sck,
    input   wire            dac_sdo,
    
    input   wire            DCO0_p,
    input   wire            DCO0_n,
    input   wire            DCO1_p,
    input   wire            DCO1_n
    
    //output  wire    [1:0]   HighZout
    
);
//assign HighZout = 2'bzz;

wire clk_int, clk_in, DIVclk;
    
//Clock input from FPGA module.
    
// IBUFG: Single-ended global clock input buffer
IBUFG #(
    .IBUF_LOW_PWR("FALSE"),     // Low power="TRUE", Highest performance="FALSE"
    .IOSTANDARD("SSTL15")     // Specify the input I/O standard
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

///////////////////reset////////////////////

wire rst_in;
reset startup_reset (
    .clk_in(clk_in),
    .rst(rst_in)
);

//always @(posedge clk_in)
//    led_out[0] <= ~rst_in;

///////////////End of reset/////////////////


/////////////////ADCs///////////////////////
wire [15:0] ADC00, ADC01, ADC10, ADC11;

wire [7:0] FR0_out, FR1_out;

parameter CLKDIV = 8;    // 800MHz/8 = 100MHz clock
parameter N00 = 3'b001, N01 = 3'b001, N10 = 3'b000, N11 = 3'b000;
//For testing bitslips
wire [3:0] bitslip_out;

LTC2195x2 #(
    .CLKDIV(CLKDIV),
    .N00(N00),
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


///////////////////End of ADCs///////////////////

///////////////////////LEDs////////////./////////

always @(posedge clk_in) begin
    led_out <= ~ADC00[15:12];
    //led_out <= ~ADC01[15:12];
    //led_out <= ~ADC10[15:12];
    //led_out <= ~ADC11[15:12];
    //led_out <= {~ADC10[15],~ADC11[15],~ADC01[15],~ADC01[15]};
end

///////////////////End of LEDs////////////.//////

//////////////////////DACs///////////////////////

// Instantiate DAC1 driver module
AD9783 #(
	.CLKDIV(4) //200MHz clock
)
 DAC0 (
     .clk_in(clk_in), 
     .rst_in(rst_in), 
     .DAC0_in(ADC00), 
     .DAC1_in(ADC00),  
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
     .DAC0_in(ADC00), 
     .DAC1_in(ADC00), 
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

//////////////////End of DACs///////////////////

endmodule
