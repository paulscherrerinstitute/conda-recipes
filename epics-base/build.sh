#!/bin/bash

# export EPICS_HOST_ARCH as determined
EPICS_BASE=$PREFIX/epics
EPICS_HOST_ARCH=$(perl src/tools/EpicsHostArch.pl)

# EPICS assumes gcc suit has /usr/bin prefix.
# conda-build define CC
GNU_DIR=$(dirname $(dirname $CC))
CMPLR_PREFIX=$(basename ${CC%-*})-
cat << EOF >> configure/CONFIG_SITE.Common.linuxCommon
GNU_DIR=$GNU_DIR
CMPLR_PREFIX=$CMPLR_PREFIX
EOF

make -j$(getconf _NPROCESSORS_ONLN)

# deal with env export
mkdir -p $PREFIX/etc/conda/activate.d
mkdir -p $PREFIX/etc/conda/deactivate.d

ACTIVATE=$PREFIX/etc/conda/activate.d/epics_base.sh
DEACTIVATE=$PREFIX/etc/conda/deactivate.d/epics_base.sh
ETC=$PREFIX/etc

# set up
echo "export EPICS_BASE="$EPICS_BASE >> $ACTIVATE
echo "export EPICS_HOST_ARCH="$EPICS_HOST_ARCH >> $ACTIVATE

# tear down
echo "unset EPICS_BASE" >> $DEACTIVATE
echo "unset EPICS_HOST_ARCH" >> $DEACTIVATE

# clean up after self
unset ACTIVATE
unset DEACTIVATE
unset ETC
