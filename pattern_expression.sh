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
function email()
{
read -p "enter the email: " email
pattern="^[a-zA-Z0-9]+([.+_-]{1}[a-zA-Z0-9]{3,}){0,2}\@[a-zA-Z0-9]+([.]{1,2}[a-z]{2,}){0,2}"

if [[ $email =~ $pattern ]]
then
        echo "Email valid"
else
        echo "Email Invalid - Enter with /FirstCharacters followed by [special characters or numbers then @ with [alpha values] .[required characters]]/"
fi
}
function mobileNumber()
{
read -p "enter the mobile number: " mobileno
pattern="^[9]{1}[1]{1}[[:space:]][6-9]{1}[0-9]{9}$"
if [[ $mobileno =~ $pattern ]]
then
        echo "Mobile number valid"
else
        echo "Mobile Number Invalid - Enter/91 space followed by 10 digits/"
fi
}

firstName
lastName
email
mobileNumber
