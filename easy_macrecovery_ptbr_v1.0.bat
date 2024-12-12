@echo off
setlocal enabledelayedexpansion

color 71
set build=1.0
set date=12/dez/24
set ano=2024
set versao=Easy macrecovery ver: %build% - %date%
set linha=-------------------------------------------------------------------------------


rename "%~f0" "easy_macrecovery_ptbr_v%build%.bat"
title  %versao% -- %ano% -- By: llbranco

cd /d "%~dp0"

:: Iterar sobre as pastas que correspondem ao padrão OpenCore-*-RELEASE
for /d %%D in (OpenCore-*-RELEASE) do (
    set "found_dir=%~dp0%%D"
)

:: Definir as versões e os valores de -m associados
set "Lion_1=00000000000F25Y00"
set "Lion_2=00000000000F0HM00"
set "MountainLion=00000000000F65100"
set "Mavericks=00000000000FNN100"
set "Yosemite=00000000000GDVW00"
set "ElCapitan=00000000000GQRX00"
set "Sierra=00000000000J0DX00"
set "HighSierra_1=00000000000J80300"
set "HighSierra_2=00000000000J80300"
set "Mojave=00000000000KXPG00"
set "Catalina=00000000000000000"
set "BigSur=00000000000000000"
set "Monterey=00000000000000000"
set "Ventura=00000000000000000"
set "Sonoma=00000000000000000"
set "Sequoia=00000000000000000"

goto :menu

:: Função para executar o comando relacionado
:run_command
set "id=%1"
set "m_value=%2"
echo Executando comando para ID: %id% com -m: %m_value%
py macrecovery.py -b %id% -m %m_value% download
echo.
echo.
echo copie a pasta "com.apple.recovery.boot" para a raiz do seu pendrive
explorer "%found_dir%\Utilities\macrecovery"
pause
goto :eof

:: Menu principal
:menu
set opcao=0
cls
echo usando a pasta:
echo "%found_dir%\Utilities\macrecovery"
cd /d "%found_dir%\Utilities\macrecovery"
echo ===================== Menu =====================
echo 1. Lion (10.7)
echo 2. Mountain Lion (10.8)
echo 3. Mavericks (10.9)
echo 4. Yosemite (10.10)
echo 5. El Capitan (10.11)
echo 6. Sierra (10.12)
echo 7. High Sierra (10.13)
echo 8. Mojave (10.14)
echo 9. Catalina (10.15)
echo 10. Big Sur (11)
echo 11. Monterey (12)
echo 12. Ventura (13)
echo 13. Sonoma (14)
echo 14. Sequoia (15)
echo.
echo 0. Sair                                           https://github.com/llbranco
echo ================================================
set /p option="Escolha uma opcao: "

if "%option%"=="1" goto :lion
if "%option%"=="2" goto :mountain_lion
if "%option%"=="3" goto :mavericks
if "%option%"=="4" goto :yosemite
if "%option%"=="5" goto :el_capitan
if "%option%"=="6" goto :sierra
if "%option%"=="7" goto :high_sierra
if "%option%"=="8" goto :mojave
if "%option%"=="9" goto :catalina
if "%option%"=="10" goto :bigsur
if "%option%"=="11" goto :monterey
if "%option%"=="12" goto :ventura
if "%option%"=="13" goto :sonoma
if "%option%"=="14" goto :sequoia
if "%option%"=="0" exit
goto :menu

:: Submenus das versões
:lion
cls
echo 1. Mac-2E6FAB96566FE58C
echo 2. Mac-C3EC7CD22292981F
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-2E6FAB96566FE58C !Lion_1!
if "%id_option%"=="2" call :run_command Mac-C3EC7CD22292981F !Lion_2!
goto :menu

:mountain_lion
cls
echo 1. Mac-7DF2A3B5E5D671ED
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-7DF2A3B5E5D671ED !MountainLion!
goto :menu

:mavericks
cls
echo 1. Mac-F60DEB81FF30ACF6
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-F60DEB81FF30ACF6 !Mavericks!
goto :menu

:yosemite
cls
echo 1. Mac-E43C1C25D4880AD6
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-E43C1C25D4880AD6 !Yosemite!
goto :menu

:el_capitan
cls
echo 1. Mac-FFE5EF870D7BA81A
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-FFE5EF870D7BA81A !ElCapitan!
goto :menu

:sierra
cls
echo 1. Mac-77F17D7DA9285301
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-77F17D7DA9285301 !Sierra!
goto :menu

:high_sierra
cls
echo 1. Mac-7BA5B2D9E42DDD94
echo 2. Mac-BE088AF8C5EB4FA2
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-7BA5B2D9E42DDD94 !HighSierra_1!
if "%id_option%"=="2" call :run_command Mac-BE088AF8C5EB4FA2 !HighSierra_2!
goto :menu

:mojave
cls
echo 1. Mac-7BA5B2DFE22DDD8C
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-7BA5B2DFE22DDD8C !Mojave!
goto :menu

:catalina
cls
echo 1. Mac-00BE6ED71E35EB86
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-00BE6ED71E35EB86 !Catalina!
goto :menu

:bigsur
cls
echo 1. Mac-42FD25EABCABB274
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-42FD25EABCABB274 !BigSur!
goto :menu

:monterey
cls
echo 1. Mac-FFE5EF870D7BA81A
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-FFE5EF870D7BA81A !Monterey!
goto :menu

:ventura
cls
echo 1. Mac-4B682C642B45593E
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-4B682C642B45593E !Ventura!
goto :menu

:sonoma
cls
echo 1. Mac-226CB3C6A851A671
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-226CB3C6A851A671 !Sonoma!
goto :menu

:sequoia
cls
echo 1. Mac-937A206F2EE63C01
set /p id_option="Escolha uma opcao: "
if "%id_option%"=="1" call :run_command Mac-937A206F2EE63C01 !Sequoia!
goto :menu
