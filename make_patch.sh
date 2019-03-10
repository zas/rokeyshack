#!/bin/bash

OLD=$1
NEW=$2

if [ ! -d "$OLD" ] || [ ! -d "$NEW" ]; then
	echo "$0 ORIGINAL_LIBXCB_DIR PATCHED_LIBXCBDIR"
	exit 1
fi

# trim trailing slashes
OLD=${OLD%%/*}
NEW=${NEW%%/*}

for FILE in src/hack.h src/xcb_conn.c src/xcb_in.c src/xcbint.h; do
	diff -urN $OLD/$FILE $NEW/$FILE
done
