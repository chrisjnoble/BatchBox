@echo off
REM Need to manually tweak the Windows Start Menu? This batch file opens the (user and system) Start Menu folders...
REM Created 3 April 2018, Chris Noble
%SystemRoot%\explorer.exe "%AppData%\Microsoft\Windows\Start Menu\Programs"
%SystemRoot%\explorer.exe "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
Exit