call runcrud.bat
if "%ERRORLEVEL%" == "0" goto startchrome
echo.
echo Cannot run applicaton...
goto fail

:startchrome
call "Chrome" "C:\Program Files\Google\Chrome\Application\chrome.exe"
start http://localhost:8080/crud/v1/task/getTasks
goto end

:fail
echo.
echo There where errors.

:end
echo.
echo Work is finished.
