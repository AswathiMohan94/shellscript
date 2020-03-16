#!/bin/bash -x
read -p "enter the no : " num
if [ $num -eq 1 ]
then
	echo "sunday"
elif [ $num -eq 2 ]
then
	echo "monday"
elif [ $num -eq 3 ]
then
	echo "tuesday"
elif [ $num -eq 4 ]
then
	echo "wednessday"
elif [ $num -eq 5 ]
then
	echo "thursday"
elif [ $num -eq 6 ]
then
	echo "friday"
elif [$num -eq 7]
then
	echo "saturday"
fi
