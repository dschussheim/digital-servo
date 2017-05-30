
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name test_scripts -dir "C:/Users/dschussheim/Desktop/M_KX1_DB/Firmware/test_scripts/planAhead_run_5" -part xc7k160tfbg676-1
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/dschussheim/Desktop/M_KX1_DB/Firmware/test_scripts/led_on.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/dschussheim/Desktop/M_KX1_DB/Firmware/test_scripts} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "led_on.ucf" [current_fileset -constrset]
add_files [list {led_on.ucf}] -fileset [get_property constrset [current_run]]
link_design
