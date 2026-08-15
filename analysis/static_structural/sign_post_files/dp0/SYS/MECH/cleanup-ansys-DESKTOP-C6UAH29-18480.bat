@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-C6UAH29" (taskkill /f /pid 3432)
if /i "%LOCALHOST%"=="DESKTOP-C6UAH29" (taskkill /f /pid 18480)

del /F cleanup-ansys-DESKTOP-C6UAH29-18480.bat
