#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv gawk-5.0.1
tar -xvf gawk-5.0.1.tar.xz
cd gawk-5.0.1

./configure --prefix=/tools

make

make install

