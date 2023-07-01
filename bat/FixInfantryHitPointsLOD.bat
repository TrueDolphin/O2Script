rem Prepare
CALL _configureSettings.bat
rem ----

set _SOURCEPATH=p:\WW2

rem ----

cd /D "%_APPPATH%"

For /R %_SOURCEPATH% %%G IN (*.p3d) do (

	Echo "%%G"

	O2Script.exe -a "%_SCRIPTPATH%\ReplaceHitPointLODfromTo_CmdLine.bio2s" A3_character_example.p3d "%%G"

REM 	pause

)

exit