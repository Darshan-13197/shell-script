#!/bin/bash

# Fix the Source Directory
file=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

# First we need to check Source Directory is Exists OR Not

if [ ! -f $file ] # ! denotes opposite, -d --> directory, -f --> file
then
    echo -e "$R Source directory: $file does not exists. $N"
fi

#IFS -- Internal Feel Selector
# The Below paramemters are from the /etc/passwd format.

while IFS=":" read -r username password user_id group_id User_fullname home_Dir shell_path
do
    echo "username: $username"
    echo "userID: $user_id"
    echo "groupID: $group_id"
    #you can choose other filter
done < $file # Input is $file
