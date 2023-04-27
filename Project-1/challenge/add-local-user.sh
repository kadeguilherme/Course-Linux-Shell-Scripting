#!/bin/bash

USER_ID='0'

#Make sure the script is being executed with superuser privileges
if [ $UID != $USER_ID ]; then
    echo "Not is users root."
    exit 1
fi
#Insert username
echo "Enter with username to create:"
read -e USER_NAME
#echo "${USER_NAME}"

#Insert the real name
echo "Enter name real who is this account for:"
read -e NAME
#echo "${NAME}"

#Set the password for the user.
read -p 'Enter the password to use for the account: ' PASSWORD
#echo "${PASSWORD}"

#Create a new user
useradd -m ${USER_NAME} -c ${NAME}

#Check see if the passwd command succeeded
if [[ "${?}" -ne 0 ]]
then
    echo "Account was not able to be created"
    exit 1
fi

# Password initial
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

#Force password change on first login
passwd -e ${USER_NAME}

# Display the username, password, and the host where the user was created.
echo "Username ${USER_NAME} Password ${PASSWORD}"