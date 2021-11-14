@echo off
REM **
REM   Part of winknock - github.com/scrow/winknock
REM **

if [%4]==[] goto usage

echo.
echo|set /p="Knocking %1 ports %2... "
if not exist c:\windows\temp mkdir c:\windows\temp
wget -q --tries=1 -O c:\windows\temp\knock.tmp --timeout=1 http://%1:%2
echo|set /p="%3... "
wget -q --tries=1 -O c:\windows\temp\knock.tmp --timeout=1 http://%1:%3
echo|set /p="%4... "
wget -q --tries=1 -O c:\windows\temp\knock.tmp --timeout=1 http://%1:%4
if exist c:\windows\temp\knock.tmp del c:\windows\temp\knock.tmp
echo done.
goto eof

:usage
echo Usage: %0 hostname port1 port2 port3
echo Example: %0 192.168.1.1 8001 8005 8003

:eof