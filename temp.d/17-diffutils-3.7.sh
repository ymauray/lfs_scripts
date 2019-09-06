#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv diffutils-3.7
tar -xvf diffutils-3.7.tar.xz
cd diffutils-3.7

./configure --prefix=/tools

make

make install

