#!/bin/bash

# The concept is, if we want to connect the External System/Server from the script.
# Since the UN and Pass is Confidential. By using read -s It should be Hidden when we are typing it.

echo "Please Enter your Username: "
read -s USERNAME 

# The Value entered above will be automatically attached to Username.

echo "Please Enter your Password: "
read -s PASSWORD

# The Value entered above will be automatically attached to Password.

echo "The Username is: $USERNAME, The Password is: $PASSWORD"



# The concept is, if w want to connect the External System/Server from the script.
# USERNAME=$1
# PASSWORD=$2

# echo "Username is: $USERNAME, Password is: $PASSWORD"
