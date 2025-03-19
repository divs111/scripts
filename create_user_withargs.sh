#!/bin/bash
#
#
echo "============= creation of user using args ====================="


read -p "Enter the password:" password

sudo useradd -m "$1"
echo -e "$password\n$password" | sudo passwd "$1"


echo "================ user created ==============================="

sudo userdel $1

cat /etc/passwd | grep $1 | wc

echo "=============== user deleted confirmed ========================="
