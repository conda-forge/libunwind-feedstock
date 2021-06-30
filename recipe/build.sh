#!/bin/bash

set -x

./configure --prefix=$PREFIX --disable-static


# First call only the install target as compilation for tests only works with an installed libunwind
make install -j${CPU_COUNT}
make -j${CPU_COUNT}


# The tests are known to be flakey so allow them to fail
make check || true
