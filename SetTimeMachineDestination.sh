#!/bin/sh

##Setting the Time Machine destination here

##tmutil REQUIRES a username and password be set in the URL as we're doing below. Recommendation is to
##create a new account on your server that has read/write access over the TM volume and set that username/password
##combo in the URL below, replacing tmuser:tmpassword.

TMDestination="afp://tmuser:tmpassword@tmserver.org/Time_Machine_Backups"

echo "Setting Time Machine Destination"

/usr/bin/tmutil setdestination $TMDestination

##Ensure that Time Machine is Enabled for the targeted machine

echo "Enabling Time Machine"

/usr/bin/tmutil enable

exit 0
