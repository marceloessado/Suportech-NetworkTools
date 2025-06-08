@echo off
chcp 65001 >nul
:: ===============================================================
:: SuporTech(C) NetworkTools
:: Licensed under Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)
:: Developed by SuporTech - https://suportech.com.br
:: This script provides network diagnostic and repair functions for Windows.
:: All command outputs are logged to SuporTech_NetworkTools_Log.txt
:: ===============================================================
rem Set console colors: background black (0), foreground bright yellow (E)
color 0E

:menu
cls
echo ===============================================================
echo            SuporTech(C) NetworkTools
echo ===============================================================
echo.
echo ==================== MENU ====================
echo.
echo  1. Display network settings (ipconfig /all)
echo  2. Release and renew IP (ipconfig /release and /renew)
echo  3. Flush DNS cache (ipconfig /flushdns)
echo  4. Reset TCP/IP stack (netsh int ip reset)
echo  5. Reset Winsock (netsh winsock reset)
echo  6. Test connectivity (ping www.suportech.com.br)
echo  7. Run all functions
echo  8. Exit
echo =============================================
echo.

set /p choice=Select an option (1-8): 

if "%choice%"=="1" goto ipconfig
if "%choice%"=="2" goto release_renew
if "%choice%"=="3" goto flushdns
if "%choice%"=="4" goto reset_tcpip
if "%choice%"=="5" goto reset_winsock
if "%choice%"=="6" goto ping
if "%choice%"=="7" goto run_all
if "%choice%"=="8" goto exit
echo Invalid option! Press any key to try again...
pause >nul
goto menu

:ipconfig
cls
echo Running ipconfig /all...
echo [%DATE% %TIME%] Running ipconfig /all >> SuporTech_NetworkTools_Log.txt
ipconfig /all >> SuporTech_NetworkTools_Log.txt
ipconfig /all
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo Done! Press any key to return to the menu...
pause >nul
goto menu

:release_renew
cls
echo Releasing IP...
echo [%DATE% %TIME%] Releasing IP >> SuporTech_NetworkTools_Log.txt
ipconfig /release >> SuporTech_NetworkTools_Log.txt
ipconfig /release
echo Renewing IP...
echo [%DATE% %TIME%] Renewing IP >> SuporTech_NetworkTools_Log.txt
ipconfig /renew >> SuporTech_NetworkTools_Log.txt
ipconfig /renew
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo Done! Press any key to return to the menu...
pause >nul
goto menu

:flushdns
cls
echo Flushing DNS cache...
echo [%DATE% %TIME%] Flushing DNS cache >> SuporTech_NetworkTools_Log.txt
ipconfig /flushdns >> SuporTech_NetworkTools_Log.txt
ipconfig /flushdns
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo Done! Press any key to return to the menu...
pause >nul
goto menu

:reset_tcpip
cls
echo Resetting TCP/IP stack...
echo [%DATE% %TIME%] Resetting TCP/IP stack >> SuporTech_NetworkTools_Log.txt
netsh int ip reset >> SuporTech_NetworkTools_Log.txt
netsh int ip reset
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo Done! A restart may be required. Press any key to return to the menu...
pause >nul
goto menu

:reset_winsock
cls
echo Resetting Winsock...
echo [%DATE% %TIME%] Resetting Winsock >> SuporTech_NetworkTools_Log.txt
netsh winsock reset >> SuporTech_NetworkTools_Log.txt
netsh winsock reset
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo Done! A restart may be required. Press any key to return to the menu...
pause >nul
goto menu

:ping
cls
echo Testing connectivity to www.suportech.com.br...
echo [%DATE% %TIME%] Testing connectivity to www.suportech.com.br >> SuporTech_NetworkTools_Log.txt
ping www.suportech.com.br >> SuporTech_NetworkTools_Log.txt
ping www.suportech.com.br
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo Done! Press any key to return to the menu...
pause >nul
goto menu

:run_all
cls
echo Running all functions...
echo [%DATE% %TIME%] Running all functions >> SuporTech_NetworkTools_Log.txt
echo. >> SuporTech_NetworkTools_Log.txt
echo 1. Displaying network settings...
echo [%DATE% %TIME%] Displaying network settings >> SuporTech_NetworkTools_Log.txt
ipconfig /all >> SuporTech_NetworkTools_Log.txt
ipconfig /all
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo 2. Releasing and renewing IP...
echo [%DATE% %TIME%] Releasing IP >> SuporTech_NetworkTools_Log.txt
ipconfig /release >> SuporTech_NetworkTools_Log.txt
ipconfig /release
echo [%DATE% %TIME%] Renewing IP >> SuporTech_NetworkTools_Log.txt
ipconfig /renew >> SuporTech_NetworkTools_Log.txt
ipconfig /renew
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo 3. Flushing DNS cache...
echo [%DATE% %TIME%] Flushing DNS cache >> SuporTech_NetworkTools_Log.txt
ipconfig /flushdns >> SuporTech_NetworkTools_Log.txt
ipconfig /flushdns
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo 4. Resetting TCP/IP stack...
echo [%DATE% %TIME%] Resetting TCP/IP stack >> SuporTech_NetworkTools_Log.txt
netsh int ip reset >> SuporTech_NetworkTools_Log.txt
netsh int ip reset
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo 5. Resetting Winsock...
echo [%DATE% %TIME%] Resetting Winsock >> SuporTech_NetworkTools_Log.txt
netsh winsock reset >> SuporTech_NetworkTools_Log.txt
netsh winsock reset
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo 6. Testing connectivity...
echo [%DATE% %TIME%] Testing connectivity to www.suportech.com.br >> SuporTech_NetworkTools_Log.txt
ping www.suportech.com.br >> SuporTech_NetworkTools_Log.txt
ping www.suportech.com.br
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo All functions completed! A restart may be required.
echo [%DATE% %TIME%] All functions completed >> SuporTech_NetworkTools_Log.txt
echo Press any key to return to the menu...
pause >nul
goto menu

:exit
cls
echo Thank you for using SuporTech(C) NetworkTools!
echo Exiting...
echo [%DATE% %TIME%] Session ended >> SuporTech_NetworkTools_Log.txt
echo. >> SuporTech_NetworkTools_Log.txt
timeout /t 2 >nul
exit