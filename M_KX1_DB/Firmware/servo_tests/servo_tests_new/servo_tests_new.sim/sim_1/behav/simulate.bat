@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim LTC2195x2_tb_behav -key {Behavioral:sim_1:Functional:LTC2195x2_tb} -tclbatch LTC2195x2_tb.tcl -view C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/servo_tests/servo_tests_new/LTC2195x2_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
