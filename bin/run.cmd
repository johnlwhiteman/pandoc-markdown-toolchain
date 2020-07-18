@echo off
set DIR=%~dp0
for %%a in (%DIR:~0,-1%) do set "PDIR=%%~dpa"
call %DIR%cfg.cmd
cd %PDIR%
docker-compose run -d --name %NAME% %SERVICE% && docker container ls | findstr "%NAME%"