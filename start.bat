@echo off
REM Check if pip is installed
python -m pip --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Pip is not installed. Attempting to install pip...
    python -m ensurepip --default-pip
    IF %ERRORLEVEL% NEQ 0 (
        echo Failed to install pip. Please install pip manually.
        pause
        exit /b
    )
)

REM Install required packages
echo Installing required packages...
pip install colorama tls_client datetime typing_extensions

REM Check if installation was successful
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to install required packages. Please check your internet connection or package names.
    pause
    exit /b
)

REM Run the Python script
echo Running main.py...
python main.py

REM Pause to keep the command prompt open
pause
