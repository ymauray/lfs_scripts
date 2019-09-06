#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv patch-2.7.6
tar -xvf patch-2.7.6.tar.xz
cd patch-2.7.6

./configure --prefix=/tools

make

make install

