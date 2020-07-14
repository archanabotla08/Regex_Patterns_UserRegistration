#!/bin/bash -x
shopt -s extglob
read -p "enter the password: " password
pattern="^[a-zA-Z]{8}"
if [[ $password =~ $pattern ]]
then
        echo "valid"
else
        echo "no valid"
fi

