@echo off
REM Sometimes Microsoft Teams doesn't open or work properly. Flushing some cache things seems to help. This batch file does that.
REM Created 21 April 2020, Chris Noble
setlocal
echo ----------------------------------------------------
echo A small batch file to flush some Teams cache content
echo ----------------------------------------------------
:PROMPT
SET /P AREYOUSURE=Continue (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
echo Beginning flush...
del %appdata%\microsoft\teams\"Application Cache"\Cache\*.* /s /q
del %appdata%\microsoft\teams\blob_storage\*.* /s /q
del %appdata%\microsoft\teams\Cache\*.* /s /q
del %appdata%\microsoft\teams\databases\*.* /s /q
del %appdata%\microsoft\teams\GPUCache\*.* /s /q
del %appdata%\microsoft\teams\IndexedDB\*.* /s /q
del %appdata%\microsoft\teams\"Local Storage"\*.* /s /q
del %appdata%\microsoft\teams\tmp\*.* /s /q
del %appdata%\microsoft\teams\logs.txt /q
del %appdata%\microsoft\teams\old_logs*.txt /q
echo Done!
pause
:END
endlocal
exit
