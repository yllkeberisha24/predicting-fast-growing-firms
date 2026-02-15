@echo off
REM Script to create and set up the 'growth' virtual environment for Windows
REM This script creates a virtual environment, activates it, and installs all dependencies

echo =========================================
echo Setting up 'growth' virtual environment
echo =========================================

REM Check if Python is available
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Python is not installed or not in PATH
    echo Please install Python 3 and try again
    exit /b 1
)

REM Display Python version
echo Found Python:
python --version

REM Check if virtual environment already exists
if exist "growth\" (
    echo Warning: 'growth' virtual environment already exists
    set /p REPLY="Do you want to remove it and create a new one? (y/n): "
    if /i "%REPLY%"=="y" (
        echo Removing existing 'growth' directory...
        rmdir /s /q growth
    ) else (
        echo Setup cancelled
        exit /b 0
    )
)

REM Create virtual environment
echo Creating virtual environment 'growth'...
python -m venv growth

REM Activate virtual environment
echo Activating virtual environment...
call growth\Scripts\activate.bat

REM Upgrade pip
echo Upgrading pip...
python -m pip install --upgrade pip

REM Install requirements
echo Installing dependencies from requirements.txt...
if exist "requirements.txt" (
    pip install -r requirements.txt
    echo.
    echo =========================================
    echo Setup completed successfully!
    echo =========================================
    echo.
    echo To activate the virtual environment, run:
    echo   growth\Scripts\activate.bat
    echo.
    echo To deactivate when you're done, run:
    echo   deactivate
) else (
    echo Error: requirements.txt not found
    exit /b 1
)
