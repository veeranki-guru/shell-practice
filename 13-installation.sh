#!/bin/bash

USERID=$( id -u)

if [ $USERID -ne 0 ]; then
   echo "ERROR:: please run this script root privelege"
   exit 1
fi

dnf install mysql -y

if [ $? - ne 0 ]; then
   echo "ERROR:: install mysql failure "
   exit 1
fi

else
   echo "install mysql is SUCCESS"
fi 

dnf install nginx -y

if [ $? -ne 0 ]; then
   echo "ERROR:: install nginx failure"
   exit 1
fi
else
   echo "install nginx is SUCCESS" 
fi
dnf install python3 -y

if [ $? ne -0 ]; then
   echo "ERROR:: install python3 failure"
   exit 1
fi
else
    echo "install python3 SUCCESS"   
fi    