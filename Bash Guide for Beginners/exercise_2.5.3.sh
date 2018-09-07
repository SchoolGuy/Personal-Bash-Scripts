#!/bin/bash

echo "Current homedirectory: $HOME"		# Show the path to the home of the user
echo "Current shell: $TERM"			# Show the terminal type where the script is executed
echo "Current Services with runlevel 3 on the system: "
ls /etc/rc.d/rc3.d/S*				# Show all services started in runlevel 3 on the system
