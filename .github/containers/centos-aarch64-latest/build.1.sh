#!/bin/bash

cmake -DCMAKE_BUILD_PARALLEL_LEVEL=128 -DCMAKE_BUILD_TYPE=RelWithDebInfo -S . -B build
make -j128 tarball

chmod a+rx build.2.sh
./build.2.sh
