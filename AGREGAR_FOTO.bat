@echo off
echo ============================================
echo    AGREGAR FOTO DE BODA AL SITIO
echo ============================================
echo.
echo INSTRUCCIONES:
echo.
echo 1. Guarda tu foto de boda como "boda.jpg"
echo 2. Arrastra el archivo a esta ventana
echo 3. Presiona Enter
echo.
echo La carpeta destino es:
echo %~dp0static\images\
echo.
echo ============================================
echo.
set /p origen="Arrastra tu imagen aqui y presiona Enter: "

if exist %origen% (
    copy %origen% "%~dp0static\images\boda.jpg"
    echo.
    echo ============================================
    echo   IMAGEN COPIADA EXITOSAMENTE!
    echo ============================================
    echo.
    echo La foto ya esta en el sitio.
    echo Ejecuta el sitio para verla.
    echo.
) else (
    echo.
    echo ERROR: No se encontro el archivo
    echo.
)

pause
