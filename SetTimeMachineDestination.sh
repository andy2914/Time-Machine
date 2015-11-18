#!/bin/sh

##Setting the Time Machine destination here

TMDestination="afp://tmuser:tmpassword@tmserver.org/Time_Machine_Backups"

echo "Setting Time Machine Destination"

/usr/bin/tmutil setdestination $TMDestination

##Ensure that Time Machine is Enabled for the targeted machine

echo "Enabling Time Machine"

/usr/bin/tmutil enable

exit 0
