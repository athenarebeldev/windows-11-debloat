@echo off
setlocal
color 0F

:: =================================================================
::  just_use_linux_bruh.bat v1.1 (Tweaked Cortana & Widget)
:: =================================================================


set "SCRIPT_NAME=just_use_linux_bruh"
set "VERSION=1.1"

set "REG_KEY_WIN_COpilot=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot"
set "REG_KEY_EDGE_COpilot=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Edge"
set "REG_KEY_CONSUMER=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent"
set "REG_KEY_ONEDRIVE=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\OneDrive"
set "REG_KEY_WIDGETS=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Dsh"
set "REG_KEY_CORTANA=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
set "REG_KEY_ADS=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo"
set "REG_KEY_TELEMETRY=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection"

set "REG_VAL_WIN_COpilot=TurnOffWindowsCopilot"
set "REG_VAL_EDGE_COpilot=CopilotEnabled"
set "REG_VAL_CONSUMER=DisableWindowsConsumerFeatures"
set "REG_VAL_ONEDRIVE=DisableFileSyncNGSC"
set "REG_VAL_WIDGETS=AllowNewsAndInterests"
set "REG_VAL_CORTANA=AllowCortana"
set "REG_VAL_ADS=Enabled"
set "REG_VAL_TELEMETRY=AllowTelemetry"

:MAIN_MENU
cls
powershell -Command "Write-Host -ForegroundColor Yellow '    .--. '"
powershell -Command "Write-Host -ForegroundColor Yellow '   |o_o |'"
powershell -Command "Write-Host -ForegroundColor Yellow '   |:_/ |'"
powershell -Command "Write-Host -ForegroundColor Yellow '  //   \ \ '"
powershell -Command "Write-Host -ForegroundColor Yellow ' (|     | )'"
powershell -Command "Write-Host -ForegroundColor Yellow ' / \_   _/\ '"
powershell -Command "Write-Host -ForegroundColor Yellow ' \___)=(___/'"
echo.
powershell -Command "Write-Host -ForegroundColor Yellow '================================================================='"
powershell -Command "Write-Host -ForegroundColor Yellow ' %SCRIPT_NAME% v%VERSION%'"
powershell -Command "Write-Host -ForegroundColor Yellow '================================================================='"
echo.
echo  Welcome! This utility helps you manage common Windows settings.
echo  Please run this script as an Administrator to apply changes.
echo.
powershell -Command "Write-Host -ForegroundColor Yellow '------------------------- MAIN MENU ----------------------------'"
echo.
powershell -Command "Write-Host -ForegroundColor Cyan ' [1] Copilot Settings (Turn the AI Assistant On/Off)'"
powershell -Command "Write-Host -ForegroundColor Cyan ' [2] System Debloat (Disable ads, telemetry, and unwanted apps)'"
powershell -Command "Write-Host -ForegroundColor Cyan ' [3] List All Tweaks (See a detailed list of every change)'"
powershell -Command "Write-Host -ForegroundColor Cyan ' [4] Meet the Developer'"
echo.
powershell -Command "Write-Host -ForegroundColor Yellow '-------------------------- OPTIONS ---------------------------'"
echo.
powershell -Command "Write-Host -ForegroundColor Cyan ' [5] Exit the Utility'"
echo.
choice /N /C 12345 /M "Select a category to manage: "
if errorlevel 5 goto EOF
if errorlevel 4 goto DEVELOPER_INFO
if errorlevel 3 goto LIST_KEYS
if errorlevel 2 goto DEBLOAT_MENU
if errorlevel 1 goto COPILOT_MENU
goto MAIN_MENU

