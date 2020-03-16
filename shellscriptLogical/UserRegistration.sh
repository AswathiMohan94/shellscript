#!/bin/bash -x
read -p "enter the first name : " firstname
read -p "enter the last name : " lastname
first="^[A-Z][a-zA-Z]{2,}"
last="^[A-Z][a-zA-Z]{2,}"
if [[ $firstname =~ $first ]] && [[ $lastname =~ $last ]]
then
        echo name is valid
else
       echo name is invalid so check first and last names
fi


read -p "enter the mobile no : " num
mob="[1-9]{2}[ ]?[1-9]{1}[0-9]{7}"
length=${#num}
echo length
if [[ $num =~ $mob ]] && [[ $length -eq 13 ]]
then
       echo yes
else
       echo no
fi



read -p "enter the email : " email
pat1="[0-9a-zA-Z]{3,}?[.+-][0-9a-zA-Z]{3,}[@][.][a-zA-Z]{2,4}([.][a-zA-Z]{2})?$"
if [[ $email =~ $pat1 ]];
then
       echo valid email
else
       echo invalid email
fi

function isValidPassWord(){
local password=$1
length=${#password}
pattern1="[A-Z]*[a-zA-Z0-9]{8,}"
pattern2="[@#$%^&*]+"
if [[ $password =~ $pattern1 ]] && [[ $password =~ $pattern2 ]] && [[ $length -gt 8 ]]
then
        echo valid
else
        echo invailid password

fi
}
read -p "enter password : " password
isvalid $password
