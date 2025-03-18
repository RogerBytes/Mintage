@echo off
CD /d %~dp0

echo.
echo Microsoft Visual C++ All-In-One Runtimes by W1zzard @ TechPowerUp
echo https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/
echo.
echo Installing runtime packages...

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

echo 2005...
start /wait vcredist2005_x86.exe /q

echo 2008...
start /wait vcredist2008_x86.exe /qb

echo 2010...
start /wait vcredist2010_x86.exe /passive /norestart

echo 2012...
start /wait vcredist2012_x86.exe /passive /norestart

echo 2013...
start /wait vcredist2013_x86.exe /passive /norestart

echo 2015 - 2022...
start /wait vcredist2015-2022_x86.exe /passive /norestart

echo .NET Desktop Runtime...
start /wait windowsdesktop-runtime-8.0.8-win-x86.exe /passive /norestart

echo .oalinst..
start /wait oalinst.exe /passive /norestart

goto END

:X64

echo 2005...
start /wait vcredist2005_x86.exe /q
start /wait vcredist2005_x64.exe /q

echo 2008...
start /wait vcredist2008_x86.exe /qb
start /wait vcredist2008_x64.exe /qb

echo 2010...
start /wait vcredist2010_x86.exe /passive /norestart
start /wait vcredist2010_x64.exe /passive /norestart

echo 2012...
start /wait vcredist2012_x86.exe /passive /norestart
start /wait vcredist2012_x64.exe /passive /norestart

echo 2013...
start /wait vcredist2013_x86.exe /passive /norestart
start /wait vcredist2013_x64.exe /passive /norestart

echo 2015 - 2022...
start /wait vcredist2015-2022_x86.exe /passive /norestart
start /wait vcredist2015-2022_x64.exe /passive /norestart

echo .NET Desktop Runtime...
start /wait windowsdesktop-runtime-8.0.8-win-x86.exe /passive /norestart
start /wait windowsdesktop-runtime-8.0.8-win-x64.exe /passive /norestart

echo .oalinst..
start /wait oalinst.exe /passive /norestart

goto END

:END

echo.
echo Installation completed successfully

exit
