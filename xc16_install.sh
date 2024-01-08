#!/bin/bash

INSTALL_DIR="/opt"
BIN_PATH="/opt/microchip/xc16/v2.00/bin"

XC16_URL="https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/xc16-v2.00-full-install-linux64-installer.run"
XC16_INSTALLER="xc16_installer.run"
OPTIONS=" --unattendedmodeui none --mode unattended --debuglevel 4 --LicenseType FreeMode --netservername localhost"

wget -O "$INSTALL_DIR/$XC16_INSTALLER" $XC16_URL
chmod u+x "$INSTALL_DIR/$XC16_INSTALLER"

# Run the XC16 installer
$INSTALL_DIR/$XC16_INSTALLER $OPTIONS

# Add the compiler to PATH of the user who invoked the script
echo "Adding $BIN_PATH to the PATH of $SUDO_USER"
su -c "echo -en "PATH=$PATH:$BIN_PATH" >> ~/.bash_profile" $SUDO_USER
su -c "source ~/.bash_profile" $SUDO_USER

# Delete the install script
rm -v "$INSTALL_DIR/$XC16_INSTALLER"
