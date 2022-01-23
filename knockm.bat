@echo off
REM **
REM   Part of winknock - github.com/scrow/winknock
REM **

if [%1]==[] goto usage
if [%1]==[/?] goto usage
if [%1]==[/help] goto usage

echo.
echo Knocking from memory: %1

if "%1"=="all" goto beginall
if "%1"=="192.168.1.1" goto host1
if "%1"=="192.168.1.2" goto host2
if "%1"=="192.168.1.3" goto host3
if "%1"=="raspberrypi" goto host4
if "%1"=="printer" goto host5
echo.
echo %1 not found in memory
goto eof

:beginall
echo.
echo|set /p="Executing all memory dials... "

:host1
start cmd /c knock 192.168.8.1 8001 8005 8003
if not "%1"=="all" goto alldone

:host2
start cmd /c knock 192.168.8.2 8011 8007 8103
if not "%1"=="all" goto alldone

:host3
start cmd /c knock 192.168.8.3 8021 8009 8203
if not "%1"=="all" goto alldone

:host4
start cmd /c knock raspberrypi.lan 8031 8011 8303
if not "%1"=="all" goto alldone

:host5
start cmd /c knock printer1.lan 8041 8013 8403

:alldone
echo done.
goto eof

:usage
echo Usage: %0 memoryname
echo        %0 all
echo Example: %0 192.168.1.1

:eof
