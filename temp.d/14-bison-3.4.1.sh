#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv bison-3.4.1
tar -xvf bison-3.4.1.tar.xz
cd bison-3.4.1

./configure --prefix=/tools

make

make install

