@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

for /f %%i in ('dir/b *.png') do (
  SET FILENAME=%%i
  SET DIRNAME=!FILENAME:~17,10!
  echo !DIRNAME!
  if not exist !DIRNAME! mkdir !DIRNAME!
  move /-Y !FILENAME! !DIRNAME!
)

ENDLOCAL