:DEVELOPER_INFO
cls
powershell -Command "Write-Host -ForegroundColor Yellow '================================================================='"
powershell -Command "Write-Host -ForegroundColor Cyan   '                    MEET THE DEVELOPER'"
powershell -Command "Write-Host -ForegroundColor Yellow '================================================================='"
echo.
powershell -Command "Write-Host -ForegroundColor Yellow      '      * '"
powershell -Command "Write-Host -ForegroundColor Yellow      '     *** '"
powershell -Command "Write-Host -ForegroundColor Yellow      '    ***** '"
powershell -Command "Write-Host -ForegroundColor Yellow      '   ******* '"
powershell -Command "Write-Host -ForegroundColor Yellow      '    ***** '"
powershell -Command "Write-Host -ForegroundColor Yellow      '     *** '"
powershell -Command "Write-Host -ForegroundColor Yellow      '      * '"
echo.
powershell -Command "Write-Host -ForegroundColor Yellow '-----------------------------------------------------------------'"
echo.
echo    Here is my main site:
powershell -Command "Write-Host -ForegroundColor White  ' https://atxyz.dev'"
echo.
echo    Here is my inactive GitHub:
powershell -Command "Write-Host -ForegroundColor White  ' https://github.com/athenarebeldev/'"
echo.
powershell -Command "Write-Host -ForegroundColor Yellow '-----------------------------------------------------------------'"
echo.
powershell -Command "Write-Host -ForegroundColor Cyan ' [1] Open Main Site    [2] Open GitHub    [3] Back to Main Menu'"
echo.
choice /N /C 123 /M "Select an option: "
if errorlevel 3 goto MAIN_MENU
if errorlevel 2 goto LAUNCH_GITHUB
if errorlevel 1 goto LAUNCH_SITE
goto DEVELOPER_INFO


:COPILOT_MENU
cls
powershell -Command "Write-Host -ForegroundColor Yellow '======================= COPILOT SETTINGS ======================='"
echo.
echo  This controls the Copilot AI Assistant in the Windows Taskbar
echo  and the Microsoft Edge sidebar.
echo.
powershell -Command "Write-Host -ForegroundColor Cyan ' [1] Disable Copilot'"
powershell -Command "Write-Host -ForegroundColor Cyan ' [2] Enable Copilot (Revert to Default)'"
powershell -Command "Write-Host -ForegroundColor Cyan ' [3] Back to Main Menu'"
echo.
choice /N /C 123 /M "Select an option: "
if errorlevel 3 goto MAIN_MENU
if errorlevel 2 goto ENABLE_COPILOT
if errorlevel 1 goto DISABLE_COPILOT
goto COPILOT_MENU

:DEBLOAT_MENU
cls
powershell -Command "Write-Host -ForegroundColor Yellow '================== SYSTEM DEBLOAT & PRIVACY =================='"
echo.
echo  Select a feature to either disable it or revert it to default.
echo.
powershell -Command "Write-Host -ForegroundColor Cyan ' [1] Suggested Apps (Stops auto-installing apps like Candy Crush)'"
powershell -Command "Write-Host -ForegroundColor Cyan ' [2] OneDrive Integration (Stops OneDrive from auto-running)'"
powershell -Command "Write-Host -ForegroundColor Cyan ' [3] Taskbar Widgets (Removes the News and Weather feed)'"
powershell -Command "Write-Host -ForegroundColor Cyan ' [4] Cortana (Disables the legacy voice assistant)'"
powershell -Command "Write-Host -ForegroundColor Cyan ' [5] Personalized Ads & Telemetry (Improves privacy)'"
echo.
powershell -Command "Write-Host -ForegroundColor Yellow ' [6] --- DISABLE ALL OF THE ABOVE ---'"
powershell -Command "Write-Host -ForegroundColor Yellow ' [7] --- ENABLE ALL OF THE ABOVE ---'"
echo.
powershell -Command "Write-Host -ForegroundColor Cyan ' [8] Back to Main Menu'"
echo.
choice /N /C 12345678 /M "Select an option: "
if errorlevel 8 goto MAIN_MENU
if errorlevel 7 goto ENABLE_ALL
if errorlevel 6 goto DISABLE_ALL
if errorlevel 5 goto PRIVACY_MENU
if errorlevel 4 goto CORTANA_MENU
if errorlevel 3 goto WIDGETS_MENU
if errorlevel 2 goto ONEDRIVE_MENU
if errorlevel 1 goto CONSUMER_MENU
goto DEBLOAT_MENU

