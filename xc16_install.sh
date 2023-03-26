#!/bin/bash

INSTALL_DIR="/opt"

XC16_URL="https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/xc16-v2.00-full-install-linux64-installer.run"
XC16_INSTALLER="xc16_installer.run"
OPTIONS=" --unattendedmodeui none --mode unattended --debuglevel 4 --LicenseType FreeMode --netservername localhost"

wget -O "$INSTALL_DIR/$XC16_INSTALLER" $XC16_URL
chmod u+x "$INSTALL_DIR/$XC16_INSTALLER"

# Run the XC16 installer
$INSTALL_DIR/$XC16_INSTALLER $OPTIONS

# Delete the install script
rm -v "$INSTALL_DIR/$XC16_INSTALLER"