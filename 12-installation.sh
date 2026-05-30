#!/bin/bash

USERID=$( id -u) #check of root user

if [ $USERID -ne 0 ]; then
   echo "ERROR:: please run this script with root privelege"
fi   #user id -u ;1000 == 0 it error

dnf install mysql -y

if [ $? -ne 0 ]; then
   echo "ERROR:: installing mysql is failure"
else
   echo "installing mysql is SUCCES" 
fi #$? meaning 1000 == 0 

