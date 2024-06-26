#!/bin/bash

## Check user is root or Not
ID=$(id -u)

VALIDATE() {
    # if [ $? -ne 0 ]
    # then
    #     echo "Error :: Installing is Failed"
    #     exit 1
    # else
    #     echo "Successfully Installed"
    # fi

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

# How to call the Function 

yum install mysql -y
#VALIDATE # Here we are calling the function

# How we need to RETRIVE

VALIDATE $? "Installing MySQL" # Giving Some inputs for the Validate Function
    # Here, we are passing 2 Args in Validate()
    #     $? --> Exit Status
    #     "Installing MySQL" --> what I am doing here

yum install git -y 
VALIDATE $? "Installing Git"