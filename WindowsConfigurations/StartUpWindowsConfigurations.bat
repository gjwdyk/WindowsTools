


rem +-+--------------------------------------------------+-+
rem +-+--------------------------------------------------+-+
rem ! ! Wait until the pesky mismanaging programs finish ! !
rem +-+--------------------------------------------------+-+
rem +-+--------------------------------------------------+-+

timeout /nobreak /t 22

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

rem +-+------------------------------------+-+
rem +-+------------------------------------+-+
rem ! ! Some note worthy powercfg commands ! !
rem +-+------------------------------------+-+
rem +-+------------------------------------+-+
rem ! ! powercfg /?                        ! !
rem ! ! powercfg /? change                 ! !
rem ! ! powercfg /query                    ! !
rem ! ! powercfg /aliases                  ! !
rem +-+------------------------------------+-+
rem +-+------------------------------------+-+

rem +-+------------------------------------------------------+-+
rem +-+------------------------------------------------------+-+
rem ! ! Set Turn Off Display After [Minutes] (On Battery/DC) ! !
rem ! ! 0 = Never                                            ! !
rem +-+------------------------------------------------------+-+
rem +-+------------------------------------------------------+-+

powercfg -change -monitor-timeout-dc 601

rem +-+------------------------------------------------------+-+
rem +-+------------------------------------------------------+-+
rem ! ! Set Turn Off Display After [Minutes] (Plugged In/AC) ! !
rem ! ! 0 = Never                                            ! !
rem +-+------------------------------------------------------+-+
rem +-+------------------------------------------------------+-+

powercfg -change -monitor-timeout-ac 0

rem +-+-------------------------------------------------------+-+
rem +-+-------------------------------------------------------+-+
rem ! ! Set Battery Level [Critical,Reserve,Low] [Percentage] ! !
rem ! !                                                       ! !
rem ! ! Battery Level Reserve does not have Alias GUID.       ! !
rem ! ! Run the below for Reference :                         ! !
rem ! ! powercfg /query                                       ! !
rem ! ! powercfg /aliases                                     ! !
rem +-+-------------------------------------------------------+-+
rem +-+-------------------------------------------------------+-+

powercfg -setacvalueindex SCHEME_CURRENT SUB_BATTERY BATLEVELCRIT 3%
powercfg -setdcvalueindex SCHEME_CURRENT SUB_BATTERY BATLEVELCRIT 3%
powercfg -setacvalueindex SCHEME_CURRENT SUB_BATTERY f3c5027d-cd16-4930-aa6b-90db844a8f00 8%
powercfg -setdcvalueindex SCHEME_CURRENT SUB_BATTERY f3c5027d-cd16-4930-aa6b-90db844a8f00 8%
powercfg -setacvalueindex SCHEME_CURRENT SUB_BATTERY BATLEVELLOW 9%
powercfg -setdcvalueindex SCHEME_CURRENT SUB_BATTERY BATLEVELLOW 9%

rem +-+---------------------------------------------------------+-+
rem +-+---------------------------------------------------------+-+
rem ! ! Set Battery Level Notification [Critical,Low] [On, Off] ! !
rem ! !                                                         ! !
rem ! ! Run the below for Reference :                           ! !
rem ! ! powercfg /query                                         ! !
rem ! ! powercfg /aliases                                       ! !
rem +-+---------------------------------------------------------+-+
rem +-+---------------------------------------------------------+-+

powercfg -setacvalueindex SCHEME_CURRENT SUB_BATTERY BATFLAGSCRIT 1
powercfg -setdcvalueindex SCHEME_CURRENT SUB_BATTERY BATFLAGSCRIT 1
powercfg -setacvalueindex SCHEME_CURRENT SUB_BATTERY BATFLAGSLOW 1
powercfg -setdcvalueindex SCHEME_CURRENT SUB_BATTERY BATFLAGSLOW 1

rem +-+-------------------------------------------------------+-+
rem +-+-------------------------------------------------------+-+
rem ! ! Set Battery Level Action [Critical,Low] [ActionIndex] ! !
rem ! ! Possible Setting:                                     ! !
rem ! ! 000 = Do Nothing                                      ! !
rem ! ! 001 = Sleep                                           ! !
rem ! ! 002 = Hibernate                                       ! !
rem ! ! 003 = Shut Down                                       ! !
rem ! !                                                       ! !
rem ! ! Run the below for Reference :                         ! !
rem ! ! powercfg /query                                       ! !
rem ! ! powercfg /aliases                                     ! !
rem +-+-------------------------------------------------------+-+
rem +-+-------------------------------------------------------+-+

powercfg -setacvalueindex SCHEME_CURRENT SUB_BATTERY BATACTIONCRIT 2
powercfg -setdcvalueindex SCHEME_CURRENT SUB_BATTERY BATACTIONCRIT 2
powercfg -setacvalueindex SCHEME_CURRENT SUB_BATTERY BATACTIONLOW 0
powercfg -setdcvalueindex SCHEME_CURRENT SUB_BATTERY BATACTIONLOW 0

rem +-+------------------------------------+-+
rem +-+------------------------------------+-+
rem ! ! Set Computer Sleep After [Minutes] ! !
rem ! ! 0 = Never                          ! !
rem ! !                                    ! !
rem ! ! Run the below for Reference :      ! !
rem ! ! powercfg /? change                 ! !
rem +-+------------------------------------+-+
rem +-+------------------------------------+-+

powercfg -change -standby-timeout-ac 0
powercfg -change -standby-timeout-dc 0

rem +-+----------------------------------------+-+
rem +-+----------------------------------------+-+
rem ! ! Set Computer Hibernate After [Minutes] ! !
rem ! ! 0 = Never                              ! !
rem ! !                                        ! !
rem ! ! Run the below for Reference :          ! !
rem ! ! powercfg /? change                     ! !
rem +-+----------------------------------------+-+
rem +-+----------------------------------------+-+

powercfg -change -hibernate-timeout-ac 0
powercfg -change -hibernate-timeout-dc 666

rem +-+--------------------------+-+
rem +-+--------------------------+-+
rem ! ! Pause to Observe Results ! !
rem +-+--------------------------+-+
rem +-+--------------------------+-+

pause

rem +-+-----------------+-+
rem +-+-----------------+-+
rem ! ! End of Document ! !
rem +-+-----------------+-+
rem +-+-----------------+-+


