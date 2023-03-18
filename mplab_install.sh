#!/bin/bash

INSTALL_DIR="/opt"

MPLAB_URL="https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/MPLABX-v6.05-linux-installer.tar"
SCRIPT="MPLABX-v6.05-linux-installer.sh"
OPTIONS="-- --unattendedmodeui minimal --mode unattended --ide 0 --ipe 1 --8bitmcu 0 --16bitmcu 1 --32bitmcu 0 --othermcu 0 --collectInfo 0 --collectMyMicrochipInfo 0"

wget -O "$INSTALL_DIR/mplab.tar" $MPLAB_URL
tar -xvf "$INSTALL_DIR/mplab.tar" -C $INSTALL_DIR

# Run MPLAB installer script
$INSTALL_DIR/$SCRIPT $OPTIONS

# Delete MPLAB tar and install script
rm -v "$INSTALL_DIR/mplab.tar"
rm -v "$INTALL_DIR/$SCRIPT"


XC16_URL="https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/xc16-v2.00-full-install-linux64-installer.run"
XC16_INSTALLER="xc16_installer.run"

wget -O "$INSTALL_DIR/$XC16_INSTALLER" $XC_URL
chmod u+x $XC16_INSTALLER

# Run the XC16 installer
$INSTALL_DIR/$XC16_INSTALLER

