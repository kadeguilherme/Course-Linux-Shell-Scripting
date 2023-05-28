#!/bin/bash

# This script creates a new user on the local system.
# You must supply a username as an argument to the script
# Optionally, you can also provide a comment for the account as an argument
USER_ID='0'

# Make sure the script is being executed with superuser privileges
if [ $UID != $USER_ID ]
then
    echo "Not is users root.Please run with sudo or as root."
    exit 1
fi

# If they don't supply at least on arguments, then give them help
if [[ ${#} -lt 1 ]]
then 
    echo "Usage: ${0} USER_NAME [COMMANT]"
    exit 1
fi

# Insert username and any remaining arguments will be treated as the comment
USER_NAME=${1}
shift
COMMENT=${@}

# Get the password for the user.
PASSWORD=$(date +%s${RANDOM} | sha256sum | head -c 32)

# Create a new user
useradd -m ${USER_NAME} -c "${COMMENT}"

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
echo
echo "Username: ${USER_NAME}"
echo "Password: ${PASSWORD}"
echo "hostname: ${HOSTNAME}"
exit 0
