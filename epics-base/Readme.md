# Overview
This package packages epics-base for Anaconda.

# Build
## Windows
To build the package use the Microsoft Visual Studio 2015 for Anaconda 3 to build for 32 and 64 bit.

To be able to build and compile this package following Anaconda packages need to be installed in your Anaconda installation:
 * vs2015_runtime
 * perl

Note, these packages are only needed for building, not running the package.

Also the whole Visual Studio SDK is required. It can be installed via Visual C++ Build Tools
http://landinghub.visualstudio.com/visual-cpp-build-tools

## PSI Specifics

gfa-win-epics has the proper setup for compiling this package for Windows. You can connect via remote desktop.
1. Open a Command Prompt
2. cd \Projects\conda-recipes
3. C:\Miniconda3\Scripts\conda.exe build epics-base # 32bit
4. C:\Miniconda3-x64\Scripts\conda.exe build epics-base #64bit

The packages are at C:\Miniconda3\conda-bld\win-32 and C:\Miniconda3-x64\conda-bld\win-64.
