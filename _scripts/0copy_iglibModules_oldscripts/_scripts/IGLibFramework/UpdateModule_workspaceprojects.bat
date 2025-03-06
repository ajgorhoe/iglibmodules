
@echo off
rem This script updates a specific IGLib's module by cloning its Git 
rem repository (if necessary), and updating it to the current state.

rem Bootstrap scripting such that update scripts are available:
set BootStrapScripting=%~dp0../0bootstrappingscripts/%BootStrapScripting.bat
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

rem Start local context, such that generation script does not have side effects:
setlocal
rem Reset the error level (by running an always successfull command):
ver > nul

rem Repository update parameters:
set ModuleDirRelative=../../../../workspaceprojects
set CheckoutBranch=master
set RepositoryAddress=https://github.com/ajgorhoe/IGLib.workspaceprojects_container.git
set RepositoryAddressSecondary=https://gitlab.com/ajgorhoe/iglib.workspaceprojects_container.git
set RepositoryAddressLocal=d:\backup_sync\bk_code\git\ig\workspaceprojects_container.git
set Remote=origin
set RemoteSecondary=zz_origin_gitlab
set RemoteLocal=local

rem Derived parameters:
set ModuleDir=%~dp0%ModuleDirRelative%


echo.
echo SCRIPT: UpdateRepo: "%UpdateRepo%"
echo.
if not exist "%UpdateRepo%" (
  echo.
  echo ERROR: Variable UpdateRepo does not contain a valid script path.
  echo   BoorstrapScripting probably not performed correctly.
  echo.
  goto finalize
)

rem Finally, perform repository clone / update by using the scripts
rem prepared in the bootstrapping stage:
echo.
echo Executing: 
echo   call "%UpdateRepo%" %*
echo.
call "%UpdateRepo%" %*


:finalize


endlocal

