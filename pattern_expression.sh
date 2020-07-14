#!/bin/bash -x
shopt -s extglob
read -p "enter the email: " email
pattern="^[a-zA-Z0-9]+([.+_-][a-zA-Z0-9]){0,1}@[a-zA-Z]+([.]{1,2}[a-z]{2,}){1,2}"
if [[ $email =~ $pattern ]]
then
        echo "valid"
else
        echo "invalid"
fi

