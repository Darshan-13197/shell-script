#!/bin/bash

NAME=""
WISHES="GOOD MORNING"

USAGE() { #Here we are giving the info about OPTIONS
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "options::"
    echo " -n, Specify the Name (Mandatory)"
    echo " -w, specify the Wishes (Optional) Default is GOOD MORNING"
    echo " -h, Display HELP and Exit"

}

while getopts "n:w:h" opt; do
#using case 
    case $opt in # For OPTIONS, there is no sequence here
        n) NAME=$OPTARG;; # Special Variables
        w) WISHES=$OPTARG;;
        \?) echo "Invalid Option: -"$OPTARG"" >&2; USAGE; exit;;
        :) USAGE; exit;;   
        h) USAGE; exit;; #calling usage function
    esac
done

#We are writing some Validation for the OPTIONS.

#if [ -z "$NAME" ] || [ -z "$WISHES" ]; then # if both are empty will show ERROR
if [ -z "$NAME" ]; then #Now wishes is optional
    #echo "ERROR: Both -n and -w are Mandatory Options"
    echo "ERROR: -n is Mandatory"
    USAGE
    exit 1   
fi
echo "Hello $NAME, $WISHES, I have been learning Shell Script"