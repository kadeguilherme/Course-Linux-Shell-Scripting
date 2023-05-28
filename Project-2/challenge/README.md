# Creating Local Users - Script 1

## Goal: 
The goal of this exercise is to create a shell script that adds users to the same Linux system as the
script is executed on.

## Shell Script Requirements:
You think about what the shell script must do and how you would like it operate. You come up with
the following list.

The script:
- Is named "add-local-user.sh".
- Enforces that it be executed with superuser (root) privileges. If the script is not executed with
superuser privileges it will not attempt to create a user and returns an exit status of 1.
- Provides a usage statement much like you would find in a man page if the user does not supply an account name on the command line and returns an exit status of 1.
- Uses the first argument provided on the command line as the username for the account.  Any remaining arguments on the command line will be treated as the comment for the account.
- Automatically generates a password for the new account.
- Informs the user if the account was not able to be created for some reason. If the account is
not created, the script is to return an exit status of 1.
- Displays the username, password, and host where the account was created. This way the
help desk staﬀ can copy the output of the script in order to easily deliver the information to
the new account holder.


## Testing the script

`sudo ./add-local-user.sh [USERNAME] [COMMENT ...]`

example:<br>
`sudo ./add-local-user.sh jlocke John Locke`

## Verifying if account was created
Make sure the accounts have been created by examining the last line of the /etc/passwd ﬁle.

```
cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
... # additional accounts will be displayed
jlocke:x:1008:1009:John Locke:/home/jlocke:/bin/bash

```
(NOTE: You could have also used tail -3 /etc/passwd to display just the last 3 lines of the ﬁle.)