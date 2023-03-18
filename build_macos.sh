#!/usr/bin/env bash

set -ex

DIST=$PWD/dist
BUILD=$PWD/build
QEMU=$PWD/qemu

mkdir -p $BUILD
mkdir -p $DIST

cp patches/meson.build qemu/meson.build

# Static builds on MacOS broken due to being impossible (You can't staticly link libc).
(cd $BUILD; $QEMU/configure --without-default-features --target-list=x86_64-softmmu --prefix=$DIST)
(cd $BUILD; ninja install)