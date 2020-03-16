#!/bin/bash -x
function quit(){
	exit
}
function player1()
{
if [ $position -eq 100 ]
then
	echo "player1 WON"
	quit 
fi
while [ $position -le 100 ]
do
	check=$((RANDOM%3))
	randomNum=$((1+RANDOM%6))
	if [ $check -eq 0 ]
	then
		player2
	elif [ $check -eq 1 ]
	then 
		position=$(($position+$randomNum))		 
		if [ $position -gt 100 ]
		then
			position=$(($position-$randomNum))
		
            	elif [ $position -eq 100 ]
		then
			echo "player1 WON"
			quit
		else    
                	player2
		fi
        elif [ $check -eq 2 ]
	then
		position=$(($position+$randomNum))		
		if [ $position -le 0 ]
                then
                           position=0
                           player2
                elif [ $position -gt 0 ]
		then
                           position=$(($position-$randomNum))
                           player2
                fi
	fi
done
}
function player2(){
	if [ $pos -eq 100 ]
	then
		echo "player2 WON"
        	quit 
	fi
	while [ $pos -le 100 ]
	do
        	check=$((RANDOM%3))
        	randomNum=$((1+RANDOM%6))
        	if [ $check -eq 0 ]
        	then
                	player1
        	elif [ $check -eq 1 ]
        	then
			pos=$(($pos+$randomNum))
			if [ $pos -gt 100 ]
                	then
                        	pos=$(($pos-$randomNum))
                        	player1
               		elif [ $pos -eq 100 ]
                	then
                      		echo "player2 WON"
                        	quit 
                	else
                              	player1
                	fi
		elif [ $check -eq 2 ]
		then
			pos=$(($pos+$randomNum))
                	if [ $pos -le 0 ]
			then
				pos=0
				player1
			elif [ $position -gt 0 ]
			then
				pos=$(($pos-$randomNum))
                		player1
			fi
        	fi
	done
}
position=0
pos=0
player1
