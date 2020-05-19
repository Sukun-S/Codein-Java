#!/bin/bash -x
declare -A result
read -p "Take First Input " a
read -p "Take Second Input " b
read -p "Take Third Input " c
d=$(($a+$b*$c))
e=$(($a*$b+$c))
f=$(($c+$a/$b))
g=$(($a%$b+$c))
result[a+b*c]="$d"
result[a*b+c]="$e"
result[c+a/b]="$f"
result[a%b+c]="$g"
echo "Result of first computation is: " $d
echo "Result of second computation is: " $((result[a*b+c]))
echo "Result of first computation is: " ${result[a+b*c]}
echo "Result of fourth computation is: " ${result[a%b+c]}




