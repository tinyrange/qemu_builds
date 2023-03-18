#!/usr/bin/env bash

set -ex

DIST=$PWD/dist
BUILD=$PWD/build
QEMU=$PWD/qemu

mkdir -p $BUILD
mkdir -p $DIST

# Static builds broken on Windows due to https://gitlab.gnome.org/GNOME/glib/-/issues/1851
(cd $BUILD; $QEMU/configure --without-default-features --target-list=x86_64-softmmu --prefix=$DIST)
(cd $BUILD; ninja install)
