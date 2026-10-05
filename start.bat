@echo off
setlocal
cd /d "%~dp0"

if not exist "node_modules\vite\bin\vite.js" (
  echo Installing website dependencies...
  call npm.cmd install
  if errorlevel 1 (
    echo Dependency installation failed. Make sure Node.js and npm are installed.
    pause
    exit /b 1
  )
)

call npm.cmd run dev