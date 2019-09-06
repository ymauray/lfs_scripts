#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv xz-5.2.4
tar -xvf xz-5.2.4.tar.xz
cd xz-5.2.4

./configure --prefix=/tools

make

make install

