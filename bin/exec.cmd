@echo off
set DIR=%~dp0
call %DIR%cfg.cmd
docker exec -it %NAME% bash