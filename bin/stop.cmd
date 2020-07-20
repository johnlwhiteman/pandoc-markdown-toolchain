@echo off
set DIR=%~dp0
call %DIR%cfg.cmd
set r=N/A

for /f %%a in ('%DIR%containers all') do set r=%%a
if not "N/A" == "%r%" (echo Stopping container %r%)
if not "N/A" == "%r%" (docker stop %NAME%) && (%DIR%containers all)