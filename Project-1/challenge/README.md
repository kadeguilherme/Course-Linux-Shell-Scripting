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
- Prompts the person who executed the script to enter the username (login), the name for
person who will be using the account, and the initial password for the account.
- Creates a new user on the local system with the input provided by the user.
- Informs the user if the account was not able to be created for some reason. If the account is
not created, the script is to return an exit status of 1.
- Displays the username, password, and host where the account was created. This way the
help desk staﬀ can copy the output of the script in order to easily deliver the information to
the new account holder.

## Verifying if account was created
Make sure the accounts have been created by examining the last 3 lines of the /etc/passwd ﬁle.

```
cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
... # additional accounts will be displayed
kadeguilherme:x:1001:1001:Guilherme Aguiar:/home/kadeguilherme:/bin/bash
isaac:x:1002:1002:Isaac Newton:/home/isaac:/bin/bash
tedison:x:1003:1003:Thomas Edison:/home/tedison:/bin/bash
```
(NOTE: You could have also used tail -3 /etc/passwd to display just the last 3 lines of the ﬁle.)