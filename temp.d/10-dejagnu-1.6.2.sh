#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv dejagnu-1.6.2
tar -xvf dejagnu-1.6.2.tar.gz
cd dejagnu-1.6.2

./configure --prefix=/tools

make install

