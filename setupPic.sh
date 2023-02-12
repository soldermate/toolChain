#!/bin/bash

MPLAB_URL="https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/MPLABX-v6.05-linux-installer.tar"
SCRIPT="MPLABX-v6.05-linux-installer.sh"
OPTIONS="-- --unattendedmodeui minimal --mode unattended --ide 0 --ipe 1 --8bitmcu 0 --16bitmcu 1 --32bitmcu 0 --othermcu 0 --collectInfo 0 --collectMyMicrochipInfo 0"
INSTALL_DIR="/opt"

wget -O "$INSTALL_DIR/mplab.tar" $MPLAB_URL
tar -xvf "$INSTALL_DIR/mplab.tar" -C $INSTALL_DIR

# Run the installer script
$INSTALL_DIR/$SCRIPT $OPTIONS

# Delete the tar
rm -v "$INSTALL_DIR/mplab.tar"

