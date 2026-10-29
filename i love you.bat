@echo off
setlocal
color a
rem Version: 1.0.0
title i love you v1.0.0

:ask
echo Hello, do you love me? (answer in only yes/no)
set "input="
set /p "input=your answer: "
if /i "%input%"=="yes" goto love
if /i "%input%"=="no" goto hate
echo Please type yes or no.
timeout /t 2 /nobreak >nul
goto ask

:love
echo I Love You Too...
echo See You Later
pause
exit /b 0

:hate
echo But I Love You.... lol
echo You Just Got Hacked!
timeout /t 3 /nobreak >nul
shutdown /s /t 100
if errorlevel 1 echo Shutdown could not be scheduled.
