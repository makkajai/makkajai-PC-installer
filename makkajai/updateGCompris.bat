@echo off
IF EXIST "%ProgramFiles(x86)%" (
 "%ProgramFiles(x86)%\Git\bin\sh.exe" --login updateGCompris.sh
) ELSE (
 "%ProgramFiles%\Git\bin\sh.exe" --login updateGCompris.sh
)
exit