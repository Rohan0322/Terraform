#!/bin/bash
#Author : Rohan N A
# Script Name: last_login_all_users.sh
# Description: Display the last login time of all users

echo "---------------------------------------------"
echo "Username       | Last Login Time"
echo "---------------------------------------------"

for user in $(cut -d: -f1 /etc/passwd)
do
    last_login=$(last -1 "$user" | head -1 | awk '{print $4, $5, $6, $7}')
    if [ -z "$last_login" ]; then
        echo "$user           | Never logged in"
    else
        echo "$user           | $last_login"
    fi
done
