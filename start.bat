@echo off
echo.
echo ========================================
echo   MERN Full-Stack Application
echo ========================================
echo.

REM Check if dependencies are installed
if not exist "node_modules\" (
    echo [1/3] Installing root dependencies...
    call npm install
)

if not exist "Our-Product-Backend\node_modules\" (
    echo [2/3] Installing backend dependencies...
    cd Our-Product-Backend
    call npm install
    cd ..
)

if not exist "U-DEVS-Project\node_modules\" (
    echo [3/3] Installing frontend dependencies...
    cd U-DEVS-Project
    call npm install
    cd ..
)

echo.
echo ========================================
echo   Starting Development Servers
echo ========================================
echo.
echo   Backend:  http://localhost:5000
echo   Frontend: http://localhost:5173
echo   API Docs: http://localhost:5000/api-docs
echo.
echo   Press Ctrl+C to stop both servers
echo.
echo ========================================
echo.

REM Start both servers
npm run dev