@echo off
set "BE_PATH=%USERPROFILE%\Desktop\adet-mainproject-bsit22\adet-be-bsit22\launch_be.vbs"
set "FE_PATH=%USERPROFILE%\Desktop\adet-mainproject-bsit22\adet-fe-bsit22\launch_fe.vbs"

echo --- STARTING ADET SERVICES ---

if exist "%BE_PATH%" (
    start wscript.exe "%BE_PATH%"
    echo [OK] Started Backend
) else (
    echo [ERROR] Missing: %BE_PATH%
)

if exist "%FE_PATH%" (
    start wscript.exe "%FE_PATH%"
    echo [OK] Started Frontend
) else (
    echo [ERROR] Missing: %FE_PATH%
)

echo Waiting 15 seconds...
timeout /t 15 /nobreak >nul
start http://localhost:4200
exit