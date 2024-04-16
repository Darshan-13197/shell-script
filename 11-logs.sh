#!/bin/bash

## Check user is root or Not
ID=$(id -u)

# $? --> Exit status of the previos command
# $0 --> you will get Script name

echo "Script Name: $0"

VALIDATE() {

    if [ $1 -ne 0 ]
    then 
        echo "Error :: $2 ....is Failed"
        exit 1
    else
        echo "$2 .... is Success"
    fi

}

if [ $ID -ne 0 ]  
then 
    echo "ERROR::Please run this script with root access."
    exit 1 # you can give other than 0
else
    echo "You are a root user"
fi #fi means reveres of if indicating the condition end

# How to call the Function and Retrive

yum install mysql -y
VALIDATE $? "Installing MySQL" # Giving Some inputs for the Validate Function

yum install git -y 
VALIDATE $? "Installing Git"

# Using REDIRECTION, it will show the stored result ifand display the output, if  
# 1 --> Success
# 2 --> Failure
# & --> Both Success and Failure
# > --> Replace Prev output
# >> --> Append the output
