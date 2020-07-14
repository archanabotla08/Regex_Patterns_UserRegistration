#!/bin/bash -x
shopt -s extglob
read -p "enter the last name: " lastname
pattern="^[A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z]{1}[a-z]{2,}"
if [[ $lastname =~ $pattern ]]
then
        echo "valid"
else
        echo "invalid"
fi

