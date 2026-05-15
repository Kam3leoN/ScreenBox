@echo off
REM Lance ES-KDE avec le bon repertoire de travail (obligatoire pour les DLL).
cd /d "%~dp0"
if not exist "ES-KDE.exe" (
  echo [ERREUR] ES-KDE.exe introuvable dans : %CD%
  echo Telechargez le depot complet depuis GitHub ou faites git pull.
  pause
  exit /b 1
)
start "" "%~dp0ES-KDE.exe" --home "%~dp0"
exit /b 0
