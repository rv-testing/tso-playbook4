#!/bin/bash

echo
echo Please make sure the inventory file exist with a content of the host
echo or multiple hosts that you are trying to execute using this ansible $1
echo
#echo Press enter to continue.
echo
#read continue

if [ ! -f 1hosts ]; then
   echo
   echo inventory does not exist!  Please create it and put it on the current folder
   echo ~/tso-playbook/1hosts
   echo and rerun this.
   echo
   exit 1
else
   ansible-playbook -i 1hosts $1 
   #--ask-become-pass 
fi
rm *.retry 2> /dev/null
