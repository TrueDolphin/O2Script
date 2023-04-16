rem Prepare
CALL _configureSettings.bat
rem ----

set _SOURCEPATH=p:\WW2

rem ----

cd /D "%_APPPATH%"

For /R %_SOURCEPATH% %%G IN (*.p3d) do (

	Echo "%%G"

	O2Script.exe -a "%_SCRIPTPATH%\RemoveFacesOfTexture_CmdLine.bio2s" "%%G" path\file.rvmat >> "%_LOG_PATH%\RemoveFacesOfTexture.log"

REM 	pause

)

exit