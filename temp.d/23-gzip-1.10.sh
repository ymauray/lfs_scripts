#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv gzip-1.10
tar -xvf gzip-1.10.tar.xz
cd gzip-1.10

./configure --prefix=/tools

make

make install

