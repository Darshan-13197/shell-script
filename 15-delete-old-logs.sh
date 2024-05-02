#!/bin/bash

# Fix the Source Directory
SOURCE_DIR="/c/Darshan/DevOps/daws-76s/REPOS/shell-script"

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

while IFS= read -r line
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES_TO_DELETE

# To Find the Files in a Directory.
# Syntax:
#   find . -type f -mtime +10 -name "<filename>"
    # find        --> Searching
    # .           --> Current Dir,
    # -type f     --> All File Types not Folder.
    # -mtime +10  --> To find a File More than 10 days
    # -name       --> Display File name
    # <filename> --> Display only the Specific Filename i.e. "*.log"