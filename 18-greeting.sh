#!/bin/bash

NAME=""
WISHES=""

USAGE() { #Here we are giving the info about OPTIONS
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "options::"
    echo " -n, Specify the Name (Mandatory)"
    echo " -w, specify the Wishes (Optional) Default is GOOD MORNING"
    echo " -h, Display HELP and Exit"

}

while getopts ":n:w:h:" opt; do
#using case 
    case $opt in 
    # For OPTIONS, there is no sequence here
        n) NAME=$OPTARGS;; # Special Variables
        w) WISHES=$OPTARGS;;
        h) USAGE; exit;; #calling usage function
    esac
done
