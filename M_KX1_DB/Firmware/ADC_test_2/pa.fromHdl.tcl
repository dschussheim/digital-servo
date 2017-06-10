
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ADC_test_2 -dir "C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_test_2/planAhead_run_2" -part xc7k160tfbg676-1
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ADC_test.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../ADC_test/SPI.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../DAC_test/clk_div.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../ADC_test/LTC2195.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../ADC_test/ADC_test.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top ADC_test $srcset
add_files [list {ADC_test.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7k160tfbg676-1
