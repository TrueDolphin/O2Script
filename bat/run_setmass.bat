@echo off
set O2="D:\SteamLibrary\steamapps\common\DayZ Experimental Tools\Bin\ObjectBuilder\O2Script.exe"
set SCRIPT="p:\OverKillDevelopment\DEV_PROGRAMS\DayZScripts\SetGeometryMass.bio2s"

echo ============================================
echo  Set Geometry Mass - Batch Runner
echo ============================================
echo.

set /p "FOLDER=Enter folder to scan (e.g. p:\OverKillDevelopment\DankWeaponPack3): "
set /p "MASS=Enter target mass in kg (e.g. 150): "

if "%MASS%"=="" (
  echo ERROR: Mass is required!
  pause
  exit /b 1
)

echo.
echo Scanning: %FOLDER%
echo Target mass: %MASS% kg
echo.

for /R "%FOLDER%" %%F in (*.p3d) do (
  echo Processing: %%~nxF
  %O2% -a %SCRIPT% "%%~fF" %MASS%
  echo.
)

echo.
echo Done!
pause
