@echo off
set DIR=%~dp0
call %DIR%cfg.cmd
set argc=0
for %%i in (%*) do set /A argc += 1
set r=N/A

if "%argc%" == "0" (goto showApp) else (goto showAll)

SETLOCAL

:showApp
    for /f %%a in ('docker image ls -a ^| findstr "%NAME%"') do set r=%%a
    if not "" == "%r%" (goto showIds) else (echo N/A)
    goto:eof

:showAll
    for /f %%b in ('docker image ls -qa') do set r=%%b
    if not "" == "%r%" (docker image ls -qa) else (echo N/A)
    goto:eof

:showIds
    for /f "tokens=3" %%c in ('docker image ls -a ^| findstr "%NAME%"') do echo %%c
    goto:eof

ENDLOCAL