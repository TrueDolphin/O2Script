@echo off
set O2="D:\SteamLibrary\steamapps\common\DayZ Experimental Tools\Bin\ObjectBuilder\O2Script.exe"
set SCRIPT="p:\OverKillDevelopment\DEV_PROGRAMS\DayZScripts\SetGeometryWeightsNormalize.bio2s"
for /R "p:\OverKillDevelopment\DankWeaponPack3\Weapons" %%F in (*.p3d) do (
  %O2% -a %SCRIPT% "%%~fF"
)
pause