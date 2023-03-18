#!/usr/bin/env bash

set -ex

DIST=$PWD/dist
BUILD=$PWD/build
QEMU=$PWD/qemu

mkdir -p $BUILD
mkdir -p $DIST

cp patches/meson.build qemu/meson.build

(cd $BUILD; $QEMU/configure --without-default-features --target-list=x86_64-softmmu --enable-vhost-user --static --prefix=$DIST)
(cd $BUILD; ninja install)
