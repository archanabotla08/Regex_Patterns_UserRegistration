#!/bin/bash -x
shopt -s extglob
function firstName()
{
read -p "enter the first name: " firstname
pattern="^[[:upper:]]{1}[[:lower:]]{2,}"
if [[ $firstname =~ $pattern ]]
then
        echo "FirstName valid"
else
        echo "FirstName Invalid - Enter with /FirstCharacter Captial/"
fi
}
function lastName()
{
read -p "enter the last name: " lastname
pattern="^[[:upper:]]{1}[[:lower:]]{2,}"
if [[ $lastname =~ $pattern ]]
then
        echo "LastName valid"
else
        echo "LastName Invalid - Enter with /FirstCharacter Captial/"
fi
}
firstName
lastName

