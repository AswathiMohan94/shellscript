#!/bin/bash -x
FullTime=8;
days=1;
PartTime=4;
limitHrs=100;
numWorkingHrs=0;
numWorkingDays=20;
isPresent=1;
WagePerHr=20;
DaysPerMonth=20;
isAbsent=2;
echo "welcome"
function getWorkHr(){
day=0;
hr=0;
hr1=0;
while((day<20))
do
	empCheck=$((RANDOM%3));
	if [ $empCheck -eq 1 ]
	then
		hr=$(($hr+1));	
	elif [ $empCheck -eq 3 ]
	then
		hr1=$(($hr1+1));
	else
		hr2=0;
	fi
day=$(($day+1));
done
Workfull=$(($hr*$FullTime));
WorkPart=$(($PartTime*$hr1));
WorkHr=$(($Workfull+$WorkPart));
}
empCheck=$((RANDOM%2));
if [ $isPresent -eq $empCheck ]
then
	TotalHr=8;
else
	TotalHr=0;
fi
Wage=$(($WagePerHr*$TotalHr));
case $empCheck in 
	$isPresent)
		TotalHr=8;
;;	
       	$isAbsent)
 		TotalHr=0;
;;
	*)
;;
esac
Wage=$(($WagePerHr*$TotalHr));
if [ $Wage -ne 0 ]
then
	TotalDays=20;
else
	TotalDays=0;
fi
WagePerMonth=$(($Wage*$TotalDays))
hr=0;
Day=1
while((hr<=100))
do
	empCheck=$((RANDOM%2));
	if [ $empCheck -eq 1 ]
	then
		Day=$(($Day+1));
	fi
hr=$(($hr+1));
done
Salary=$(($Day*$hr))
$(getWorkHr);

function getEmpWage(){
	local empHr=$1;
	echo $(($empHr*$WagePerHr));
}
TotalSalary=0;
while [ $numWorkingHrs -le $limitHrs ] && [ $days -le $numWorkingDays ]
do

	empCheck=$((RANDOM%3));
	empHr="$(getWorkHr $empCheck)"
	numWorkingHrs=$(($numWorkingHrs+$empHr));
	((days++))
	salary=$(($WagePerH+$empHr));
	dailyWage[$days]="$(getEmpWage $empHr)";
done
TotalSalary=$(($TotalSalary+$salary));
echo ${dailyWage[@]}
