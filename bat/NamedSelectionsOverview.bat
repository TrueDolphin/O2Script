rem Prepare
CALL _configureSettings.bat
rem ----

set _SOURCEPATH=p:\WW2

rem ----

cd /D "%_APPPATH%"

For /R %_SOURCEPATH% %%G IN (*.p3d) do (

	Echo "%%G"

	O2Script.exe -a "%_SCRIPTPATH%\NamedSelectionsOverview_CmdLine.bio2s" "%%G" >> "%_LOG_PATH%\NamedSelectionsOverview.log"

REM 	pause

)

exit