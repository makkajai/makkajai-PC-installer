@echo off
ECHO Checking connection, please wait... >> ./logs/update.log
PING -n 1 www.google.com|find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto :SUCCESS
IF ERRORLEVEL 1 goto :TRYAGAIN

:TRYAGAIN
ECHO FAILURE! >> ./logs/update.log
ECHO Let me try a bit more, please wait... >> ./logs/update.log
@echo off
PING -n 3 www.google.com|find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto :SUCCESS
IF ERRORLEVEL 1 goto :FAILURE

:SUCCESS
ECHO You have an active Internet connection, checking if there are updates available >> ./logs/update.log
start updateGCompris.bat
goto :END

:FAILURE
ECHO You do not have an active Internet connection >> ./logs/update.log
goto :END

:END
start gcompris.exe
exit