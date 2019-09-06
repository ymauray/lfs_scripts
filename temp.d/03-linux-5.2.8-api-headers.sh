#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rvf linux-5.2.8
tar -xvf linux-5.2.8.tar.xz
cd linux-5.2.8

make mrproper

make INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* /tools/include

