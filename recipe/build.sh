#!/bin/bash

./configure --prefix=$PREFIX --disable-static
# First call only the install target as compilation for tests only works with an installed libunwind
make install -j${CPU_COUNT}
make -j${CPU_COUNT}
make check -j${CPU_COUNT}
