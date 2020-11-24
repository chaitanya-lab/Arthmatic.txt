#!/bin/bash -x
read -p "enter the input first " a
read -p "enetr the second input " b
read -p  "enetr the third  input " c
#var=$(($a+$b*$c))
#var1=$(($a*$b+$c))
var2=$(($c+$a/$b))
#echo $var
#echo $var1
echo $var2