:PRIVACY_MENU
cls & echo [1] Disable Ads/Telemetry  [2] Enable Ads/Telemetry  [3] Back & choice /N /C 123
if errorlevel 3 goto DEBLOAT_MENU & if errorlevel 2 goto ENABLE_PRIVACY & if errorlevel 1 goto DISABLE_PRIVACY
:CORTANA_MENU
cls & echo [1] Disable Cortana  [2] Enable Cortana  [3] Back & choice /N /C 123
if errorlevel 3 goto DEBLOAT_MENU & if errorlevel 2 goto ENABLE_CORTANA & if errorlevel 1 goto DISABLE_CORTANA
:WIDGETS_MENU
cls & echo [1] Disable Widgets  [2] Enable Widgets  [3] Back & choice /N /C 123
if errorlevel 3 goto DEBLOAT_MENU & if errorlevel 2 goto ENABLE_WIDGETS & if errorlevel 1 goto DISABLE_WIDGETS
:ONEDRIVE_MENU
cls & echo [1] Disable OneDrive  [2] Enable OneDrive  [3] Back & choice /N /C 123
if errorlevel 3 goto DEBLOAT_MENU & if errorlevel 2 goto ENABLE_ONEDRIVE & if errorlevel 1 goto DISABLE_ONEDRIVE
:CONSUMER_MENU
cls & echo [1] Disable Consumer Features  [2] Enable Consumer Features  [3] Back & choice /N /C 123
if errorlevel 3 goto DEBLOAT_MENU & if errorlevel 2 goto ENABLE_CONSUMER & if errorlevel 1 goto DISABLE_CONSUMER

:LAUNCH_SITE
start https://atxyz.dev
goto DEVELOPER_INFO

:LAUNCH_GITHUB
start https://github.com/athenarebeldev/
goto DEVELOPER_INFO

:CHECK_ADMIN
net session >nul 2>&1
if %errorlevel% neq 0 (echo.& powershell -Command "Write-Host -ForegroundColor Red 'ERROR: Administrative permissions are required.'"; echo.& pause& goto:eof)
goto:eof

:ACTION_HEADER
cls
powershell -Command "Write-Host -ForegroundColor Yellow '========================= EXECUTING... ========================'"
echo.
goto:eof

:ACTION_FOOTER
echo.
powershell -Command "Write-Host -ForegroundColor Green 'SUCCESS! Operation complete.'"
echo.
echo    A system restart may be required for all changes to apply.
echo.
pause
goto:eof

:DISABLE_ALL
call :ACTION_HEADER & call :CHECK_ADMIN
echo    -> Enforcing DISABLED state for ALL features...
timeout /t 1 >nul
call :DISABLE_COPILOT_LOGIC & call :DISABLE_CONSUMER_LOGIC & call :DISABLE_ONEDRIVE_LOGIC & call :DISABLE_WIDGETS_LOGIC & call :DISABLE_CORTANA_LOGIC & call :DISABLE_PRIVACY_LOGIC
call :ACTION_FOOTER & goto DEBLOAT_MENU
:ENABLE_ALL
call :ACTION_HEADER & call :CHECK_ADMIN
echo    -> Reverting ALL features to Windows Default...
timeout /t 1 >nul
call :ENABLE_COPILOT_LOGIC & call :ENABLE_CONSUMER_LOGIC & call :ENABLE_ONEDRIVE_LOGIC & call :ENABLE_WIDGETS_LOGIC & call :ENABLE_CORTANA_LOGIC & call :ENABLE_PRIVACY_LOGIC
call :ACTION_FOOTER & goto DEBLOAT_MENU

