#!/bin/bash -x
read -p  "enter option 1.toDegree; 2.toFarenheit : " option
read -p "enter the temperatue : " temp
toDegree=1;
toFarenheit=2;
flag=0;
function tempDegree(){
	local temp=$1;
#	P=`echo - | awk '{print "5" / "9"}'`
	degC = $(echo "scale=2;(($temp-32)*(5/9));" | bc)
#	degC=`echo - | awk '{print "$temp" - "32"}'`
#	r=`echo - | awk '{print "$degC" * "$p"}'`
}

function tempFarenheit(){ 
	 local temp=$1;
        degF=$(echo "scale=2;($temp*(9/5))+32;" | bc);
}

case $option in
	$toDegree)
		if [  0 -lt $temp ] && [ $temp -lt 100 ]
		then
			$(tempDegree $temp);
		fi
;;
	$toFarenheit)
		if [  32 -lt $temp ] && [ $temp -lt 212 ]
                then
                        $(tempFarenheit $temp);
      		fi
;;
	*)
		flag=1;
;;
esac

