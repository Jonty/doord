#!/bin/sh

# Nohup isn't always available, and ash kills jobs on logout.
trap '' HUP

while [ true ]
do
        echo "Starting Doord"
        twistd -n --pidfile=$PIDFILE --syslog --prefix=doord --python doord.py
        echo "Doord died, restarting"
done

