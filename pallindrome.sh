#!/bin/bash -x
read -p "enter the number : " num
rem=0;
rev="";
temp=$num;
function pallindrome(){
	local result=$1;
	while [ $num -gt 0 ]
	do
		rem=$(($num%10));
		rev=$rev$rem;
		num=$(($num/10));
	done
echo $rev
}
result="$(pallindrome $num)"
if [ $temp -eq $result ]
then
	echo "pallindrome";
else
	echo "not pallindrome";
fi
