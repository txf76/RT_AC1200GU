#!/bin/bash

CURPATH=/home/RT_AC1200GU/asuswrt
ln -s $CURPATH/tools/brcm /opt/brcm
ln -s $CURPATH/tools/buildroot-gcc463 /opt/buildroot-gcc463
ln -s $CURPATH/tools/mips-2012.03 /opt/mips-2012.03
export PATH=$PATH:/opt/brcm/hndtools-mipsel-uclibc/bin:/opt/brcm/hndtools-mipsel-linux/bin:/opt/buildroot-gcc463/bin:/opt/mips-2012.03/bin

#make
cd $CURPATH/release/src-ra-4300
make distclean
LOG=$CURPATH/log$(date '+%Y%m%d%H%M%S').txt
time make rt-ac1200gu V=99 | tee $LOG 