#!/bin/bash

echo $HOME		# Show the path to the home of the user
echo $TERM		# Show the terminal type where the script is executed
ls /etc/rc.d/rc3.d/S*	# Show all services started in runlevel 3 on the system