:DISABLE_COPILOT
call :ACTION_HEADER & call :CHECK_ADMIN & echo    -> Disabling Copilot... & timeout /t 1 >nul & call :DISABLE_COPILOT_LOGIC & call :ACTION_FOOTER & goto COPILOT_MENU
:ENABLE_COPILOT
call :ACTION_HEADER & call :CHECK_ADMIN & echo    -> Enabling Copilot... & timeout /t 1 >nul & call :ENABLE_COPILOT_LOGIC & call :ACTION_FOOTER & goto COPILOT_MENU
:DISABLE_CONSUMER
call :ACTION_HEADER & call :CHECK_ADMIN & echo    -> Disabling Suggested Apps... & timeout /t 1 >nul & call :DISABLE_CONSUMER_LOGIC & call :ACTION_FOOTER & goto DEBLOAT_MENU
:ENABLE_CONSUMER
call :ACTION_HEADER & call :CHECK_ADMIN & echo    -> Enabling Suggested Apps... & timeout /t 1 >nul & call :ENABLE_CONSUMER_LOGIC & call :ACTION_FOOTER & goto DEBLOAT_MENU
:DISABLE_ONEDRIVE
call :ACTION_HEADER & call :CHECK_ADMIN & echo    -> Disabling OneDrive... & timeout /t 1 >nul & call :DISABLE_ONEDRIVE_LOGIC & call :ACTION_FOOTER & goto DEBLOAT_MENU
:ENABLE_ONEDRIVE
call :ACTION_HEADER & call :CHECK_ADMIN & echo    -> Enabling OneDrive... & timeout /t 1 >nul & call :ENABLE_ONEDRIVE_LOGIC & call :ACTION_FOOTER & goto DEBLOAT_MENU
:DISABLE_WIDGETS
call :ACTION_HEADER & call :CHECK_ADMIN & echo    -> Disabling Widgets... & timeout /t 1 >nul & call :DISABLE_WIDGETS_LOGIC & call :ACTION_FOOTER & goto DEBLOAT_MENU
:ENABLE_WIDGETS
call :ACTION_HEADER & call :CHECK_ADMIN & echo    -> Enabling Widgets... & timeout /t 1 >nul & call :ENABLE_WIDGETS_LOGIC & call :ACTION_FOOTER & goto DEBLOAT_MENU
:DISABLE_CORTANA
call :ACTION_HEADER & call :CHECK_ADMIN & echo    -> Disabling Cortana... & timeout /t 1 >nul & call :DISABLE_CORTANA_LOGIC & call :ACTION_FOOTER & goto DEBLOAT_MENU
:ENABLE_CORTANA
call :ACTION_HEADER & call :CHECK_ADMIN & echo    -> Enabling Cortana... & timeout /t 1 >nul & call :ENABLE_CORTANA_LOGIC & call :ACTION_FOOTER & goto DEBLOAT_MENU
:DISABLE_PRIVACY
call :ACTION_HEADER & call :CHECK_ADMIN & echo    -> Disabling Ads and Telemetry... & timeout /t 1 >nul & call :DISABLE_PRIVACY_LOGIC & call :ACTION_FOOTER & goto DEBLOAT_MENU
:ENABLE_PRIVACY
call :ACTION_HEADER & call :CHECK_ADMIN & echo    -> Enabling Ads and Telemetry... & timeout /t 1 >nul & call :ENABLE_PRIVACY_LOGIC & call :ACTION_FOOTER & goto DEBLOAT_MENU

