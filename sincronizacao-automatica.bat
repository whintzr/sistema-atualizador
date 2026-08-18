@echo off
title Sincronizacao automatica com GitHub
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0auto-sync.ps1"
pause
