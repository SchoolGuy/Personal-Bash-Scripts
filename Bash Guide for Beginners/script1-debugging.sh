#!/bin/bash

clear

echo "The script starts now."

echo "Hi, $USER!"				# Dollar sign is used to get content of variable
echo

set -x						# Activate debugging of the script from here
echo "List of connected users:"
echo
w						# Show who is logged on and what they are doing
echo
set +x						# Stop debugging of the script from here

echo "Script end."
