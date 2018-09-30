#!/bin/bash

# Root check
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root!" 1>&2
   exit 1
fi

# Main script
echo "Check that kernel version is at least 4.13"
uname -a
echo ""
echo "Check that eGPU appears as Thunderbolt device"
cat /sys/bus/thunderbolt/devices/0-1/device_name 
echo ""
echo "Authorize eGPU device"
echo 1 > /sys/bus/thunderbolt/devices/0-1/authorized
echo ""
echo "Check that eGPU now shows up with lspci"
lspci | grep NVIDIA
