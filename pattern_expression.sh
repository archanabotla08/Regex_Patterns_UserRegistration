#!/bin/bash -x
shopt -s extglob
read -p "enter the number: " number

pattern="^[9]{1}[1]{1}[[:space:]][6-9]{1}[0-9]{9}$"

if [[ $number =~ $pattern ]]
then
        echo "match"
else
        echo "no match"
fi

