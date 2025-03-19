#!/bin/bash
#
<<info  
To check if username exists or not
info

read -p "Enter the username that you want to check: " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count -eq 0 ]
then
	echo "user does not exist"
else
	echo "user exists"
fi

