#!/bin/bash
#
# This script creates a new user on the local system.
# You will be prompted to enter the username(login), the person name, and a password
# The username, password, amd host for the account will be be displayed

USER_ID='0'

# Make sure the script is being executed with superuser privileges
if [ $UID != $USER_ID ]; then
    echo "Not is users root.Please run with sudo or as root."
    exit 1
fi

# Insert username
echo "Enter with username to create:"
read -e USER_NAME

# Insert the real name
echo "Enter name real who is this account for:"
read -e NAME

# Get the password for the user.
read -p 'Enter the password to use for the account: ' PASSWORD

# Create a new user
useradd -m ${USER_NAME} -c "${NAME}"

# Check see if the useradd command succeeded
if [[ "${?}" -ne 0 ]]
then
    echo "Account was not able to be created"
    exit 1
fi

# Set the password
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

# Check see if the password command succeeded
if [[ "${?}" -ne 0 ]]
then
    echo "The password for the account could not be set."
    exit 1
fi

# Force password change on first login
passwd -e ${USER_NAME}

# Display the username, password, and the host where the user was created.
echo "Username ${USER_NAME} Password ${PASSWORD} hostname ${HOSTNAME}"
exit 0
