rem Prepare
CALL _configureSettings.bat
rem ----

set _SOURCEPATH=p:\WW2

rem ----

cd /D "%_APPPATH%"

For /R %_SOURCEPATH% %%G IN (*.p3d) do (

	Echo "%%G"

	O2Script.exe -a "%_SCRIPTPATH%\export_current_lod_bitxt.bio2s" "%%G"

REM 	pause

)

exit
