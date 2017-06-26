#create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]
#set_input_jitter clk 0.000
#create_generated_clock -name {AD9783_inst1/AD_9783_SPI_inst/data_out_reg[7]_0} -source [get_ports clk] -divide_by 1 [get_pins AD9783_inst1/AD_9783_SPI_inst/spi_clk_reg/Q]
#create_generated_clock -name {AD9783_inst1/spi_data_reg_n_0_[10]} -source [get_ports clk] -divide_by 1 [get_pins {AD9783_inst1/spi_data_reg[10]/Q}]
#create_generated_clock -name {AD9783_inst1/spi_data_reg_n_0_[15]} -source [get_ports clk] -divide_by 1 [get_pins {AD9783_inst1/spi_data_reg[15]/Q}]
#create_generated_clock -name AD9783_inst1/spi_trigger_reg_n_0 -source [get_ports clk] -divide_by 1 [get_pins AD9783_inst1/spi_trigger_reg/Q]
#create_generated_clock -name ADC2/LTC2195_SPI_inst/spi_clk -source [get_ports clk] -divide_by 1 [get_pins ADC2/LTC2195_SPI_inst/spi_clk_reg/Q]
#create_generated_clock -name ADC2/PS_clk -source [get_ports clk] -divide_by 1 [get_pins ADC2/PS_clk_reg/Q]
#create_generated_clock -name {ADC2/spi_data[7]} -source [get_ports clk] -divide_by 1 [get_pins {ADC2/spi_data_reg[7]/Q}]
#create_generated_clock -name {ADC2/spi_data[8]} -source [get_ports clk] -divide_by 1 [get_pins {ADC2/spi_data_reg[8]/Q}]
#create_generated_clock -name {ADC2/spi_data[9]} -source [get_ports clk] -divide_by 1 [get_pins {ADC2/spi_data_reg[9]/Q}]
#create_generated_clock -name ADC2/spi_trigger_reg_n_0 -source [get_ports clk] -divide_by 1 [get_pins ADC2/spi_trigger_reg/Q]
#create_generated_clock -name rstLEDclk/clk__0 -source [get_ports clk] -divide_by 1 [get_pins rstLEDclk/div_clk_reg/Q]
#create_generated_clock -name rst_in -source [get_pins rstLEDclk/div_clk_reg/Q] -divide_by 1 [get_pins rst_in_reg/Q]
#create_generated_clock -name CLK_out_p -source [get_pins AD9783_inst1/ODDR_CLK/C] -divide_by 1 -invert [get_ports CLK_out_p]
#create_generated_clock -name DCI1_out_p -source [get_pins {AD9783_inst1/pins[16].ODDR_inst/C}] -divide_by 1 [get_ports DCI1_out_p]
#create_generated_clock -name ENC_p -source [get_pins ADC2/ODDR_inst/C] -divide_by 1 -invert [get_ports ENC_p]

#Clock input
set_property PACKAGE_PIN AA3 [get_ports clk]

#Reset led
#set_property PACKAGE_PIN M17 [get_ports rst_led]

#DAC2 output pins
set_property PACKAGE_PIN B17 [get_ports {D1_out_p[0]}]
set_property PACKAGE_PIN A17 [get_ports {D1_out_n[0]}]
set_property PACKAGE_PIN A18 [get_ports {D1_out_p[1]}]
set_property PACKAGE_PIN A19 [get_ports {D1_out_n[1]}]
set_property PACKAGE_PIN A13 [get_ports {D1_out_p[2]}]
set_property PACKAGE_PIN A12 [get_ports {D1_out_n[2]}]
set_property PACKAGE_PIN C16 [get_ports {D1_out_p[3]}]
set_property PACKAGE_PIN B16 [get_ports {D1_out_n[3]}]
set_property PACKAGE_PIN B15 [get_ports {D1_out_p[4]}]
set_property PACKAGE_PIN A15 [get_ports {D1_out_n[4]}]
set_property PACKAGE_PIN B10 [get_ports {D1_out_p[5]}]
set_property PACKAGE_PIN A10 [get_ports {D1_out_n[5]}]
set_property PACKAGE_PIN B12 [get_ports {D1_out_p[6]}]
set_property PACKAGE_PIN B11 [get_ports {D1_out_n[6]}]
set_property PACKAGE_PIN B14 [get_ports {D1_out_p[7]}]
set_property PACKAGE_PIN A14 [get_ports {D1_out_n[7]}]
set_property PACKAGE_PIN G12 [get_ports {D1_out_p[8]}]
set_property PACKAGE_PIN F12 [get_ports {D1_out_n[8]}]
set_property PACKAGE_PIN D14 [get_ports {D1_out_p[9]}]
set_property PACKAGE_PIN D13 [get_ports {D1_out_n[9]}]
set_property PACKAGE_PIN C12 [get_ports {D1_out_p[10]}]
set_property PACKAGE_PIN C11 [get_ports {D1_out_n[10]}]
set_property PACKAGE_PIN E11 [get_ports {D1_out_p[11]}]
set_property PACKAGE_PIN D11 [get_ports {D1_out_n[11]}]
set_property PACKAGE_PIN F9 [get_ports {D1_out_p[12]}]
set_property PACKAGE_PIN F8 [get_ports {D1_out_n[12]}]
set_property PACKAGE_PIN F14 [get_ports {D1_out_p[13]}]
set_property PACKAGE_PIN F13 [get_ports {D1_out_n[13]}]
set_property PACKAGE_PIN AF24 [get_ports {D1_out_p[14]}]
set_property PACKAGE_PIN AF25 [get_ports {D1_out_n[14]}]
set_property PACKAGE_PIN AD23 [get_ports {D1_out_p[15]}]
set_property PACKAGE_PIN AD24 [get_ports {D1_out_n[15]}]

