#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv make-4.2.1
tar -xvf make-4.2.1.tar.gz
cd make-4.2.1

sed -i '211,217 d; 219,229 d; 232 d' glob/glob.c

./configure --prefix=/tools --without-guile

make

make install

