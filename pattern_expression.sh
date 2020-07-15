#!/bin/bash -x
shopt -s extglob
read -p "enter the first name: " firstname
pattern="^[[:upper:]]{1}[[:lower:]]{2,}"
if [[ $firstname =~ $pattern ]]
then
        echo "valid"
else
        echo "invalid"
fi

