#!/bin/bash -x
isfulltime=1;
isParttime=2;
totalsalary=0;
empRate=20;
numworkingdays=20;
for (( day=1; days<=$numworkingdays; day++ ))
do
	empCheck=$((RANDOM%3));
		case $empCheck in
			$isfulltime)
				emphr=8;
		;;
			$isParttime)
				emphr=4;
		;;
			*)
				emphr=0;
	
		;;
	esac
	salary=$(( $emphr * $empRate ));
	totalsalary=(( $totalsalary + $salary ));
done
