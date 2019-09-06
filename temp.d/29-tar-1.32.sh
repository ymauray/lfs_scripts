#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv tar-1.32
tar -xvf tar-1.32.tar.xz
cd tar-1.32

./configure --prefix=/tools

make

make install

