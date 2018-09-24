@echo off 
setlocal enabledelayedexpansion 
for /f "delims=" %%i in ('dir /a:-d /b /s D:\test\"*.txt"') do ( 
ren "%%i" "%%~ni.jpg" 
) 
pause