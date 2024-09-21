@ECHO OFF
PUSHD "%~dp0"
set _arch=x86
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set _arch=x86_64)
IF DEFINED PROCESSOR_ARCHITEW6432 (set _arch=x86_64)
PUSHD "%_arch%"

start "" goodbyedpi.exe -9 -e1 -q --fake-gen 29  --fake-from-hex a58c7f6f61af8f87025290b3b951bff8ca6731335cd6676099bdd282a8e0de7307c6c876959fc9b7ca1167a1ab6716be982f189461e3a9b6b45e --blacklist ..\russia-blacklist.txt --blacklist ..\russia-youtube.txt

POPD
POPD
