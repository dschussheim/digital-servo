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

#Reset led

#set_property PACKAGE_PIN M17     [get_ports led_out[3]]
#set_property IOSTANDARD LVCMOS25 [get_ports led_out[3]]
#set_property PACKAGE_PIN L18     [get_ports led_out[2]]
#set_property IOSTANDARD LVCMOS25 [get_ports led_out[2]]
#set_property PACKAGE_PIN L17     [get_ports led_out[1]]
#set_property IOSTANDARD LVCMOS25 [get_ports led_out[1]]
#set_property PACKAGE_PIN K18     [get_ports led_out[0]]
#set_property IOSTANDARD LVCMOS25 [get_ports led_out[0]]

#DAC1 output pins

#DAC2 output pins
#set_property PACKAGE_PIN B17  [get_ports {D1_out_p[0]}]
#set_property PACKAGE_PIN A17  [get_ports {D1_out_n[0]}]
#set_property PACKAGE_PIN A18  [get_ports {D1_out_p[1]}]
#set_property PACKAGE_PIN A19  [get_ports {D1_out_n[1]}]
#set_property PACKAGE_PIN A13  [get_ports {D1_out_p[2]}]
#set_property PACKAGE_PIN A12  [get_ports {D1_out_n[2]}]
#set_property PACKAGE_PIN C16  [get_ports {D1_out_p[3]}]
#set_property PACKAGE_PIN B16  [get_ports {D1_out_n[3]}]
#set_property PACKAGE_PIN B15  [get_ports {D1_out_p[4]}]
#set_property PACKAGE_PIN A15  [get_ports {D1_out_n[4]}]
#set_property PACKAGE_PIN B10  [get_ports {D1_out_p[5]}]
#set_property PACKAGE_PIN A10  [get_ports {D1_out_n[5]}]
#set_property PACKAGE_PIN B12  [get_ports {D1_out_p[6]}]
#set_property PACKAGE_PIN B11  [get_ports {D1_out_n[6]}]
#set_property PACKAGE_PIN B14  [get_ports {D1_out_p[7]}]
#set_property PACKAGE_PIN A14  [get_ports {D1_out_n[7]}]
#set_property PACKAGE_PIN G12  [get_ports {D1_out_p[8]}]
#set_property PACKAGE_PIN F12  [get_ports {D1_out_n[8]}]
#set_property PACKAGE_PIN D14  [get_ports {D1_out_p[9]}]
#set_property PACKAGE_PIN D13  [get_ports {D1_out_n[9]}]
#set_property PACKAGE_PIN C12  [get_ports {D1_out_p[10]}]
#set_property PACKAGE_PIN C11  [get_ports {D1_out_n[10]}]
#set_property PACKAGE_PIN E11  [get_ports {D1_out_p[11]}]
#set_property PACKAGE_PIN D11  [get_ports {D1_out_n[11]}]
#set_property PACKAGE_PIN F9   [get_ports {D1_out_p[12]}]
#set_property PACKAGE_PIN F8   [get_ports {D1_out_n[12]}]
#set_property PACKAGE_PIN F14  [get_ports {D1_out_p[13]}]
#set_property PACKAGE_PIN F13  [get_ports {D1_out_n[13]}]
#set_property PACKAGE_PIN AF24 [get_ports {D1_out_p[14]}]
#set_property PACKAGE_PIN AF25 [get_ports {D1_out_n[14]}]
#set_property PACKAGE_PIN AD23 [get_ports {D1_out_p[15]}]
#set_property PACKAGE_PIN AD24 [get_ports {D1_out_n[15]}]

#DAC clock
#DAC DCI
#set_property PACKAGE_PIN C14 [get_ports DCI1_out_p]
#set_property PACKAGE_PIN C13 [get_ports DCI1_out_n]

#SPI IOs for DAC
#set_property PACKAGE_PIN K25 [get_ports dac_csb1]
#set_property PACKAGE_PIN K26 [get_ports dac_rst1]

#set_property IOSTANDARD LVCMOS25 [get_ports dac_csb1]
#set_property IOSTANDARD LVCMOS25 [get_ports dac_rst1]

#ADC1 input pins

#ADC2 input pins
#set_property PACKAGE_PIN AB22 [get_ports {D20_p[0]}]
#set_property PACKAGE_PIN AC22 [get_ports {D20_n[0]}]
#set_property PACKAGE_PIN AD26 [get_ports {D20_p[1]}]
#set_property PACKAGE_PIN AE26 [get_ports {D20_n[1]}]
#set_property PACKAGE_PIN U24  [get_ports {D21_p[0]}]
#set_property PACKAGE_PIN U25  [get_ports {D21_n[0]}]
#set_property PACKAGE_PIN AC23 [get_ports {D21_p[1]}]
#set_property PACKAGE_PIN AC24 [get_ports {D21_n[1]}]

#ENC input

#FR input

#set_property PACKAGE_PIN W23 [get_ports FR2_p]
#set_property PACKAGE_PIN W24 [get_ports FR2_n]

#adc DCO

#set_property PACKAGE_PIN AD25 [get_ports adc_DCO2_p]
#set_property PACKAGE_PIN AE25 [get_ports adc_DCO2_n]

#SPI IOs for ADC
#set_property PACKAGE_PIN W25  [get_ports adc_scs2]

#set_property IOSTANDARD LVCMOS25 [get_ports adc_scs2]

#Locked/unlocked LEDs

#Serial line IOs
#in (IO1P)
#clkDout (IO2P)
#trig_out


