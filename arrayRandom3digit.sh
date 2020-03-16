#!/bin/bash -x
limit=5;

for (( i=0;i<5;i++))
do
	randomNum=$((RANDOM%1000))
	store[ i ]=$randomNum
done
echo ${store[@]}
max1=${store[@]}
min1=${store[@]}
[]


for (( j=0;j<5;j++ ))
do
	if [ ${store[j]} -gt ${max1[j]} ]
	then
		max1=${store[j]}
	elif [ ${store[j]} -lt ${min1[j]} ]
	then
		min1=${store[i]}
	fi
done
min2=$max1
max2=$min1
for (( k=0;k<5;k++ ))
do
	if [ ${store[k]} -gt ${max2[k]} ] && [ ${store[k]} -lt ${max1[k]}]
	then
		max2=${store[k]}
	elif [ ${store[k]} -lt ${max2[k]} ] && [ {$store[k]} -gt ${min1[k]} ]
	then
		min2=${store[k]}
done
