#!/bin/bash

# Fix the Source Directory
#SOURCE_DIR="/c/Darshan/DevOps/daws-76s/REPOS/shell-script"
SOURCE_DIR="/home/centos/shell-script/"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

# First we need to check Source Directory is Exists OR Not

if [ ! -d $SOURCE_DIR ] # ! denotes opposite, -d --> directory
then
    echo -e "$R Source directory: $SOURCE_DIR does not exists. $N"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

# we can use "rm -rf " but here we are using WHILE Loop to check the command output
while IFS= read -r line # it will read the Output Line by Line
do
    echo "Deleting file: $line"
    rm -rf $line # It will delete the File Permanently.
done <<< $FILES_TO_DELETE # <<< --> It will give/denote the Input from the command to done

# To Find the Files in a Directory.
# Syntax:
#   find . -type f -mtime +10 -name "<filename>"
    # find        --> Searching
    # .           --> Current Dir,
    # -type f     --> Will Display All Files Types not Folder.
    # -mtime +10  --> To find a File More than 10 days
    # -name       --> Display File name
    # <filename> --> Display only the Specific Filename i.e. "*.log"