:DISABLE_COPILOT_LOGIC
reg add "%REG_KEY_WIN_COpilot%" /v "%REG_VAL_WIN_COpilot%" /t REG_DWORD /d 1 /f >nul & reg add "%REG_KEY_EDGE_COpilot%" /v "%REG_VAL_EDGE_COpilot%" /t REG_DWORD /d 0 /f >nul & goto:eof
:ENABLE_COPILOT_LOGIC
reg delete "%REG_KEY_WIN_COpilot%" /v "%REG_VAL_WIN_COpilot%" /f >nul 2>&1 & reg delete "%REG_KEY_EDGE_COpilot%" /v "%REG_VAL_EDGE_COpilot%" /f >nul 2>&1 & goto:eof
:DISABLE_CONSUMER_LOGIC
reg add "%REG_KEY_CONSUMER%" /v "%REG_VAL_CONSUMER%" /t REG_DWORD /d 1 /f >nul & goto:eof
:ENABLE_CONSUMER_LOGIC
reg delete "%REG_KEY_CONSUMER%" /v "%REG_VAL_CONSUMER%" /f >nul 2>&1 & goto:eof
:DISABLE_ONEDRIVE_LOGIC
reg add "%REG_KEY_ONEDRIVE%" /v "%REG_VAL_ONEDRIVE%" /t REG_DWORD /d 1 /f >nul & goto:eof
:ENABLE_ONEDRIVE_LOGIC
reg delete "%REG_KEY_ONEDRIVE%" /v "%REG_VAL_ONEDRIVE%" /f >nul 2>&1 & goto:eof
:DISABLE_WIDGETS_LOGIC
reg add "%REG_KEY_WIDGETS%" /v "%REG_VAL_WIDGETS%" /t REG_DWORD /d 0 /f >nul & goto:eof
:ENABLE_WIDGETS_LOGIC
reg delete "%REG_KEY_WIDGETS%" /v "%REG_VAL_WIDGETS%" /f >nul 2>&1 & goto:eof
:DISABLE_CORTANA_LOGIC
reg add "%REG_KEY_CORTANA%" /v "%REG_VAL_CORTANA%" /t REG_DWORD /d 0 /f >nul & goto:eof
:ENABLE_CORTANA_LOGIC
reg delete "%REG_KEY_CORTANA%" /v "%REG_VAL_CORTANA%" /f >nul 2>&1 & goto:eof
:DISABLE_PRIVACY_LOGIC
reg add "%REG_KEY_ADS%" /v "%REG_VAL_ADS%" /t REG_DWORD /d 0 /f >nul & reg add "%REG_KEY_TELEMETRY%" /v "%REG_VAL_TELEMETRY%" /t REG_DWORD /d 0 /f >nul & goto:eof
:ENABLE_PRIVACY_LOGIC
reg delete "%REG_KEY_ADS%" /v "%REG_VAL_ADS%" /f >nul 2>&1 & reg delete "%REG_KEY_TELEMETRY%" /v "%REG_VAL_TELEMETRY%" /f >nul 2>&1 & goto:eof

:LIST_KEYS
cls
powershell -Command "Write-Host -ForegroundColor Yellow '================== LIST OF MANAGED REGISTRY KEYS ================='"
echo.
echo    --- COPILOT SETTINGS (Disable values shown) ---
echo    [HKLM\%REG_KEY_WIN_COpilot%\%REG_VAL_WIN_COpilot%] = 1
echo    [HKLM\%REG_KEY_EDGE_COpilot%\%REG_VAL_EDGE_COpilot%] = 0
echo.
echo    --- SYSTEM DEBLOAT SETTINGS (Disable values shown) ---
echo    [HKLM\%REG_KEY_CONSUMER%\%REG_VAL_CONSUMER%] = 1
echo    [HKLM\%REG_KEY_ONEDRIVE%\%REG_VAL_ONEDRIVE%] = 1
echo    [HKLM\%REG_KEY_WIDGETS%\%REG_VAL_WIDGETS%] = 0
echo    [HKLM\%REG_KEY_CORTANA%\%REG_VAL_CORTANA%] = 0
echo    [HKCU\%REG_KEY_ADS%\%REG_VAL_ADS%] = 0
echo    [HKLM\%REG_KEY_TELEMETRY%\%REG_VAL_TELEMETRY%] = 0
echo.
pause
goto MAIN_MENU

:EOF
endlocal
exit
