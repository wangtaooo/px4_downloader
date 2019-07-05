#!/bin/bash
while :
do
if [ ! -d "/dev/ttyACM*" ];then
    echo "#####"
    sudo chmod 777 /dev/ttyACM*
fi
done
