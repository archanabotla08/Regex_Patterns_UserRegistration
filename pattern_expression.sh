#!/bin/bash -x
shopt -s extglob
read -p "enter the password: " password
pattern="^([a-z]{1,}[A-Z]{1,}[0-9]{1,}[!@#$%^&*_-+=.]{1,}){8,}$"
if [[ $password =~ $pattern ]]
then
        echo "valid"
else
        echo "no valid"
fi

