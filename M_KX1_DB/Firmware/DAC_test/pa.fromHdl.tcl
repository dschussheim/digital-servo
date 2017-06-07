
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name DAC_test -dir "C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/DAC_test/planAhead_run_1" -part xc7k160tfbg676-1
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "DAC_Sweep_Test.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {clk_div.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {AD9783.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {DAC_Sweep_Test.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top DAC_Sweep_Test $srcset
add_files [list {DAC_Sweep_Test.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7k160tfbg676-1
