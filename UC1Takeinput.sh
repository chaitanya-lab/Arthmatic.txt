#!/bin/bash -x
read -p "enter the input first " a
read -p "enetr the second input " b
read -p  "enetr the third  input " c
declare -A variable
var=$(($a+$b*$c))
var1=$(($a*$b+$c))
var2=$(($c+$a/$b))
var3=$(($a%$b+$c))

variable[var]=$var
variable[var1]=$var1
variable[var2]=$var2
variable[var3]=$var3
echo "values in dictionary :${variable[@]}"
echo "number of key values :${!variable[@]}"
