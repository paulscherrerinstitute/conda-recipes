if %ARCH%==32 (
    set EPICS_HOST_ARCH=win32-x86
) else if %ARCH%==64 (
    set EPICS_HOST_ARCH=windows-x64
)

REM SCRIPTS causes failure of GNU make
set SCRIPTS=

REM show path for debug
set PATH

REM set up build
copy %RECIPE_DIR%\pre-build.py %SRC_DIR%
python pre-build.py

echo Building at %CD%
make clean
make CROSS_COMPILER_TARGET_ARCHS=%EPICS_HOST_ARCH%-static

# deal with env export
mkdir %PREFIX%\etc\conda\activate.d
mkdir %PREFIX%\etc\conda\deactivate.d

set ACTIVATE=%PREFIX%\etc\conda\activate.d\epics_base.bat
set DEACTIVATE=%PREFIX%\etc\conda\deactivate.d\epics_base.bat

# set up
echo @set "EPICS_BASE=%PREFIX%/epics" >> %ACTIVATE%
echo @set "EPICS_HOST_ARCH=%EPICS_HOST_ARCH%" >> %ACTIVATE%

# tear down
echo @set "EPICS_BASE=" >> %DEACTIVATE%
echo @set "EPICS_HOST_ARCH=" >> %DEACTIVATE%

# clean up after self
set ACTIVATE=
set DEACTIVATE=
