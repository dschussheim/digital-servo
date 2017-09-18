`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module LTC2195x2_tb;

	// Inputs
	reg clk_in;
	reg rst_in;
	reg cmd_trig_in;
	reg [15:0] cmd_addr_in;
	reg [15:0] cmd_data_in;
	reg spi_sdi_in;
	reg DCO0_in_p;
	reg DCO0_in_n;
	reg DCO1_in_p;
    reg DCO1_in_n;
	reg FR0_in_p;
	reg FR0_in_n;
	reg FR1_in_p;
    reg FR1_in_n;
	reg [1:0] D00_in_p;
	reg [1:0] D00_in_n;
	reg [1:0] D01_in_p;
	reg [1:0] D01_in_n;
	reg [1:0] D10_in_p;
    reg [1:0] D10_in_n;
    reg [1:0] D11_in_p;
    reg [1:0] D11_in_n;

	// Outputs
	wire spi_scs0_out;
	wire spi_scs1_out;
	wire spi_sck_out;
	wire spi_sdo_out;
	wire ENC_out_p;
	wire ENC_out_n;
	wire [15:0] ADC00_out;
	wire [15:0] ADC01_out;
	wire [15:0] ADC10_out;
    wire [15:0] ADC11_out;
	wire [7:0] FR0_out;
	wire [7:0] FR1_out;

    localparam TP00 = 8'b11110000;
    localparam TP01 = 8'b00111100;
    localparam TP10 = 8'b11110000;
    localparam TP11 = 8'b00111100;

	// Instantiate the Unit Under Test (UUT)
	LTC2195x2 #(
		.CLKDIV(8)
		//.TP00(TP00),
		//.TP01(TP01),
		//.TP10(TP10),
		//.TP11(TP11)
		//.TP(TP1)
	)
	uut (
		.clk_in(clk_in), 
		.rst_in(rst_in), 
		.cmd_trig_in(cmd_trig_in), 
		.cmd_addr_in(cmd_addr_in), 
		.cmd_data_in(cmd_data_in), 
		.spi_scs0_out(spi_scs0_out), 
	    .spi_scs1_out(spi_scs1_out), 
		.spi_sck_out(spi_sck_out), 
		.spi_sdo_out(spi_sdo_out), 
		.spi_sdi_in(spi_sdi_in), 
		.ENC_out_p(ENC_out_p), 
		.ENC_out_n(ENC_out_n), 
		.DCO0_in_p(DCO0_in_p), 
		.DCO0_in_n(DCO0_in_n),
	    .DCO1_in_p(DCO1_in_p), 
        .DCO1_in_n(DCO1_in_n), 
		.FR0_in_p(FR0_in_p), 
		.FR0_in_n(FR0_in_n), 
	    .FR1_in_p(FR1_in_p), 
        .FR1_in_n(FR1_in_n),
		.D00_in_p(D00_in_p), 
		.D00_in_n(D00_in_n), 
		.D01_in_p(D01_in_p), 
		.D01_in_n(D01_in_n),
	    .D10_in_p(D10_in_p), 
        .D10_in_n(D10_in_n), 
        .D11_in_p(D11_in_p), 
        .D11_in_n(D11_in_n), 
		.ADC00_out(ADC00_out), 
		.ADC01_out(ADC01_out), 
		.ADC10_out(ADC10_out), 
        .ADC11_out(ADC11_out), 
		.FR0_out(FR0_out),
		.FR1_out(FR1_out)
	);

	//"Bitstream" I want to deserialize and send to FPGA.
	parameter value = 16'b1011001011101001;
	//Two channels from ADC
	parameter A = 8'b11011110; //bits 15, 13, 11, ..., 3, 1
	parameter B = 8'b01001001; //bits 14, 12, 10, ..., 2, 0
	
	initial begin
		// Initialize Inputs
		clk_in = 0;
		rst_in = 0;
		cmd_trig_in = 0;
		cmd_addr_in = 0;
		cmd_data_in = 0;
		spi_sdi_in = 0;
		DCO0_in_p = 0;
		DCO0_in_n = ~DCO0_in_p;
		DCO1_in_p = 0;
        DCO1_in_n = ~DCO1_in_p;
		FR0_in_p = 0;
		FR0_in_n = ~FR0_in_p;
	    FR1_in_p = 0;
        FR1_in_n = ~FR1_in_p;
		D00_in_p = 2'b00;
		D00_in_n = ~D00_in_p;
		D01_in_p = 2'b00;
		D01_in_n = ~D01_in_p;
		D10_in_p = 2'b00;
        D10_in_n = ~D10_in_p;
        D11_in_p = 2'b00;
        D11_in_n = ~D11_in_p;
        
		// Add stimulus here
		#500	rst_in = 1;
		#100	rst_in = 0; //DCM SP says reset must be high for at least 3 valid clock cycles

		#1000 //wait for everything to start working (MMCM/ISERDESE2)
		D00_in_p[0] = A[7];
		D00_in_p[1] = B[7];
		D00_in_n = ~D00_in_p;
		D01_in_p[0] = B[7];
		D01_in_p[1] = A[7];
		D01_in_n = ~D01_in_p;
	    D10_in_p[0] = A[0];
        D10_in_p[1] = B[0];
        D10_in_n = ~D10_in_p;
        D11_in_p[0] = B[0];
        D11_in_p[1] = A[0];
        D11_in_n = ~D11_in_p;
		#1.25
		D00_in_p[0] = A[6];
        D00_in_p[1] = B[6];
        D00_in_n = ~D00_in_p;
        D01_in_p[0] = B[6];
        D01_in_p[1] = A[6];
        D01_in_n = ~D01_in_p;
        D10_in_p[0] = A[1];
        D10_in_p[1] = B[1];
        D10_in_n = ~D10_in_p;
        D11_in_p[0] = B[1];
        D11_in_p[1] = A[1];
        D11_in_n = ~D11_in_p;
		#1.25
		D00_in_p[0] = A[5];
        D00_in_p[1] = B[5];
        D00_in_n = ~D00_in_p;
        D01_in_p[0] = B[5];
        D01_in_p[1] = A[5];
        D01_in_n = ~D01_in_p;
        D10_in_p[0] = A[2];
        D10_in_p[1] = B[2];
        D10_in_n = ~D10_in_p;
        D11_in_p[0] = B[2];
        D11_in_p[1] = A[2];
        D11_in_n = ~D11_in_p;
		#1.25
		D00_in_p[0] = A[4];
        D00_in_p[1] = B[4];
        D00_in_n = ~D00_in_p;
        D01_in_p[0] = B[4];
        D01_in_p[1] = A[4];
        D01_in_n = ~D01_in_p;
        D10_in_p[0] = A[3];
        D10_in_p[1] = B[3];
        D10_in_n = ~D10_in_p;
        D11_in_p[0] = B[3];
        D11_in_p[1] = A[3];
        D11_in_n = ~D11_in_p;
		#1.25
		D00_in_p[0] = A[3];
        D00_in_p[1] = B[3];
        D00_in_n = ~D00_in_p;
        D01_in_p[0] = B[3];
        D01_in_p[1] = A[3];
        D01_in_n = ~D01_in_p;
        D10_in_p[0] = A[4];
        D10_in_p[1] = B[4];
        D10_in_n = ~D10_in_p;
        D11_in_p[0] = B[4];
        D11_in_p[1] = A[4];
        D11_in_n = ~D11_in_p;
		#1.25
		D00_in_p[0] = A[2];
        D00_in_p[1] = B[2];
        D00_in_n = ~D00_in_p;
        D01_in_p[0] = B[2];
        D01_in_p[1] = A[2];
        D01_in_n = ~D01_in_p;
        D10_in_p[0] = A[5];
        D10_in_p[1] = B[5];
        D10_in_n = ~D10_in_p;
        D11_in_p[0] = B[5];
        D11_in_p[1] = A[5];
        D11_in_n = ~D11_in_p;
		#1.25
		D00_in_p[0] = A[1];
        D00_in_p[1] = B[1];
        D00_in_n = ~D00_in_p;
        D01_in_p[0] = B[1];
        D01_in_p[1] = A[1];
        D01_in_n = ~D01_in_p;
        D10_in_p[0] = A[6];
        D10_in_p[1] = B[6];
        D10_in_n = ~D10_in_p;
        D11_in_p[0] = B[6];
        D11_in_p[1] = A[6];
        D11_in_n = ~D11_in_p;
		#1.25
		D00_in_p[0] = A[0];
        D00_in_p[1] = B[0];
        D00_in_n = ~D00_in_p;
        D01_in_p[0] = B[0];
        D01_in_p[1] = A[0];
        D01_in_n = ~D01_in_p;
        D10_in_p[0] = A[7];
        D10_in_p[1] = B[7];
        D10_in_n = ~D10_in_p;
        D11_in_p[0] = B[7];
        D11_in_p[1] = A[7];
        D11_in_n = ~D11_in_p;
        #1.25
D00_in_p[0] = A[7];
                D00_in_p[1] = B[7];
                D00_in_n = ~D00_in_p;
                D01_in_p[0] = B[7];
                D01_in_p[1] = A[7];
                D01_in_n = ~D01_in_p;
                D10_in_p[0] = A[0];
                D10_in_p[1] = B[0];
                D10_in_n = ~D10_in_p;
                D11_in_p[0] = B[0];
                D11_in_p[1] = A[0];
                D11_in_n = ~D11_in_p;
                #1.25
                D00_in_p[0] = A[6];
                D00_in_p[1] = B[6];
                D00_in_n = ~D00_in_p;
                D01_in_p[0] = B[6];
                D01_in_p[1] = A[6];
                D01_in_n = ~D01_in_p;
                D10_in_p[0] = A[1];
                D10_in_p[1] = B[1];
                D10_in_n = ~D10_in_p;
                D11_in_p[0] = B[1];
                D11_in_p[1] = A[1];
                D11_in_n = ~D11_in_p;
                #1.25
                D00_in_p[0] = A[5];
                D00_in_p[1] = B[5];
                D00_in_n = ~D00_in_p;
                D01_in_p[0] = B[5];
                D01_in_p[1] = A[5];
                D01_in_n = ~D01_in_p;
                D10_in_p[0] = A[2];
                D10_in_p[1] = B[2];
                D10_in_n = ~D10_in_p;
                D11_in_p[0] = B[2];
                D11_in_p[1] = A[2];
                D11_in_n = ~D11_in_p;
                #1.25
                D00_in_p[0] = A[4];
                D00_in_p[1] = B[4];
                D00_in_n = ~D00_in_p;
                D01_in_p[0] = B[4];
                D01_in_p[1] = A[4];
                D01_in_n = ~D01_in_p;
                D10_in_p[0] = A[3];
                D10_in_p[1] = B[3];
                D10_in_n = ~D10_in_p;
                D11_in_p[0] = B[3];
                D11_in_p[1] = A[3];
                D11_in_n = ~D11_in_p;
                #1.25
                D00_in_p[0] = A[3];
                D00_in_p[1] = B[3];
                D00_in_n = ~D00_in_p;
                D01_in_p[0] = B[3];
                D01_in_p[1] = A[3];
                D01_in_n = ~D01_in_p;
                D10_in_p[0] = A[4];
                D10_in_p[1] = B[4];
                D10_in_n = ~D10_in_p;
                D11_in_p[0] = B[4];
                D11_in_p[1] = A[4];
                D11_in_n = ~D11_in_p;
                #1.25
                D00_in_p[0] = A[2];
                D00_in_p[1] = B[2];
                D00_in_n = ~D00_in_p;
                D01_in_p[0] = B[2];
                D01_in_p[1] = A[2];
                D01_in_n = ~D01_in_p;
                D10_in_p[0] = A[5];
                D10_in_p[1] = B[5];
                D10_in_n = ~D10_in_p;
                D11_in_p[0] = B[5];
                D11_in_p[1] = A[5];
                D11_in_n = ~D11_in_p;
                #1.25
                D00_in_p[0] = A[1];
                D00_in_p[1] = B[1];
                D00_in_n = ~D00_in_p;
                D01_in_p[0] = B[1];
                D01_in_p[1] = A[1];
                D01_in_n = ~D01_in_p;
                D10_in_p[0] = A[6];
                D10_in_p[1] = B[6];
                D10_in_n = ~D10_in_p;
                D11_in_p[0] = B[6];
                D11_in_p[1] = A[6];
                D11_in_n = ~D11_in_p;
                #1.25
                D00_in_p[0] = A[0];
                D00_in_p[1] = B[0];
                D00_in_n = ~D00_in_p;
                D01_in_p[0] = B[0];
                D01_in_p[1] = A[0];
                D01_in_n = ~D01_in_p;
                D10_in_p[0] = A[7];
                D10_in_p[1] = B[7];
                D10_in_n = ~D10_in_p;
                D11_in_p[0] = B[7];
                D11_in_p[1] = A[7];
                D11_in_n = ~D11_in_p;
        #1.25
        D00_in_p[0] = A[7];
                        D00_in_p[1] = B[7];
                        D00_in_n = ~D00_in_p;
                        D01_in_p[0] = B[7];
                        D01_in_p[1] = A[7];
                        D01_in_n = ~D01_in_p;
                        D10_in_p[0] = A[0];
                        D10_in_p[1] = B[0];
                        D10_in_n = ~D10_in_p;
                        D11_in_p[0] = B[0];
                        D11_in_p[1] = A[0];
                        D11_in_n = ~D11_in_p;
                        #1.25
                        D00_in_p[0] = A[6];
                        D00_in_p[1] = B[6];
                        D00_in_n = ~D00_in_p;
                        D01_in_p[0] = B[6];
                        D01_in_p[1] = A[6];
                        D01_in_n = ~D01_in_p;
                        D10_in_p[0] = A[1];
                        D10_in_p[1] = B[1];
                        D10_in_n = ~D10_in_p;
                        D11_in_p[0] = B[1];
                        D11_in_p[1] = A[1];
                        D11_in_n = ~D11_in_p;
                        #1.25
                        D00_in_p[0] = A[5];
                        D00_in_p[1] = B[5];
                        D00_in_n = ~D00_in_p;
                        D01_in_p[0] = B[5];
                        D01_in_p[1] = A[5];
                        D01_in_n = ~D01_in_p;
                        D10_in_p[0] = A[2];
                        D10_in_p[1] = B[2];
                        D10_in_n = ~D10_in_p;
                        D11_in_p[0] = B[2];
                        D11_in_p[1] = A[2];
                        D11_in_n = ~D11_in_p;
                        #1.25
                        D00_in_p[0] = A[4];
                        D00_in_p[1] = B[4];
                        D00_in_n = ~D00_in_p;
                        D01_in_p[0] = B[4];
                        D01_in_p[1] = A[4];
                        D01_in_n = ~D01_in_p;
                        D10_in_p[0] = A[3];
                        D10_in_p[1] = B[3];
                        D10_in_n = ~D10_in_p;
                        D11_in_p[0] = B[3];
                        D11_in_p[1] = A[3];
                        D11_in_n = ~D11_in_p;
                        #1.25
                        D00_in_p[0] = A[3];
                        D00_in_p[1] = B[3];
                        D00_in_n = ~D00_in_p;
                        D01_in_p[0] = B[3];
                        D01_in_p[1] = A[3];
                        D01_in_n = ~D01_in_p;
                        D10_in_p[0] = A[4];
                        D10_in_p[1] = B[4];
                        D10_in_n = ~D10_in_p;
                        D11_in_p[0] = B[4];
                        D11_in_p[1] = A[4];
                        D11_in_n = ~D11_in_p;
                        #1.25
                        D00_in_p[0] = A[2];
                        D00_in_p[1] = B[2];
                        D00_in_n = ~D00_in_p;
                        D01_in_p[0] = B[2];
                        D01_in_p[1] = A[2];
                        D01_in_n = ~D01_in_p;
                        D10_in_p[0] = A[5];
                        D10_in_p[1] = B[5];
                        D10_in_n = ~D10_in_p;
                        D11_in_p[0] = B[5];
                        D11_in_p[1] = A[5];
                        D11_in_n = ~D11_in_p;
                        #1.25
                        D00_in_p[0] = A[1];
                        D00_in_p[1] = B[1];
                        D00_in_n = ~D00_in_p;
                        D01_in_p[0] = B[1];
                        D01_in_p[1] = A[1];
                        D01_in_n = ~D01_in_p;
                        D10_in_p[0] = A[6];
                        D10_in_p[1] = B[6];
                        D10_in_n = ~D10_in_p;
                        D11_in_p[0] = B[6];
                        D11_in_p[1] = A[6];
                        D11_in_n = ~D11_in_p;
                        #1.25
                        D00_in_p[0] = A[0];
                        D00_in_p[1] = B[0];
                        D00_in_n = ~D00_in_p;
                        D01_in_p[0] = B[0];
                        D01_in_p[1] = A[0];
                        D01_in_n = ~D01_in_p;
                        D10_in_p[0] = A[7];
                        D10_in_p[1] = B[7];
                        D10_in_n = ~D10_in_p;
                        D11_in_p[0] = B[7];
                        D11_in_p[1] = A[7];
                        D11_in_n = ~D11_in_p;
                                #1.25
                D00_in_p[0] = A[7];
                                D00_in_p[1] = B[7];
                                D00_in_n = ~D00_in_p;
                                D01_in_p[0] = B[7];
                                D01_in_p[1] = A[7];
                                D01_in_n = ~D01_in_p;
                                D10_in_p[0] = A[0];
                                D10_in_p[1] = B[0];
                                D10_in_n = ~D10_in_p;
                                D11_in_p[0] = B[0];
                                D11_in_p[1] = A[0];
                                D11_in_n = ~D11_in_p;
                                #1.25
                                D00_in_p[0] = A[6];
                                D00_in_p[1] = B[6];
                                D00_in_n = ~D00_in_p;
                                D01_in_p[0] = B[6];
                                D01_in_p[1] = A[6];
                                D01_in_n = ~D01_in_p;
                                D10_in_p[0] = A[1];
                                D10_in_p[1] = B[1];
                                D10_in_n = ~D10_in_p;
                                D11_in_p[0] = B[1];
                                D11_in_p[1] = A[1];
                                D11_in_n = ~D11_in_p;
                                #1.25
                                D00_in_p[0] = A[5];
                                D00_in_p[1] = B[5];
                                D00_in_n = ~D00_in_p;
                                D01_in_p[0] = B[5];
                                D01_in_p[1] = A[5];
                                D01_in_n = ~D01_in_p;
                                D10_in_p[0] = A[2];
                                D10_in_p[1] = B[2];
                                D10_in_n = ~D10_in_p;
                                D11_in_p[0] = B[2];
                                D11_in_p[1] = A[2];
                                D11_in_n = ~D11_in_p;
                                #1.25
                                D00_in_p[0] = A[4];
                                D00_in_p[1] = B[4];
                                D00_in_n = ~D00_in_p;
                                D01_in_p[0] = B[4];
                                D01_in_p[1] = A[4];
                                D01_in_n = ~D01_in_p;
                                D10_in_p[0] = A[3];
                                D10_in_p[1] = B[3];
                                D10_in_n = ~D10_in_p;
                                D11_in_p[0] = B[3];
                                D11_in_p[1] = A[3];
                                D11_in_n = ~D11_in_p;
                                #1.25
                                D00_in_p[0] = A[3];
                                D00_in_p[1] = B[3];
                                D00_in_n = ~D00_in_p;
                                D01_in_p[0] = B[3];
                                D01_in_p[1] = A[3];
                                D01_in_n = ~D01_in_p;
                                D10_in_p[0] = A[4];
                                D10_in_p[1] = B[4];
                                D10_in_n = ~D10_in_p;
                                D11_in_p[0] = B[4];
                                D11_in_p[1] = A[4];
                                D11_in_n = ~D11_in_p;
                                #1.25
                                D00_in_p[0] = A[2];
                                D00_in_p[1] = B[2];
                                D00_in_n = ~D00_in_p;
                                D01_in_p[0] = B[2];
                                D01_in_p[1] = A[2];
                                D01_in_n = ~D01_in_p;
                                D10_in_p[0] = A[5];
                                D10_in_p[1] = B[5];
                                D10_in_n = ~D10_in_p;
                                D11_in_p[0] = B[5];
                                D11_in_p[1] = A[5];
                                D11_in_n = ~D11_in_p;
                                #1.25
                                D00_in_p[0] = A[1];
                                D00_in_p[1] = B[1];
                                D00_in_n = ~D00_in_p;
                                D01_in_p[0] = B[1];
                                D01_in_p[1] = A[1];
                                D01_in_n = ~D01_in_p;
                                D10_in_p[0] = A[6];
                                D10_in_p[1] = B[6];
                                D10_in_n = ~D10_in_p;
                                D11_in_p[0] = B[6];
                                D11_in_p[1] = A[6];
                                D11_in_n = ~D11_in_p;
                                #1.25
                                D00_in_p[0] = A[0];
                                D00_in_p[1] = B[0];
                                D00_in_n = ~D00_in_p;
                                D01_in_p[0] = B[0];
                                D01_in_p[1] = A[0];
                                D01_in_n = ~D01_in_p;
                                D10_in_p[0] = A[7];
                                D10_in_p[1] = B[7];
                                D10_in_n = ~D10_in_p;
                                D11_in_p[0] = B[7];
                                D11_in_p[1] = A[7];
                                D11_in_n = ~D11_in_p;
                                        #1.25
                        D00_in_p[0] = A[7];
                                        D00_in_p[1] = B[7];
                                        D00_in_n = ~D00_in_p;
                                        D01_in_p[0] = B[7];
                                        D01_in_p[1] = A[7];
                                        D01_in_n = ~D01_in_p;
                                        D10_in_p[0] = A[0];
                                        D10_in_p[1] = B[0];
                                        D10_in_n = ~D10_in_p;
                                        D11_in_p[0] = B[0];
                                        D11_in_p[1] = A[0];
                                        D11_in_n = ~D11_in_p;
                                        #1.25
                                        D00_in_p[0] = A[6];
                                        D00_in_p[1] = B[6];
                                        D00_in_n = ~D00_in_p;
                                        D01_in_p[0] = B[6];
                                        D01_in_p[1] = A[6];
                                        D01_in_n = ~D01_in_p;
                                        D10_in_p[0] = A[1];
                                        D10_in_p[1] = B[1];
                                        D10_in_n = ~D10_in_p;
                                        D11_in_p[0] = B[1];
                                        D11_in_p[1] = A[1];
                                        D11_in_n = ~D11_in_p;
                                        #1.25
                                        D00_in_p[0] = A[5];
                                        D00_in_p[1] = B[5];
                                        D00_in_n = ~D00_in_p;
                                        D01_in_p[0] = B[5];
                                        D01_in_p[1] = A[5];
                                        D01_in_n = ~D01_in_p;
                                        D10_in_p[0] = A[2];
                                        D10_in_p[1] = B[2];
                                        D10_in_n = ~D10_in_p;
                                        D11_in_p[0] = B[2];
                                        D11_in_p[1] = A[2];
                                        D11_in_n = ~D11_in_p;
                                        #1.25
                                        D00_in_p[0] = A[4];
                                        D00_in_p[1] = B[4];
                                        D00_in_n = ~D00_in_p;
                                        D01_in_p[0] = B[4];
                                        D01_in_p[1] = A[4];
                                        D01_in_n = ~D01_in_p;
                                        D10_in_p[0] = A[3];
                                        D10_in_p[1] = B[3];
                                        D10_in_n = ~D10_in_p;
                                        D11_in_p[0] = B[3];
                                        D11_in_p[1] = A[3];
                                        D11_in_n = ~D11_in_p;
                                        #1.25
                                        D00_in_p[0] = A[3];
                                        D00_in_p[1] = B[3];
                                        D00_in_n = ~D00_in_p;
                                        D01_in_p[0] = B[3];
                                        D01_in_p[1] = A[3];
                                        D01_in_n = ~D01_in_p;
                                        D10_in_p[0] = A[4];
                                        D10_in_p[1] = B[4];
                                        D10_in_n = ~D10_in_p;
                                        D11_in_p[0] = B[4];
                                        D11_in_p[1] = A[4];
                                        D11_in_n = ~D11_in_p;
                                        #1.25
                                        D00_in_p[0] = A[2];
                                        D00_in_p[1] = B[2];
                                        D00_in_n = ~D00_in_p;
                                        D01_in_p[0] = B[2];
                                        D01_in_p[1] = A[2];
                                        D01_in_n = ~D01_in_p;
                                        D10_in_p[0] = A[5];
                                        D10_in_p[1] = B[5];
                                        D10_in_n = ~D10_in_p;
                                        D11_in_p[0] = B[5];
                                        D11_in_p[1] = A[5];
                                        D11_in_n = ~D11_in_p;
                                        #1.25
                                        D00_in_p[0] = A[1];
                                        D00_in_p[1] = B[1];
                                        D00_in_n = ~D00_in_p;
                                        D01_in_p[0] = B[1];
                                        D01_in_p[1] = A[1];
                                        D01_in_n = ~D01_in_p;
                                        D10_in_p[0] = A[6];
                                        D10_in_p[1] = B[6];
                                        D10_in_n = ~D10_in_p;
                                        D11_in_p[0] = B[6];
                                        D11_in_p[1] = A[6];
                                        D11_in_n = ~D11_in_p;
                                        #1.25
                                        D00_in_p[0] = A[0];
                                        D00_in_p[1] = B[0];
                                        D00_in_n = ~D00_in_p;
                                        D01_in_p[0] = B[0];
                                        D01_in_p[1] = A[0];
                                        D01_in_n = ~D01_in_p;
                                        D10_in_p[0] = A[7];
                                        D10_in_p[1] = B[7];
                                        D10_in_n = ~D10_in_p;
                                        D11_in_p[0] = B[7];
                                        D11_in_p[1] = A[7];
                                        D11_in_n = ~D11_in_p;
	end
      
    parameter val00 = {A[7], B[7], A[6], B[6], A[5], B[5], A[4], B[4], A[3], B[3], A[2], B[2], A[1], B[1], A[0], B[0]}; 
    parameter val01 = {B[7], A[7], B[6], A[6], B[5], A[5], B[4], A[4], B[3], A[3], B[2], A[2], B[1], A[1], B[0], A[0]};
    parameter val10 = {A[0], B[0], A[1], B[1], A[2], B[2], A[3], B[3], A[4], B[4], A[5], B[5], A[6], B[6], A[7], B[7]};
    parameter val11 = {B[0], A[0], B[1], A[1], B[2], A[2], B[3], A[3], B[4], A[4], B[5], A[5], B[6], A[6], B[7], A[7]};
   
	//Clock
	always 
		#5 clk_in = ~clk_in;  // 100 MHz
	always
		#1.25	DCO0_in_p = ~DCO0_in_p;
	always
		#1.25	DCO0_in_n = ~DCO0_in_n;
	always
		#5	FR0_in_p = ~FR0_in_p;
	always
		#5	FR0_in_n = ~FR0_in_n;
	always
        #1.25    DCO1_in_p = ~DCO1_in_p;
    always
        #1.25    DCO1_in_n = ~DCO1_in_n;
    always
        #5    FR1_in_p = ~FR1_in_p;
    always
        #5    FR1_in_n = ~FR1_in_n;

endmodule
