 #!/bin/bash -x

declare -A board
#..............................set board..................................
function setBoard(){
local n=$1
for ((i=1 ;i<=$n ; i++)) do
	for((j=1;j<=$n;j++))
	do
        	board[$i,$j]="_|"
	done
done
}
#..............................display board...............................
function displayBoard(){
local n=$1
for((i=1;i<=3;i++))
do
	for((j=1;j<=3;j++))
	do
	echo -e "${board[$i,$j]} \c"
	done
echo
done
}
#................................Computer..................................
function Computer(){
echo "Computer turn"
symbol="O"
row=$(($(($RANDOM%order))+1))
col=$(($(($RANDOM%order))+1))
echo "row & col: " $row $col
echo ${board[$row,$col]}

if [[ "${board[$row,$col]}" == "_|" ]]
then
	board[$row,$col]=$symbol
	echo ${board[$row,$col]}

else
echo "Invalid input"
Computer
fi

}
#......................................User...........................................
function User(){
	if(($count>o))
	then
		echo "User turn"
		echo "Enter the row and column"
		symbol="X"
		read row
		read col
		echo "user row and col: " $row $col

	if [[ "${board[$row,$col]}" == "_|" ]]
	then
    	board[$row,$col]=$symbol
        echo ${board[$row,$col]}
	else
	echo "Invalid input"
		if ((count>0))
		then
		User
		fi
	fi
fi
}
#..................................check for tie.......................................
function checkForTie(){
dash="_|"
local var=0
for ((i=1 ; i <= 3 ;i++ ))
do
	for (( j=1;j<=3;j++))
	do
	if [[ ${board[$i,$j]} == $dash ]]
	then
	((var++))
	fi
	done
done
if (( $var == 0 ))
then
	clear
	echo "Match is tie play again..!"
	sleep 5
        bash TicTacToe.sh

fi
}
#............................................Check for win ...........................
function checkForWin(){
row1="${board[1,1]}${board[1,2]}${board[1,3]}"
row2="${board[2,1]}${board[2,2]}${board[2,3]}"
row3="${board[3,1]}${board[3,2]}${board[3,3]}"
col1="${board[1,1]}${board[2,1]}${board[3,1]}"
col2="${board[1,2]}${board[2,2]}${board[3,2]}"
col3="${board[1,3]}${board[2,3]}${board[3,3]}"
dia1="${board[1,1]}${board[2,2]}${board[3,3]}"
dia2="${board[1,3]}${board[2,2]}${board[3,1]}"
user="XXX"
comp="OOO"

if [[ $row1 == $user || $row2 == $user || $row3 == $user || $col1 == $user || $col2 == $user || $col3 == $user || $dia1 == $user || $dia2 == $user ]]
then
	echo congrats You Won.....!
	sleep 5
        bash TicTacToe.sh
elif [[ $row1 == $comp || $row2 == $comp || $row3 == $comp || $col1 == $comp || $col2 == $comp || $col3 == $comp || $dia1 == $comp || $dia2 == $comp ]]
then
	echo "You lost "
	 sleep 5
         bash TicTacToe.sh

fi
}
echo "----------------------welcome Start playing TIC-TAC-TOE-------------------------------------"
read -p "Enter the order:" order
	setBoard $order
	displayBoard $order
	echo "Symbol X for user"
	echo "Symbol O for Computer"
	echo "Toss value 0-->for computer ,1-->for user "
count=$(($order*$order))
gametoss=$((RANDOM%2))
echo "Toss value:$gametoss"
if (($gametoss==0 ))
then
	echo "Computer won the toss"
  while (($count>0))
  do
	Computer
	count=$(($count-1))
	echo "count value:$count"
	displayBoard
	checkForWin
	User
	count=$(($count-1))
	echo "count value:$count"
	displayBoard
	checkForWin
	if (($count<0))
	then
	echo "Match is TIE !!!!"
	fi
  done
else
	echo "Congrats YOU won the toss"
  while (($count>0))
  do
	User
	count=$(($count-1))
	echo "count value:$count"
	displayBoard
	checkForWin
	Computer
	count=$(($count-1))
	echo "count value:$count"
	displayBoard
	checkForWin
	if (($count<0))
	then
	echo "Match is TIE !!!!"
	fi
	done
fi





