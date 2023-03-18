#!/bin/bash

# Dependencies
sudo apt-get install libtool
sudo apt-get install libusb-1.0.0
sudo apt-get install libhidapi-dev


git clone git@github.com:openocd-org/openocd.git
cd openocd


./bootstrap
./configure --prefix=/opt/openocd --enable-cmsis-dap-v2 --enable-cmsis-dap
make
sudo make install

sudo cp /opt/openocd/share/openocd/contrib/60-openocd.rules /etc/udev/rules.d/
sudo udevadm control --reload

