function getWorkhr(){
day=1;
hr=0;
while(day<=20)
	empCheck=$((RANDOM%3));
	if [ $empCheck -eq 1 ]
	then
		hr=$(($hr+1));
	elif [ $empCheck -eq 3 ]
		hr1=$(($hr1+1));
	else
		hr=0;
	fi
day=$(($day+1));
done
WorkHr=$(($hr*8+$hr1*4));

		
