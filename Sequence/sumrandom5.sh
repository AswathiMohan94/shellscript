#!/bin/bash -x
rand0=$((RANDOM%100))
rand1=$((RANDOM%100))
rand2=$((RANDOM%100))
rand3=$((RANDOM%100))
rand4=$((RANDOM%100))
sum=$(($rand0+$rand1+$rand2+$rand3+$rand4))
echo "sum = " $sum
echo "avg = " $(($sum/5))

