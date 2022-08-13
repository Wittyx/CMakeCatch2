
set CurrentFolder=%~dp0
set BUILD=%CurrentFolder%\bld_2019_x64\
REM set CMake_Exe="%CurrentFolder%CMake\bin\CMake.exe"
set CMAKE_HOME=C:\Program Files\CMake

echo %CMAKE_HOME%

set CMake_Exe="%CMAKE_HOME%\bin\cmake.exe"
if not exist %CMake_Exe% (
	set CMake_Exe=%CurrentFolder%\CMake\bin\CMake.exe
	if not exist %CMake_Exe% (
		set CMake_Exe=CMake.exe
		)
)

echo Build Folder: %BUILD%
echo CMake Path: %CMake_Exe%

if not exist %BUILD% (
mkdir %BUILD%
)

REM if not exist %CMake_Exe% (
REM echo CMake does not exist, check path: 
REM echo == %CMake_Exe%
REM goto exit_no_cmake
REM )

cd %BUILD%
%CMake_Exe% --version

set PreferredToolArchitecture=x64

%CMake_Exe% ^
	..\..\ ^
	-G "Visual Studio 16 2019" -A x64  ^
	-DCMAKE_RUNTIME_OUTPUT_DIRECTORY="%CD%\..\..\output\x64\bin" ^
	-DCMAKE_LIBRARY_OUTPUT_DIRECTORY="%CD%\..\..\output\x64\bin" ^
	-DCMAKE_ARCHIVE_OUTPUT_DIRECTORY="%CD%\..\..\output\x64\lib" ^
	
cd ..

if not %ERRORLEVEL%==0 (goto :exit_fail)

goto exit_success

:exit_no_cmake
echo Make Solution failed

:exit_fail
echo CMake fail
exit 1

:exit_success