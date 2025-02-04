#!/bin/bash

USER_COUNT=10

for i in $(seq 1 $USER_COUNT); do
	password=$(mysql -N -u Nagi -p'zxc' -e "USE BD; SELECT password FROM Users where username='user$i';")
	#password="${password/password /}"
echo $password

	temp_pw=$(echo $password | openssl enc -aes-256-cbc -md sha512 -a -pbkdf2 -iter 10000 -salt -pass pass:"meow") 
echo $temp_pw

	mysql -u Nagi -p'zxc' -e "USE BD; UPDATE Users SET password = '$temp_pw' WHERE username='user$i';"
done
