#!/bin/bash -x
read -p "choose a no {1,10,100,1000,10000} : " num
if [ $num -eq 1 ]
then
	echo "unit"
elif [ $num -eq 10 ]
then
	echo "ten"
elif [ $num -eq 100 ]
then
	echo "hundred"
elif [ $num -eq 100 ]
then
	echo "thousand"
elif [ $num -eq 10000 ]
then
	echo "tenthousand"
fi
