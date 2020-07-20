@echo off
set DIR=%~dp0
call %DIR%cfg.cmd
set argc=0
for %%i in (%*) do set /A argc += 1
set r=N/A

if "%argc%" == "3" (goto cleanAll) else (goto checkArg)

:checkArg
    if not "%argc%" == "0" (goto:eof)

SETLOCAL

:cleanAll
    for /f %%a in ('%DIR%containers all') do set r=%%a
    if not "N/A" == "%r%" (echo Removing ALL containers %r%)
    if not "N/A" == "%r%" (for /f %%b in ('docker ps -qa') do set r=%%b)
    if not "N/A" == "%r%" (docker rm -f %r%)
    for /f %%c in ('%DIR%images all') do set r=%%c
    if not "N/A" == "%r%" (echo Removing ALL images %r%)
    if not "N/A" == "%r%" (for /f %%d in ('docker images -qa') do set r=%%d)
    if not "N/A" == "%r%" (docker rmi -f %r%)
    goto:eof

:cleanApp:
    for /f %%a in ('%DIR%containers') do set r=%%a
    if not "N/A" == "%r%" (echo Removing containers %r%) && (docker rm -f %r%)
    for /f %%b in ('%DIR%images') do set r=%%b
    if not "N/A" == "%r%" (echo Removing images %r%) && (docker rmi -f %r%)
    goto:eof

ENDLOCAL