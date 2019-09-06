#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv bzip2-1.0.8
tar -xvf bzip2-1.0.8.tar.gz
cd bzip2-1.0.8

make

make PREFIX=/tools install

