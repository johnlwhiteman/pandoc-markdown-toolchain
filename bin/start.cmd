@echo off
set DIR=%~dp0
call %DIR%cfg.cmd
set r=N/A

for /f %%a in ('%DIR%containers all') do set r=%%a
if not "N/A" == "%r%" (docker start %NAME%) && (%DIR%containers all)