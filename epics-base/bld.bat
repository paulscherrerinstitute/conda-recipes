REM Get make command
set PATH=%PATH%;C:\cygwin\bin
REM    --------------- Visual c++ ------------------------
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" amd64

REM    --------------- EPICS -----------------------------
REM    -- R3.14 requirements
set EPICS_HOST_ARCH=windows-x64
set PATH=%PATH%;%LIBRARY_PREFIX%\epics\base-3.14.12.4\bin\%EPICS_HOST_ARCH%

set PREFIX=%LIBRARY_PREFIX%
set EPICS_BASE=%LIBRARY_PREFIX%\epics
set EPICS_HOST_ARCH=windows-x64

call make