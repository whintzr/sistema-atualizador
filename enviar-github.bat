@echo off
title Enviar para o GitHub agora
cd /d "%~dp0"
git add -A
git commit -m "Atualizacao manual - %date% %time%"
git push
echo.
echo Pronto. Pressione qualquer tecla para fechar.
pause >nul
