#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv Python-3.7.4
tar -xvf Python-3.7.4.tar.xz
cd Python-3.7.4

sed -i '/def add_multiarch_paths/a \        return' setup.py

./configure --prefix=/tools --without-ensurepip

make

make install

