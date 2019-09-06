#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv util-linux-2.34
tar -xvf util-linux-2.34.tar.xz
cd util-linux-2.34

./configure --prefix=/tools                \
            --without-python               \
            --disable-makeinstall-chown    \
            --without-systemdsystemunitdir \
            --without-ncurses              \
            PKG_CONFIG=""

make

make install

