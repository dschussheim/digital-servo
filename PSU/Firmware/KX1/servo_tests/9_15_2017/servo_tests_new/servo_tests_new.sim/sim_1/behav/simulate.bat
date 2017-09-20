@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim LBOx2_behav -key {Behavioral:sim_1:Functional:LBOx2} -tclbatch LBOx2.tcl -view C:/Users/dschussheim/Documents/GitHub/digital-servo/PSU/Firmware/KX1/servo_tests/9_15_2017/servo_tests_new/LTC2195x2_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
