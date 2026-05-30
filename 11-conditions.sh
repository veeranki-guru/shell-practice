#!/bin/bash

echo "please enter the number:"
read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then
   echo "Given number is $NUMBER is EVEN"
else
   echo "Given number is $NUMBER is odd"   
fi   