#!/bin/bash

INSTALL_DIR="/opt"

MPLAB_URL="https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/MPLABX-v6.15-linux-installer.tar"
MPLAB_REFERER="https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide#"
SCRIPT="MPLABX-v6.15-linux-installer.sh"
OPTIONS="-- --unattendedmodeui minimal --mode unattended --ide 1 --ipe 1 --8bitmcu 0 --16bitmcu 1 --32bitmcu 0 --othermcu 0 --collectInfo 0 --collectMyMicrochipInfo 0"

# The link won't download without the referer option
wget -O "$INSTALL_DIR/mplab.tar" --referer=$MPLAB_REFERER $MPLAB_URL
tar -xvf "$INSTALL_DIR/mplab.tar" -C $INSTALL_DIR

# Run MPLAB installer script
$INSTALL_DIR/$SCRIPT $OPTIONS

# Delete MPLAB tar and install script
rm -v "$INSTALL_DIR/mplab.tar"
rm -v "$INSTALL_DIR/$SCRIPT"
