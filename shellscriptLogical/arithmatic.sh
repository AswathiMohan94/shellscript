#!/bin/bash -x
read -p "enter the value of a : " a
read -p "enter the value of b : " b
read -p "enter the value of c : " c
declare -A arith
declare -a array
arith[a+b*c]=$(($a+$b*$c))
arith[a*b+c]=$(($a*$b+$c))
arith[c+a/b]=$(($c+$a/$b))
arith[a%b+c]=$(($a%$b+$c))
echo  "arith:${arith[@]}"  #for printing that dictionary
array=${arith[@]}
Ascending=($(echo ${array[*]} | tr " " "\n" | sort -n ))
Descending=($(echo ${array[*]} | tr " " "\n" | sort -nr ))
echo ${Ascending[@]};
echo ${Descending[@]};