#DAC clock
set_property PACKAGE_PIN C19 [get_ports CLK_out_p]
#DAC DCI
set_property PACKAGE_PIN C14 [get_ports DCI1_out_p]
set_property PACKAGE_PIN C13 [get_ports DCI1_out_n]

#SPI IOs for DAC
set_property PACKAGE_PIN K25 [get_ports dac_csb1]
set_property PACKAGE_PIN K26 [get_ports dac_rst1]
set_property PACKAGE_PIN P26 [get_ports dac_sck]
set_property PACKAGE_PIN N23 [get_ports dac_sdi]
set_property PACKAGE_PIN P23 [get_ports dac_sdo]

set_property IOSTANDARD LVCMOS25 [get_ports rst_led]
set_property IOSTANDARD LVCMOS25 [get_ports dac_csb1]
set_property IOSTANDARD LVCMOS25 [get_ports dac_rst1]
set_property IOSTANDARD LVCMOS25 [get_ports dac_sck]
set_property IOSTANDARD LVCMOS25 [get_ports dac_sdi]
set_property IOSTANDARD LVCMOS25 [get_ports dac_sdo]

#ADC2 input pins
set_property PACKAGE_PIN AB22 [get_ports {D20_p[0]}]
set_property PACKAGE_PIN AC22 [get_ports {D20_n[0]}]
set_property PACKAGE_PIN AD26 [get_ports {D20_p[1]}]
set_property PACKAGE_PIN AE26 [get_ports {D20_n[1]}]
set_property PACKAGE_PIN U24  [get_ports {D21_p[0]}]
set_property PACKAGE_PIN U25  [get_ports {D21_n[0]}]
set_property PACKAGE_PIN AC23 [get_ports {D21_p[1]}]
set_property PACKAGE_PIN AC24 [get_ports {D21_n[1]}]

#ENC input
set_property PACKAGE_PIN AA25 [get_ports ENC_p]
set_property PACKAGE_PIN AB25 [get_ports ENC_n]

#FR input
set_property PACKAGE_PIN W23 [get_ports FR2_p]
set_property PACKAGE_PIN W24 [get_ports FR2_n]

#SPI IOs for ADC
set_property PACKAGE_PIN Y21 [get_ports adc_sck]
set_property PACKAGE_PIN W25 [get_ports adc_scs2]
set_property PACKAGE_PIN W20 [get_ports adc_sdi]
set_property PACKAGE_PIN AC26 [get_ports adc_sdo]

set_property IOSTANDARD LVCMOS25 [get_ports adc_sck]
set_property IOSTANDARD LVCMOS25 [get_ports adc_scs2]
set_property IOSTANDARD LVCMOS25 [get_ports adc_sdi]
set_property IOSTANDARD LVCMOS25 [get_ports adc_sdo]

#LED for sanity
set_property PACKAGE_PIN M17 [get_ports ADC_out[3]]
set_property IOSTANDARD LVCMOS25 [get_ports ADC_out[3]]
set_property PACKAGE_PIN L18 [get_ports ADC_out[2]]
set_property IOSTANDARD LVCMOS25 [get_ports ADC_out[2]]
set_property PACKAGE_PIN L17 [get_ports ADC_out[1]]
set_property IOSTANDARD LVCMOS25 [get_ports ADC_out[1]]
set_property PACKAGE_PIN K18 [get_ports ADC_out[0]]
set_property IOSTANDARD LVCMOS25 [get_ports ADC_out[0]]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 2.5 [current_design]
