


rem +-+-------------------------------+-+
rem +-+-------------------------------+-+
rem ! ! Set Screen's Brightness to 42 ! !
rem +-+-------------------------------+-+
rem +-+-------------------------------+-+

powershell.exe (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,42)

rem +-+----------------------------------------------------------------+-+
rem +-+----------------------------------------------------------------+-+
rem ! ! Set Screen's Resolution to [Horizontal] [Vertical] [Frequency] ! !
rem +-+----------------------------------------------------------------+-+
rem +-+----------------------------------------------------------------+-+

powershell.exe -file "C:\HC\Program\WindowsConfigurations\Set-ScreenResolution.ps1" 3840 2400 60

rem +-+-----------------+-+
rem +-+-----------------+-+
rem ! ! End of Document ! !
rem +-+-----------------+-+
rem +-+-----------------+-+


