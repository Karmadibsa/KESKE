@echo off
chcp 65001 >nul
title KESKE - serveur local
cd /d "%~dp0"

echo ================================
echo   KESKE ? - lancement local
echo ================================
echo.

set PORT=8000

echo Ouverture du navigateur sur http://localhost:%PORT% ...
start "" "http://localhost:%PORT%"
echo.

echo Demarrage du serveur (laisse cette fenetre ouverte)...
echo Ferme la fenetre ou fais Ctrl+C pour arreter.
echo.

rem --- On essaie Python (py), puis python, puis Node (npx) ---
where py >nul 2>nul
if %errorlevel%==0 (
    py -m http.server %PORT%
    goto :eof
)

where python >nul 2>nul
if %errorlevel%==0 (
    python -m http.server %PORT%
    goto :eof
)

where npx >nul 2>nul
if %errorlevel%==0 (
    npx --yes http-server -p %PORT% -c-1
    goto :eof
)

echo.
echo [!] Ni Python ni Node n'ont ete trouves.
echo     Installe Python : https://www.python.org/downloads/
echo     (coche "Add Python to PATH" pendant l'installation)
echo.
pause
