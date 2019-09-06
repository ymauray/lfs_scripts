#! /bin/bash

set -x
set -e
set -o pipefail

cd $LFS/sources
rm -rfv perl-5.30.0
tar -xvf perl-5.30.0.tar.xz
cd perl-5.30.0

sh Configure -des -Dprefix=/tools -Dlibs=-lm -Uloclibpth -Ulocincpth

make

cp -v perl cpan/podlators/scripts/pod2man /tools/bin
mkdir -pv /tools/lib/perl5/5.30.0
cp -Rv lib/* /tools/lib/perl5/5.30.0

