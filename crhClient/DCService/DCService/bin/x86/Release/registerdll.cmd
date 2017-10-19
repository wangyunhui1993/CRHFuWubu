@echo off
set currentpath=%~dp0
cd %currentpath%
echo -------------------------------register com dll------------------------------------------

regsvr32 /i /s LEDEngine.dll
if %ERRORLEVEL% == 0(goto success)else(goto fail)
:success
echo ----------------------------------register Successful---------------------------------
goto end

:fail
echo ---------------------------------register Failed----------------------------------------
pause
goto end

:end
echo -----------------------------------Done!-----------------------------
pause
exit
