@echo off
docker system prune -a -f
for /f %%i in ('docker ps -a -q') do set r=%%i
docker rm -f %r%
for /f %%i in ('docker images -a -q') do set r=%%i
docker rmi -f %r%
for /f %%i in ('docker volume ls -q') do set r=%%i
docker volume rm -f %r%