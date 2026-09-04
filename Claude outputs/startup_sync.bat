@echo off
:: Wait for system to fully load
timeout /t 10 /nobreak

:: Start Mutagen daemon (VSCode SSH <-> Local Desktop sync)
mutagen daemon start