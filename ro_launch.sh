#!/bin/bash

export LC_ALL=C
REGNUM_DIR=~/regnum
LIBXCB_DIR=~/rokeyshack.built/libxcb.patched

cd $REGNUM_DIR && LD_PRELOAD=$LIBXCB_DIR/src/.libs/libxcb.so ./rolauncher
