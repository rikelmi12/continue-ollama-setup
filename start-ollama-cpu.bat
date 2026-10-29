@echo off
title Ollama CPU Server (Context 16k, Dual Models)
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0start-ollama-cpu.ps1"
pause
