#!/bin/bash -x
read -p " enter a ,b,c : " a b c;
echo "result of a+b*c = " $(($a+$b*$c))
echo "result of a%b+c = " $(($a%$b+$c))
echo "result of c+a/b = " $(($c+$a/$b))
echo "result of a*b+c = " $(($a*$b+$c))
