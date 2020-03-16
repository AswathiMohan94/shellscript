#!/bin/bash -x
read -p " enter a ,b,c : " a b c;
fst=$(($a+$b*$c))
echo "result of a+b*c = "$fst
secnd=$(($a%$b+$c))
echo "result of a%b+c = "$secnd
thrd=$(($c+$a/$b))
echo "result of c+a/b = " $thrd
frth=$(($a*$b+$c))
echo "the result of c+a/b = "$frth
if [ "$fst" -gt "$secnd" ] && [ "$fst" -gt "$thrd" ] && [ "$fst" -gt "$frth" ]
then
	echo "a+b*c is max " $fst
elif [ "$secnd" -gt "$fst" ] && [ "$secnd" -gt "$thrd" ] && [ "$secnd" -gt "$frth" ]
then
	echo "a%b+c is max " $secnd
elif [ "$thrd" -gt "$fst" ] && [ "$thrd" -gt "$secnd" ] && [ "$thrd" -gt "$frth" ]
then
	echo "c+a/b is max " $thrd
elif [ "$frth" -gt "$fst" ] && [ "$frth" -gt "$secnd" ] && [ "$frth" -gt "$thrd" ]
then
	echo "a*b+c is max " $frth
fi

if [ "$fst" -lt "$secnd" ] && [ "$fst" -lt "$thrd" ] && [ "$fst" -lt "$frth" ]
then
	echo "a+b*c is min " $fst
elif [ "$secnd" -lt "$fst" ] && [ "$secnd" -lt "$thrd" ] && [ "$secnd" -lt "$frth" ]
then
	echo "a%b+c is min "$secnd
elif [ "$thrd" -lt "$fst" ] && [ "$thrd" -lt "$secnd" ] && [ "$thrd" -lt "$frth" ]
then
	echo "c+a/b is the min "$thrd
elif [ "$frth" -lt "$fst" ] && [ "$frth" -lt "$secnd" ] && [ "$frth" -lt "$thrd" ]
then
	echo "a*b+c is min "$frth
fi
