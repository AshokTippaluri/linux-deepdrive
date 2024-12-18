#!/bin/bash

# Script to display Linux distribution and version

echo "Detecting Linux version..."

# Check and display the version
if [ -f /etc/os-releas ]; then
    # Read from os-release file
    . /etc/os-release
    echo "Operating System: $NAME"
    echo "Version: $VERSION_ID"
elif [ -f /etc/lsb-release ]; then
    # For older systems with lsb-release
    . /etc/lsb-release
    echo "Operating System: $DISTRIB_ID"
    echo "Version: $DISTRIB_RELEASE"
elif [ -f /etc/debian_version ]; then
    # For Debian-based systems
    echo "Operating System: Debian"
    echo "Version: $(cat /etc/debian_version)"
else
    echo "Operating System information not found."
fi

