#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 0 ]; then
   echo "Given number $NUMBER is less than 0"
else
   echo "Given number $NUMBER is greater than or equal to 0"
fi

# -gt  => greater than
# -eq  => equal to
# -ne  => not equal