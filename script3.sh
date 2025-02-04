#!/bin/bash

USER_COUNT=10

for i in $(seq 1 $USER_COUNT); do
	password=$(mysql -N -u Nagi -p'zxc' -e "USE BD; SELECT password FROM Users where username='user$i';")
echo $password
	
	temp_pw=$(echo $password | openssl enc -aes-256-cbc -md sha512 -d -a -pbkdf2 -iter 10000 -pass pass:"meow");
echo $password
echo $temp_pw
done
