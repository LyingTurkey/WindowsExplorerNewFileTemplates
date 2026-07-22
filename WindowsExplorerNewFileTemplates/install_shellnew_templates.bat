@echo off
:: Check for administrator privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrator privileges confirmed. Proceeding with installation...
) else (
    echo ERROR: You must right-click this file and select "Run as administrator".
    pause
    exit /b
)

:: Ensure the destination folder exists
if not exist "C:\Windows\ShellNew" (
    mkdir "C:\Windows\ShellNew"
    echo Created missing C:\Windows\ShellNew directory.
)

:: Define the dynamic path to the user's specific Downloads folder layout
set "SOURCE_DIR=%USERPROFILE%\Downloads\WindowsExplorerNewFileTemplates\ShellNew Templates"

echo Sourcing files from: %SOURCE_DIR%
echo.

:: Cut and move the templates from the Downloads folder to the system folder
move /y "%SOURCE_DIR%\template.js" "C:\Windows\ShellNew\"
move /y "%SOURCE_DIR%\template.py" "C:\Windows\ShellNew\"
move /y "%SOURCE_DIR%\template.reg" "C:\Windows\ShellNew\"
move /y "%SOURCE_DIR%\template.bat" "C:\Windows\ShellNew\"

echo.
echo All template files have been successfully added to C:\Windows\ShellNew !
pause
