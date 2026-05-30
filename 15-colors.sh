#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
   echo -e "${R}ERROR:: Please run this script with root privilege${N}"
   exit 1
fi

VALIDATE(){

   if [ $1 -ne 0 ]; then
      echo -e "${R}Installing $2 FAILED${N}"
      exit 1
   else
      echo -e "${G}Installing $2 SUCCESS${N}"
   fi
}

# MYSQL
dnf list installed mysql

if [ $? -ne 0 ]; then
   dnf install mysql -y
   VALIDATE $? "MySQL"
else
   echo -e "MySQL already exists ... ${Y}SKIPPING${N}"
fi

# NGINX
dnf list installed nginx

if [ $? -ne 0 ]; then
   dnf install nginx -y
   VALIDATE $? "Nginx"
else
   echo -e "Nginx already exists ... ${Y}SKIPPING${N}"
fi

# PYTHON3
dnf list installed python3

if [ $? -ne 0 ]; then
   dnf install python3 -y
   VALIDATE $? "Python3"
else
   echo -e "Python3 already exists ... ${Y}SKIPPING${N}"
fi