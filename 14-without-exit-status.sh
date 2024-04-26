#!/bin/bash

#Understand here, Automatically-No Need to check VALIDATE here. Automatically it will exit.
set -e

# Giving some commands here
ls -ltr

touch example.txt

echo "Before wrong command"

lsfff

echo "After wrong command"

cd /tmp

cd /c/Darshan/DevOps/daws-76s/REPOS/shell-script