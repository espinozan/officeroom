@echo off
:: Elevación de privilegios
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if %errorlevel% neq 0 (
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\adminEspinozan.vbs"
    echo UAC.ShellExecute "cmd.exe", "/c ""%~f0""", "", "runas", 1 >> "%temp%\adminEspinozan.vbs"
    "%temp%\adminEspinozan.vbs"
    del "%temp%\adminEspinozan.vbs"
    exit /b
)

:: Colores hacker alternando
setlocal enabledelayedexpansion
for /l %%a in (1,1,10) do (
    color 0A
    timeout /t 1 >nul
    color 0C
    timeout /t 1 >nul
)

:: Banner
cls
echo.
echo ====================================================
echo        >>> Creado por Espinozan el Hacker <<<
echo ====================================================
echo.

:: Descompresión ZIP (usa PowerShell para evitar dependencias externas)
set ZIPFILE=%~dp0office21_espinozan.zip
set DEST=%~dp0office21_espinozan

echo [*] Descomprimiendo archivo office21_espinozan.zip...
powershell -nologo -noprofile -command "Expand-Archive -Path '%ZIPFILE%' -DestinationPath '%DEST%' -Force"
if %errorlevel% neq 0 (
    echo [!] Error al descomprimir. Verifica el ZIP.
    pause
    exit /b
)

:: Cargar estilo barra hacker
echo [*] Archivos descomprimidos correctamente.
echo [*] Preparando la instalación...

:: Cargar barra animada
setlocal EnableDelayedExpansion
set "spin=-\|/"
for /l %%i in (1,1,10) do (
    set /a idx=%%i %% 4
    set "ch=!spin:~%idx%,1!"
    <nul set /p= Instalando !ch!`r
    timeout /t 1 >nul
)
echo.

:: Entrar a la carpeta descomprimida
cd /d "%DEST%"

:: Ejecutar los scripts en orden
echo [*] Ejecutando officeroom.bat...
call officeroom.bat
echo [*] Esperando 5 segundos...
timeout /t 5 >nul

echo [*] Ejecutando download_officeroom.bat...
call download_officeroom.bat

echo.
echo [✔] Todo completado con éxito. Office se está descargando.
pause
exit /b
