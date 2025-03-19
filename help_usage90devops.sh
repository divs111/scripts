#!/bin/bash
#
#
#
#
# ============== Usage Information ===================

display_help() {
        
	echo " Usage info of $0"
	echo " -c or --create to create a user "
	echo " -l or --list to list user accounts"
	echo "-d or --delete to delete the user"
}

if [[ "$1" == "-h" || "$1" == "--help" ]];
then
	display_help
else
	echo "use correct cred to check usage info"
fi

