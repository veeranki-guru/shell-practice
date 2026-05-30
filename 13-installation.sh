#!/bin/bash

USERID=$( id -u)

if [ $USERID -ne 0 ]; then
   echo "ERROR:: please run this script root privelege"
   exit 1
fi

VALIDATE(){  # functions receive inputs through args just like shell script args
   if [ $1 - ne 0 ]; then
     echo "ERROR:: install $2 failure "
     exit 1
   fi

   else
      echo "install $2 is SUCCESS"
   fi 

}


dnf install mysql -y
VALIDATE $? "MYSQL"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install python3 -y
VALIDATE $? "python3"