#!/bin/bash
#
#
#
<<info ===============  Listing User Accounts using ============== 
       ===============          Shell Script        ==============
info

list_users() {

getent passwd | awk -F: '{print "Username: " $1 ,"UUID: " $3 ,"Home-directory: " $6  ,"Shell :" $7}'

}

if [[ "$1" == "-l" || "$1" == "--list" ]];
then
	list_users
else
	echo "Use correct cred to list User's accounts"
fi

