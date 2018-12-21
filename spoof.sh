#!/bin/bash

#prerequisites:
#sudo apt install macchanger

echo ".....WELCOME TO SPOOFY....."
echo ".....NOTE: MAKE SURE YOU HAVE SUDO PRIVILEGES....."
#sudo su
ifconfig wlo1 down
macchanger -r wlo1
ifconfig wlo1 up

echo ".....New MAC ADDRESS APPLIED....."

echo ".....RElEASING IP ADDRESS....."
ifconfig -a | grep 'inet addr:'
dhclient -r

echo ".....RENEWING IP ADDRESS....."
dhclient
sleep 3
ifconfig -a | grep 'inet addr:'

echo ".....OK....."


test
