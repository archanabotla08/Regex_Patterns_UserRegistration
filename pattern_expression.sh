#!/bin/bash -x
shopt -s extglob
read -p "enter the password: " password
pattern="^[a-z]{7,}[A-Z]{1,}"
if [[ $password =~ $pattern ]]
then
        echo "valid"
else
        echo "no valid"
fi

