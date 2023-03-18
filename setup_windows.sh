#!/bin/bash

set -ex

pacman --noconfirm -S base-devel mingw-w64-x86_64-toolchain git python ninja
pacman --noconfirm -S mingw-w64-x86_64-glib2 mingw-w64-x86_64-pixman python-setuptools