@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul
title Volta version 1.6 patch

REM ==== PRELOAD SAVED COLOR ====

set "VOLTA_COLOR=0A"

if exist "%USERPROFILE%\Desktop\Volta Setup\color.txt" (
    set /p VOLTA_COLOR=<"%USERPROFILE%\Desktop\Volta Setup\color.txt"
)

color !VOLTA_COLOR!

endlocal

:start
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                 Login
echo ========================================
echo.
set /p choice=Enter password:
if "%choice%"=="ps302" goto load

(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo             Invalid option
echo ========================================
echo.
timeout /t 1 >nul
goto start

:load
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                 Loading
echo ========================================
echo.
echo Loading please wait.
timeout /t 1 >nul

(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                 Loading
echo ========================================
echo.
echo Loading please wait..
timeout /t 1 >nul

(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                 Loading
echo ========================================
echo.
echo Loading please wait...
timeout /t 1 >nul

:menu
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo 1.  System Information
echo 2.  Network Diagnostics
echo 3.  Disk Usage Information
echo 4.  Task Manager Viewer
echo 5.  Network Speed Test
echo 6.  StartUp Programs Manegment
echo 7.  System Resource Monitoring
echo 8.  Check System Uptime
echo 9.  Windows Update Check
echo 10. System Clean-Up
echo 11. Clear Browser Cache
echo 12. Mallware Scan
echo 13. Network Reset
echo 14. Open Apps
echo 15. Defragment Storage
echo 16. Commands/Hidden Commands
echo 17. About Volta
echo 18. List Of Installed Programs
echo 19. Reset
echo 20. Log out
echo 21. Exit
echo ========================================
set /p choice=Select a command (1-21):

if "%choice%"=="1" goto systeminfo
if "%choice%"=="2" goto network
if "%choice%"=="3" goto diskusage
if "%choice%"=="4" goto taskmanager
if "%choice%"=="5" goto speedtest
if "%choice%"=="6" goto manegment
if "%choice%"=="7" goto resourcemonitor
if "%choice%"=="8" goto uptime
if "%choice%"=="9" goto healthcheck
if "%choice%"=="10" goto cleanup
if "%choice%"=="11" goto browsercleanup
if "%choice%"=="12" goto malwarescan
if "%choice%"=="13" goto networkopt
if "%choice%"=="14" goto secondmenu
if "%choice%"=="15" goto defrag
if "%choice%"=="16" goto cmd
if "%choice%"=="17" goto about
if "%choice%"=="19" goto resetcmd
if "%choice%"=="20" goto start
if "%choice%"=="21" exit 
if "%choice%"=="69" goto hecks
if "%choice%"=="help" goto help2
if "%choice%"=="Help" goto help2
if "%choice%"=="setup" goto setup
if "%choice%"=="Setup" goto setup
if "%choice%"=="color" goto color
if "%choice%"=="Color" goto color
if "%choice%"=="rainbow" goto rainbow
if "%choice%"=="Rainbow" goto rainbow
if "%choice%"=="secret" goto rickroll
if "%choice%"=="Secret" goto rickroll
if "%choice%"=="bird" goto bird
if "%choice%"=="Bird" goto bird
if "%choice%"=="me hecker" goto heckssetup
if "%choice%"=="Me hecker" goto heckssetup
if "%choice%"=="Boost" goto boost
if "%choice%"=="boost" goto boost
if "%choice%"=="18" goto searchapp
if "%choice%"=="67" goto notuff
if "%choice%"=="exit" exit
if "%choice%"=="Exit" exit

(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo             Invalid option
echo ========================================
timeout /t 1 >nul
goto menu

:help2
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo            Help/Extra Info
echo ========================================
echo.
echo Still under heavy development!
echo More tutorials to be seen soon!
echo.
echo 1. Startup Tutorial
echo 2. Color Codes/Color Command logic
echo 3. Back
echo.
set /p choice=Select a command (1-3):

if "%choice%"=="1" goto tut2
if "%choice%"=="2" goto help3
if "%choice%"=="3" goto menu

(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo             Invalid option
echo ========================================
timeout /t 1 >nul
goto help2

:manegment
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo       Start Up Programs Manegment
echo ========================================
echo 1. List Of Startup Programs
echo 2. Disable Startup Program
echo 3. Enable Startup Program
echo 4. Startup Tutorial
echo 5. Back
echo ========================================
set /p choice=Select a command (1-5):

if "%choice%"=="1" goto list
if "%choice%"=="2" goto disable
if "%choice%"=="3" goto enable
if "%choice%"=="4" goto tut
if "%choice%"=="5" goto menu

(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo             Invalid option
echo ========================================
timeout /t 1 >nul
goto manegment

:tut2
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo           Startup Tutorial
echo ========================================
echo.
echo ========================================
echo     Enable Startup Program Tutorial
echo ========================================
echo To get a program's path you need to open
echo the location of the program (open file location)
echo if it has a shortcut simbol or it says shortcut,
echo if it was a shortcut, right click then click
echo open file location and then you should see the
echo location. It should look smt like this:
echo D:\Games\Epic Games\Launcher\Portal\Binaries\EpicGamesLauncher.exe
echo and you need to put the type of file next to the program:
echo EpicGamesLauncher(.exe)
echo.
echo ========================================
echo     Disable Startup Program Tutorial
echo ========================================
echo.
echo To disable a program just type the name:
echo EpicGamesLauncher.
echo.
pause
goto help2

:tut
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo           Startup Tutorial
echo ========================================
echo.
echo ========================================
echo     Enable Startup Program Tutorial
echo ========================================
echo To get a program's path you need to open
echo the location of the program (open file location)
echo if it has a shortcut simbol or it says shortcut,
echo if it was a shortcut, right click then click
echo open file location and then you should see the
echo location. It should look smt like this:
echo D:\Games\Epic Games\Launcher\Portal\Binaries\EpicGamesLauncher.exe
echo and you need to put the type of file next to the program:
echo EpicGamesLauncher(.exe)
echo.
echo ========================================
echo     Disable Startup Program Tutorial
echo ========================================
echo.
echo To disable a program just type the name:
echo EpicGamesLauncher.
echo.
pause
goto manegment

:list
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo        List Of Startup Programs
echo ========================================
echo.
echo ========================================
echo         Current Machine Startup
echo ========================================
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
echo.
echo ========================================
echo         Local Machine Startup
echo ========================================
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Run"
echo.
pause
goto manegment

:disable
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo         Disable Startup Program
echo ========================================
echo.
set /p programName=Enter the name of the startup program to disable: 

:: Check if input is empty
if "%programName%"=="" (
    cls
    echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
    echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
    echo ██║   ██║██║   ██║██║     ██║   ███████║
    echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
    echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
    echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝
    echo ========================================
    echo          Invalid Program Name
    echo ========================================
    echo.
    echo Uh oh, it looks like you have not included the name of the program
    echo.
    pause
    goto manegment
)

:: Try to delete the program from the registry and suppress output
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "%programName%" /f >nul 2>&1

:: Check if it succeeded
if %errorlevel%==0 (
    echo "%programName%" has been successfully removed from startup.
) else (
    cls
    echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
    echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
    echo ██║   ██║██║   ██║██║     ██║   ███████║
    echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
    echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
    echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝
    echo ========================================
    echo          Invalid Program Name
    echo ========================================
    echo.
    echo Uh oh, it looks like %programName% is not found
    echo.
    pause
    goto manegment
)

echo.
pause
goto manegment

:enable
cls
echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝
echo ========================================
echo        Enable Startup Program
echo ========================================
echo.

:: Ask for the path
set /p programFullPath=Enter the full path to the executable: 

:: Check for empty input
if "%programFullPath%"=="" (
    cls
    echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
    echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
    echo ██║   ██║██║   ██║██║     ██║   ███████║
    echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
    echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
    echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝
    echo ========================================
    echo         Invalid Program Path
    echo ========================================
    echo.
    echo Uh oh, it looks like you have not included the path of the program
echo.
    pause
    goto enable
)

:: Check if file exists
if not exist "%programFullPath%" (
    cls
    echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
    echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
    echo ██║   ██║██║   ██║██║     ██║   ███████║
    echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
    echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
    echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝
    echo ========================================
    echo         Invalid Program Path
    echo ========================================
    echo.
    echo Uh oh, it looks like "%programFullPath%" does not exist or is not found
echo.
    pause
    goto manegment
)

:: Add to startup using the path itself as the registry name
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "%programFullPath%" /t REG_SZ /d "\"%programFullPath%\"" /f >nul 2>&1

cls
echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝
echo ========================================
echo        Enable Startup Program
echo ========================================
echo.

if %errorlevel%==0 (
    echo "%programFullPath%" has been successfully added to startup.
) else (
    echo Could not add "%programFullPath%" to startup.
)

pause
goto manegment

:list
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo            Current Startup
echo ========================================
echo.
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
echo.
echo ========================================
echo         Local Machine Startup
echo ========================================
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Run"
echo.
pause
goto manegment

:notuff
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo         Your not tough lil bro
echo ========================================
timeout /t 2 >nul
goto menu

:boost
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                  Boost
echo ========================================
echo.
:: ----- ADMIN CHECK -----
net session >nul 2>&1
if errorlevel 1 (
    echo Administrator privileges required.
    echo Please run this script as Administrator.
    echo.
    pause
    goto menu
)
echo Defragmenting storage C,D and others...
defrag C: /O /H /V
timeout /t 1 >nul
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                  Boost
echo ========================================
echo.
echo Cleaning up temporary files...
echo.
del /q /f /s %temp%\*
timeout /t 1 >nul
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                  Boost
echo ========================================
echo.
echo Removing Google Chrome cache...
echo.
del /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*"
echo Browser cache cleared.
timeout /t 1 >nul
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                  Boost
echo ========================================
echo.
echo Cleaning the disks...
cleanmgr /sagerun:1
timeout /t 1 >nul
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                  Boost
echo ========================================
echo.
echo Boost complete
timeout /t 1 >nul
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                  Boost
echo ========================================
echo.
set /p choice=Would you like to reset your pc for better performance (Y,N): 

if "%choice%"=="Y" goto reset
if "%choice%"=="y" goto reset
if "%choice%"=="n" goto cansel4
if "%choice%"=="N" goto cansel4

:cansel4
set /p choice=Are you sure(Y,N):

if "%choice%"=="N" goto reset
if "%choice%"=="n" goto reset
if "%choice%"=="y" goto menu
if "%choice%"=="Y" goto menu

:reset
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                 Boost
echo ========================================
echo.
echo Reseting.
timeout /t 1 >nul
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                 Boost
echo ========================================
echo.
echo Reseting..
timeout /t 1 >nul
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                 Boost
echo ========================================
echo.
echo Reseting...
shutdown /r /t 0
pause

:heckssetup
cls
goto heckerstuff

:heckerstuff
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
goto heckerstuff

:bird
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                 Bird
echo ========================================
echo.
start cmd /k "curl parrot.live"
echo Opened a dancing bird in another window, hope you enojoy it :)
echo.
pause
goto menu

:rickroll
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo               Rick Roll
echo ========================================
echo.
start cmd /k "curl ASCII.live/can-you-hear-me"
echo Opened a rick roll window. How convidient
echo.
pause
goto menu

:rainbow
echo oooo flashy flashy :O
goto loop

:loop
set /a "randcolor=%random% %% 16"
color %randcolor%
timeout /t 1 >nul
goto loop

:color
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                 Color
echo ========================================
echo.
echo Type "color" followed by a color code to change the text color (color 0A).
echo For a list of codes and format explanation type "help".
echo To go back, type "back".
set /p "input=Enter your command: "

if /i "%input%"=="back" goto menu
if /i "%input%"=="help" goto help

for /f "tokens=1,2" %%a in ("%input%") do (
    if /i "%%a"=="color" (
        if exist "%USERPROFILE%\Desktop\Volta Setup\" (
            color %%b
            echo %%b>"%USERPROFILE%\Desktop\Volta Setup\color.txt"
            goto menu
        ) else (
:vsnf
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
            echo ========================================
            echo          Volta Setup Not Found
            echo ========================================
            echo.
            echo Volta Setup folder missing
            echo.
            set /p "Do you want to get redirected to the setup(Y,N):"

            if /i "%input%"=="y" goto setup
            if /i "%input%"=="Y" goto setup
            if /i "%input%"=="N" goto color
            if /i "%input%"=="n" goto color
            
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo             Invalid option
echo ========================================
timeout /t 1 >nul
goto vsnf
            
        )
    )
)

:help
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo              Color Codes:
echo ========================================
echo.
    echo 0 = Black       8 = Gray
    echo 1 = Blue        9 = Light Blue
    echo 2 = Green       A = Light Green
    echo 3 = Aqua        B = Light Aqua
    echo 4 = Red         C = Light Red
    echo 5 = Purple      D = Light Purple
    echo 6 = Yellow      E = Light Yellow
    echo 7 = White       F = Bright White
    echo.
echo ========================================
echo          Color Command Logic
echo ========================================
echo.
echo Your first letter/number will be the backround color
echo in this case for default mode 0(black) and the
echo second letter/number will be the text A(Light Green).
echo To type the color code you type firstly the word
echo "color" then after that you type your color code,
echo but it must be together, not like this "color 0 A".
echo It should look something like this:
echo "color 0A"
echo.
    pause
    goto color

:help3
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo              Color Codes:
echo ========================================
echo.
    echo 0 = Black       8 = Gray
    echo 1 = Blue        9 = Light Blue
    echo 2 = Green       A = Light Green
    echo 3 = Aqua        B = Light Aqua
    echo 4 = Red         C = Light Red
    echo 5 = Purple      D = Light Purple
    echo 6 = Yellow      E = Light Yellow
    echo 7 = White       F = Bright White
    echo.
echo ========================================
echo          Color Command Logic
echo ========================================
echo.
echo Your first letter/number will be the backround color
echo in this case for default mode 0(black) and the
echo second letter/number will be the text A(Light Green).
echo To type the color code you type firstly the word
echo "color" then after that you type your color code,
echo but it must be together, not like this "color 0 A".
echo It should look something like this:
echo "color 0A"
echo.
    pause
    goto help2


:hecks
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
timeout /t 2 /nobreak > nul
    echo [INFO] Connecting to the server...
    timeout /t 1 > nul
    echo [INFO] Retrieving data...
    timeout /t 1 > nul
    echo [INFO] Bypassing firewall...
    timeout /t 1 > nul
    echo [INFO] Accessing database...
    timeout /t 1 > nul
    echo [INFO] Downloading files... 
timeout /t 1 > nul
    echo [INFO] Installing malware...
timeout /t 5 > nul
echo.
echo You haven't gotten scared already, well I give up, this is a joke
echo.
timeout /t 2 > nul
echo Here is your precious "Press any key to continue . . ."
pause
goto menu

:about
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo              About Volta
echo ========================================
echo.
echo Volta is created to help the user and make it easier.
echo And no if you type 69 and it says that it's instaling a virus it's not it's just a prank :)
echo Current development of Volta is covered by Bbloks(me), and access to beta or patch versions is 
echo strictly locked by the password you will get from me.
echo To use Volta or any of the code you need to ask me personaly for my agreement.
echo Soon there will be setup tutorials on my channel "Bbloks_rblx".
echo If you are experiencing lag reset your pc if not, delete Volta and restart.
echo.
echo ========================================
echo                 Info
echo ========================================
echo.
echo Current version: 1.6 patch
echo Current version creation date: 23.12.2025
echo Last version update date: 25.12.2025
echo Current Volta developer: Bbloks
echo.
echo ========================================
echo               Update Log
echo ========================================
echo.
echo 1. Adapted things to the new windows update that includes the removal of "wmic".
echo 2. Small UI update
echo  Added spaces here and there
echo  Reworked the setup logic
echo 3. Updated "About Volta"
echo  Added Update Log
echo  Changed the Info
echo 4. Changed the functionality of some features
echo 5. Added a color saving function
echo 6. Added "StartUp Programs Manegment" (on num 6 prev "Disk Cleaner" now one with "System Clean-Up", num 10)
echo  The sub-menu contains:
echo    List Of Startup Programs
echo    Disable Startup Program
echo    Enable Startup Program
echo 7. Added a few tutorials/more infos
echo  Color Text Formating Tutorial/Info
echo  Enabling/Disabling Tutorial/Info
echo 8. Changed the functionality of "Windows Update Check"(num 9) and "Mallware Scan"(num 12)
echo 9. Added a "Help/Extra Info"(found by typing "help") tab helping the user find tutorials more easily
echo  This sub-menu contains:
echo   Color Codes/Color Command Logic
echo   Startup Tutorial
echo  (Take this menu with a few grains of salt, because it's still under heavy development, thank you!)
echo 10. A lot of bug fixes and others...
echo.
pause
goto menu

pause
goto menu

:resetcmd
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                  Reset
echo ========================================
echo.
echo Resetting the Volta...
timeout /t 1 /nobreak > nul
set scriptPath=%~f0
start "" "%scriptPath%"
exit

:defrag
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo           Defragment storage
echo ========================================
:: ----- ADMIN CHECK -----
net session >nul 2>&1
if errorlevel 1 (
echo.
    echo Administrator privileges required.
    echo Please run this script as Administrator.
    echo.
    pause
    goto menu
)
echo.
echo Defragmenting your hard drive...
defrag C: /O /H /V
echo.
echo Defragmentation complete!
pause
goto menu

:cmd
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                Commands
echo ========================================
echo.
echo 1.  System Information
echo 2.  Network Diagnostics
echo 3.  Disk Usage Information
echo 4.  Task Manager Viewer
echo 5.  Network Speed Test
echo 6.  StartUp Programs Manegment
echo 7.  System Resource Monitoring
echo 8.  Check System Uptime
echo 9.  Windows Update Check
echo 10. System Clean-Up
echo 11. Clear Browser Cache
echo 12. Mallware Scan
echo 13. Network Reset
echo 14. Open Apps
echo 15. Defragment Storage
echo 16. Commands
echo 17. About Volta
echo 18. List Of Installed Programs
echo 19. Reset
echo 20. Log out
echo 21. Exit
echo.
echo ========================================
echo             Unique commands
echo ========================================
echo.
echo DISCLAIMER:YOU HAVE TO TYPE THESE COMMANDS TO RUN THEM(e.g., setup)
echo 1. Setup (Setup Volta)
echo 2. Color (Customize your Volta)
echo 3. Bird (Just a dancing rainbow bird)
echo 4. Me hecker (Runs a matrix rain)
echo 5. Boost (Runs commands for boosting)
echo 6. Exit (21 alternative)
echo 7. Help (All of the  tutorials into one)
echo 7. find it out yourself
echo 8. another *secret* one
echo.
pause
goto menu

:setup
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo                 Setup
echo ========================================
echo.
set /p choice="Are you sure you want to continue? This will add a folder named "Volta Setup"(Y,N):"

If "%choice%"=="N" goto cansel2
if "%choice%"=="Y" goto setupprcs
If "%choice%"=="n" goto cansel2
if "%choice%"=="y" goto setupprcs

(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo             Invalid option
echo ========================================
timeout /t 1 >nul
goto setup

:cansel2
echo.
set /p choice="Are you sure you want to cansel, you will not be able to use the full potentual of Volta continue(Y,N):"
if "%choice%"=="Y" goto menu
if "%choice%"=="N" goto setup
if "%choice%"=="y" goto menu
if "%choice%"=="n" goto setup

(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo             Invalid option
echo ========================================
timeout /t 1 >nul
goto cansel2

:setupprcs
echo.
echo Loading, please wait!
:setupprcs2
echo.
set folderPath=%USERPROFILE%\Desktop\Volta Setup
set shortcutPath=%folderPath%\Run.lnk
if exist "%folderPath%" (
    echo Folder "Volta Setup" already exists on the Desktop.
) else (
    mkdir "%folderPath%"
)
echo.
set /p choice="Please put a shortcut of run (to open win+r) into volta setup folder to use full potentual of volta!(Y,N):"

If "%choice%"=="N" goto cansel
If "%choice%"=="Y" goto finssetup
If "%choice%"=="n" goto cansel
If "%choice%"=="y" goto finssetup

echo Invalid option
goto setupprcs2

:cansel
echo.
:cansel3
set /p choice="Are you sure you want to cansel, you will not be able to use the full potentual of Volta continue(Y,N):"
if "%choice%"=="Y" goto menu
if "%choice%"=="N" goto setup
if "%choice%"=="y" goto menu
if "%choice%"=="n" goto setup

echo Invalid option
goto cansel

:finssetup
echo.
set /p choice="When ready press enter!"
if "%choice%"=="" goto check
goto check

:check
set "folderPath=%USERPROFILE%\Desktop\Volta Setup"
set "shortcutName=run.lnk"

if exist "%folderPath%\%shortcutName%" (
echo.
set /p choice="Setup completed"
if "%choice%"=="" goto menu
goto menu

) else (
echo.
set /p choice ="Please put "run" in the Volta Setup folder"
if "%choice%"=="" goto check
goto check
)

:secondmenu
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo               Open apps
echo ========================================
echo 1. Open Run
echo 2. Open File Explorer
echo 3. Return
echo ========================================
set /p choice="Choose a command(1-3): "

if "%choice%"=="1" goto openrun
if "%choice%"=="2" goto openexplorer
if "%choice%"=="3" goto menu

(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo             Invalid option
echo ========================================
pause 
goto secondmenu

:openrun
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo              Opening Run
echo ========================================
echo.
start "" "%USERPROFILE%/Desktop/Volta Setup/Run.lnk"
echo Oppened Run
pause
goto secondmenu

:openexplorer
(cls & echo 
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo         Opening File Explorer
echo ========================================
echo.
start explorer
echo Oppened File Explorer
echo.
pause
goto secondmenu


:systeminfo
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo           System Information
echo ========================================
echo.
systeminfo
echo.
pause
goto menu

:network
(cls & echo 
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo          Network Diagnostics
echo ========================================
echo.
ipconfig /all
pause
echo.
goto menu


:taskmanager
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo         Task Manager Viewer
echo ========================================
echo.
tasklist
echo.
pause
goto menu

:speedtest
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo           Network Speed Test
echo ========================================
echo.
set /p website="Enter the website to test: "
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo           Network Speed Test
echo ========================================
echo.
set /p packets="Enter the number of packets to send: "
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo          Network Speed Test
echo ========================================
echo.
set /p size="Enter packet size in bytes (max 65500): "

(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo          Network Speed Test
echo ========================================
echo.
echo Connecting...
echo Pinging the website...
ping -n %packets% -l %size% %website%
echo.
pause
goto menu

:resourcemonitor
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo        System Resource Monitor
echo ========================================
echo.

echo ========================================
echo              CPU Info
echo ========================================
echo.
powershell -NoProfile -Command "try { $cpu=Get-CimInstance Win32_Processor; Write-Host ('CPU: ' + $cpu.Name); Write-Host ('CPU Usage: ' + $cpu.LoadPercentage + '%') } catch { Write-Host 'CPU info unavailable' }"
echo.
pause
goto menu

::uptime
cls
echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝
echo ========================================
echo          Check System Uptime
echo ========================================
echo.

net statistics workstation | find "Statistics since"

echo.
pause
goto menu


:: ==============================
:: WINDOWS UPDATE CHECK
:: ==============================
:healthcheck
cls
echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝
echo ========================================
echo          Windows Update Utility
echo ========================================
echo.

:: ----- ADMIN CHECK -----
net session >nul 2>&1
if errorlevel 1 (
    echo Administrator privileges required.
    echo Please run this script as Administrator.
    echo.
    pause
    goto menu
)

:: ----- START UPDATE SCAN -----
echo Checking for Windows updates...
echo Please wait...
echo.

UsoClient StartScan >nul 2>&1
UsoClient RefreshSettings >nul 2>&1

echo Update scan started.
echo.

:: ----- USER CHOICE -----
:updq
set /p choice=Open Windows Update settings(Y/N): 

if /I "%choice%"=="Y" goto openupd
if /I "%choice%"=="y" goto openupd
if /I "%choice%"=="N" goto menu
if /I "%choice%"=="n" goto menu

echo.
echo Invalid choice.
echo.
goto updq

:openupd
start ms-settings:windowsupdate

echo.
echo You can monitor progress in:
echo Settings ^> Windows Update
echo.
pause
goto menu

:cleanup
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo            System Clean-Up
echo ========================================
echo.
echo Cleaning up system...
echo.
cleanmgr /sagerun:1
del /q /f /s %temp%\*
echo.
echo System sucesesfuly cleaned
echo.
pause
goto menu

:browsercleanup
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo            Browser Cleanup
echo ========================================
echo.
echo Clearing browser cache...
echo.
del /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*"
echo Browser cache cleared.
echo.
pause
goto menu

:malwarescan
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo              Malware Scan
echo ========================================
echo.
:: ----- ADMIN CHECK -----
net session >nul 2>&1
if errorlevel 1 (
    echo Administrator privileges required.
    echo Please run this script as Administrator.
    echo.
    pause
    goto menu
)

(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo              Malware Scan
echo ========================================
echo.
:: ===== Defender path check =====
set DEFENDER="%ProgramFiles%\Windows Defender\MpCmdRun.exe"
if not exist %DEFENDER% (
    echo Windows Defender not found!
    echo Make sure Microsoft Defender is installed and enabled.
echo.
    pause
    goto menu
)

:: ===== Log file =====
set LOGFILE=%~dp0malware_scan_%DATE:~-4%%DATE:~4,2%%DATE:~7,2%_%TIME:~0,2%%TIME:~3,2%.log
set LOGFILE=%LOGFILE: =0%

:: ===== Update signatures =====
echo Updating malware definitions...
%DEFENDER% -SignatureUpdate >> "%LOGFILE%" 2>&1
echo Done.
echo.

:: ===== Scan choice =====
echo Select scan type:
echo 1. Quick Scan (recommended)
echo 2. Full Scan (slow)
choice /c 12 /n
echo.

if errorlevel 2 (
    echo Starting FULL scan...
    %DEFENDER% -Scan -ScanType 2 >> "%LOGFILE%" 2>&1
) else (
    echo Starting QUICK scan...
    %DEFENDER% -Scan -ScanType 1 >> "%LOGFILE%" 2>&1
)

echo.
echo Scan completed.
echo Log saved to:
echo %LOGFILE%
echo.
pause
goto menu


:networkopt
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo             Network Reset
echo ========================================
echo.
echo Resetting network adapter...
ipconfig /release
ipconfig /renew
echo Network adapter reset complete.
pause
goto menu

:diskusage
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo         Disk Usage Information
echo ========================================
echo.

powershell -NoProfile -Command "Get-CimInstance Win32_LogicalDisk -Filter 'DriveType=3' | Select-Object DeviceID,FreeSpace,Size | Format-Table -AutoSize"

echo.
echo ========================================
echo            RAM Information
echo ========================================

powershell -NoProfile -Command "$os=Get-CimInstance Win32_OperatingSystem; Write-Host ('Free Physical Memory : ' + $os.FreePhysicalMemory); Write-Host ('Total System Memory  : ' + $os.TotalVisibleMemorySize)"

echo.
pause
goto menu




:searchapp
(cls & echo ██╗   ██╗ ██████╗ ██╗  ████████╗ █████╗ 
echo ██║   ██║██╔═══██╗██║  ╚══██╔══╝██╔══██╗
echo ██║   ██║██║   ██║██║     ██║   ███████║
echo ╚██╗ ██╔╝██║   ██║██║     ██║   ██╔══██║
echo  ╚████╔╝ ╚██████╔╝███████╗██║   ██║  ██║
echo   ╚═══╝   ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝)
echo ========================================
echo        List Of Installed Programs
echo ========================================
echo.
echo Retrieving full list of installed programs...
powershell "Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*,HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName,DisplayVersion | Where-Object { $_.DisplayName } | Sort-Object DisplayName"
pause
goto menu