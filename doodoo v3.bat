@echo off
chcp 65001
TITLE WANGHOST

:: splashscreen

cls
color 0d
timeout /t 1 >nul
echo.
echo.
echo.
echo                                            .--.                         
echo                                           / _.-' .-.   .-.  .-.   .''.  
echo                                           \  '-. '-'   '-'  '-'   '..'  
echo                                            '--'                
echo.                                                 
echo                            ------------------------------------------------------------
echo.                            
echo                              █████   ███   █████   █████████  ███████████ █████   ████
echo                             ░░███   ░███  ░░███   ███░░░░░███░█░░░███░░░█░░███   ███░ 
echo                              ░███   ░███   ░███  ███     ░░░ ░   ░███  ░  ░███  ███   
echo                              ░███   ░███   ░███ ░███             ░███     ░███████    
echo                              ░░███  █████  ███  ░███    █████    ░███     ░███░░███   
echo                               ░░░█████░█████░   ░░███  ░░███     ░███     ░███ ░░███  
echo                                 ░░███ ░░███      ░░█████████     █████    █████ ░░████
echo                                  ░░░   ░░░        ░░░░░░░░░     ░░░░░    ░░░░░   ░░░░ 
echo.                         
echo                            ------------------------------------------------------------
echo                                             WANCOM (PC) GHOST TOOL KIT
echo                                                        version. test
REM time out for buffer
timeout /t 1 >nul
cls REM CLEAR ASCII
:0 REM TOP LEVEL
color 0F
echo WANCOM (PC) GHOST TOOL KIT
echo.
echo.

:: main menu page

echo  Ce script vous guide à travers les étapes necessaires à la configuration initiale de WINDOWS 11 iOT
echo  IMPORTANT : Privilégiez le *mode automatique*, en cas d'echec veuillez passez par les étapes numérotées. 
echo. 
echo. 
echo. 
echo. 
echo                            -------------------- MENU PRINCIPAL ----------------------
echo.                           -                                                        -
echo                            -             [a] Mode automatique                       -
echo                            -             [1] Activer Windows 11 iOT                 -
echo                            -             [2] Synchroniser l'horloge                 -
echo                            -             [3] Desactiver le fond d'écran             -
echo.                           -                                                        -
echo                            --------------- q : quitter le programme -----------------              
echo.
echo.
echo.
echo.
echo.
set /p ans="TÂCHE À ÉXECUTER (a/1/2/3) ?"
cls
if %ans%==1 (
goto a   
)
if %ans%==2 (
goto b   
)
if %ans%==3 (
goto c   
)
if %ans%==a (
goto d   
)
if %ans%==q (
exit   
)

:: function a [1]

:a
cls
echo.
echo La clé d'activation WINDOWS 11 IOT suivante a été automatiquement copié dans le "presse-papier" :
echo.
echo            ----------------------------------------------------------
echo                          BBNBR-X9TX3-6V9TD-3WDH3-4GGBR
echo            ----------------------------------------------------------
echo 1515-4848-5657-5568-5444|clip
echo. 
echo Appuyez sur la touche "ENTRÉE" pour ouvrir la fenêtre d'activation windows 11
echo.
pause >nul
SLUI
timeout /t 2 REM buffer for win ui
cls
color 2
echo [ACTIVATION DE WINDOWS]
echo.
echo Procedure à suivre ↓
echo.
echo - Cliquer sur "modify" 
echo.
echo - Coller la clé d'activation (clic souris droit → "paste")
echo. 
echo - Cliquer sur "next" puis "activate"
echo.
echo (mémo) clé d'activation : BBNBR-X9TX3-6V9TD-3WDH3-4GGBR
echo *une fois l'opération terminée vous pouvez fermer la fenêtre d'activation de windows
echo.
echo APPUYEZ SUR "ENTRÉE" POUR REVENIR AU MENU PRINCIPAL
pause >nul
cls
goto 0

:: function b [2]

:b
cls
echo [SYNCHRONISATION DE L'HORLOGE WINDOWS]
echo.
echo. 
echo Plop plop pour que le pc soit plus à l'heure qu'un metro parisien... 
echo.
rem Set the time zone to GMT+1 (Central European Time, Paris)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" /v "StandardName" /t REG_SZ /d "Central European Standard Time" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" /v "TimeZoneKeyName" /t REG_SZ /d "Central European Standard Time" /f
rem Restart the Windows Time service
net stop w32time
net start w32time
rem Force synchronization
w32tm /resync
timeout t/ 3 >nul rem buffer
echo il est %time% 
pause
cls
goto 0

:: function c [3]

:c
cls
echo [SUPPRESION DU FOND D'ÉCRAN]
echo.
echo. 
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallPaper /t REG_SZ /d "" /f
reg add "HKEY_CURRENT_USER\Control Panel\Colors" /v Background /t REG_SZ /d "0 0 0" /f
echo.
echo  l'explorateur windows va redemmarer...
taskkill /f /im explorer.exe
start explorer.exe
echo. 
echo. 
echo Le fond d'écran à été supprimé 
echo.
echo APPUYEZ SUR "ENTRÉE" POUR REVENIR AU MENU PRINCIPAL
pause >nul
cls
goto 0

:: function d [4]

:d
cls
echo [MODE AUTOMATIQUE]
echo.
REM Windows Activation
echo Activation de windows en cours
SLMGR /ipk BBNBR-X9TX3-6V9TD-3WDH3-4GGBR
echo.
timeout f/ 1 rem buffer
rem Set the time zone to GMT+1 (Central European Time, Paris)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" /v "StandardName" /t REG_SZ /d "Central European Standard Time" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" /v "TimeZoneKeyName" /t REG_SZ /d "Central European Standard Time" /f
rem Restart the Windows Time service
net stop w32time
net start w32time
rem Force synchronization
w32tm /resync
rem buffer
timeout t/ 2
echo. 
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallPaper /t REG_SZ /d "" /f
reg add "HKEY_CURRENT_USER\Control Panel\Colors" /v Background /t REG_SZ /d "0 0 0" /f
echo.
echo  l'explorateur windows va redemmarer...
taskkill /f /im explorer.exe
start explorer.exe
echo. 
echo APPUYEZ SUR "ENTRÉE" POUR REVENIR AU MENU PRINCIPAL
pause >nul
cls
goto 0


:end
color C
echo Veuillez rentrer le numéro correspondant au menu souhaité
timeout /t 5
goto 0