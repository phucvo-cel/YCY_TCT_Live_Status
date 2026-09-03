@echo off
:: Wait for system to fully load
timeout /t 10 /nobreak

:: Start Mutagen daemon
mutagen daemon start

:: Start rclone mount in background
start "" /B rclone mount "gdrive:YCH-TCT" "D:\Đi Làm\CEL\Project\YCH - TCT\YCH-TCT-ggdrive" --vfs-cache-mode full
