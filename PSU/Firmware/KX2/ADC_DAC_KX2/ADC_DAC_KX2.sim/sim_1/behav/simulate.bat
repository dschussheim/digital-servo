@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim LTC2195x2delay_behav -key {Behavioral:sim_1:Functional:LTC2195x2delay} -tclbatch LTC2195x2delay.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
