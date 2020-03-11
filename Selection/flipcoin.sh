#!/bin/bash -x
rand1=$((RANDOM%2))
if [ "$rand1" -eq 0 ]
then
	echo "HEAD"
elif [ "$rand1" -eq 1 ]
then
	echo "TAIL"
fi