create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]
create_generated_clock -name {ADC1/LTC2195_SPI_inst/data_out_reg[4]_0} -source [get_ports clk] -divide_by 10 [get_pins ADC1/LTC2195_SPI_inst/spi_clk_reg/Q]
create_generated_clock -name {DAC0/AD_9783_SPI_inst/data_out_reg[14]_0} -source [get_ports clk] -divide_by 10 [get_pins DAC0/AD_9783_SPI_inst/spi_clk_reg/Q]
create_generated_clock -name new_param_deser/deser_clk_origin/div_clk_reg_0 -source [get_ports clk] -divide_by 1000 [get_pins new_param_deser/deser_clk_origin/div_clk_reg/Q]
create_generated_clock -name CLK_out_p -source [get_pins DAC0/ODDR_CLK/C] -divide_by 1 [get_ports CLK_out_p]
create_generated_clock -name DCI0_out_p -source [get_pins {DAC0/pins[16].ODDR_inst/C}] -divide_by 1 [get_ports DCI0_out_p]
create_generated_clock -name ENC_p -source [get_pins ADC1/ODDR_inst/C] -divide_by 1 [get_ports ENC_p]
create_clock -period 1.250 -name VIRTUAL_clk_int -waveform {0.000 0.625}
create_clock -period 100.000 -name {VIRTUAL_ADC1/LTC2195_SPI_inst/data_out_reg[4]_0} -waveform {0.000 50.000}
create_clock -period 10000.000 -name VIRTUAL_new_param_deser/deser_clk_origin/div_clk_reg_0 -waveform {0.000 5000.000}
set_input_delay -clock [get_clocks VIRTUAL_clk_int] -min -add_delay 0.000 [get_ports {D10_n[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_int] -max -add_delay 1.250 [get_ports {D10_n[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_int] -min -add_delay 0.000 [get_ports {D10_p[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_int] -max -add_delay 1.250 [get_ports {D10_p[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_int] -min -add_delay 0.000 [get_ports {D11_n[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_int] -max -add_delay 1.250 [get_ports {D11_n[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_int] -min -add_delay 0.000 [get_ports {D11_p[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_int] -max -add_delay 1.250 [get_ports {D11_p[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_int] -min -add_delay 0.000 [get_ports FR1_n]
set_input_delay -clock [get_clocks VIRTUAL_clk_int] -max -add_delay 1.250 [get_ports FR1_n]
set_input_delay -clock [get_clocks VIRTUAL_clk_int] -min -add_delay 0.000 [get_ports FR1_p]
set_input_delay -clock [get_clocks VIRTUAL_clk_int] -max -add_delay 1.250 [get_ports FR1_p]
set_input_delay -clock [get_clocks {VIRTUAL_ADC1/LTC2195_SPI_inst/data_out_reg[4]_0}] -min -add_delay 0.000 [get_ports adc_sdo]
set_input_delay -clock [get_clocks {VIRTUAL_ADC1/LTC2195_SPI_inst/data_out_reg[4]_0}] -max -add_delay 100.000 [get_ports adc_sdo]
set_input_delay -clock [get_clocks {VIRTUAL_ADC1/LTC2195_SPI_inst/data_out_reg[4]_0}] -min -add_delay 0.000 [get_ports dac_sdo]
set_input_delay -clock [get_clocks {VIRTUAL_ADC1/LTC2195_SPI_inst/data_out_reg[4]_0}] -max -add_delay 100.000 [get_ports dac_sdo]
set_input_delay -clock [get_clocks VIRTUAL_new_param_deser/deser_clk_origin/div_clk_reg_0] -min -add_delay 0.000 [get_ports serial_in]
set_input_delay -clock [get_clocks VIRTUAL_new_param_deser/deser_clk_origin/div_clk_reg_0] -max -add_delay 1000.000 [get_ports serial_in]
set_output_delay -clock [get_clocks DCI0_out_p] -clock_fall -min -add_delay 0.000 [get_ports {D0_out_n[*]}]
set_output_delay -clock [get_clocks DCI0_out_p] -clock_fall -max -add_delay 0.000 [get_ports {D0_out_n[*]}]
set_output_delay -clock [get_clocks DCI0_out_p] -min -add_delay 0.000 [get_ports {D0_out_n[*]}]
set_output_delay -clock [get_clocks DCI0_out_p] -max -add_delay 0.000 [get_ports {D0_out_n[*]}]
set_output_delay -clock [get_clocks DCI0_out_p] -clock_fall -min -add_delay 0.000 [get_ports {D0_out_p[*]}]
set_output_delay -clock [get_clocks DCI0_out_p] -clock_fall -max -add_delay 0.000 [get_ports {D0_out_p[*]}]
set_output_delay -clock [get_clocks DCI0_out_p] -min -add_delay 0.000 [get_ports {D0_out_p[*]}]
set_output_delay -clock [get_clocks DCI0_out_p] -max -add_delay 0.000 [get_ports {D0_out_p[*]}]
set_output_delay -clock [get_clocks {VIRTUAL_ADC1/LTC2195_SPI_inst/data_out_reg[4]_0}] -min -add_delay 0.000 [get_ports adc_sck]
set_output_delay -clock [get_clocks {VIRTUAL_ADC1/LTC2195_SPI_inst/data_out_reg[4]_0}] -max -add_delay 0.000 [get_ports adc_sck]
set_output_delay -clock [get_clocks {VIRTUAL_ADC1/LTC2195_SPI_inst/data_out_reg[4]_0}] -min -add_delay 0.000 [get_ports dac_sck]
set_output_delay -clock [get_clocks {VIRTUAL_ADC1/LTC2195_SPI_inst/data_out_reg[4]_0}] -max -add_delay 0.000 [get_ports dac_sck]
set_clock_groups -asynchronous -group [get_clocks clk] -group [get_clocks new_param_deser/deser_clk_origin/div_clk_reg_0]
