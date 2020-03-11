#!/bin/bash -x
read -p "enter the year " year
if (( $year%4==0 ))
then
	echo "is leapyear "
elif (( $year%400==0 )) && (( &year%100!=0 ))
then
	echo "leap year "
else
	echo "not leap year"
fi
