#!/bin/bash
export EPICS_BASE=$PREFIX/epics

PLATFORM=$(uname | tr '[:upper:]' '[:lower:]')
if [ $PLATFORM == "linux" ] ; then
  export EPICS_HOST_ARCH=$(uname | tr '[:upper:]' '[:lower:]')-$(uname -m)
elif [ $PLATFORM == "darwin" ] ; then
  export EPICS_HOST_ARCH=darwin-x86
fi

echo Using EPICS_BASE=$EPICS_BASE
echo Using EPICS_HOST_ARCH=$EPICS_HOST_ARCH

$PYTHON setup.py install
