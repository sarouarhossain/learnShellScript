#!/bin/bash

# creates a local user on the system
# user will be prompted to enter the username (login), the person name, and a password.
# The username, password, and the host for the account will be displayed

# make sure the script is being executed with superuser privilages
if [[ "${UID}" -ne 0 ]]
then 
	echo "Plaease run with Sudo or as root."
	exit 1
fi

# Get the user name(Login)
read -p 'Enter the username to create: ' USER_NAME

# Get the real name (Contents for the discription).
read -p 'Enter the real name: ' COMMENT

# Get the password
read -p 'Enter the password' PASSWORD

# Create the account
useradd -c "${COMMENT}" -m ${USER_NAME}

# Check to see if the useradd command succeded
# We don't want to tell the user that an account was created when it hasn't been.
if [[ "${?}" -ne 0 ]]
then 
	echo 'The account could not be created'
	exit 1
fi

# Set the password
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

if [[ "${?}" -ne 0 ]]
then
	echo 'password for the account could not be set'
	exit 1
fi

# Force password change on first login
passwd -e ${USER_NAME}

if [[ "${?}" -ne 0 ]]
then
        echo 'force password change for the account could not be set'
        exit 1
fi

# Display the username, password and the host user created
echo 
echo 'username:'
echo "${USER_NAME}"
echo
echo 'password:'
echo "${PASSWORD}"
echo
echo 'host:'
echo "${HOSTNAME}"
exit 0

