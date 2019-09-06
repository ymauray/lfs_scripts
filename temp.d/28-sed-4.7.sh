#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv sed-4.7
tar -xvf sed-4.7.tar.xz
cd sed-4.7

./configure --prefix=/tools

make

make install

