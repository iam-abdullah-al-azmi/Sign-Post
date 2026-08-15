@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-C6UAH29" (taskkill /f /pid 16688)
if /i "%LOCALHOST%"=="DESKTOP-C6UAH29" (taskkill /f /pid 22756)

del /F cleanup-ansys-DESKTOP-C6UAH29-22756.bat
