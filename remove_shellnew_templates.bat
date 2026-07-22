@echo off
:: Check for administrator privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrator privileges confirmed. Proceeding with cleanup...
) else (
    echo ERROR: You must right-click this file and select "Run as administrator".
    pause
    exit /b
)

:: Delete the physical template files from the protected folder
del /f /q "C:\Windows\ShellNew\template.js"
del /f /q "C:\Windows\ShellNew\template.py"
del /f /q "C:\Windows\ShellNew\template.reg"
del /f /q "C:\Windows\ShellNew\template.bat"

echo.
echo All template files have been successfully deleted from C:\Windows\ShellNew !
pause