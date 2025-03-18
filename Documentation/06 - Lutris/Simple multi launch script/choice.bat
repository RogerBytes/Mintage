@echo off
setlocal enabledelayedexpansion
set numb=3
:: Vérifier si le script a été relancé en mode minimisé
if "%1"=="_min" (
  set choice=%2
  goto :launch_game
)

:: Menu principal
:menu
cls
echo.
echo     -----------------
echo     Final Fantasy VII
echo     -----------------
echo.
echo ========================================
echo         Choisissez une option
echo ========================================
echo.
echo  1. Final Fantasy VII DX (remaster fan made)
echo  2. Final Fantasy VII Vanilla
echo  3. Gestionnaire de mods
echo  0. Quitter
echo ========================================
echo.
echo Entrez votre choix (1-%numb%) :
set /p choice=


:: vérifie que le choix est dans la plage de nombre du menu changer la var numb au besoin
SET "var=" & for /f "delims=0123456789" %%i in ("%choice%") do set var=%%i
if defined var (
  echo Choix incorrect. Veuillez entrer un nombre et non des lettres.
  pause
  goto :menu
) else if not %choice% leq %numb% (
  echo Choix incorrect. Veuillez entrer un nombre entre 0 et %numb% inclus.
  pause
  goto :menu
) else if not %choice% gtr -1 (
  echo Choix incorrect. Veuillez entrer un nombre entre 0 et %numb% inclus.
  pause
  goto :menu
)


:: Relancer le script en mode minimisé avec le choix sélectionné
start /min "" cmd /c "%~f0" _min %choice%
exit

:: Partie du script exécutée après minimisation
:launch_game

if "%choice%"=="1" (
  cd "C:\Games\Final Fantasy VII DX\7th Heaven\"
  "7th Heaven.exe" /MINI /PROFILE:"Final Fantasy VII DX" /LAUNCH /QUIT
)
if "%choice%"=="2" (
  cd "C:\Games\Final Fantasy VII DX\7th Heaven\"
  "7th Heaven.exe" /MINI /PROFILE:"Final Fantasy VII Vanilla" /LAUNCH /QUIT
)
if "%choice%"=="3" (
  cd "C:\Games\Final Fantasy VII DX\7th Heaven\"
  "7th Heaven.exe"
)

exit
