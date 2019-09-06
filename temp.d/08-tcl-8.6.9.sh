#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rf tcl8.6.9
tar -xvf tcl8.6.9-src.tar.gz
cd tcl8.6.9

cd unix
./configure --prefix=/tools

make

make install

chmod -v u+w /tools/lib/libtcl8.6.so

make install-private-headers

ln -sv tclsh8.6 /tools/bin/tclsh

