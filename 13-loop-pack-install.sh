# The Below Script is for 
#   1. Check root user or not
#   2. If root user 
#       -- Check Package is already installed or not
#       -- if Installed, SKIP it and Tell User is already Installed
#       -- If NOT Installed, INSTALL it
#        -- VALIDATE IT
#   3. If not ROOT user, Throw the ERROR


#!/bin/bash

ID=($id=u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script Started Executing at $TIMESTAMP" &>> $LOGFILE

#Creating Funcition
VALIDATE() { 
    if [ $1 ne 0 ]
    then 
        echo -e "$2 .. $R FAILED"
    else
        echo -e "$1 .. $G SUCCESS"
    fi 
}

# To check the Root user
if [ $ID ne 0 ] 
then
    echo -e "$R ERROR :: Please run the script with root access"
    exit 1
else
    echo -e "$Y You are ROOT USER"
fi # fi means reverse of if, indicating condition end

# echo "All arguments passed: $@"
# git mysql postfix net-tools
# package=git for first time


#To Install the Package using Loops
for package in $@
do 
    yum list installed $package &>> $LOGFILE # To check Installed or Not
    if [ $? ne 0 ]
    then 
        yum install $package -y %>> $LOGFILE #Install the Package
        VALIDATE $? "Installatin of $package" #validating
    else
        echo -e "$package is already installed ... $Y SUCCESS "
    fi
done
