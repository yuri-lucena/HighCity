@echo off
color 0c
echo -
echo DELETANDO  A PASTA CACHE...
echo -
rd /s /q "cache"
timeout 5
test&cls
echo ===-------------------------------===
echo     Developed By Berlim
echo     Chama no xesque
echo ===-------------------------------===

pause
start ..\build\FXServer.exe +exec zirix.cfg +set onesync_enableInfinity 1
exit