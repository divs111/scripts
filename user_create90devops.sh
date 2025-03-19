#!/bin/bash
#
#
<<info  
  Creating user account using shell script
info

function create_user {
read -p "Enter the username: " username
read -p "Enter the password: " password

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ "$count" -eq 0 ]
then

sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"

else
	echo " $username already exists"
fi

echo "$username created successfully"

}

if [[ "$1" == "-c" || "$1" == "--create" ]];
then
	create_user
else
	echo " Use the expected Args to create a new user account"
fi

