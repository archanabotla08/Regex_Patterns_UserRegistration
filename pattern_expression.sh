#!/bin/bash
shopt -s extglob
counter=0
function firstName()
{
   valid=true
   while [ $valid ]
   do
      read -p "enter the first name: " firstname
      pattern="^[[:upper:]]{1}[[:lower:]]{2,}"
      if [[ $firstname =~ $pattern ]]
      then
            echo "FirstName valid"
            valid=false
            ((counter++))
            break
      else
            echo "FirstName Invalid - Enter with /FirstCharacter Captial/"
      fi
   done
}
function lastName()
{

   valid=true
   while [ $valid ]
   do
      read -p "enter the last name: " lastname
      pattern="^[[:upper:]]{1}[[:lower:]]{2,}"
      if [[ $lastname =~ $pattern ]]
      then
            echo "LastName valid"
            valid=false
            ((counter++))
            break
      else
            echo "LastName Invalid - Enter with /FirstCharacter Captial/"
      fi
   done
}
function email()
{
   valid=true
   while [ $valid ]
   do
      read -p "enter the email: " email
      pattern="^[a-zA-Z0-9]+([.+_-]{1}[a-zA-Z0-9]{3,}){0,2}\@[a-zA-Z0-9]+([.]{1,2}[a-z]{2,}){0,2}"
      if [[ $email =~ $pattern ]]
      then
            echo "Email valid"
            valid=false
            ((counter++))
            break
      else
            echo "Email Invalid - Enter with /FirstCharacters followed by [special characters or numbers then @ with [alpha values] .[required characters]]/"
      fi
   done
}
function mobileNumber()
{
   valid=true
   while [ $valid ]
   do
      read -p "enter the mobile number: " mobileno
      pattern="^[9]{1}[1]{1}[[:space:]][6-9]{1}[0-9]{9}$"
      if [[ $mobileno =~ $pattern ]]
      then
            echo "Mobile number valid"
            valid=false
            ((counter++))
            break
      else
            echo "Email Invalid - Enter with /FirstCharacters followed by [special characters or numbers then @ with [alpha values] .[required characters]]/"
      fi
   done
}
function password()
{
   valid=true
   while [ $valid ]
   do
      read -p "enter the password : " password
      pattern_validation_1="^.{8}"
      pattern_validation_2="[[:upper:]]+"
      pattern_validation_3="[[:digit:]]+"
      pattern_validation_4="[A-Za-z0-9]*[@#$%^&*-_=+.][A-Za-z0-9]*$"
      if [[ $password =~ $pattern_validation_1 && $password =~ $pattern_validation_2 && $password =~ $pattern_validation_3  && $password =~ $pattern_validation_4 ]]
      then
            echo "Password Valid"
            valid=false
            ((counter++))
            break
      else
            echo "Password Invalid - Enter /password with mininum 8 characters or digits and atleast 1 Captial, at least 1 digit  and at least 1 special symbol/"
      fi
   done
}

firstName
lastName
email
mobileNumber
password

