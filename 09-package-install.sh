#!/bin/bash

## Check user is root or Not
ID=$(id -u)
if [ $ID -ne 0 ]  
then 
    echo "ERROR::Please run this script with root access."
    exit 1 # you can give other than 0
else
    echo "You are a root user"
fi #fi means reveres of if indicating the condition end

yum install mysql -y

#TO VALIDATE

if [ $? -ne 0 ]
then
    echo "Error :: Installing MySQL is Failed"
    exit 1
else
    echo "Successfully Installed MySQL"
fi
