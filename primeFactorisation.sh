#!/bin/bash -x
read -p "enter the number : " num
for (( i=0;i<(num/2);i++ ))
do
	mid=($i/2);
	count=0;
	for (( i=0; i -lt 1 ))
	do
		continue
	for (( j=2;j<mid+1;j++ ))
	do
		if [ $(($i % $j)) -eq 0 ]
		then
			count=count+1
		fi
		if [ $count -eq 0 ]
		then
			display[j]=$i
		fi
	done
	done
done
	while  [ $num -ne 1 ]
	do
		i=0
		r=0
		while [ $r -ne 0 ]
		do
			x=${p[i]}
			if [ $(($num % $x)) -eq  0 ]
			then
				num=$(($num/$x))
				r=0
				echo $x
			fi
		done
done
