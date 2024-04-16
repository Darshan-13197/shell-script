#!/bin/bash/

NUMBER1=$1
NUMBER2=$2

SUM=$((NUMBER1+NUMBER2))
echo "Total is: $SUM"

# # --> denotes How many args passed and it will denotes a number.
echo "How many Args Passed:: $#"

# @ --> provided the All Args
echo "All args Passed:: $@" 

echo " Script Name : $0"


