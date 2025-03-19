#!/bin/bash
#
#
<<info
  Deletion user account using Shell script
info

delete_user() {

read -p "Enter the username that you want to delete: " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ "$count" != 0 ];
then
	sudo userdel "$username"
else
	echo "$username does not exist"
fi
echo "$Username deleted successfully"

}

if [[ "$1" == "-d" || "$1" == "--delete" ]];
then
	delete_user
else
	echo "User correct Args to delete the user"
fi
