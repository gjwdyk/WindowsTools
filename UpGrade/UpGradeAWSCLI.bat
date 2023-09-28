


rem +-+---------------------+-+
rem +-+---------------------+-+
rem ! !   UpGrade AWS CLI   ! !
rem +-+---------------------+-+
rem +-+---------------------+-+

@echo on
cd %USERPROFILE%\Downloads



rem +----------------------+
rem !   Pre-View Version   !
rem +----------------------+

aws --version



rem +-------------------------------------------------------------------------------+
rem ! Reference :                                                                   !
rem ! https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html !
rem +-------------------------------------------------------------------------------+

msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi



rem +-----------------------+
rem !   Post-View Version   !
rem +-----------------------+

aws --version



rem +-+-----------------+-+
rem +-+-----------------+-+
rem ! !   End of File   ! !
rem +-+-----------------+-+
rem +-+-----------------+-+


