#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv grep-3.3
tar -xvf grep-3.3.tar.xz
cd grep-3.3

./configure --prefix=/tools

make

make install

