#!/bin/bash -x
rand0=$((RANDOM%1000))
rand1=$((RANDOM%1000))
rand2=$((RANDOM%1000))
rand3=$((RANDOM%1000))
rand4=$((RANDOM%1000))
if [ "$rand0" -gt "$rand1" ] && [ "$rand0" -gt "$rand2" ] && [ "$rand0" -gt "$rand3" ] && [ "$rand0" -gt "$rand4" ] 
then
	echo  "max = " $rand0
elif [ "$rand1" -gt "$rand0" ] && [ "$rand1" -gt "$rand2" ] && [ "$rand1" -gt "$rand3" ] && [ "$rand1" -gt "$rand4" ]
then
	echo "max = " $rand1
elif [ "$rand2" -gt "$rand0" ] && [ "$rand2" -gt "$rand1" ] && [ "$rand2" -gt "$rand3" ] && [ "$rand2" -gt "$rand4" ]
then
	echo "max =  " $rand2
elif [ "$rand3" -gt "$rand0" ] && [ "$rand3" -gt "$rand1" ] && [ "$rand3" -gt "$rand2" ] && [ "$rand3" -gt "$rand4" ]
then
	echo "max = " rand3
elif [ "$rand4" -gt "$rand0" ] && [ "$rand4" -gt "$rand2" ] && [ "$rand4" -gt "$rand1" ] && [ "$rand4" -gt  "$rand3" ]
then
	echo "max = " rand4
fi
