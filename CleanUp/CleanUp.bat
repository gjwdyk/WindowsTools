whoami /priv

cd C:\Windows\Temp\
del C:\Windows\Temp\* /q /s /f
cd C:\Windows\Logs\
del C:\Windows\Logs\* /q /s /f
cd C:\Windows\debug\
del C:\Windows\debug\* /q /s /f
cd C:\Windows\Minidump\
del C:\Windows\Minidump\* /q /s /f
cd C:\Windows\Prefetch\
del C:\Windows\Prefetch\* /q /s /f
rem cd C:\Windows\SoftwareDistribution\
rem del C:\Windows\SoftwareDistribution\* /q /s /f
cd C:\ProgramData\Microsoft\Windows\WER\ReportArchive\
del C:\ProgramData\Microsoft\Windows\WER\ReportArchive\* /q /s /f
cd %userprofile%\AppData\Local\Temp\
del %userprofile%\AppData\Local\Temp\* /q /s /f
cd %userprofile%\AppData\Local\CrashDumps\
del %userprofile%\AppData\Local\CrashDumps\* /q /s /f

cd %userprofile%
pause

C:\windows\SYSTEM32\cleanmgr.exe /dC

cd C:\Windows\Temp\
del C:\Windows\Temp\* /q /s /f
cd C:\Windows\Logs\
del C:\Windows\Logs\* /q /s /f
cd C:\Windows\debug\
del C:\Windows\debug\* /q /s /f
cd C:\Windows\Minidump\
del C:\Windows\Minidump\* /q /s /f
cd C:\Windows\Prefetch\
del C:\Windows\Prefetch\* /q /s /f
rem cd C:\Windows\SoftwareDistribution\
rem del C:\Windows\SoftwareDistribution\* /q /s /f
cd C:\ProgramData\Microsoft\Windows\WER\ReportArchive\
del C:\ProgramData\Microsoft\Windows\WER\ReportArchive\* /q /s /f
cd %userprofile%\AppData\Local\Temp\
del %userprofile%\AppData\Local\Temp\* /q /s /f
cd %userprofile%\AppData\Local\CrashDumps\
del %userprofile%\AppData\Local\CrashDumps\* /q /s /f

cd %userprofile%
pause
