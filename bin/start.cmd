@echo off
set DIR=%~dp0
call %DIR%cfg.cmd
docker start %NAME% && docker container ls | findstr "%NAME%"