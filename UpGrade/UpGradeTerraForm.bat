


rem +-+-----------------------+-+
rem +-+-----------------------+-+
rem ! !   UpGrade TerraForm   ! !
rem +-+-----------------------+-+
rem +-+-----------------------+-+

@echo on



rem +------------------------------------------------------------------------------------------------------------------+
rem ! References :                                                                                                     !
rem ! https://developer.hashicorp.com/terraform/downloads                                                              !
rem ! https://github.com/hashicorp/terraform/issues/9803                                                               !
rem ! https://stackoverflow.com/questions/19356220/how-to-parse-a-json-file-to-variables-with-the-windows-command-line !
rem +------------------------------------------------------------------------------------------------------------------+



rem +----------------------+
rem !   Pre-View Version   !
rem +----------------------+

terraform version



rem +------------------------------------+
rem !   Set Constants and/or Variables   !
rem +------------------------------------+

rem Set according to your Terraform implementation
set TerraFormDirectory=C:\Programs\TerraForm

rem Set according to which installer package you're trying to download
set remoteFileNamePrefix=terraform_
set remoteFileNameSuffix=_windows_amd64.zip

rem Below Variables should be quite Static and do NOT need any adjustment
set cURLCommandPrefix=curl -fkSL --retry 333 -o
set cURLCommandHeader=-H @cURLHeaders
set localFileName=%remoteFileNamePrefix%%remoteFileNameSuffix%
set cURLCommandStaticPrefix=%cURLCommandPrefix% %localFileName% %cURLCommandHeader%
set DownloaderFileName=DownLoadCurrentLatestTerraForm.bat

rem +-----------------------------------------------+
rem !   Obtain Current Latest Version Information   !
rem +-----------------------------------------------+

curl -fkSL --retry 333 -o %USERPROFILE%\Downloads\TerraFormCurrentLatestVersion.json -H "Cache-Control: no-cache, no-store, must-revalidate" -H "Pragma: no-cache" -H "Expires: 0" https://checkpoint-api.hashicorp.com/v1/check/terraform

rem +------------------------------+
rem !   Create Downloader Script   !
rem +------------------------------+

powershell -command " $TerraFormCurrentLatestVersion = Get-Content %USERPROFILE%\Downloads\TerraFormCurrentLatestVersion.json | ConvertFrom-Json ; $TerraFormCurrentLatestShortVersion = $TerraFormCurrentLatestVersion.current_version ; $TerraFormCurrentLatestURLPrefix = $TerraFormCurrentLatestVersion.current_download_url ; $remoteFileNamePrefix = """"%remoteFileNamePrefix%"""" ; $remoteFileNameSuffix = """"%remoteFileNameSuffix%"""" ; $TerraFormRemoteFileName = $remoteFileNamePrefix + $TerraFormCurrentLatestVersion.current_version + $remoteFileNameSuffix ; $TerraFormFullURL = $TerraFormCurrentLatestVersion.current_download_url + """"/"""" + $TerraFormRemoteFileName ; $cURLCommandStaticPrefix = """"%cURLCommandStaticPrefix%"""" ; $cURLFullCommand = $cURLCommandStaticPrefix + """" """" + $TerraFormFullURL ; $cURLFullCommand | out-file -Encoding ascii """"%DownloaderFileName%"""" "
type %DownloaderFileName%

rem +-------------------------------+
rem !   Execute Downloader Script   !
rem +-------------------------------+

call %DownloaderFileName%

rem +---------------------------------+
rem !   Extract the Downloaded File   !
rem +---------------------------------+

tar --verbose --extract --file %localFileName%

rem +--------------------------------+
rem !   Copy the Extracted File(s)   !
rem +--------------------------------+

copy /y/b/v terraform.exe %TerraFormDirectory%\terraform.exe

rem +------------------------------+
rem !   Clean Up Temporary Files   !
rem +------------------------------+

del %USERPROFILE%\Downloads\TerraFormCurrentLatestVersion.json
del %DownloaderFileName%
del %localFileName%
del terraform.exe



rem +-----------------------+
rem !   Post-View Version   !
rem +-----------------------+

terraform version



rem +-+-----------------+-+
rem +-+-----------------+-+
rem ! !   End of File   ! !
rem +-+-----------------+-+
rem +-+-----------------+-+


