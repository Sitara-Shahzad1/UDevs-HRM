@echo off
echo.
echo ========================================
echo   MERN Setup Verification
echo ========================================
echo.

set ERROR_COUNT=0

echo [1/6] Checking Node.js installation...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo    [X] Node.js is NOT installed
    set /a ERROR_COUNT+=1
) else (
    echo    [OK] Node.js is installed
)

echo [2/6] Checking npm installation...
npm --version >nul 2>&1
if %errorlevel% neq 0 (
    echo    [X] npm is NOT installed
    set /a ERROR_COUNT+=1
) else (
    echo    [OK] npm is installed
)

echo [3/6] Checking root dependencies...
if exist "node_modules\" (
    echo    [OK] Root dependencies installed
) else (
    echo    [!] Root dependencies NOT installed - Run: npm install
    set /a ERROR_COUNT+=1
)

echo [4/6] Checking backend dependencies...
if exist "Our-Product-Backend\node_modules\" (
    echo    [OK] Backend dependencies installed
) else (
    echo    [!] Backend dependencies NOT installed
    set /a ERROR_COUNT+=1
)

echo [5/6] Checking frontend dependencies...
if exist "U-DEVS-Project\node_modules\" (
    echo    [OK] Frontend dependencies installed
) else (
    echo    [!] Frontend dependencies NOT installed
    set /a ERROR_COUNT+=1
)

echo [6/6] Checking environment files...
if exist "Our-Product-Backend\.env" (
    echo    [OK] Backend .env exists
) else (
    echo    [!] Backend .env NOT found
    set /a ERROR_COUNT+=1
)

if exist "U-DEVS-Project\.env" (
    echo    [OK] Frontend .env exists
) else (
    echo    [!] Frontend .env NOT found
    set /a ERROR_COUNT+=1
)

echo.
echo ========================================
echo   Verification Complete
echo ========================================
echo.

if %ERROR_COUNT% equ 0 (
    echo    [SUCCESS] All checks passed!
    echo.
    echo    You can now run: npm run dev
    echo.
) else (
    echo    [WARNING] %ERROR_COUNT% issue(s) found
    echo.
    echo    To fix missing dependencies, run:
    echo    npm run install-all
    echo.
    echo    To create missing .env files, check:
    echo    README.md for configuration details
    echo.
)

echo ========================================
echo.
pause