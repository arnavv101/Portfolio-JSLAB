@echo off
title Arnav Kamdi Portfolio
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed.
  echo Install the LTS version from https://nodejs.org/ and run this file again.
  pause
  exit /b 1
)
if not exist node_modules (
  echo Installing project dependencies. This may take a few minutes...
  call npm install
  if errorlevel 1 (
    echo Dependency installation failed. Check your internet connection and try again.
    pause
    exit /b 1
  )
)
echo Starting your portfolio...
echo When Vite starts, open the Local URL shown below, usually http://localhost:5173
call npm run dev
pause
