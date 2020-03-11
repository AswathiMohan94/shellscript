#!/bin/bash -x
isFullTime=1;
isPartTime=2;
totalsalary=0;
empRateperHr=20;
numWorkingDays=20;
numWorkingHrs=0;
limitHrs=50;
days=1;
function getWorkHr(){
#local empCheck=$1
 case  $empCheck in
                $isFullTime)
                        empHr=8;
                        ;;
                $isPartTime)
                        empHr=4;
                        ;;
                *)
                        empHr=0;
                        ;;
        esac
echo $empHr
}
function getEmpwage(){
local empHr=$1
echo $(($empHr*$empRateperHr))

}
while [ $numWorkingHrs -le $limitHrs  ] && [ $days -le $numWorkingDays  ]
do
         empCheck=$((RANDOM%3));
         empHr="$(getWorkHr $empCheck)"
        numWorkingHrs=$(($numWorkingHrs+$empHr));
        ((days++))
        salary=$(($empRateperHr*$empHr));
        dailyWage[$days]="$( getEmpwage $empHr )"
done
 totalsalary=$(($totalsalary+$salary));
echo ${dailyWage[@]}