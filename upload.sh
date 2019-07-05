#!/usr/bin/env bash

EXEDIR=`pwd`
BASEDIR=$(dirname $0)
SYSTYPE=`uname -s`

echo $EXEDIR
echo $BASEDIR
echo $SYSTYPE

SERIAL_PORTS="/dev/serial/by-id/*_PX4_*,/dev/serial/by-id/usb-3D_Robotics*,/dev/serial/by-id/usb-The_Autopilot*,/dev/serial/by-id/usb-Bitcraze*,/dev/serial/by-id/pci-Bitcraze*,/dev/serial/by-id/usb-Gumstix*,"

python $BASEDIR/px_uploader.py --port $SERIAL_PORTS $1
