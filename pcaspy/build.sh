export EPICS_BASE=$PREFIX/epics

PLATFORM=$(uname | tr '[:upper:]' '[:lower:]')
MACHINE=$(uname -m)
if [ $PLATFORM == "linux" ] ; then
  export EPICS_HOST_ARCH=linux-$MACHINE
elif [ $PLATFORM == "darwin" ] ; then
  if [ $MACHINE == "arm64" ]; then
    export EPICS_HOST_ARCH=darwin-aarch64
  elif [ $MACHINE == "x86_64" ]; then
    export EPICS_HOST_ARCH=darwin-x86
  else
    echo "macOS CPU type '$MACHINE' not recognized"
    exit 1
  fi
fi

echo Using EPICS_BASE=$EPICS_BASE
echo Using EPICS_HOST_ARCH=$EPICS_HOST_ARCH

$PYTHON setup.py install
