
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name test_scripts -dir "C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/test_scripts/planAhead_run_3" -part xc7k160tfbg676-1
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "led_on.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {led_on.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top led_on $srcset
add_files [list {led_on.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7k160tfbg676-1
