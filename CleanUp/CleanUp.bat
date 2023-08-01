whoami /priv

cd C:\Windows\Temp\
del C:\Windows\Temp\* /q /s /f
cd C:\Windows\Logs\
del C:\Windows\Logs\* /q /s /f
cd "C:\Users\Hendry Chandra\AppData\Local\Temp\"
del "C:\Users\Hendry Chandra\AppData\Local\Temp\*" /q /s /f
cd C:\Windows\Minidump\
del C:\Windows\Minidump\* /q /s /f

pause

c:\windows\SYSTEM32\cleanmgr.exe /dC

cd C:\Windows\Temp\
del C:\Windows\Temp\* /q /s /f
cd C:\Windows\Logs\
del C:\Windows\Logs\* /q /s /f
cd "C:\Users\Hendry Chandra\AppData\Local\Temp\"
del "C:\Users\Hendry Chandra\AppData\Local\Temp\*" /q /s /f
cd C:\Windows\Minidump\
del C:\Windows\Minidump\* /q /s /f

pause
