SET CONDA_HOME=%PREFIX%
dir .
dir ..
dir ..\..
"%PYTHON%" setup.py install
if errorlevel 1 exit 1
