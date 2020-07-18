@echo off
set DIR=%~dp0
call %DIR%cfg.cmd
docker stop %NAME% && docker container ls | findstr "%NAME%"