#!/bin/bash

# display user id and username
# display if the user is root or not

# Display the UID
echo "Yor UID is : ${UID}"
# Display the username
USER_NAME=$(id -un)
USER_NAME1=`id -un`
echo "Your user name ${USER_NAME1}"
# Display if the user is the root or not
