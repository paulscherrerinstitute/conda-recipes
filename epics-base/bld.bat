REM Get make command
set PATH=%PATH%;C:\cygwin\bin

REM    --------------- Visual c++ ------------------------
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" amd64

REM    --------------- EPICS -----------------------------
REM    -- R3.14 requirements
set EPICS_HOST_ARCH=windows-x64
REM set PATH=%PATH%;%LIBRARY_PREFIX%\epics\base-3.14.12.4\bin\%EPICS_HOST_ARCH%


echo %CYGWIN_PREFIX%

set PREFIX=%CYGWIN_PREFIX%
set EPICS_BASE=/cygdrive/c/Anaconda3/conda-bld/work/base-3.14.12.4
REM set INSTALL_LOCATION=%CYGWIN_PREFIX%/epics

echo %LIBRARY_PREFIX%
echo %EPICS_HOST_ARCH%
echo %INSTALL_LOCATION%

REM Save current environment
set > condaEnv.txt

REM Unset all environment variables

REM set ARCH=
REM set LIBRARY_LIB=
REM set LIBRARY_PREFIX=
REM set HOMEPATH=
REM set SP_DIR=
REM set RECIPE_DIR=
REM set PROMPT=$P$G
REM set R=
REM set LIBRARY_INC=
REM set STDLIB_DIR=
REM set SRC_DIR=

for /f "tokens=1* delims==" %%a in ('set') do (
set %%a=
)

pause

echo ##############################################################################################################
echo "Write"
for /f "delims=" %%a in (C:\Users\ebner\conda-recipes\epics-base\condaEnvW.txt) do (
set "%%a"
)

echo ##############################################################################################################
echo %PATH%
echo ##############################################################################################################

REM set PATH=%PATH%;C:\cygwin\bin
REM set PATH=%PATH%;C:\Program Files (x86)\Windows Kits\8.1\bin\x64
REM set INCLUDE=%INCLUDE%;C:\Program Files (x86)\Windows Kits\8.1\Include\um;C:\Program Files (x86)\Windows Kits\8.1\Include\shared
REM set EPICS_HOST_ARCH=windows-x64

make
