
rem This scripts runs other scripts that include those IGLib-related and
rem other models that are directly included in the containing directory.

@echo off
rem Start local context, such that generation script does not have side effects:
setlocal
rem Reset the error level (by running an always successfull command):
ver > nul



rem Bootstrap scripting such that update scripts are available:
rem Important: bootstrapping must be called before settings, otherwise
rem it would overrite the essential repository settings.
set BootStrapScripting=%~dp0\_scripts\0bootstrappingscripts\BootStrapScripting.bat
echo.
echo SCRIPT: BootStrapScripting: "%BootStrapScripting%"
echo.
if not exist "%BootStrapScripting%" (
  echo.
  echo ERROR: Variable BootStrapScripting does not contain a valid
  echo   script path.
  echo.
  goto finalize
)
call "%BootStrapScripting%"


echo.
echo UPDATING DIRECTORY MODULES: workspace/base/
echo.

rem Perform updates of individual repos contained in this directory:
rem
rem Passing parameters in the way they are passed is kept in order to
rem support legacy update scripts (although in this directory, all
rem scripts have already been updated to the new modus operandi).

rem First, call the script for updating the extended IGLib Framework modules:
call "%~dp0\UpdateGroupModules_FrameworkExtended.bat

rem Then, call other update the remaining scripts that belong to this group:

call "%~dp0\_scripts\IGLibFramework\UpdateModule_unittests.bat" "" "" %*
call "%~dp0\_scripts\IGLibFramework\UpdateModule_igtest.bat" "" "" %*

rem call "%~dp0\_scripts\IGLibFramework\" "" "" %*
rem call "%~dp0\_scripts\IGLibFramework\" "" "" %*


:finalize

endlocal

