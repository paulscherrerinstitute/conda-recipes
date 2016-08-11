REM Get make command
set PATH=%PATH%;C:\cygwin\bin

REM    --------------- Visual c++ ------------------------
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" amd64

REM    --------------- EPICS -----------------------------
REM    -- R3.14 requirements
set EPICS_HOST_ARCH=windows-x64
rem set PATH=%PATH%;%LIBRARY_PREFIX%\epics\base-3.14.12.4\bin\%EPICS_HOST_ARCH%


echo %CYGWIN_PREFIX%

set PREFIX=%CYGWIN_PREFIX%
set EPICS_BASE=/cygdrive/c/Anaconda3/conda-bld/work/base-3.14.12.4
rem set INSTALL_LOCATION=%CYGWIN_PREFIX%/epics

echo %LIBRARY_PREFIX%
echo %EPICS_HOST_ARCH%
echo %INSTALL_LOCATION%

rem set > condaEnv.txt

set ARCH=
set LIBRARY_LIB=
set LIBRARY_PREFIX=
set HOMEPATH=
set SP_DIR=
set RECIPE_DIR=
set PROMPT=$P$G
set R=
set LIBRARY_INC=
set STDLIB_DIR=
set SRC_DIR=
 
 
for /f "tokens=1* delims==" %%a in ('set') do (
set %%a=
)
echo ##############################################################################################################
echo "Write"
for /f "delims=" %%a in (C:\Anaconda3\conda-bld\condaEnvW.txt) do (
set "%%a"
)

echo ##############################################################################################################
echo %PATH%
echo ##############################################################################################################



rem call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" amd64

rem set PATH=%PATH%;C:\cygwin\bin
rem set PATH=%PATH%;C:\Program Files (x86)\Windows Kits\8.1\bin\x64
rem set INCLUDE=%INCLUDE%;C:\Program Files (x86)\Windows Kits\8.1\Include\um;C:\Program Files (x86)\Windows Kits\8.1\Include\shared
rem set EPICS_HOST_ARCH=windows-x64

make 

cd
pause