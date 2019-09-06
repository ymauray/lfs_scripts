#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv coreutils-8.31
tar -xvf coreutils-8.31.tar.xz
cd coreutils-8.31

./configure --prefix=/tools --enable-install-program=hostname

make

make install

