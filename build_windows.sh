#!/usr/bin/env bash

set -ex

DIST=$PWD/dist
BUILD=$PWD/build
QEMU=$PWD/qemu

mkdir -p $BUILD
mkdir -p $DIST

(cd $BUILD; $QEMU/configure --cross-prefix=amd64-mingw32msvc- --without-default-features --target-list=x86_64-softmmu --enable-vhost-user --prefix=$DIST)
(cd $BUILD; ninja install)
