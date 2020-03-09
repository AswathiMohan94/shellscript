#!/bin/bash -x
echo "welcome"
isPresent=1;
WagePerHr=20;
empCheck=$((RANDOM%2));
if [ $isPresent -eq $empCheck ]
then
	TotalHr=8;
else
	TotalHr=0;
fi
Wage=$(($WagePerHr*$TotalHr));

