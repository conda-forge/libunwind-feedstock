#!/bin/bash

export CFLAGS="$CFLAGS -fuse-ld=gold"
./configure --prefix=$PREFIX --disable-static
make -j${CPU_COUNT}
# The tests are known to be flakey so allow them to fail
make check -j1 || :
make install -j${CPU_COUNT}
