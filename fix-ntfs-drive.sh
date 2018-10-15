#!/bin/bash

# Root check
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root!" 1>&2
   exit 1
fi

# Main check
umount /dev/sdb1
ntfsfix /dev/sdb1
mount -a
