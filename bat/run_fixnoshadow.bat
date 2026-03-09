@echo off
set O2="D:\SteamLibrary\steamapps\common\DayZ Experimental Tools\Bin\ObjectBuilder\O2Script.exe"
set SCRIPT="p:\OverKillDevelopment\DEV_PROGRAMS\DayZScripts\FixLODNoShadowProperty.bio2s"

echo ============================================
echo  Fix LOD NoShadow Property - Batch Runner
echo ============================================
echo.

set /p "FOLDER=Enter folder to scan (e.g. p:\OverKillDevelopment\DankWeaponPack3): "
set /p "THRESHOLD=Face threshold (default 1000, press Enter to use default): "

if "%THRESHOLD%"=="" set THRESHOLD=1000

echo.
echo Scanning: %FOLDER%
echo Threshold: %THRESHOLD% faces
echo.

for /R "%FOLDER%" %%F in (*.p3d) do (
  echo Processing: %%~nxF
  %O2% -a %SCRIPT% "%%~fF" %THRESHOLD%
  echo.
)

echo.
echo Done!
pause
