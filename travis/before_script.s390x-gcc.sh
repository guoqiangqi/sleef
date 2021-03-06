#!/bin/bash
set -ev
mkdir build && cd build

cmake -G Ninja -DRUNNING_ON_TRAVIS=TRUE -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../install \
      -DSLEEF_SHOW_CONFIG=1 -DENFORCE_TESTER3=TRUE -DBUILD_QUAD=TRUE -DBUILD_DFT=TRUE -DBUILD_INLINE_HEADERS=TRUE -DENFORCE_VXE=TRUE ..
