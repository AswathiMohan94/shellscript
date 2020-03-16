#!/bin/bash -x
function findPercnt(){
	local side=$1
	local num=$2
	result=`echo - | awk '{print '$side'/'$num'*'100'}'`
	echo $result
}
function winning(){
	percnt=$1
	singlet=($(echo ${percnt[*]} | tr " " "\n" | sort -nr ))
	echo "max= " ${singlet[0]}
}
h=0
t=0
hh=0
ht=0
th=0
tt=0
hhh=0
ttt=0
hth=0
hht=0
thh=0
tht=0
tth=0
htt=0
read -p "enter the no of trials : " num
for (( trial=1;trial<$num+1;trial++ ))
do
	
	#randomNum=$((RANDOM%2))
	#if [ $randomNum -eq 0 ]
	#then
	#	dict1[$trial]="H"
	#	(( h++ ))
	#else
	#	dict1[$trial]="T"
	#	(( t++ ))	
	#fi
done
for (( i=0;i<2; ))
do
	percnt[i]=$(findPercnt $h $num)
	((i++));
	percnt[i]=$(findPercnt $t $num)
	((i++));
done
singlet=${dict1[@]}
win=$(winning ${percnt[@]})
read -p "enter no of trials for doublet combination : " num2
for (( i=1;i<$num2+1;i++ ))
do
        randomNum=$((RANDOM%4))
        if [ $randomNum -eq 0 ]
        then
                dict2[$i]="HH"
                (( hh++ ))
        elif [ $randomNum -eq 1 ]
	then
                dict2[$i]="TT"
        	(( tt++ ))
	elif [ $randomNum -eq 2 ]
        then
                dict2[$i]="HT"
                (( ht++ ))
        else
                dict2[$i]="TH"
                (( th++ ))
fi
done
for (( i=0;i<3; ))
do
        percnt[i]=$(findPercnt $hh $num)
	((i++));
        percnt[i]=$(findPercnt $tt $num)
        ((i++));
	 percnt[i]=$(findPercnt $ht $num)
	((i++));
        percnt[i]=$(findPercnt $th $num)
        ((i++));
done
doublet=${dict1[@]}
win=$(winning ${percnt[@]})
read -p "enter no of trials for triplet combination : " num3
for (( i=1;i<$num3+1;i++ ))
do
        randomNum=$((RANDOM%8))
        if [ $randomNum -eq 0 ]
        then
                dict3[$i]="HHH"
                (( hhh++ ))
        elif [ $randomNum -eq 1 ]
        then
                dict3[$i]="TTT"
               (( ttt++ ))
        elif [ $randomNum -eq 2 ]
        then
                dict3[$i]="HTT"
                (( htt++ ))
	elif [ $randomNum -eq 3 ]
        then
                dict3[$i]="THT"
                (( tht++ ))
	elif [ $randomNum -eq 4 ]
        then
                dict3[$i]="TTH"
                (( tth++ ))
	elif [ $randomNum -eq 5 ]
        then
                dict3[$i]="THH"
                (( thh++ ))
	elif [ $randomNum -eq 6 ]
        then
                dict3[$i]="HTH"
                (( hth++ ))
	elif [ $randomNum -eq 7 ]
        then
                dict3[$i]="HHT"
                (( hht++ ))

	fi
done
for (( i=0;i<8; ))
do
        percnt[i]=$(findPercnt $hhh $num)
        ((i++));
        percnt[i]=$(findPercnt $ttt $num)
        ((i++));
         percnt[i]=$(findPercnt $htt $num)
        ((i++));
        percnt[i]=$(findPercnt $tht $num)
        ((i++));
	 percnt[i]=$(findPercnt $tth $num)
        ((i++));
        percnt[i]=$(findPercnt $thh $num)
        ((i++));
         percnt[i]=$(findPercnt $hth $num)
        ((i++));
        percnt[i]=$(findPercnt $hht $num)
        ((i++));
done
triplet=${dict3[@]}
win=$(winning ${percnt[@]})

