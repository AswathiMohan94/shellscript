#!/bin/bash -x 
stake=100
result=0
bet=1
days=20
declare -A monthlyResult
read -p "enter the goal amount : " goal
read -p "no of times : " num
total=0
halfstakePercnt=$(($stake*50/100))
winAmount=$(($stake+$halfstakePercnt))
lossAmount=$(($stake-$halfstakePercnt))
function dailybasis(){
	randomNum=$((RANDOM%10))
	while [ $stake -lt $winAmount ] && [ $stake -gt $lossAmount ]
	do
		randomNum=$((RANDOM%10))
		if [ $randomNum -le 4 ]
		then
			stake=$(($stake+$bet))
		else
			stake=$(($stake-$bet))
		fi
	done
}
function monthlybasis(){
	for(( i=1;i<=days;i++ ))
	do
		dailybasis
	if [ $stake -eq $winAmount ]
	then
		result=$(($result+$winAmount))
		monthlyResult["day $i"]=$result
		(( win++ ))
	else
		result=$(($stake-$lossAmount))
		monthlyResult["day $i"]=$result
		(( loss++ ))
	fi
	done
	echo $result
#	echo "maxDaysWon= $(($win*$halfstakePercent))
#	echo "daysLost= $(($loss*$halfstakePercent))"
	luckyDay=$( printf "%s\n" ${monthlyResult[@]} | sort -nr | head -1 )
	unluckyDay=$( printf "%s\n" ${monthlyResult[@]} | sort -nr | tail -1 )
	for value in "${!monthlyResult[@]}"
   	do
      		if [[ ${monthlyResult[$value]} -eq $luckyDay ]]
      		then
         	echo "Luckiestday  $value $luckyDay"
     	 	elif [[ ${monthlyResult[$value]} -eq $unluckyDay ]]
      		then
         		echo "Unluckiestday  $value $unluckyDay"
      		fi
   	done
}
monthlybasis

