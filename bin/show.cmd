@echo off
set DIR=%~dp0
call %DIR%cfg.cmd
echo.
echo IMAGES
docker image ls -a | findstr "%NAME%"
echo.
echo CONTAINERS
docker container ls -a | findstr "%NAME%"
echo.