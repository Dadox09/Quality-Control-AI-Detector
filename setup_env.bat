@echo off
echo ==========================================
echo Quality Control Project - Environment Setup
echo ==========================================
echo.

REM Create virtual environment
echo [1/4] Creating virtual environment...
python -m venv venv
if %errorlevel% neq 0 (
    echo ERROR: Failed to create virtual environment
    pause
    exit /b 1
)
echo Success!
echo.

REM Activate virtual environment
echo [2/4] Activating virtual environment...
call venv\Scripts\activate.bat
if %errorlevel% neq 0 (
    echo ERROR: Failed to activate virtual environment
    pause
    exit /b 1
)
echo Success!
echo.

REM Upgrade pip
echo [3/4] Upgrading pip...
python -m pip install --upgrade pip
echo.

REM Install dependencies
echo [4/4] Installing dependencies...
pip install -r requirements.txt
if %errorlevel% neq 0 (
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)
echo.

REM Verify DirectML installation
echo ==========================================
echo Verifying DirectML installation...
echo ==========================================
python -c "import torch_directml; device = torch_directml.device(); print(f'\nDirectML device: {device}'); print('GPU acceleration is READY!')"
if %errorlevel% neq 0 (
    echo WARNING: DirectML verification failed
    echo Your AMD GPU may not be properly configured
)
echo.

echo ==========================================
echo Setup complete!
echo ==========================================
echo.
echo To activate the environment in the future, run:
echo   venv\Scripts\activate.bat
echo.
echo To deactivate, run:
echo   deactivate
echo.
pause
