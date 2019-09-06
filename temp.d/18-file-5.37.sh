#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv file-5.37
tar -xvf file-5.37.tar.gz
cd file-5.37

./configure --prefix=/tools

make

make install

