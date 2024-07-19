@echo off

:: Check if Dart is installed
where dart >nul 2>nul
if %errorlevel% neq 0 (
    echo Dart SDK could not be found. Please install Dart SDK first.
    exit /b
)

:: Activate webdev
dart pub global activate webdev

:: Serve the web application
webdev serve