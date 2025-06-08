@echo off
chcp 65001 >nul
:: ===============================================================
:: Ferramenta SuporTech(C) NetworkTools
:: Licenciada sob Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)
:: Desenvolvida por SuporTech - https://suportech.com.br
:: Todas as saídas dos comandos são salvas em SuporTech_NetworkTools_Log.txt
:: ===============================================================
rem Define as cores do console: fundo preto (0), fonte amarelo claro (E)
color 0E

:menu
cls
echo ===============================================================
echo            Ferramenta SuporTech(C) NetworkTools
echo ===============================================================
echo.
echo ==================== MENU ====================
echo.
echo  1. Exibir configurações de rede (ipconfig /all)
echo  2. Liberar e renovar IP (ipconfig /release e /renew)
echo  3. Limpar cache de DNS (ipconfig /flushdns)
echo  4. Redefinir pilha TCP/IP (netsh int ip reset)
echo  5. Redefinir Winsock (netsh winsock reset)
echo  6. Testar conectividade (ping www.suportech.com.br)
echo  7. Executar todas as funções
echo  8. Sair
echo =============================================
echo.

set /p choice=Selecione uma opção (1-8): 

if "%choice%"=="1" goto ipconfig
if "%choice%"=="2" goto release_renew
if "%choice%"=="3" goto flushdns
if "%choice%"=="4" goto reset_tcpip
if "%choice%"=="5" goto reset_winsock
if "%choice%"=="6" goto ping
if "%choice%"=="7" goto run_all
if "%choice%"=="8" goto exit
echo Opção inválida! Pressione qualquer tecla para tentar novamente...
pause >nul
goto menu

:ipconfig
cls
echo Executando ipconfig /all...
echo [%DATE% %TIME%] Executando ipconfig /all >> SuporTech_NetworkTools_Log.txt
ipconfig /all >> SuporTech_NetworkTools_Log.txt
ipconfig /all
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo Concluído! Pressione qualquer tecla para voltar ao menu...
pause >nul
goto menu

:release_renew
cls
echo Liberando IP...
echo [%DATE% %TIME%] Liberando IP >> SuporTech_NetworkTools_Log.txt
ipconfig /release >> SuporTech_NetworkTools_Log.txt
ipconfig /release
echo Renovando IP...
echo [%DATE% %TIME%] Renovando IP >> SuporTech_NetworkTools_Log.txt
ipconfig /renew >> SuporTech_NetworkTools_Log.txt
ipconfig /renew
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo Concluído! Pressione qualquer tecla para voltar ao menu...
pause >nul
goto menu

:flushdns
cls
echo Limpando cache de DNS...
echo [%DATE% %TIME%] Limpando cache de DNS >> SuporTech_NetworkTools_Log.txt
ipconfig /flushdns >> SuporTech_NetworkTools_Log.txt
ipconfig /flushdns
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo Concluído! Pressione qualquer tecla para voltar ao menu...
pause >nul
goto menu

:reset_tcpip
cls
echo Redefinindo pilha TCP/IP...
echo [%DATE% %TIME%] Redefinindo pilha TCP/IP >> SuporTech_NetworkTools_Log.txt
netsh int ip reset >> SuporTech_NetworkTools_Log.txt
netsh int ip reset
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo Concluído! Pode ser necessário reiniciar. Pressione qualquer tecla para voltar ao menu...
pause >nul
goto menu

:reset_winsock
cls
echo Redefinindo Winsock...
echo [%DATE% %TIME%] Redefinindo Winsock >> SuporTech_NetworkTools_Log.txt
netsh winsock reset >> SuporTech_NetworkTools_Log.txt
netsh winsock reset
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo Concluído! Pode ser necessário reiniciar. Pressione qualquer tecla para voltar ao menu...
pause >nul
goto menu

:ping
cls
echo Testando conectividade com www.suportech.com.br...
echo [%DATE% %TIME%] Testando conectividade com www.suportech.com.br >> SuporTech_NetworkTools_Log.txt
ping www.suportech.com.br >> SuporTech_NetworkTools_Log.txt
ping www.suportech.com.br
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo Concluído! Pressione qualquer tecla para voltar ao menu...
pause >nul
goto menu

:run_all
cls
echo Executando todas as funções...
echo [%DATE% %TIME%] Executando todas as funções >> SuporTech_NetworkTools_Log.txt
echo. >> SuporTech_NetworkTools_Log.txt
echo 1. Exibindo configurações de rede...
echo [%DATE% %TIME%] Exibindo configurações de rede >> SuporTech_NetworkTools_Log.txt
ipconfig /all >> SuporTech_NetworkTools_Log.txt
ipconfig /all
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo 2. Liberando e renovando IP...
echo [%DATE% %TIME%] Liberando IP >> SuporTech_NetworkTools_Log.txt
ipconfig /release >> SuporTech_NetworkTools_Log.txt
ipconfig /release
echo [%DATE% %TIME%] Renovando IP >> SuporTech_NetworkTools_Log.txt
ipconfig /renew >> SuporTech_NetworkTools_Log.txt
ipconfig /renew
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo 3. Limpando cache de DNS...
echo [%DATE% %TIME%] Limpando cache de DNS >> SuporTech_NetworkTools_Log.txt
ipconfig /flushdns >> SuporTech_NetworkTools_Log.txt
ipconfig /flushdns
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo 4. Redefinindo pilha TCP/IP...
echo [%DATE% %TIME%] Redefinindo pilha TCP/IP >> SuporTech_NetworkTools_Log.txt
netsh int ip reset >> SuporTech_NetworkTools_Log.txt
netsh int ip reset
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo 5. Redefinindo Winsock...
echo [%DATE% %TIME%] Redefinindo Winsock >> SuporTech_NetworkTools_Log.txt
netsh winsock reset >> SuporTech_NetworkTools_Log.txt
netsh winsock reset
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo 6. Testando conectividade...
echo [%DATE% %TIME%] Testando conectividade com www.suportech.com.br >> SuporTech_NetworkTools_Log.txt
ping www.suportech.com.br >> SuporTech_NetworkTools_Log.txt
ping www.suportech.com.br
echo. >> SuporTech_NetworkTools_Log.txt
echo.
echo Todas as funções concluídas! Pode ser necessário reiniciar.
echo [%DATE% %TIME%] Todas as funções concluídas >> SuporTech_NetworkTools_Log.txt
echo Pressione qualquer tecla para voltar ao menu...
pause >nul
goto menu

:exit
cls
echo Obrigado por usar a Ferramenta SuporTech(C) NetworkTools!
echo Saindo...
echo [%DATE% %TIME%] Sessão encerrada >> SuporTech_NetworkTools_Log.txt
echo. >> SuporTech_NetworkTools_Log.txt
timeout /t 2 >nul
exit