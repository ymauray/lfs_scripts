#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv texinfo-6.6
tar -xvf texinfo-6.6.tar.xz
cd texinfo-6.6

./configure --prefix=/tools

make

make install

