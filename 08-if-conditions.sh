#!/bin/bash

# gt=greater than, lt=lesser than, ge=greater than equal, lt=lesser than equal

NUMBER=$1
if [ $NUMBER -gt 100 ]
then
    echo "Given Number $NUMBER is Greater than 100"
else
    echo "Given Number $NUMBER is Not Greater than 100"
fi 

#whle running the Program pass the input.
