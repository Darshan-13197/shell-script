#!/bin/bash

## Check user is root or Not
ID=$(id -u)

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
NORMAL="\e[0m"

# To print the the DATE & TIMESTAMP
TIMESTAMP=$(date +%F-%H-%M-%S)

#For LogFile, we are storing in /tmp directory (for Practice)
# which will print the File name along with date and time.
LOGFILE="/tmp/$0-$TIMESTAMP.log"

# $? --> Exit status of the previos command
# $0 --> you will get Script name

#echo "Script Name: $0"

VALIDATE() {

    if [ $1 -ne 0 ]
    then 
    # -e --> whch enables the Interpretation of Backslash Escapes
        echo -e "$RED Error :: $2 ....is Failed $RED"
        exit 1
    else
        echo -e "$GREEN $2 .... $NORMAL is Success"
    fi

}



if [ $ID -ne 0 ]  
then 
    echo -e "$RED ERROR::Please run this script with root access."
    exit 1 # you can give other than 0
else
    echo -e "$YELLOW You are a root user"
fi #fi means reveres of if indicating the condition end

# How to call the Function and Retrive


yum install mysql -y &>> $LOGFILE # Call the LOGFILE in every command

VALIDATE $? "Installing MySQL" # Giving Some inputs for the Validate Function

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing Git"

# Using REDIRECTION, it will show the stored result ifand display the output, if  
# 1 --> Success
# 2 --> Failure
# & --> Both Success and Failure
# > --> Replace Prev output
# >> --> Append the output
