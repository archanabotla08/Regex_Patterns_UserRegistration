#!/bin/bash -x
shopt -s extglob
read -p "enter the number: " number

#pattern="^[0-9]{10}$|([9]{1}[1]{1}\\s([0-9]{10})$)"

if [[ $number =~ ^[9]{1}[1]{1}([^a-zA-Z]{0}\\s([0-9]{10})$) ]]
then
        echo "match"
else
        echo "no match"
fi

