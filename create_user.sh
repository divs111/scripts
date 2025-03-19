#!/bin/bash
#
#
echo "====================== Creation of user ============================"
function create_user {
read -p "Enter the username:" username
read -p "Enter the password:" password

sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"

}
echo "=================  user created =============================="



echo "===================== deletion of user ==========================="
function delete_user {
sudo userdel "$username"
}
echo "====================checking userdeleted =================="
function user_check {

if [ $(cat /etc/passwd | grep "$username" | wc | awk '{print $1}') == 0 ];
then 
	echo "as wc is 0 user doesnot exist"
else
	echo "user not deleted"
fi
}


echo "============ User deleted confirmed ===================="

for (( i=1 ; i<=5 ; i++ ))
do
	create_user
done
