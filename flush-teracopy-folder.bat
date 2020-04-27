@echo off
REM Sometimes Teracopy gets stuck and doesn't auto-start the next copy process. Flushing its folder fixes it. This batch file does that, but preserves the options.ini file.
REM Created 9 May 2016, Chris Noble
setlocal
echo -----------------------------------------------
echo A small batch file to flush the Teracopy folder
echo -----------------------------------------------
:PROMPT
SET /P AREYOUSURE=Continue (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
echo Beginning flush...
del %AppData%\TeraCopy\FileList.dat /Q 
del %AppData%\TeraCopy\Transfer.log /Q 
del %AppData%\TeraCopy\processes /Q 
echo Done!
pause
:END
endlocal
exit