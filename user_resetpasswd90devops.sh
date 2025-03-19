#!/bin/bash
#
#
<<info =================  Resetting Password using Shell script  ===============
info

passwd_reset() {

read -p "Enter the username: " username

count=$(cat /etc/passwd | grep "$username" | wc | awk '{print $1}')

if [ "$count" != 0 ];
then
     	sudo passwd "$username"
else
	echo "Username does not exist "
fi

echo "$username's Password reset successfully "

}

if [[ "$1" == "-r" || "$1" == "--reset" ]];
then
	passwd_reset
else
	echo "User the correct cred to reset the password"
fi
