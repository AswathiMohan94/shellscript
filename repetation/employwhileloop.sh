#!/bin/bash -x
isfulltime=1;
isParttime=2;
totalsalary=0;
empRate=20;
numworkingdays=50;
day=1;
while [ $day<=$numworkingdays ]
do
	empCheck=$((RANDOM%3));
		case $empCheck in
			$isfulltime)
				emphr=8;
		;;
			$isPartTime)
				emphr=4;
		;;
			*)
				emphr=0;
	esac
	salary=$(( $emphr * $empRate ));
	totalsalary=(( $totalsalary+$salary ));
day++;
done
