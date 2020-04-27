@echo off
REM Got a bad IP in your DNS cache? Flush it with this batch file!
REM Created 16 Sep 2014, Chris Noble
echo Beginning DNS flush...
ipconfig /flushdns
echo Done!
pause
exit