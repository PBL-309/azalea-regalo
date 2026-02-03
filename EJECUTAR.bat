@echo off
echo ================================================
echo   Sitio Web Romantico - Inicio Rapido
echo ================================================
echo.

:: Verificar si Python esta instalado
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Python no esta instalado o no esta en el PATH
    echo Por favor instala Python desde https://www.python.org/
    pause
    exit /b 1
)

echo [1/3] Verificando Python... OK
echo.

:: Verificar si las dependencias estan instaladas
echo [2/3] Instalando dependencias...
pip install -r requirements.txt
if %errorlevel% neq 0 (
    echo ERROR: No se pudieron instalar las dependencias
    pause
    exit /b 1
)
echo.

:: Obtener la IP local
echo [3/3] Obteniendo tu direccion IP...
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4"') do set IP=%%a
set IP=%IP:~1%
echo.

echo ================================================
echo   Aplicacion Lista!
echo ================================================
echo.
echo Accede desde:
echo   - Tu PC:     http://localhost:5000
echo   - Celular:   http://%IP%:5000
echo.
echo NOTA: Asegurate de que tu celular este en la misma red WiFi
echo.
echo Presiona Ctrl+C para detener el servidor
echo ================================================
echo.

:: Iniciar la aplicación
python app.py

pause
