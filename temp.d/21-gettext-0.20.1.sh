#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv gettext-0.20.1
tar -xvf gettext-0.20.1.tar.xz
cd gettext-0.20.1

./configure --disable-shared

make

cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /tools/bin

