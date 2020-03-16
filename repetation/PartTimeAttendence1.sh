#!/bin/bash -x
isfulltime=1;
isParttime=2;
empRate=20;
randomCheck=$(( RANDOM % 3 ));
if [ $isfulltime -eq $randomCheck ]
then
	emphr=8;
elif [ $isParttime -eq $randomCheck ]
then
	emphr=4;
else
	emphr=0;
fi
echo "salary : " $(( $emphr * $empRate ));
