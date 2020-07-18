@echo off
set DIR=%~dp0
call %DIR%cfg.cmd
for /f %%i in ('docker container ls -a ^| findstr "%NAME%"') do set r=%%i
if not "" == "%r%" docker rm -f %NAME%
for /f %%i in ('docker image ls -a ^| findstr "%NAME%"') do set r=%%i
if not "" == "%r%" docker rmi -f %NAME%