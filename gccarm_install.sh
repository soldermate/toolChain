#!/bin/bash

GCC_URL="https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2"
INSTALL_DIR="/opt"

wget -O "$INSTALL_DIR/gcc-arm.tar.bz2" $GCC_URL
tar -xjvf "$INSTALL_DIR/gcc-arm.tar.bz2" -C $INSTALL_DIR
rm $INSTALL_DIR/gcc-arm.tar.bz2
