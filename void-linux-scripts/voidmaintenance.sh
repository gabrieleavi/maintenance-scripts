#!/bin/bash

# A maintenance script for Void Linux
# Author : Gabriele Avi
# Version: 0.0.1
# Creation Date: 08-04-2021
# Script begins here:

echo "Welcome to the maintenace script for Void Linux!"
read -r -p "Would you like to continue? [Y/n] " response
if [[ "$response" =~ ^([Yy])$ ]] || [[ -z $response ]]; then
    sudo xbps-install -u xbps
    sudo xbps-install -Su
    sudo bleachbit
    echo "Task ended successfully!"
    echo "Rebooting in 3..."
    sleep 1
    echo "2..."
    sleep 1
    echo "1..."
    echo "Rebooting..."
    sleep 1
    reboot
else
    echo "Aborting..."
fi

