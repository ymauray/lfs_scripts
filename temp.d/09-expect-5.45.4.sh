#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv expect5.45.4
tar -xvf expect5.45.4.tar.gz
cd expect5.45.4

cp -v configure{,.orig}
sed 's:/usr/local/bin:/bin:' configure.orig > configure

./configure --prefix=/tools       \
            --with-tcl=/tools/lib \
            --with-tclinclude=/tools/include

make

make SCRIPTS="" install

